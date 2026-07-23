#!/usr/bin/env python3
"""
批次验收工具：对 zh-CN 下每个 ftl 文件与 en-US 同路径文件做逐文件比对。

检查项：
  1. 每个 zh 文件在 en 中存在同路径文件（孤儿文件报警）
  2. 消息 ID 集合逐文件比对（zh 缺失/多出的 ID）
  3. zh 值与 en 值完全相同的条目（疑似未翻译，白名单外报警）
  4. 术语违规（glossary 定案的错误变体，如"船长"应为"舰长"）

用法：python3 Tools/localization/verify_batch.py [--dirs preferences ghost ...]
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
EN = REPO / "Resources/Locale/en-US"
ZH = REPO / "Resources/Locale/zh-CN"

MSG_RE = re.compile(r"^(-?[A-Za-z][A-Za-z0-9_-]*)\s*=\s*(.*)$")
ATTR_RE = re.compile(r"^\s+(\.[A-Za-z][A-Za-z0-9_-]*)\s*=\s*(.*)$")

# zh 值与 en 相同也算正常的情形：纯变量/选择器/数字/符号、单位、专有名词缩写（不含 CJK 即可）
IDENTICAL_OK_RE = re.compile(
    r"^[\s{}$()\[\]<>@0-9A-Za-z%×+:./,|\"'?!*=&;#♪_-]*$"
)

# en-US 同路径不存在但属正常的文件（引擎词条覆盖等）
ALLOW_ORPHAN = {"_engine_lib.ftl"}
ALLOW_ORPHAN_DIRS = ("_engine/", "entities/")  # 引擎覆盖与实体名覆盖：en-US 无对应文件

# 有意保留原文的条目（外语彩蛋、占位示例、纯符号/emoji 等）
ALLOW_IDENTICAL = {
    "trait-spanish-desc",           # 西班牙语彩蛋
    "hud-chatbox-highlights-placeholder",  # 高亮词示例
    "player-tab-antag-prefix",      # 纯 emoji（🗡），必须与原文逐字节一致
    "humanoid-profile-editor-voice-play",  # 纯符号 ▶
    "reagent-dispenser-window-eject-container-button",  # 纯图标 ⏏（20px 图标按钮）
    "solar-control-window-degrees",  # 纯符号 °
}

# 术语违规扫描：(错误写法正则, 提示)
FORBIDDEN = [
    (re.compile(r"(?<!海盗)船长"), "Captain 应译“舰长”（海盗语境除外）"),
    (re.compile(r"辛迪凯|工团"), "Syndicate 应译“辛迪加”"),
    (re.compile(r"纳诺特拉森|纳米特拉森"), "Nanotrasen 应译“纳米传讯”"),
    (re.compile(r"监狱长|(?<!典)狱长"), "Warden 应译“典狱长”"),
    (re.compile(r"保安(?!部)"), "Security Officer 应译“安保干员”"),
    (re.compile(r"指导手册|指导书"), "guidebook 应译“指南手册”"),
    (re.compile(r"蓝色空间|蓝宇宙"), "bluespace 应译“蓝空间”"),
]


def parse_file(path: Path) -> dict[str, str]:
    entries: dict[str, str] = {}
    current: str | None = None
    for line in path.read_text(encoding="utf-8-sig").splitlines():
        if m := MSG_RE.match(line):
            current = m.group(1)
            entries[current] = m.group(2).strip()
        elif m := ATTR_RE.match(line):
            if current:
                entries[current + m.group(1)] = m.group(2).strip()
        elif current and (line.startswith("    ") or line.startswith("\t")):
            key = current if current in entries else None
            if key is not None:
                entries[key] += " " + line.strip()
    return entries


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dirs", nargs="*", help="只检查这些 zh-CN 顶层目录")
    args = ap.parse_args()

    problems = 0
    for zh_path in sorted(ZH.rglob("*.ftl")):
        rel = zh_path.relative_to(ZH)
        if args.dirs and (rel.parts[0] if len(rel.parts) > 1 else "(root)") not in args.dirs:
            continue
        en_path = EN / rel
        if not en_path.exists():
            if str(rel) in ALLOW_ORPHAN or str(rel).startswith(ALLOW_ORPHAN_DIRS):
                continue
            # 实体名文件（全部为 ent-*）在 en-US 没有对应文件：上游把实体名放在 YAML 里，属正常
            zh_e = parse_file(zh_path)
            if zh_e and all(k.startswith("ent-") for k in zh_e):
                continue
            print(f"[孤儿] {rel}: en-US 中不存在同路径文件")
            problems += 1
            continue

        zh_e, en_e = parse_file(zh_path), parse_file(en_path)
        if missing := set(en_e) - set(zh_e):
            print(f"[缺失] {rel}: 少 {len(missing)} 条: {sorted(missing)[:5]}{'...' if len(missing) > 5 else ''}")
            problems += 1
        if extra := set(zh_e) - set(en_e):
            print(f"[多出] {rel}: 多 {len(extra)} 条: {sorted(extra)[:5]}{'...' if len(extra) > 5 else ''}")
            problems += 1

        # accent 目录的触发词/替换值本就是英文或外语腔（见 ReplacementAccentSystem），
        # 与原文相同属正常，不算漏译。
        is_accent = rel.parts[0] == "accent" or (len(rel.parts) > 1 and rel.parts[1] == "accent")
        untranslated = [
            k for k in set(zh_e) & set(en_e)
            if zh_e[k] == en_e[k] and en_e[k] and k not in ALLOW_IDENTICAL
            and not IDENTICAL_OK_RE.match(en_e[k])
            and not (is_accent and any(w in k for w in ("words", "replace", "replacement", "replaced")))
        ]
        if untranslated:
            print(f"[照抄] {rel}: {len(untranslated)} 条与原文相同: {untranslated[:5]}{'...' if len(untranslated) > 5 else ''}")
            problems += 1

        text = zh_path.read_text(encoding="utf-8")
        for pat, hint in FORBIDDEN:
            if pat.search(text):
                print(f"[术语] {rel}: {hint}")
                problems += 1

    # 目录级：en-US 有但 zh-CN 完全没建的文件（逐文件比对发现不了整文件漏建）
    if args.dirs:
        for d in args.dirs:
            if d == "(root)":
                en_files = sorted(EN.glob("*.ftl"))  # 顶层文件
            else:
                en_dir = EN / d
                if not en_dir.is_dir():
                    continue
                en_files = sorted(en_dir.rglob("*.ftl"))
            for en_file in en_files:
                rel = en_file.relative_to(EN)
                if not (ZH / rel).exists():
                    print(f"[未建] {rel}: en-US 有此文件但 zh-CN 未创建")
                    problems += 1

    print(f"\n检查完成，共 {problems} 个问题" if problems else "\n检查完成，未发现问题")
    return 1 if problems else 0


if __name__ == "__main__":
    sys.exit(main())

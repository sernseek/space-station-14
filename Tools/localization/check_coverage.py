#!/usr/bin/env python3
"""
zh-CN 汉化覆盖率检查工具。

对比 Resources/Locale/en-US 与 Resources/Locale/zh-CN 的 Fluent 消息 ID：
  - 输出总体与分目录覆盖率
  - 缺失（待翻译）的 ID 写入 missing.txt
  - 过期（zh-CN 有而 en-US 已删除）的 ID 写入 stale.txt
  - 校验双方共有消息的 { $变量 } 占位符是否一致

用法：
  python3 Tools/localization/check_coverage.py            # 报告
  python3 Tools/localization/check_coverage.py --strict   # 有过期条目或占位符不一致时退出码非 0（CI 用）
  python3 Tools/localization/check_coverage.py --engine   # 同时统计 RobustToolbox 引擎词条
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
OUT_DIR = Path(__file__).resolve().parent

# 顶层消息或术语定义行：`some-id =` / `-some-term =`；属性行（.desc 等）归属其上方的消息。
MSG_RE = re.compile(r"^(-?[A-Za-z][A-Za-z0-9_-]*)\s*=")
ATTR_RE = re.compile(r"^\s+\.([A-Za-z][A-Za-z0-9_-]*)\s*=")
VAR_RE = re.compile(r"\{\s*\$([A-Za-z][A-Za-z0-9_-]*)")


def parse_locale(root: Path) -> dict[str, tuple[str, str]]:
    """返回 {消息ID（含 `id.attr` 形式的属性）: (相对文件路径, 消息体文本)}。"""
    messages: dict[str, tuple[str, str]] = {}
    current_id: str | None = None
    for path in sorted(root.rglob("*.ftl")):
        rel = str(path.relative_to(root))
        for line in path.read_text(encoding="utf-8-sig").splitlines():
            if m := MSG_RE.match(line):
                current_id = m.group(1)
                messages[current_id] = (rel, line)
            elif m := ATTR_RE.match(line):
                if current_id:
                    messages[f"{current_id}.{m.group(1)}"] = (rel, line)
            elif current_id and (line.startswith("    ") or line.startswith("\t")):
                # 多行消息的续行，附加到当前条目以便提取占位符
                rel0, body = messages[current_id]
                messages[current_id] = (rel0, body + " " + line.strip())
    return messages


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--strict", action="store_true", help="有过期条目/占位符不一致时返回非 0")
    ap.add_argument("--engine", action="store_true", help="同时统计 RobustToolbox 引擎词条")
    ap.add_argument("--target", default="zh-CN", help="目标语言目录名（默认 zh-CN）")
    args = ap.parse_args()

    en_roots = [REPO / "Resources/Locale/en-US"]
    if args.engine:
        engine_root = REPO / "RobustToolbox/Resources/Locale/en-US"
        if engine_root.is_dir():
            en_roots.append(engine_root)

    en: dict[str, tuple[str, str]] = {}
    for root in en_roots:
        en.update(parse_locale(root))

    zh_root = REPO / f"Resources/Locale/{args.target}"
    zh = parse_locale(zh_root) if zh_root.is_dir() else {}

    missing = sorted(set(en) - set(zh))
    stale = sorted(set(zh) - set(en))
    common = set(en) & set(zh)

    var_mismatch: list[str] = []
    for msg_id in sorted(common):
        en_vars = set(VAR_RE.findall(en[msg_id][1]))
        zh_vars = set(VAR_RE.findall(zh[msg_id][1]))
        # zh 可以少用变量（如中文无复数），但不能用 en 里不存在的变量
        if zh_vars - en_vars:
            var_mismatch.append(f"{msg_id}: zh 使用了 en 中不存在的变量 {sorted(zh_vars - en_vars)}")

    total, done = len(en), len(common)
    print(f"总词条: {total}  已翻译: {done}  覆盖率: {done / total:.2%}" if total else "en-US 词条为空？")

    # 分目录统计（按 en-US 下的顶层目录）
    by_dir: dict[str, list[int]] = {}
    zh_ids = set(zh)
    for msg_id, (rel, _) in en.items():
        top = rel.split("/", 1)[0] if "/" in rel else "(根目录)"
        stat = by_dir.setdefault(top, [0, 0])
        stat[0] += 1
        if msg_id in zh_ids:
            stat[1] += 1
    print("\n分目录覆盖率（前 30，按未翻译数量排序）:")
    ranked = sorted(by_dir.items(), key=lambda kv: kv[1][1] - kv[1][0])
    for name, (n, d) in ranked[:30]:
        print(f"  {name:40s} {d:5d}/{n:<5d} {d / n:7.2%}")

    (OUT_DIR / "missing.txt").write_text("\n".join(missing) + "\n", encoding="utf-8")
    (OUT_DIR / "stale.txt").write_text("\n".join(stale) + "\n", encoding="utf-8")
    print(f"\n缺失 {len(missing)} 条 → Tools/localization/missing.txt")
    print(f"过期 {len(stale)} 条 → Tools/localization/stale.txt")

    if var_mismatch:
        print("\n占位符问题:")
        for line in var_mismatch:
            print(f"  {line}")

    if args.strict and (stale or var_mismatch):
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())

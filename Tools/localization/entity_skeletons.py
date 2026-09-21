#!/usr/bin/env python3
"""
把 audit_entities.py 报出的实体缺口写成 delta_sync 能处理的翻译骨架。

实体名来自原型 YAML，en-US 里没有对应 ftl，所以 `delta_sync.py make` 看不到它们。
先跑 fill_entity_gaps.py 用翻译记忆补掉能补的，剩下的交给本脚本：

  python3 Tools/localization/audit_entities.py --dump <dir>
  python3 Tools/localization/entity_skeletons.py <dir> [--per-file 150]

产出 Tools/localization/delta/_zhCN/entities-sync-<N>.ftl：
  [A] 完全没词条的实体：`ent-X = 英文名` + `.desc = 英文描述`
  [B] 已有中文名、描述没译的：`ent-X = 现有中文名` + `.desc = 英文描述`
之后照常 `delta_sync.py make`（会把它们算进批次清单）→ 翻译 → `verify` → `apply`。
apply 会把已在 zh-CN 别处定义过的 ID 就地替换，不会造成重复定义。
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

TOOLS = Path(__file__).resolve().parent
REPO = TOOLS.parents[1]
ZH = REPO / "Resources/Locale/zh-CN"
OUT = TOOLS / "delta/_zhCN"
ROW_RE = re.compile(r"^[A-Za-z0-9_-]+\t")


def read_rows(path: Path, ncols: int) -> list[list[str]]:
    """制表符分隔；描述里的换行会让一行断成几行，续行拼回上一条。"""
    rows: list[list[str]] = []
    for line in path.read_text(encoding="utf-8").splitlines():
        if ROW_RE.match(line):
            rows.append(line.split("\t", ncols - 1))
        elif rows and line.strip():
            rows[-1][-1] += "\n" + line
    return rows


def fluent_value(text: str) -> str:
    """多行描述续行缩进 4 格；行首是 Fluent 特殊字符的用字面量包起来。"""
    lines = text.split("\n")
    out = [lines[0]]
    for line in lines[1:]:
        if line[:1] in ("[", "*", "."):
            line = '{"' + line[0] + '"}' + line[1:]
        out.append("    " + line)
    return "\n".join(out)


def zh_names() -> dict[str, str]:
    names: dict[str, str] = {}
    for f in ZH.rglob("*.ftl"):
        for line in f.read_text(encoding="utf-8-sig").splitlines():
            if m := re.match(r"^ent-([A-Za-z0-9_-]+)\s*=\s*(.*)$", line):
                names.setdefault(m.group(1), m.group(2).strip())
    return names


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("dump", type=Path, help="audit_entities.py --dump 的输出目录")
    ap.add_argument("--per-file", type=int, default=150)
    args = ap.parse_args()

    blocks: list[str] = []
    for pid, name, desc in read_rows(args.dump / "missing_all.txt", 3):
        b = f"# TODO[新增] 值{' .desc' if desc.strip() else ''}\nent-{pid} = {fluent_value(name)}"
        if desc.strip():
            b += f"\n    .desc = {fluent_value(desc)}"
        blocks.append(b)

    existing = zh_names()
    for pid, desc in read_rows(args.dump / "missing_desc_own.txt", 2):
        if pid not in existing or not desc.strip():
            continue
        blocks.append(f"# TODO[新增] .desc\nent-{pid} = {existing[pid]}\n"
                      f"    .desc = {fluent_value(desc)}")

    OUT.mkdir(parents=True, exist_ok=True)
    for old in OUT.glob("entities-sync-*.ftl"):
        old.unlink()
    header = ("# 实体名/描述缺口（原型 YAML 里的英文，en-US 没有对应 ftl）。\n"
              "# 已是中文的名字是定稿译文，只翻 .desc。\n\n")
    n = 0
    for i in range(0, len(blocks), args.per_file):
        n += 1
        chunk = blocks[i:i + args.per_file]
        (OUT / f"entities-sync-{n}.ftl").write_text(header + "\n\n".join(chunk) + "\n", encoding="utf-8")
    print(f"{len(blocks)} 条实体骨架 → {OUT}/entities-sync-1..{n}.ftl")
    return 0


if __name__ == "__main__":
    sys.exit(main())

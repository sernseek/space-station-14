#!/usr/bin/env python3
"""
从 Prototypes YAML 抽取实体 name/description，生成 zh-CN 的 ent- 覆盖骨架 ftl。

不依赖 pyyaml（仓库 YAML 带 !type: 自定义 tag），用行级状态机解析，
支持单行值、引号值与 `|`/`>`/`>-` 多行块标量。

骨架值为英文原文；翻译流程是把值替换为中文（消息结构由本脚本保证，
翻译方不允许增删 ID）。已存在于 zh-CN 任何 ftl 中的 ent-ID 不再生成。

用法：
  python3 Tools/localization/extract_entities.py --out <骨架输出目录>
  python3 Tools/localization/extract_entities.py --stats   # 只统计
"""
from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
PROTO = REPO / "Resources/Prototypes"
ZH = REPO / "Resources/Locale/zh-CN"

ENTITY_RE = re.compile(r"^- type:\s*entity\s*$")
TYPE_RE = re.compile(r"^- type:")
FIELD_RE = re.compile(r"^  (id|name|description|suffix|abstract):\s*(.*)$")
BLOCK_RE = re.compile(r"^[|>][+-]?\s*$")
FLUENT_ENTITY_ID_RE = re.compile(r"^ent-[A-Za-z0-9_-]+$")


def unquote(v: str) -> str:
    v = v.strip()
    if len(v) >= 2 and v[0] == v[-1] and v[0] in "\"'":
        inner = v[1:-1]
        return inner.replace('\\"', '"') if v[0] == '"' else inner.replace("''", "'")
    # Strip YAML trailing "# comment" from unquoted scalars (e.g. `id: Foo # note`).
    if " #" in v:
        v = v[: v.index(" #")].strip()
    return v


def parse_file(path: Path) -> list[dict]:
    lines = path.read_text(encoding="utf-8", errors="replace").splitlines()
    ents: list[dict] = []
    cur: dict | None = None
    i = 0
    while i < len(lines):
        line = lines[i]
        if ENTITY_RE.match(line):
            cur = {"file": path}
            ents.append(cur)
        elif TYPE_RE.match(line):
            cur = None
        elif cur is not None and (m := FIELD_RE.match(line)):
            key, raw = m.group(1), m.group(2).strip()
            if BLOCK_RE.match(raw):
                # 块标量：收集更深缩进的行
                fold = not raw.startswith("|")
                block: list[str] = []
                j = i + 1
                while j < len(lines) and (not lines[j].strip() or lines[j].startswith("    ")):
                    block.append(lines[j][4:] if lines[j].startswith("    ") else "")
                    j += 1
                i = j - 1
                text = (" " if fold else "\n").join(b for b in block).strip()
                cur[key] = text
            else:
                val = unquote(raw)
                # `id: *Anchor` is a YAML alias re-declaring an existing id — drop the '*'
                # so it collapses onto the real entity instead of a bogus "*Anchor" id.
                if key == "id":
                    val = val.lstrip("&*").strip()
                cur[key] = val
        i += 1
    return [e for e in ents if e.get("id")]


def collect_existing_zh() -> set[str]:
    have: set[str] = set()
    for f in ZH.rglob("*.ftl"):
        for l in f.read_text(encoding="utf-8").splitlines():
            if m := re.match(r"^ent-([A-Za-z0-9_]+)\s*=", l):
                have.add(m.group(1))
    return have


def ftl_escape(v: str) -> str:
    # Fluent 值内的 { } 需要转义为字面量
    return v.replace("{", '{"{"}').replace("}", '{"}"}') if ("{" in v or "}" in v) else v


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", type=Path, help="骨架 ftl 输出目录")
    ap.add_argument("--stats", action="store_true")
    args = ap.parse_args()

    existing = collect_existing_zh()
    by_out: dict[Path, list[dict]] = {}
    total = n_name = n_desc = 0
    for yml in sorted(PROTO.rglob("*.yml")):
        for e in parse_file(yml):
            # Fluent message IDs cannot contain characters such as '&'.
            # Prototypes with such IDs need an explicit localizationId mapping.
            if not FLUENT_ENTITY_ID_RE.fullmatch(f"ent-{e['id']}"):
                continue
            if not e.get("name") or e["id"] in existing:
                continue
            total += 1
            n_name += 1
            if e.get("description"):
                n_desc += 1
            rel = yml.relative_to(PROTO)
            out_rel = Path("entities") / rel.parent / (rel.stem + ".ftl")
            by_out.setdefault(out_rel, []).append(e)

    print(f"待翻实体: {total}（name {n_name} / desc {n_desc}），输出文件 {len(by_out)} 个")
    if args.stats or not args.out:
        return 0

    for out_rel, ents in by_out.items():
        dst = args.out / out_rel
        dst.parent.mkdir(parents=True, exist_ok=True)
        blocks = []
        for e in ents:
            b = f"ent-{e['id']} = {ftl_escape(e['name'])}"
            if e.get("description"):
                b += f"\n    .desc = {ftl_escape(e['description'])}"
            blocks.append(b)
        dst.write_text("\n\n".join(blocks) + "\n", encoding="utf-8")
    print(f"骨架已写入 {args.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

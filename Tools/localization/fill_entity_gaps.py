#!/usr/bin/env python3
"""
用「已有译文」作翻译记忆，补 audit_entities.py 报出的实体词条缺口。

原理：同一句英文原文在仓库里往往已被翻译过（例如 167 个 airlock 变体共用
"It opens, it closes, and maybe crushes you."）。先从现有 zh-CN ftl 反查
每条译文对应的英文原文，建 en→zh 记忆库，再回填缺口；命中不了的留给人工。

用法：
  python3 Tools/localization/fill_entity_gaps.py --report        # 只看命中率
  python3 Tools/localization/fill_entity_gaps.py --write <ftl>   # 写出补全 ftl
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from audit_entities import (  # noqa: E402
    FLUENT_ENTITY_ID_RE, ZH, load_protos, resolve,
)

ZH_MSG_RE = re.compile(r"^ent-([A-Za-z0-9_-]+)\s*=\s*(.*)$")
ZH_ATTR_RE = re.compile(r"^\s+\.([A-Za-z][A-Za-z0-9_-]*)\s*=\s*(.*)$")


def load_zh_values() -> tuple[dict[str, str], dict[str, str]]:
    """返回 (ent-ID -> 中文名, ent-ID -> 中文 desc)。"""
    names: dict[str, str] = {}
    descs: dict[str, str] = {}
    for f in sorted(ZH.rglob("*.ftl")):
        cur: str | None = None
        for line in f.read_text(encoding="utf-8-sig").splitlines():
            if m := ZH_MSG_RE.match(line):
                cur = m.group(1)
                if v := m.group(2).strip():
                    names.setdefault(cur, v)
            elif cur and (a := ZH_ATTR_RE.match(line)):
                if a.group(1) == "desc" and (v := a.group(2).strip()):
                    descs.setdefault(cur, v)
            elif line and not line[0].isspace():
                cur = None
    return names, descs


def build_tm(protos, zh_map, field) -> dict[str, str]:
    """en 原文 -> 出现最多的中文译文。"""
    buckets: dict[str, Counter] = defaultdict(Counter)
    for pid, zh in zh_map.items():
        if pid not in protos:
            continue
        en, _ = resolve(protos, pid, field)
        if en:
            buckets[en][zh] += 1
    return {en: c.most_common(1)[0][0] for en, c in buckets.items()}


def load_manual() -> tuple[dict[str, str], dict[str, str]]:
    """人工补译表。优先级高于自动记忆库——记忆库里可能有历史误译。"""
    path = Path(__file__).resolve().parent / "manual_glossary.tsv"
    names: dict[str, str] = {}
    descs: dict[str, str] = {}
    if not path.exists():
        return names, descs
    for line in path.read_text(encoding="utf-8").splitlines():
        if not line.strip() or line.startswith(">"):
            continue
        kind, en, zh = line.split("\t", 2)
        (names if kind == "NAME" else descs)[en.replace("\\n", "\n")] = zh.replace("\\n", "\n")
    return names, descs


def ftl_escape(v: str) -> str:
    return v.replace("{", '{"{"}').replace("}", '{"}"}') if ("{" in v or "}" in v) else v


def ftl_value(v: str, indent: int) -> str:
    """
    Fluent 多行值的续行必须缩进，否则解析器会把它当成新消息、整个文件报
    `Expected one of "a-zA-Z"`。indent 是该值所属层级的缩进宽度。
    """
    lines = [ln.strip() for ln in ftl_escape(v).splitlines()]
    lines = [ln for ln in lines if ln]
    if not lines:
        return ""
    pad = " " * indent
    return ("\n" + pad).join(lines)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--report", action="store_true")
    ap.add_argument("--write", type=Path, help="补全条目输出到该 ftl")
    ap.add_argument("--fix-generic", action="store_true",
                    help="就地改掉「译名被写成父原型类目词」的存量误译")
    args = ap.parse_args()

    if args.fix_generic:
        return fix_generic()

    protos = load_protos()
    zh_names, zh_descs = load_zh_values()
    man_name, man_desc = load_manual()
    tm_name = build_tm(protos, zh_names, "name") | man_name
    tm_desc = build_tm(protos, zh_descs, "description") | man_desc
    print(f"翻译记忆：name {len(tm_name)} 条 / desc {len(tm_desc)} 条"
          f"（其中人工补译 name {len(man_name)} / desc {len(man_desc)}）")

    # A 类：zh 完全没有该 ent-，整条新增到独立 ftl。
    new_entries: list[tuple[str, str, str | None]] = []
    # C 类：zh 已有名字但缺 .desc，必须就地插到原条目下——另起一条会撞 Fluent 重复键。
    desc_patches: dict[str, str] = {}
    todo_name: Counter = Counter()
    todo_desc: Counter = Counter()

    for pid, e in sorted(protos.items()):
        if e.get("abstract") == "true" or not FLUENT_ENTITY_ID_RE.fullmatch(f"ent-{pid}"):
            continue
        en_name, _ = resolve(protos, pid, "name")
        if not en_name:
            continue
        en_desc, _ = resolve(protos, pid, "description")

        has_name = pid in zh_names
        needs_desc = bool(en_desc) and pid not in zh_descs
        if has_name and not needs_desc:
            continue

        zh_d = tm_desc.get(en_desc) if en_desc else None
        if needs_desc and not zh_d:
            todo_desc[en_desc] += 1

        if has_name:
            if zh_d:
                desc_patches[pid] = zh_d
            continue

        zh_n = tm_name.get(en_name)
        if not zh_n:
            todo_name[en_name] += 1
            continue
        new_entries.append((pid, zh_n, zh_d if needs_desc else None))

    print(f"新增条目：{len(new_entries)}    就地补 .desc：{len(desc_patches)}")
    print(f"记忆库未覆盖的英文 name：{len(todo_name)} 种（{sum(todo_name.values())} 条）")
    print(f"记忆库未覆盖的英文 desc：{len(todo_desc)} 种（{sum(todo_desc.values())} 条）")

    if args.report:
        print("\n--- 待人工翻译 name ---")
        for en, n in todo_name.most_common():
            print(f"  [{n:>3}] {en}")
        print("\n--- 待人工翻译 desc ---")
        for en, n in todo_desc.most_common():
            print(f"  [{n:>3}] {en}")

    if args.write:
        blocks = []
        for pid, zh_n, zh_d in new_entries:
            b = f"ent-{pid} = {ftl_value(zh_n, 4)}"
            if zh_d:
                b += f"\n    .desc = {ftl_value(zh_d, 8)}"
            blocks.append(b)
        args.write.parent.mkdir(parents=True, exist_ok=True)
        args.write.write_text("\n\n".join(blocks) + "\n", encoding="utf-8")
        print(f"\n已写入 {args.write}（{len(new_entries)} 条新增）")

        patched = apply_desc_patches(desc_patches)
        print(f"已就地补 .desc：{patched} 条，涉及 {len(set(desc_patches))} 个 ID")
    return 0


# 只可能是某个抽象/Base 原型的名字。落在有独立英文名的具体实体上，必然是批次翻译
# 把父原型的译文错误下放了——玩家看到的是「错的中文」，比漏译更难被发现。
GENERIC_NAMES = {"物品", "武器", "弹药", "状态效果", "家具", "结构",
                 "衣物", "装备", "机器", "工具", "容器", "建筑"}
GENERIC_EN = {"item", "weapon", "ammo", "structure", "furniture",
              "clothing", "machine", "tool", "container"}


def find_generic_mistranslations(protos, zh_names) -> dict[str, tuple[str, str]]:
    """ent-ID -> (英文原名, 当前误译)。"""
    out: dict[str, tuple[str, str]] = {}
    for pid, zh in zh_names.items():
        if zh.strip() not in GENERIC_NAMES or pid not in protos:
            continue
        e = protos[pid]
        if e.get("abstract") == "true" or not FLUENT_ENTITY_ID_RE.fullmatch(f"ent-{pid}"):
            continue
        en, src = resolve(protos, pid, "name")
        # src != pid 表示名字本来就是继承来的，那么继承译文是合理的
        if not en or src != pid or en.strip().lower() in GENERIC_EN:
            continue
        out[pid] = (en, zh)
    return out


def fix_generic() -> int:
    protos = load_protos()
    zh_names, _ = load_zh_values()
    man_name, _ = load_manual()
    tm = build_tm(protos, zh_names, "name") | man_name

    bad = find_generic_mistranslations(protos, zh_names)
    fixes = {pid: tm[en] for pid, (en, _) in bad.items() if tm.get(en) and tm[en].strip() not in GENERIC_NAMES}
    missing = {pid: en for pid, (en, _) in bad.items() if pid not in fixes}

    print(f"检出误译 {len(bad)} 条，可修 {len(fixes)} 条，缺译文 {len(missing)} 条")
    for pid, en in sorted(missing.items()):
        print(f"  待补译文: {pid}\t{en}")

    done = 0
    for f in sorted(ZH.rglob("*.ftl")):
        lines = f.read_text(encoding="utf-8-sig").splitlines()
        touched = False
        for i, line in enumerate(lines):
            m = ZH_MSG_RE.match(line)
            if m and m.group(1) in fixes:
                lines[i] = f"ent-{m.group(1)} = {ftl_value(fixes[m.group(1)], 4)}"
                touched = True
                done += 1
        if touched:
            f.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(f"已就地修正 {done} 条")
    return 0


def apply_desc_patches(patches: dict[str, str]) -> int:
    """把 .desc 插到已有 ent- 条目的下一行。"""
    if not patches:
        return 0
    done = 0
    for f in sorted(ZH.rglob("*.ftl")):
        lines = f.read_text(encoding="utf-8-sig").splitlines()
        out: list[str] = []
        touched = False
        for line in lines:
            out.append(line)
            m = ZH_MSG_RE.match(line)
            if m and m.group(1) in patches and m.group(2).strip():
                out.append(f"    .desc = {ftl_value(patches.pop(m.group(1)), 8)}")
                touched = True
                done += 1
        if touched:
            f.write_text("\n".join(out) + "\n", encoding="utf-8")
    return done


if __name__ == "__main__":
    sys.exit(main())

#!/usr/bin/env python3
"""
实体 ent- 词条汉化缺口审计。

按引擎 (RobustToolbox LocalizationManager.Entity.cs) 的真实解析语义核对：

  locId 恒为 `ent-<被查实体自身的 ID>`，遍历父链时**不会**换成父原型的 locId。
  因此 name/desc 各自独立解析：
    1. 先查 ftl `ent-X` 的 value / .desc；
    2. 没查到就沿父链依次取 YAML 的 name: / description:（英文）。

  推论：`ent-X` 只翻了名字、没写 `.desc`，游戏里 desc 会掉到父原型的**英文** YAML，
  而**不会**继承父原型的中文 `.desc`。这类条目在界面上表现为「名字中文、描述英文」。

用法：
  python3 Tools/localization/audit_entities.py            # 汇总报告
  python3 Tools/localization/audit_entities.py --dump <目录>   # 导出缺口清单
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
FIELD_RE = re.compile(r"^  (id|parent|name|description|suffix|abstract):\s*(.*)$")
BLOCK_RE = re.compile(r"^[|>][+-]?\s*$")
FLUENT_ENTITY_ID_RE = re.compile(r"^ent-[A-Za-z0-9_-]+$")

ZH_MSG_RE = re.compile(r"^ent-([A-Za-z0-9_-]+)\s*=\s*(.*)$")
ZH_ATTR_RE = re.compile(r"^\s+\.([A-Za-z][A-Za-z0-9_-]*)\s*=")


def unquote(v: str) -> str:
    v = v.strip()
    if len(v) >= 2 and v[0] == v[-1] and v[0] in "\"'":
        inner = v[1:-1]
        return inner.replace('\\"', '"') if v[0] == '"' else inner.replace("''", "'")
    if " #" in v:
        v = v[: v.index(" #")].strip()
    return v


def parse_parents(raw: str) -> list[str]:
    raw = raw.strip()
    if raw.startswith("["):
        raw = raw.strip("[]")
        return [p.strip().lstrip("&*").strip() for p in raw.split(",") if p.strip()]
    raw = unquote(raw)
    return [raw.lstrip("&*").strip()] if raw else []


def parse_file(path: Path) -> list[dict]:
    # utf-8-sig: 仓库里 412 个 prototype yml 带 UTF-8 BOM，不剥掉会让文件首个实体漏解析。
    lines = path.read_text(encoding="utf-8-sig", errors="replace").splitlines()
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
                fold = not raw.startswith("|")
                block: list[str] = []
                j = i + 1
                while j < len(lines) and (not lines[j].strip() or lines[j].startswith("    ")):
                    block.append(lines[j][4:] if lines[j].startswith("    ") else "")
                    j += 1
                i = j - 1
                cur[key] = (" " if fold else "\n").join(block).strip()
            elif key == "parent":
                cur["parents"] = parse_parents(raw)
            else:
                val = unquote(raw)
                if key == "id":
                    val = val.lstrip("&*").strip()
                cur[key] = val
        i += 1
    return [e for e in ents if e.get("id")]


def load_protos() -> dict[str, dict]:
    protos: dict[str, dict] = {}
    for yml in sorted(PROTO.rglob("*.yml")):
        for e in parse_file(yml):
            protos[e["id"]] = e
    return protos


def resolve(protos: dict[str, dict], pid: str, field: str) -> tuple[str | None, str | None]:
    """沿父链取首个非空 field，返回 (值, 提供该值的原型 ID)。"""
    seen: set[str] = set()
    stack = [pid]
    while stack:
        cur = stack.pop(0)
        if cur in seen or cur not in protos:
            continue
        seen.add(cur)
        e = protos[cur]
        if e.get(field):
            return e[field], cur
        stack.extend(e.get("parents", []))
    return None, None


def load_zh() -> tuple[set[str], set[str]]:
    """返回 (有 name 值的 ent- ID, 带 .desc 的 ent- ID)。"""
    names: set[str] = set()
    descs: set[str] = set()
    for f in ZH.rglob("*.ftl"):
        cur: str | None = None
        for line in f.read_text(encoding="utf-8-sig").splitlines():
            if m := ZH_MSG_RE.match(line):
                cur = m.group(1)
                if m.group(2).strip():
                    names.add(cur)
            elif cur and (a := ZH_ATTR_RE.match(line)):
                if a.group(1) == "desc":
                    descs.add(cur)
            elif line and not line[0].isspace():
                cur = None
    return names, descs


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dump", type=Path, help="把缺口清单写到该目录")
    args = ap.parse_args()

    protos = load_protos()
    zh_names, zh_descs = load_zh()

    missing_all: list[tuple[str, str, str]] = []      # 无任何 zh 词条
    missing_desc_own: list[tuple[str, str]] = []      # 有 zh name，自身 YAML 有 description 却没译
    missing_desc_inherit: list[tuple[str, str, str]] = []  # 有 zh name，desc 继承自父原型（英文泄漏）

    considered = 0
    for pid, e in sorted(protos.items()):
        if e.get("abstract") == "true":
            continue
        if not FLUENT_ENTITY_ID_RE.fullmatch(f"ent-{pid}"):
            continue
        en_name, _ = resolve(protos, pid, "name")
        if not en_name:
            continue  # 无名实体（纯标记原型），界面不展示
        considered += 1
        en_desc, desc_src = resolve(protos, pid, "description")

        if pid not in zh_names:
            missing_all.append((pid, en_name, en_desc or ""))
            continue
        if en_desc and pid not in zh_descs:
            if desc_src == pid:
                missing_desc_own.append((pid, en_desc))
            else:
                missing_desc_inherit.append((pid, desc_src or "?", en_desc))

    print(f"可展示实体原型总数：{considered}")
    print(f"zh-CN 已有 ent- 名称词条：{len(zh_names)}    带 .desc：{len(zh_descs)}")
    print()
    print(f"[A] 完全没有 zh 词条（名字+描述都是英文）：{len(missing_all)}")
    print(f"[B] 有中文名、自身 YAML 有 description 但没译：{len(missing_desc_own)}")
    print(f"[C] 有中文名、描述继承自父原型 → 掉英文：{len(missing_desc_inherit)}")
    print(f"    小计 desc 缺口：{len(missing_desc_own) + len(missing_desc_inherit)}")

    if args.dump:
        args.dump.mkdir(parents=True, exist_ok=True)
        (args.dump / "missing_all.txt").write_text(
            "\n".join(f"{p}\t{n}\t{d}" for p, n, d in missing_all) + "\n", encoding="utf-8")
        (args.dump / "missing_desc_own.txt").write_text(
            "\n".join(f"{p}\t{d}" for p, d in missing_desc_own) + "\n", encoding="utf-8")
        (args.dump / "missing_desc_inherit.txt").write_text(
            "\n".join(f"{p}\t<-{s}\t{d}" for p, s, d in missing_desc_inherit) + "\n", encoding="utf-8")
        print(f"\n清单已写入 {args.dump}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

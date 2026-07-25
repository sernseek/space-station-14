#!/usr/bin/env python3
"""
抽取地图 YAML 里内嵌的 PaperComponent.content 正文。

这些正文不是 loc key，是地图作者直接写死的英文段落，Fluent 够不着。
本工具按与 Content.Shared/Localization/MapStringLocalizer.cs 一致的规则算 key：

    map-paper-<sha256(规范化正文) 前 12 位十六进制>

规范化 = 去首尾空白 + 所有空白串（含换行）折叠成单个空格。这样地图那边重排行
不会让 key 失效；上游真改了文案则 key 变化、回落英文，不会显示过期译文。

用法：
  python3 Tools/localization/extract_map_papers.py            # 统计
  python3 Tools/localization/extract_map_papers.py --dump <文件>  # 导出 key/正文
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
MAPS = REPO / "Resources/Maps"
EN = REPO / "Resources/Locale/en-US"

# 块标量指示符：| 或 >，后面可跟缩进数字与 +/- 截断符
BLOCK_RE = re.compile(r"^[|>]\d*[+-]?$")
LOC_KEY_RE = re.compile(r"^[a-z][a-z0-9-]*$")


# 与 MapStringLocalizer.Normalize 一致：只把这几个 ASCII 空白折叠成单个空格。
# 不能用 str.split()，那会把 Unicode 空白也算进去，和 C# 侧对不上。
ASCII_WS = " \t\n\r\f\v"

FNV_OFFSET_BASIS = 14695981039346656037
FNV_PRIME = 1099511628211
MASK64 = (1 << 64) - 1


def normalize(text: str) -> str:
    out: list[str] = []
    pending = False
    for c in text:
        if c in ASCII_WS:
            pending = bool(out)
            continue
        if pending:
            out.append(" ")
            pending = False
        out.append(c)
    return "".join(out)


def key_of(text: str) -> str:
    """FNV-1a 64 over UTF-16 code units。C# 侧沙箱禁用 SHA256，故改用纯算术摘要。"""
    h = FNV_OFFSET_BASIS
    data = normalize(text).encode("utf-16-le")
    for i in range(0, len(data), 2):
        h = ((h ^ data[i]) * FNV_PRIME) & MASK64
        h = ((h ^ data[i + 1]) * FNV_PRIME) & MASK64
    return f"map-paper-{h >> 16:012x}"


def collect() -> Counter:
    found: Counter = Counter()
    for path in MAPS.rglob("*.yml"):
        lines = path.read_text(encoding="utf-8-sig", errors="replace").splitlines()
        ctx = None
        i = 0
        while i < len(lines):
            s = lines[i].strip()
            if s.startswith("- type: "):
                ctx = s[8:].strip()
            elif ctx == "Paper" and s.startswith("content:"):
                val = s[len("content:"):].strip()
                if BLOCK_RE.match(val):
                    indent = len(lines[i]) - len(lines[i].lstrip())
                    buf: list[str] = []
                    j = i + 1
                    while j < len(lines) and (
                        not lines[j].strip()
                        or (len(lines[j]) - len(lines[j].lstrip())) > indent
                    ):
                        buf.append(lines[j].strip())
                        j += 1
                    val = " ".join(x for x in buf if x)
                    i = j - 1
                else:
                    val = val.strip("\"'")
                if val:
                    found[val] += 1
            i += 1
    return found


def load_en_values() -> dict[str, str]:
    """en-US 里所有多行/单行消息的正文 -> 消息 ID，用来复用已翻译的书本。"""
    out: dict[str, str] = {}
    msg = re.compile(r"^([a-zA-Z][\w-]*)\s*=\s*(.*)$")
    for f in EN.rglob("*.ftl"):
        cur_id = None
        buf: list[str] = []
        for line in f.read_text(encoding="utf-8-sig").splitlines():
            if m := msg.match(line):
                if cur_id:
                    out.setdefault(normalize(" ".join(buf)), cur_id)
                cur_id, buf = m.group(1), [m.group(2)]
            elif cur_id and line.startswith(" "):
                buf.append(line.strip())
            elif line.strip() == "":
                continue
            else:
                if cur_id:
                    out.setdefault(normalize(" ".join(buf)), cur_id)
                cur_id, buf = None, []
        if cur_id:
            out.setdefault(normalize(" ".join(buf)), cur_id)
    out.pop("", None)
    return out


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--dump", type=Path)
    args = ap.parse_args()

    papers = collect()
    en_values = load_en_values()

    literal = {k: v for k, v in papers.items() if not LOC_KEY_RE.fullmatch(k)}
    reusable = {k: en_values[normalize(k)] for k in literal if normalize(k) in en_values}

    print(f"地图内嵌纸张 {sum(papers.values())} 处，去重 {len(papers)} 段")
    print(f"  其中已是 loc key：{len(papers) - len(literal)} 段")
    print(f"  写死的英文正文：{len(literal)} 段（{sum(literal.values())} 处）")
    print(f"  正文与 en-US 已有消息完全一致、可直接复用译文：{len(reusable)} 段")
    for text, mid in sorted(reusable.items(), key=lambda x: x[1]):
        print(f"    {mid}  ({len(text)} 字符)")

    if args.dump:
        rows = []
        for text, count in sorted(literal.items(), key=lambda x: -len(x[0])):
            rows.append(f"### {key_of(text)}\t{count}处\t{len(text)}字符"
                        + (f"\t复用={reusable[text]}" if text in reusable else "")
                        + f"\n{normalize(text)}\n")
        args.dump.write_text("\n".join(rows), encoding="utf-8")
        print(f"\n已导出 {args.dump}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

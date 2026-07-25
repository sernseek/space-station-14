#!/usr/bin/env python3
"""
按词元词典组合出摄像头名的中文译名，补进 map-strings.ftl。

摄像头名有 2000 多条、且大多是有限词汇的自由组合（"Bridge East"、"Main Hall West"、
"AI Core Exterior"），逐条人工翻既不现实也保证不了一致。这里按 map_string_tokens.tsv
逐词元翻译再拼接；词典里没有的词元（人名、缩写、拼错的词）原样保留。

map-strings.ftl 里已有的手写条目优先级更高，本工具不会覆盖它们。

用法：
  python3 Tools/localization/compose_map_strings.py --preview 40   # 看效果
  python3 Tools/localization/compose_map_strings.py --write        # 追加进 ftl
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from extract_map_strings import collect, slug, stem  # noqa: E402

REPO = Path(__file__).resolve().parents[2]
FTL = REPO / "Resources/Locale/zh-CN/_zhCN/map-strings.ftl"
TOKENS = Path(__file__).resolve().parent / "map_string_tokens.tsv"

# 字母数字连写保持成一个词元，否则 "V09"/"5A" 会被拆成 "V 09"/"5 A"
TOKEN_RE = re.compile(r"[A-Za-z][A-Za-z']*\d*|\d+[A-Za-z]*")
CJK_RE = re.compile(r"[一-鿿]")

# 中文方位是「西北」不是「北西」；逐词元拼接必然拼反，统一在后处理里纠正。
DIRECTION_FIXES = {"北西": "西北", "北东": "东北", "南西": "西南", "南东": "东南"}


def load_tokens() -> dict[str, str]:
    out: dict[str, str] = {}
    for line in TOKENS.read_text(encoding="utf-8").splitlines():
        if not line.strip() or line.startswith(">"):
            continue
        parts = line.split("\t")
        out[parts[0].strip().lower()] = parts[1].strip() if len(parts) > 1 else ""
    return out


def existing_keys() -> set[str]:
    if not FTL.exists():
        return set()
    return {m.group(1) for line in FTL.read_text(encoding="utf-8").splitlines()
            if (m := re.match(r"^map-string-([a-z0-9-]+)\s*=", line))}


def compose(raw: str, tokens: dict[str, str]) -> str | None:
    """拼接译名；一个已知词元都没命中就返回 None（整条留英文比拼半截强）。"""
    words = TOKEN_RE.findall(raw)
    max_phrase = max((len(k.split()) for k in tokens if " " in k), default=1)

    pieces: list[str] = []
    hits = 0
    i = 0
    while i < len(words):
        # 先吃最长的固定搭配（"locker room" → 更衣室，而不是 储物柜+室）
        for span in range(min(max_phrase, len(words) - i), 0, -1):
            phrase = " ".join(w.lower() for w in words[i:i + span])
            if phrase in tokens:
                hits += 1
                if tokens[phrase]:
                    pieces.append(tokens[phrase])
                i += span
                break
        else:
            tok = words[i]
            # 未知词元原样保留：人名、缩写、编号
            pieces.append(tok if len(tok) > 1 else tok.upper())
            i += 1

    if hits == 0 or not pieces:
        return None

    # 中文之间不留空格，中文与拉丁/数字之间留一个
    out = pieces[0]
    for piece in pieces[1:]:
        prev_cjk = bool(CJK_RE.search(out[-1]))
        cur_cjk = bool(CJK_RE.search(piece[0]))
        out += ("" if prev_cjk and cur_cjk else " ") + piece

    for wrong, right in DIRECTION_FIXES.items():
        out = out.replace(wrong, right)
    return out


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--preview", type=int, default=0)
    ap.add_argument("--write", action="store_true")
    args = ap.parse_args()

    tokens = load_tokens()
    have = existing_keys()
    warps, cams = collect()

    stems: Counter = Counter()
    for name, count in cams.items():
        stems[stem(name)] += count
    for name, count in warps.items():
        stems[name] += count

    composed: list[tuple[str, str, str, int]] = []   # slug, 原文, 译文, 实例数
    skipped: list[tuple[str, int]] = []
    # 大小写/标点不同的写法会 slug 成同一个 key（"AI Core East" 和 "ai core east"），
    # 按出现次数降序遍历，只保留最常见的那个写法。
    claimed = set(have)
    for name, count in stems.most_common():
        key = slug(name)
        if not key or key in claimed:
            continue
        zh = compose(name, tokens)
        if zh is None or not CJK_RE.search(zh):
            skipped.append((name, count))
            continue
        claimed.add(key)
        composed.append((key, name, zh, count))

    print(f"可组合 {len(composed)} 条（{sum(c for *_, c in composed)} 个实例）")
    print(f"无法组合、保留英文 {len(skipped)} 条（{sum(c for _, c in skipped)} 个实例）")

    if args.preview:
        print(f"\n--- 前 {args.preview} 条 ---")
        for key, name, zh, count in composed[:args.preview]:
            print(f"  [{count:>3}] {name:<38} → {zh}")
        print(f"\n--- 未覆盖样例 ---")
        for name, count in skipped[:20]:
            print(f"  [{count:>3}] {name}")

    if args.write:
        lines = ["", "## 以下由 compose_map_strings.py 按词元词典组合生成，",
                 "## 需要润色的条目直接改这里的值即可（本工具不会覆盖已有 key）。", ""]
        for key, name, zh, _ in sorted(composed, key=lambda x: x[0]):
            lines.append(f"# {name}")
            lines.append(f"map-string-{key} = {zh}")
        with FTL.open("a", encoding="utf-8") as f:
            f.write("\n".join(lines) + "\n")
        print(f"\n已追加 {len(composed)} 条到 {FTL}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

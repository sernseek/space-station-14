#!/usr/bin/env python3
"""
抽取地图 YAML 里玩家可见、但 Fluent 的 ent- 机制覆盖不到的裸字符串。

目前两类：
  - WarpPointComponent.location      幽灵传送菜单
  - SurveillanceCameraComponent.id   摄像头监视器列表

slug 规则必须与 Content.Client/Localization/MapStringLocalizer.cs 的 Slug() 一致：
小写 ASCII 字母数字，其余连续字符折叠成单个 '-'。

用法：
  python3 Tools/localization/extract_map_strings.py --list          # 按频次列出待译原文
  python3 Tools/localization/extract_map_strings.py --min-count 3   # 只列出现次数 >= 3 的
"""
from __future__ import annotations

import argparse
import re
import sys
from collections import Counter
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
MAPS = REPO / "Resources/Maps"

FIELD_OF = {"WarpPoint": "location", "SurveillanceCamera": "id"}


def slug(raw: str) -> str:
    out: list[str] = []
    pending = False
    for c in raw:
        if c.isascii() and c.isalnum():
            if pending and out:
                out.append("-")
            pending = False
            out.append(c.lower())
        else:
            pending = True
    return "".join(out)


def stem(raw: str) -> str:
    """去掉尾部编号，与 MapStringLocalizer 的 stem 回退保持一致。"""
    t = raw.rstrip()
    i = len(t)
    while i > 0 and t[i - 1].isdigit() and t[i - 1].isascii():
        i -= 1
    return t[:i].rstrip() if 0 < i < len(t) else raw


def collect() -> tuple[Counter, Counter]:
    warps: Counter = Counter()
    cams: Counter = Counter()
    for path in MAPS.rglob("*.yml"):
        ctx = None
        for line in path.read_text(encoding="utf-8-sig", errors="replace").splitlines():
            s = line.strip()
            if s.startswith("- type: "):
                ctx = s[8:].strip()
                continue
            field = FIELD_OF.get(ctx or "")
            if not field or not s.startswith(field + ":"):
                continue
            val = s[len(field) + 1:].strip().strip("\"'")
            if not val:
                continue
            (warps if ctx == "WarpPoint" else cams)[val] += 1
    return warps, cams


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--list", action="store_true")
    ap.add_argument("--min-count", type=int, default=1)
    args = ap.parse_args()

    warps, cams = collect()
    cam_stems: Counter = Counter()
    for k, v in cams.items():
        cam_stems[stem(k)] += v

    print(f"WarpPoint.location   实例 {sum(warps.values())}  去重 {len(warps)}")
    print(f"Camera.id            实例 {sum(cams.values())}  去重 {len(cams)}  去编号后 {len(cam_stems)}")
    for n in (100, 200, 400, 800):
        acc = sum(v for _, v in cam_stems.most_common(n))
        print(f"  摄像头前 {n:>4} 个词条覆盖 {acc}/{sum(cams.values())} 实例 = {acc * 100 // sum(cams.values())}%")

    if args.list:
        print("\n# WARP")
        for k, v in warps.most_common():
            if v >= args.min_count:
                print(f"{v}\t{slug(k)}\t{k}")
        print("\n# CAMERA")
        for k, v in cam_stems.most_common():
            if v >= args.min_count:
                print(f"{v}\t{slug(k)}\t{k}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

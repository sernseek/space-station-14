#!/usr/bin/env python3
"""
上游同步后的增量翻译工具（骨架填值模式）。

`make`  从 en-US 与 zh-CN 的差集生成"待翻译骨架"到 Tools/localization/delta/，
        每个骨架文件是合法 Fluent：消息 ID / 属性名 / 语法元素已就位，
        需要翻译的部分填的是英文原文，已翻好的部分直接填中文。
        翻译方只改等号右边的值，无从编造 ID。
`apply` 把骨架回填进 Resources/Locale/zh-CN/ 对应文件：已存在的消息整块替换，
        不存在的追加到文件末尾。

用法：
  python3 Tools/localization/delta_sync.py make  [--baseline <commit>] [--batch-size 250]
  python3 Tools/localization/delta_sync.py apply [--dry-run]
"""
from __future__ import annotations

import argparse
import re
import subprocess
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
TOOLS = Path(__file__).resolve().parent
EN = REPO / "Resources/Locale/en-US"
ZH = REPO / "Resources/Locale/zh-CN"
DELTA = TOOLS / "delta"

MSG_RE = re.compile(r"^(-?[A-Za-z][A-Za-z0-9_-]*)\s*=")
ATTR_RE = re.compile(r"^\s+\.([A-Za-z][A-Za-z0-9_-]*)\s*=")


class Message:
    """一条 Fluent 消息，按 part 切开：'' 表示消息值本身，其余是属性名。"""

    def __init__(self, mid: str, start: int):
        self.id = mid
        self.start = start
        self.end = start
        self.parts: dict[str, list[str]] = {}
        self.order: list[str] = []

    def add_part(self, name: str, line: str) -> None:
        self.parts[name] = [line]
        self.order.append(name)

    def append_line(self, name: str, line: str) -> None:
        self.parts[name].append(line)

    def lines(self) -> list[str]:
        out: list[str] = []
        for name in self.order:
            out.extend(self.parts[name])
        return out


def parse(text: str) -> tuple[list[str], dict[str, Message]]:
    """返回 (行列表, {消息ID: Message})。"""
    lines = text.splitlines()
    msgs: dict[str, Message] = {}
    cur: Message | None = None
    cur_part: str | None = None
    for i, line in enumerate(lines):
        if m := MSG_RE.match(line):
            cur = Message(m.group(1), i)
            cur_part = ""
            cur.add_part("", line)
            msgs[cur.id] = cur
            cur.end = i + 1
        elif cur is not None and (m := ATTR_RE.match(line)):
            cur_part = m.group(1)
            cur.add_part(cur_part, line)
            cur.end = i + 1
        elif (cur is not None and cur_part is not None and line.strip()
              and not line.lstrip().startswith("#")):
            # 续行。注意选择器的收尾 `}` 在仓库里常写在第 0 列，必须一并收进来，
            # 否则骨架会丢掉右花括号、产出非法 Fluent。
            cur.append_line(cur_part, line)
            cur.end = i + 1
        else:
            cur = None
            cur_part = None
    return lines, msgs


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8-sig")


def git_show(rev: str, rel: str) -> str | None:
    r = subprocess.run(["git", "show", f"{rev}:{rel}"], cwd=REPO, capture_output=True)
    return r.stdout.decode("utf-8-sig") if r.returncode == 0 else None


def build_skeletons(baseline: str) -> dict[str, tuple[list[str], dict[str, list[str]]]]:
    """{相对路径: (骨架行, {消息ID: 待翻译 part 列表})}。"""
    result: dict[str, tuple[list[str], dict[str, list[str]]]] = {}
    for en_path in sorted(EN.rglob("*.ftl")):
        rel = en_path.relative_to(EN).as_posix()
        _, en_msgs = parse(read(en_path))
        zh_path = ZH / rel
        zh_msgs: dict[str, Message] = {}
        if zh_path.is_file():
            _, zh_msgs = parse(read(zh_path))

        # en-US 自基线以来改过内容的 part —— 旧译文语义已过期，需要重译
        changed: set[tuple[str, str]] = set()
        old_text = git_show(baseline, f"Resources/Locale/en-US/{rel}")
        if old_text is not None:
            _, old_msgs = parse(old_text)
            for mid, msg in en_msgs.items():
                old = old_msgs.get(mid)
                if old is None:
                    continue
                for part in msg.order:
                    if part in old.parts and old.parts[part] != msg.parts[part]:
                        changed.add((mid, part))

        out_lines: list[str] = []
        todo: dict[str, list[str]] = {}
        for mid, msg in en_msgs.items():
            zh = zh_msgs.get(mid)
            todo_parts = [
                p for p in msg.order
                if zh is None or p not in zh.parts or (mid, p) in changed
            ]
            if not todo_parts:
                continue

            labels = ["值" if p == "" else f".{p}" for p in todo_parts]
            reason = "改动" if any((mid, p) in changed for p in todo_parts) else "新增"
            out_lines.append(f"# TODO[{reason}] {' '.join(labels)}")
            for part in msg.order:
                if part in todo_parts:
                    out_lines.extend(msg.parts[part])          # 英文原文，待翻译
                elif zh is not None and part in zh.parts:
                    out_lines.extend(zh.parts[part])           # 已有译文，保持不变
            out_lines.append("")
            todo[mid] = todo_parts

        if out_lines:
            result[rel] = (out_lines, todo)
    return result


def cmd_make(args: argparse.Namespace) -> int:
    baseline = args.baseline or (TOOLS / "baseline.txt").read_text().strip()

    # `_zhCN/` 是手工维护的（地图纸张等 en-US 里根本没有的条目），重建时保留。
    if DELTA.exists():
        print(f"删除旧骨架 {DELTA}（保留 _zhCN/）")
        for p in sorted(DELTA.rglob("*"), reverse=True):
            if "_zhCN" in p.relative_to(DELTA).parts:
                continue
            p.unlink() if p.is_file() else p.rmdir()

    manifest: list[tuple[str, int, list[str]]] = []  # (relpath, todo 数, todo id 列表)
    total_todo = 0

    for rel, (out_lines, todo) in build_skeletons(baseline).items():
        dest = DELTA / rel
        dest.parent.mkdir(parents=True, exist_ok=True)
        dest.write_text("\n".join(out_lines).rstrip() + "\n", encoding="utf-8")
        manifest.append((rel, len(todo), list(todo)))
        total_todo += len(todo)

    for extra in sorted((DELTA / "_zhCN").glob("*.ftl")) if (DELTA / "_zhCN").is_dir() else []:
        rel = extra.relative_to(DELTA).as_posix()
        _, msgs = parse(read(extra))
        manifest.append((rel, len(msgs), list(msgs)))
        total_todo += len(msgs)

    # 分批：按条数和文件数打包，单文件超限就自己独占一批
    batches: list[list[tuple[str, int]]] = []
    cur_batch: list[tuple[str, int]] = []
    cur_n = 0
    for rel, n, _ in sorted(manifest, key=lambda t: -t[1]):
        if cur_batch and (cur_n + n > args.batch_size or len(cur_batch) >= args.max_files):
            batches.append(cur_batch)
            cur_batch, cur_n = [], 0
        cur_batch.append((rel, n))
        cur_n += n
    if cur_batch:
        batches.append(cur_batch)

    lines = [f"# 增量翻译批次清单（基线 {baseline[:10]}，共 {total_todo} 条 / {len(manifest)} 文件）", ""]
    for i, batch in enumerate(batches, 1):
        lines.append(f"## 批次 {i}（{sum(n for _, n in batch)} 条）")
        for rel, n in batch:
            lines.append(f"- Tools/localization/delta/{rel}  （{n} 条）")
        lines.append("")
    (TOOLS / "delta_batches.md").write_text("\n".join(lines), encoding="utf-8")

    print(f"骨架 {total_todo} 条 / {len(manifest)} 文件 → {DELTA}")
    print(f"批次清单（{len(batches)} 批）→ Tools/localization/delta_batches.md")
    return 0


CJK_RE = re.compile(r"[\u3400-\u9fff\uf900-\ufaff]")
VAR_RE = re.compile(r"\{\s*\$([A-Za-z][A-Za-z0-9_-]*)")
TERM_RE = re.compile(r"\{\s*(-[A-Za-z][A-Za-z0-9_-]*)")


def cmd_verify(args: argparse.Namespace) -> int:
    """对拍磁盘上的骨架与现场重算的骨架，找出编造 ID、漏译、占位符走样。"""
    baseline = args.baseline or (TOOLS / "baseline.txt").read_text().strip()
    fresh = build_skeletons(baseline)

    problems: list[str] = []
    files = sorted(DELTA.rglob("*.ftl")) if DELTA.is_dir() else []
    if not files:
        print("Tools/localization/delta/ 是空的", file=sys.stderr)
        return 1

    done_msgs = todo_msgs = 0
    for d_path in files:
        rel = d_path.relative_to(DELTA).as_posix()
        raw = d_path.read_bytes()
        if raw.startswith(b"\xef\xbb\xbf"):
            problems.append(f"[BOM] {rel}：文件带 UTF-8 BOM，必须存成无 BOM")
        text = raw.decode("utf-8")
        _, d_msgs = parse(text)

        if rel.startswith("_zhCN/"):
            # 手工维护的骨架（地图纸张），en-US 里没有对照，只查中文化与结构
            for mid, msg in d_msgs.items():
                body = " ".join(l.strip() for l in msg.lines())
                todo_msgs += 1
                if CJK_RE.search(body):
                    done_msgs += 1
            continue

        if rel not in fresh:
            problems.append(f"[多余文件] {rel}：en-US 侧没有待翻译条目，骨架不该存在")
            continue
        _, en_msgs = parse(read(EN / rel))
        _, todo = fresh[rel]

        extra = set(d_msgs) - set(todo)
        if extra:
            problems.append(f"[编造 ID] {rel}：{sorted(extra)[:5]}")
        gone = set(todo) - set(d_msgs)
        if gone:
            problems.append(f"[丢失 ID] {rel}：{sorted(gone)[:5]}")

        for mid in sorted(set(d_msgs) & set(todo)):
            d_msg, en_msg = d_msgs[mid], en_msgs[mid]
            for part in todo[mid]:
                if part not in d_msg.parts:
                    problems.append(f"[丢失 part] {rel} {mid} {part or '值'}")
                    continue
                todo_msgs += 1
                zh_body = " ".join(l.strip() for l in d_msg.parts[part])
                en_body = " ".join(l.strip() for l in en_msg.parts[part])
                zh_val = zh_body.split("=", 1)[1] if "=" in zh_body else zh_body
                en_val = en_body.split("=", 1)[1] if "=" in en_body else en_body

                if not CJK_RE.search(zh_val):
                    # 纯符号/数字/专有名词条目本来就没中文，只在整条照抄英文时才报
                    # 去掉占位符和 BBCode 后还剩成词的英文（全大写缩写如 AMR/HEX 除外）才算照抄
                    prose = re.sub(r"\{[^{}]*\}|\[[^\[\]]*\]", " ", en_val)
                    if zh_val.strip() == en_val.strip() and re.search(r"[A-Za-z]*[a-z][A-Za-z]{2,}", prose):
                        problems.append(f"[照抄] {rel} {mid}{'' if part == '' else '.' + part}")
                    continue
                done_msgs += 1

                zh_vars, en_vars = set(VAR_RE.findall(zh_val)), set(VAR_RE.findall(en_val))
                if zh_vars - en_vars:
                    problems.append(
                        f"[占位符] {rel} {mid}：用了原文没有的变量 {sorted(zh_vars - en_vars)}")
                zh_terms, en_terms = set(TERM_RE.findall(zh_val)), set(TERM_RE.findall(en_val))
                if zh_terms - en_terms:
                    problems.append(
                        f"[术语引用] {rel} {mid}：引用了原文没有的 term {sorted(zh_terms - en_terms)}")
                if zh_val.count("{") != zh_val.count("}") or zh_val.count("[") != zh_val.count("]"):
                    problems.append(f"[括号不配平] {rel} {mid}")

        for i, line in enumerate(text.splitlines(), 1):
            if line.strip() and line[:1] not in (" ", "\t", "#") and not MSG_RE.match(line) \
                    and not line.startswith("}"):
                problems.append(f"[结构] {rel}:{i}：续行没缩进，Fluent 会当成新消息 → {line[:50]}")

    print(f"骨架 {len(files)} 个文件，待翻 {todo_msgs} 个 part，已中文化 {done_msgs} 个"
          f"（{done_msgs / todo_msgs:.1%}）" if todo_msgs else "无待翻条目")
    if problems:
        print(f"\n发现 {len(problems)} 个问题：")
        for line in problems[:args.limit]:
            print("  " + line)
        if len(problems) > args.limit:
            print(f"  …… 另有 {len(problems) - args.limit} 个")
        return 1
    print("未发现问题")
    return 0


def cmd_prompt(args: argparse.Namespace) -> int:
    """把 DELTA_PROMPT.md 的模板段填上某一批的文件列表，直接可粘给翻译方。"""
    manifest = TOOLS / "delta_batches.md"
    if not manifest.is_file():
        print("没有 delta_batches.md，先跑 make", file=sys.stderr)
        return 1

    batches: dict[int, list[str]] = {}
    cur = 0
    for line in manifest.read_text(encoding="utf-8").splitlines():
        if m := re.match(r"^## 批次 (\d+)", line):
            cur = int(m.group(1))
            batches[cur] = []
        elif cur and line.startswith("- "):
            batches[cur].append(line[2:].strip())
    if args.batch not in batches:
        print(f"没有批次 {args.batch}；现有 1..{max(batches)}", file=sys.stderr)
        return 1

    template = (TOOLS / "DELTA_PROMPT.md").read_text(encoding="utf-8")
    body = template.split("---\n", 1)[1].rsplit("\n---\n", 1)[0].strip()
    files = "\n".join(f"- {f}" for f in batches[args.batch])
    print(body.replace("{文件列表}", files))
    return 0


def cmd_apply(args: argparse.Namespace) -> int:
    if not DELTA.is_dir():
        print("没有 Tools/localization/delta/，先跑 make", file=sys.stderr)
        return 1

    # 消息 ID 已在 zh-CN 某个文件里定义过的，就地替换那一处——不管骨架放在哪个路径。
    # 实体骨架（_zhCN/entities-sync-*）尤其需要：ent-X 的名字可能早就在别的文件里，
    # 追加一份就成了重复定义。
    where: dict[str, Path] = {}
    for f in sorted(ZH.rglob("*.ftl")):
        for mid in parse(read(f))[1]:
            where.setdefault(mid, f)

    replace: dict[Path, dict[str, list[str]]] = {}
    append: dict[Path, list[list[str]]] = {}
    for d_path in sorted(DELTA.rglob("*.ftl")):
        rel = d_path.relative_to(DELTA).as_posix()
        for mid, msg in parse(read(d_path))[1].items():
            if mid in where:
                replace.setdefault(where[mid], {})[mid] = msg.lines()
            else:
                append.setdefault(ZH / rel, []).append(msg.lines())

    replaced = sum(len(v) for v in replace.values())
    added = sum(len(v) for v in append.values())
    new_files = sum(1 for f in append if not f.is_file())

    if not args.dry_run:
        for target in sorted(set(replace) | set(append)):
            if target.is_file():
                lines, msgs = parse(read(target))
            else:
                target.parent.mkdir(parents=True, exist_ok=True)
                lines, msgs = [], {}
            # 从后往前替换，避免行号位移
            edits = [(msgs[mid].start, msgs[mid].end, new)
                     for mid, new in replace.get(target, {}).items()]
            for start, end, new in sorted(edits, key=lambda e: -e[0]):
                lines[start:end] = new
            if target in append:
                if lines and lines[-1].strip():
                    lines.append("")
                for block in append[target]:
                    lines.extend(block)
                    lines.append("")
            target.write_text("\n".join(lines).rstrip() + "\n", encoding="utf-8")

    verb = "将" if args.dry_run else "已"
    print(f"{verb}替换 {replaced} 条、新增 {added} 条、新建 {new_files} 个文件")
    return 0


def main() -> int:
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest="cmd", required=True)
    m = sub.add_parser("make", help="生成待翻译骨架")
    m.add_argument("--baseline", help="对比基线 commit（默认读 baseline.txt）")
    m.add_argument("--batch-size", type=int, default=250, help="每批条数上限")
    m.add_argument("--max-files", type=int, default=20, help="每批文件数上限")
    m.set_defaults(func=cmd_make)
    v = sub.add_parser("verify", help="验收骨架：编造 ID / 漏译 / 占位符 / 结构")
    v.add_argument("--baseline", help="对比基线 commit（默认读 baseline.txt）")
    v.add_argument("--limit", type=int, default=40, help="最多打印多少个问题")
    v.set_defaults(func=cmd_verify)
    pr = sub.add_parser("prompt", help="打印某一批的完整任务提示词")
    pr.add_argument("batch", type=int, help="批次号，见 delta_batches.md")
    pr.set_defaults(func=cmd_prompt)
    a = sub.add_parser("apply", help="把骨架回填进 zh-CN")
    a.add_argument("--dry-run", action="store_true")
    a.set_defaults(func=cmd_apply)
    args = ap.parse_args()
    return args.func(args)


if __name__ == "__main__":
    sys.exit(main())

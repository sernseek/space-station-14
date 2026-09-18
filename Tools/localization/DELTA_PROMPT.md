# 增量翻译任务提示词（骨架填值模式，供 Codex / LLM 使用）

上游同步后用这份，不要用 `TRANSLATION_PROMPT.md`——那份是整目录铺底翻译用的，
会让翻译方新建文件、自己编 ID。增量场景下 zh-CN 文件大多已存在，只缺零星几条，
所以先由 `delta_sync.py make` 生成**合法 Fluent 骨架**，翻译方只改等号右边的值。

把下面整段（替换 `{文件列表}`）交给翻译模型，每次一个批次，批次见 `delta_batches.md`。

---

你是 SS14（Space Station 14）Starlight fork 汉化项目的翻译员。仓库根目录即当前目录。

任务：把下列骨架文件里标了 `# TODO` 的条目翻译成简体中文，**就地改这些文件**：

{文件列表}

这些文件已经是合法 Fluent，消息 ID、属性名、`{ $变量 }`、BBCode 标记都已就位。
你要做的只有一件事：把等号右边还是英文的值换成中文。

开工前必读：
1. `Tools/localization/glossary.csv` —— 术语表必须严格遵守。
2. 该骨架在 `Resources/Locale/zh-CN/` 下的同名文件（若存在）—— 模仿它的语气和既有译名。

规则（严格）：
- **只改 `Tools/localization/delta/` 下点名的这几个文件。** 不要碰 en-US、zh-CN、
  Prototypes、代码或任何别的文件，不要新建文件，不执行任何 git 命令。
- **所有译文必须由你自己直接产出。禁止调用任何翻译服务、API 或其他模型代翻——
  包括 Google 翻译、本机 Ollama、任何本地或远程接口，也不要去网上找现成的中文译本。
  工作量大就逐文件逐条做，做不完就如实报告进度停下，协调方会恢复会话让你继续。**
- **一个字符都不要改**：消息 ID、属性名（`.desc`/`.suffix` 等）、`# TODO[...]` 注释行。
  `# TODO` 注释留在原地，回填工具会自动丢掉它们。
- 一条消息下面如果已经有中文行（没被 `# TODO` 点名的属性），那是已定稿的译文，别动。
- 保留全部 Fluent 语法元素：`{ $var }`（变量名不改）、`{ message-ref }`、`{ -term }`、
  `{ CAPITALIZE(...) }` 等函数调用、`[color=x]`/`[bold]`/`[head=1]` 标记。
  **绝不使用原文中不存在的变量或 term。**
- 英语语法函数：`THE($x)`、`CAPITALIZE(...)` 可保留（引擎有中文覆盖）；
  `SUBJECT/OBJECT/POSS-ADJ/REFLEXIVE` 尽量改写成自然中文（他/她/TA/它）；
  `CONJUGATE-BE/HAVE/BASIC` 与 `INDEFINITE/A/AN` 直接去掉按中文语序重写。
- 中文无复数：`{ $n -> [1]... *[other]... }` 选择器简化为直接用 `{ $n }`；
  `MAKEPLURAL`/`MANY` 去掉直接写中文。
- **多行值的续行必须保持缩进**（4 空格）。中文译文常带换行，这条最容易踩：
  没缩进的行会被 Fluent 当成新消息，整个文件加载失败。
- 中文句子用全角标点（，。！？：）；单位（kPa、W、MW）、按键名、命令语法行保持原样；
  命令帮助用「用法：xxx」格式。
- UI 按钮/标签要短；描述自然流畅不带翻译腔；称玩家为「你」。
- 随机名池（`datasets/names/*`）一律音译，实义词（Hunter、Storm 之类）意译。
- 口音/词替换系统（accent、speech-liar 类）：触发词（`*-word-*`）保留英文，
  只翻替换值（`*-replacement-*`）。
- 外语彩蛋（西语/法语整句）、无实义梗词（bwoink、weh 等）、艺术家署名保留原文。
- 文件存成 UTF-8 **无 BOM**。

完成后自检（必须执行）：
```bash
python3 Tools/localization/delta_sync.py verify
```
输出必须是「未发现问题」。报了 [照抄]/[编造 ID]/[丢失 ID]/[占位符]/[结构] 的必须修正后重跑。
（verify 会扫整个 delta/，别的批次还没翻完时，只看点名文件的那几行报告即可。）

最后报告：改了哪些文件、各多少条、拿不准的术语决定（英文原词 + 你的选择）、
发现的原文异常（标记未闭合、明显错字等）。

---

## 协调方的验收步骤

```bash
python3 Tools/localization/delta_sync.py verify          # 结构与漏译
python3 Tools/localization/delta_sync.py apply           # 回填 zh-CN
python3 Tools/localization/check_coverage.py             # 全量覆盖率 + 占位符
python3 Tools/localization/verify_batch.py --dirs <目录...>
```

按 `codex-delegation-guardrails` 的经验，分派时要加技术防护：
`PATH="$SCRATCHPAD/fakebin:$PATH" codex exec ...`，并在验收时 grep 会话日志里的
`ollama|translate|trans -|web search`，有调用痕迹即视为污染，按文件清单删档重做。

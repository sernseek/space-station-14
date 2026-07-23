# zh-CN 翻译任务提示词（供 Codex / LLM 使用）

把下面整段作为任务提示词，替换 `{目录列表}` 后交给翻译模型。
每次任务给 1～3 个目录、总量控制在 500 条以内，质量最稳。

---

你是 SS14（Space Station 14）Starlight fork 汉化项目的翻译员。仓库根目录即当前目录。

任务：将 `Resources/Locale/en-US/` 下这些目录的全部 .ftl 文件翻译为简体中文，写入 `Resources/Locale/zh-CN/` 下相同相对路径：

{目录列表}

若目标文件在 zh-CN 下已存在则跳过，不要改动。

开工前必读：
1. `Tools/localization/glossary.csv` —— 术语表必须严格遵守。
2. `Resources/Locale/zh-CN/escape-menu/ui/options-menu.ftl` 与 `Resources/Locale/zh-CN/job/job-names.ftl` —— 模仿语气与风格。

翻译规则（严格）：
- 只新建 `Resources/Locale/zh-CN/` 下的文件。绝不修改 en-US、Prototypes、代码或任何其他文件。不执行任何 git 命令。
- **所有译文必须由你自己直接产出。禁止调用任何翻译服务、API 或其他模型代翻——包括 Google 翻译、本机 Ollama、任何本地或远程接口。工作量大就分文件逐个做，做不完就如实报告进度停下，协调方会恢复会话让你继续。**
- 消息 ID、属性名（.desc/.name/.suffix 等）原样保留；只翻译等号右边的值。
- 保留全部 Fluent 语法元素：`{ $var }`（变量名不改）、`{ message-ref }`、`{ -term }`、`{ CAPITALIZE(...) }` 等函数调用、`[color=x]`/`[bold]`/`[font=...]` 标记。绝不使用原文中不存在的变量。
- 英语语法函数处理：`THE($x)`、`CAPITALIZE(...)` 可保留（引擎有中文覆盖）；`SUBJECT/OBJECT/POSS-ADJ/REFLEXIVE` 尽量改写成自然中文（代词 他/她/TA/它），`CONJUGATE-BE/HAVE/BASIC` 与 `INDEFINITE/A/AN` 直接去掉按中文语序重写。
- 中文无复数：`{ $n -> [1]... *[other]... }` 数量选择器简化为直接用 `{ $n }`；`MAKEPLURAL`/`MANY` 调用去掉，直接写中文。
- 多行值的续行保持 4 空格缩进。
- 中文句子用全角标点（，。！？：）；单位（kPa、W）、按键名、命令语法行保持原样；命令帮助用"用法：xxx"格式。
- 注释行（# 开头，含 `# Starlight - start/end`）原样保留不翻译。
- 文件编码 UTF-8 无 BOM（注意：部分 en-US 源文件带 BOM，不要照抄）。
- UI 按钮/标签要简短；描述自然流畅不带翻译腔；称玩家为"你"。
- 实体名文件用 `ent-<原型ID> = 名称` + 缩进的 `.desc =` 描述（参考 `Resources/Locale/zh-CN/entities/objects/tools/tools.ftl`），绝不改 Prototypes 的 YAML。
- 口音/词替换系统（accent、speech-liar、speech-chatsan 类文件）：触发词（`*-word-*`）保留英文（匹配用的是英文词边界正则），只翻译替换值（`*-replacement-*`）。
- 外语彩蛋（西语/法语整句）、无实义梗词（bwoink、weh 等）、艺术家署名保留原文。
- 物种名、职位名等已有定案的必须与术语表和既有文件一致，不得另造。

完成后自检（必须执行）：
```bash
python3 Tools/localization/verify_batch.py --dirs <本次目录...>
```
输出必须是"未发现问题"。有 [缺失]/[多出]/[照抄]/[术语] 报告的必须修正后重跑。

最后报告：创建的文件清单与条数、拿不准的术语决定（英文原词+你的选择）、发现的原文异常（如源文件带 BOM、标记未闭合）。

---

## 建议的批次顺序（按玩家可见度）

1. `nutrition` `medical` `cargo`（日常操作，~610 条）
2. `atmos` `construction` `power` `wires`（工程玩法，~610 条）
3. `store` `advertisements` `cartridge-loader` `pda`（商店与 PDA，~720 条）
4. `administration`（管理工具，769 条，可低优先级）
5. `reagents` `chemistry` `botany` `seeds`（化学植物，~1310 条）
6. `flavors` `markings` `accessories`（角色外观长尾，~1510 条）
7. `datasets`（10705 条随机名池：船名/NPC名等，单独跑，机翻即可）
8. `accent`（1119 条，注意触发词规则）
9. `_Starlight`（12182 条，fork 专属，量最大，切成 500 条一批）

每批完成后由协调方运行全量 `verify_batch.py` + `check_coverage.py` 验收。

# zh-CN 汉化工作流

本目录是 Starlight fork 汉化的工具与资料。游戏语言在
`Content.Shared/Localizations/ContentLocalizationManager.cs` 中设为 `zh-CN`，
未翻译词条自动回退英文（`SetFallbackCluture`），因此翻译可以增量进行、随时可玩。

## 目录结构

- `check_coverage.py` — 覆盖率检查：对比 `Resources/Locale/en-US` 与 `Resources/Locale/zh-CN`，
  生成 `missing.txt`（待翻译）与 `stale.txt`（en-US 已删除的过期条目），并校验占位符。
- `glossary.csv` — 核心术语表。**所有翻译（人工或 LLM）必须遵守**，避免同一名词多种译法。
- `baseline.txt` — 当前翻译所基于的 en-US 基线 commit。

## 翻译规则

1. zh-CN 目录结构镜像 en-US；实体名用 `ent-<原型ID> = 名称` + `.desc` 覆盖，**不要改 Prototypes 的 YAML**
   （集成测试 `EntityPrototypeLocalizationTest` 会拒绝 YAML 里的 LocId）。
2. 保留一切 Fluent 语法元素：`{ $var }`、`{ ent-xxx }`、`[color=...]` BBCode、多行缩进。
   中文无复数，可以把 `{ $n -> [1]... *[other]... }` 选择器简化为直接引用 `{ $n }`。
3. 标点用全角（，。！？：），但保留原文里的代码、快捷键、专有名词。
4. 单位（kPa、MW 等）不翻译。

## 上游同步后的增量翻译

```bash
git fetch upstream
git checkout starlight-dev && git merge --ff-only upstream/starlight-dev && git push origin starlight-dev
git checkout zh-cn && git merge starlight-dev

# 看看 en-US 相比基线改了什么
git diff $(cat Tools/localization/baseline.txt) HEAD -- Resources/Locale/en-US | less

# 全量对比找缺口
python3 Tools/localization/check_coverage.py

# 翻译完成后更新基线
git rev-parse HEAD > Tools/localization/baseline.txt
```

## 分工与批量翻译

- **翻译**：本机 Codex（gpt-5.6-sol low）执行，任务提示词模板见 `TRANSLATION_PROMPT.md`（含批次顺序建议）。
- **代码/工具/验收**：Claude 负责（字体、引擎适配、验收基建、术语裁决）。

每批产出后必须：
1. `python3 Tools/localization/verify_batch.py --dirs <目录...>` —— 逐文件条数/照抄/术语检查；
2. `python3 Tools/localization/check_coverage.py` —— 全局覆盖率与占位符校验；
3. 新术语决定补进 `glossary.csv`，与既有译名冲突时以 glossary 为准改译文。

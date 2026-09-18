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

增量场景和铺底翻译不一样：大部分 zh-CN 文件已经存在，只是多出几条新 key，
或者 en-US 那边把某条原文改了、旧译文语义已过期。整目录重翻既浪费又会把
已有译文冲掉，所以走 `delta_sync.py` 的**骨架填值**流程。

```bash
git fetch upstream
git checkout starlight-dev && git merge --ff-only upstream/starlight-dev && git push origin starlight-dev
git checkout zh-cn && git merge starlight-dev
git submodule update --init --recursive      # 引擎大版本跳跃时别忘了

# 1. 生成待翻译骨架 + 批次清单
python3 Tools/localization/delta_sync.py make

# 2. 按 delta_batches.md 逐批交给翻译方，只改 delta/ 下文件等号右边的值

# 3. 验收（编造 ID / 漏译 / 占位符 / 续行缩进）
python3 Tools/localization/delta_sync.py verify

# 4. 回填进 zh-CN，然后全量复查
python3 Tools/localization/delta_sync.py apply
python3 Tools/localization/check_coverage.py
python3 Tools/localization/verify_batch.py --dirs <本轮涉及的目录...>

# 5. 收尾
rm -rf Tools/localization/delta Tools/localization/delta_batches.md
git rev-parse HEAD > Tools/localization/baseline.txt
```

`make` 做的事：

- 拿 en-US 与 zh-CN 求差集，得到**新增**的消息/属性；
- 再拿 `baseline.txt` 里的 commit 和当前 HEAD 对比 en-US，找出**原文改过**、
  旧译文已经对不上的条目（`check_coverage.py` 看不见这类，它只比 ID 集合）；
- 把这两类写成 `Tools/localization/delta/<和 en-US 同样的相对路径>`，
  每条前面加一行 `# TODO[新增|改动] 值 .desc`；待翻部分填英文原文，同一条消息里
  已经翻好的属性直接填现有中文，所以翻译方看到的是合法 Fluent、ID 和语法元素
  已经就位，**没有编造 ID 的余地**；
- `delta/_zhCN/` 是手工维护的（地图纸张这类 en-US 里根本没有的条目），
  `make` 不会删它，但会算进批次清单。

`apply` 回填规则：zh-CN 里已有的消息**整条替换**，没有的追加到文件末尾，
文件不存在就新建。骨架里的 `# TODO` 注释不会被带进 zh-CN。

除了 ftl，别忘了这两类 en-US 够不着的东西：

```bash
python3 Tools/localization/extract_map_strings.py --list   # 新地图的 warp/摄像头/设备名
python3 Tools/localization/compose_map_strings.py --write  # 按词元词典补齐
python3 Tools/localization/extract_map_papers.py           # 地图内嵌纸张正文
grep -rn "mapName: '" Resources/Prototypes/*/Maps/         # 新地图的 mapName
```

## 分工与批量翻译

- **翻译**：本机 Codex（gpt-5.6-sol low）执行，任务提示词模板见 `TRANSLATION_PROMPT.md`（含批次顺序建议）。
- **代码/工具/验收**：Claude 负责（字体、引擎适配、验收基建、术语裁决）。

每批产出后必须：
1. `python3 Tools/localization/verify_batch.py --dirs <目录...>` —— 逐文件条数/照抄/术语检查；
2. `python3 Tools/localization/check_coverage.py` —— 全局覆盖率与占位符校验；
3. 新术语决定补进 `glossary.csv`，与既有译名冲突时以 glossary 为准改译文。

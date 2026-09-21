<p align="center">
  <img alt="Space Station 14" width="600" src="Resources/Textures/Logo/logo.png" />
</p>

<div align="center">

# Starlight 简体中文版

**[Space Station 14](https://spacestation14.com/) · [Starlight](https://github.com/ss14Starlight/space-station-14) 分支的简体中文本地化**

[![Upstream](https://img.shields.io/badge/upstream-ss14Starlight%2Fspace--station--14-8a2be2?logo=github)](https://github.com/ss14Starlight/space-station-14)
[![Locale](https://img.shields.io/badge/locale-zh--CN-e03c31)](Resources/Locale/zh-CN)
[![Coverage](https://img.shields.io/badge/Fluent%20%E8%A6%86%E7%9B%96%E7%8E%87-100%25-brightgreen)](Tools/localization/README.md)
[![Engine](https://img.shields.io/badge/RobustToolbox-v280-informational)](https://github.com/space-wizards/RobustToolbox)
[![.NET](https://img.shields.io/badge/.NET-10.0-512bd4?logo=dotnet)](global.json)
[![License](https://img.shields.io/badge/license-MIT%20%2F%20CC--BY--SA%203.0-blue)](#许可证--license)

[![Last commit](https://img.shields.io/github/last-commit/sernseek/space-station-14/zh-cn)](https://github.com/sernseek/space-station-14/commits/zh-cn)
[![Commit activity](https://img.shields.io/github/commit-activity/m/sernseek/space-station-14/zh-cn)](https://github.com/sernseek/space-station-14/commits/zh-cn)
[![Issues](https://img.shields.io/github/issues/sernseek/space-station-14)](https://github.com/sernseek/space-station-14/issues)

[简介](#简介) · [汉化内容](#汉化内容) · [分支](#分支) · [构建与运行](#构建与运行) · [参与汉化](#参与汉化) · [许可证](#许可证--license)

</div>

---

## 简介

本仓库是 [Starlight](https://github.com/ss14Starlight/space-station-14) 的汉化分支。Starlight 是 Space Station 14 的一个开源服务器分支，
以独特的玩法机制和舒适的游戏氛围为目标。Space Station 14 是一款多人太空站生存游戏：船员维持空间站运转，而潜伏其中的反派则千方百计阻挠他们。

本分支在不改变玩法的前提下，将游戏界面、物品、角色、指南手册等内容完整译为简体中文，并对引擎侧的中文显示与输入做了适配。
它会定期与上游同步，新增内容随同步增量翻译。

> An unofficial Simplified Chinese (zh-CN) localization of the Starlight fork of Space Station 14,
> kept in sync with upstream. Untranslated strings fall back to English.

## 汉化内容

| 范围 | 状态 |
|---|---|
| Fluent 文本（`Resources/Locale`） | ✅ 43,478 / 43,478 条，100% |
| 实体名称与描述（`ent-*`） | ✅ 全部原型已覆盖 |
| 指南手册（Guidebook） | ✅ 340 / 345 篇，按语言目录加载，缺失时回退英文 |
| 预设文档（`Resources/Documents`） | ✅ 已翻译 |
| 地图内嵌文本（传送点、摄像头、设备名、纸张） | ✅ 按词元词典组合 + 摘要键翻译 |
| 空间站地图名 | ✅ 已翻译 |

在文本之外还做了这些适配：

- **中文字体**：Noto Sans CJK SC 接入全部字体栈，按字形逐字回落，拉丁文渲染保持不变。物种语言等装饰字体按风格配了对应的中文字体，
  如圆体（霞鹜 975 圆体）、楷体（霞鹜文楷）。
- **输入**：角色名、自定义物种名允许中文；支持中文输入法；聊天自动补全句号时使用「。」。
- **回退**：语言为 `zh-CN`，回退语言为 `en-US`。缺失的译文显示英文原文，不会显示原始键名。
- **术语**：核心译名统一维护在 [`Tools/localization/glossary.csv`](Tools/localization/glossary.csv)，
  如纳米传讯、辛迪加、舰长、中央指挥部。

## 分支

| 分支 | 用途 |
|---|---|
| **`zh-cn`**（默认） | 汉化分支，日常使用与开发都在这里 |
| `starlight-dev` | 上游 `ss14Starlight/starlight-dev` 的纯净镜像，只做快进同步，不含任何汉化改动 |

## 构建与运行

需要 [.NET SDK 10.0](https://dotnet.microsoft.com/download)，版本见 [`global.json`](global.json)。

```bash
git clone --recursive -b zh-cn https://github.com/sernseek/space-station-14.git
cd space-station-14
git submodule update --init --recursive

dotnet build SpaceStation14.slnx
```

项目附带 Nix 开发环境，使用 Nix 时可以运行 `nix develop --command dotnet build SpaceStation14.slnx`。
启动方式与上游相同，参见 [Space Station 14 开发文档](https://docs.spacestation14.io/)。

## 参与汉化

汉化工具链与完整流程见 [`Tools/localization/README.md`](Tools/localization/README.md)：

- `check_coverage.py`：覆盖率与占位符校验
- `delta_sync.py`：上游同步后的增量翻译，采用「骨架填值」流程，自带验收与回填
- `audit_entities.py`、`fill_entity_gaps.py`、`entity_skeletons.py`：补实体名与描述的缺口
- `extract_map_strings.py`、`compose_map_strings.py`、`extract_map_papers.py`：翻译地图内嵌文本

翻译规则要点：

- 实体名一律用 `ent-<原型ID>` 覆盖，不改原型 YAML；
- 保留全部 Fluent 语法元素与 BBCode 标记；
- 标点用全角，单位不译；
- 术语以 `glossary.csv` 为准。

欢迎通过 [Issues](https://github.com/sernseek/space-station-14/issues) 反馈错译、漏译或显示问题，
请附上截图或对应的消息 ID。

## 致谢

- [Space Wizards Federation](https://github.com/space-wizards/space-station-14)：Space Station 14 与 RobustToolbox 引擎
- [Starlight](https://github.com/ss14Starlight/space-station-14)：本仓库的上游分支
- [Noto CJK](https://github.com/notofonts/noto-cjk)、[霞鹜文楷](https://github.com/lxgw/LxgwWenKai)、[霞鹜 975 圆体](https://github.com/lxgw/975Yuan)：中文字体（SIL OFL 1.1）

---

## 许可证 / License



> [!NOTE]
> **Relicensing in progress.** The Starlight Fork License (`LICENSE-Starlight.TXT`) was applied to Starlight contributions
> from **2024-11-04** (commit `84205e38`) through **2026-02-28** (commit `01eff0f7`).
> This license **remains in effect** for contributions made during that period until explicit relicensing
> consent is received from the respective authors. Once consent is given, those contributions are relicensed under MIT.
> All contributions outside of that range are licensed under MIT (`LICENSE.TXT`).
> Relicensing requests are tracked in [issue #3499](https://github.com/ss14Starlight/space-station-14/issues/3499).

### Click each banner for further information

---

<details>
<summary><a href="#"><img src="https://img.shields.io/badge/licence-MIT-green?style=for-the-badge" alt="MIT license"></a></summary>

>Some files are licensed under [MIT license](https://opensource.org/license/MIT), these files are Space Wizards Federation code.
</details>

<details>
<summary><a href="#"><img src="https://img.shields.io/badge/licence-CC_3.0_BY--SA-lightblue?style=for-the-badge" alt="Creative Commons 3.0 BY-SA"></a></summary>

>All other non-code STARLIGHT Assets, including icons and sound files, are licensed under the [Creative Commons 3.0 BY-SA](https://creativecommons.org/licenses/by-sa/3.0/) license unless otherwise noted in the folder or file.
</details>


<details>
<summary><a href="#"><img src="https://img.shields.io/badge/fonts-SIL_OFL_1.1-orange?style=for-the-badge" alt="SIL OFL 1.1"></a></summary>

>本分支新增的中文字体（`Resources/Fonts/NotoSansSC/`、`Resources/Fonts/_zhCN/`）以 [SIL Open Font License 1.1](https://openfontlicense.org/) 授权，许可证文本随字体文件一并提供。
</details>

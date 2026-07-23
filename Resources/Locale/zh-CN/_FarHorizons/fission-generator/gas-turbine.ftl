### Examine

gas-turbine-examine-stator-null = 它似乎缺少定子。
gas-turbine-examine-stator = 它装有定子。

gas-turbine-examine-blade-null = 它似乎缺少涡轮叶片。
gas-turbine-examine-blade = 它装有涡轮叶片。

gas-turbine-spinning-0 = 叶片没有旋转。
gas-turbine-spinning-1 = 叶片正在缓慢转动。
gas-turbine-spinning-2 = 叶片正在旋转。
gas-turbine-spinning-3 = 叶片正在高速旋转。
gas-turbine-spinning-4 = [color=red]叶片已经失控飞转！[/color]

gas-turbine-damaged-0 = 它看起来状况良好。[/color]
gas-turbine-damaged-1 = 涡轮机看起来有些磨损。[/color]
gas-turbine-damaged-2 = [color=yellow]涡轮机看起来严重受损。[/color]
gas-turbine-damaged-3 = [color=orange]它受到了致命损伤！[/color]

gas-turbine-ruined = [color=red]它已经彻底损坏！[/color]

### Popups

# Shown when an event occurs
gas-turbine-overheat = {$owner}触发了紧急过热卸压阀！
gas-turbine-explode = {CAPITALIZE(THE($owner))}四分五裂了！

# Shown when damage occurs
gas-turbine-spark = {CAPITALIZE(THE($owner))}开始冒出火花！
gas-turbine-spark-stop = {CAPITALIZE(THE($owner))}不再冒出火花。
gas-turbine-smoke = {CAPITALIZE(THE($owner))}开始冒烟！
gas-turbine-smoke-stop = {CAPITALIZE(THE($owner))}不再冒烟。

# Shown during repairs
gas-turbine-repair-fail-blade = 必须先更换涡轮叶片才能修理它。
gas-turbine-repair-fail-stator = 必须先更换定子才能修理它。
gas-turbine-repair-ruined = 你用{THE($tool)}修复了{THE($target)}的外壳。
gas-turbine-repair-partial = 你用{THE($tool)}修复了{THE($target)}的部分损伤。
gas-turbine-repair-complete = 你用{THE($tool)}完成了对{THE($target)}的修理。
gas-turbine-repair-no-damage = {THE($target)}没有可用{THE($tool)}修复的损伤。

# Anchoring warnings
gas-turbine-unanchor-warning = 涡轮机旋转时无法解除{THE($owner)}的锚定！
gas-turbine-anchor-warning = 锚定位置无效。

gas-turbine-eject-fail-speed = 涡轮机旋转时无法拆卸涡轮部件！
gas-turbine-insert-fail-speed = 涡轮机旋转时无法安装涡轮部件！

### UI

# Shown when using the UI
gas-turbine-ui-tab-main = 控制
gas-turbine-ui-tab-parts = 部件

gas-turbine-ui-rpm = 转速

gas-turbine-ui-overspeed = 超速
gas-turbine-ui-overtemp = 超温
gas-turbine-ui-stalling = 失速
gas-turbine-ui-undertemp = 温度过低

gas-turbine-ui-flow-rate = 流量
gas-turbine-ui-stator-load = 定子负载

gas-turbine-ui-blade = 涡轮叶片
gas-turbine-ui-blade-integrity = 完整度
gas-turbine-ui-blade-stress = 应力

gas-turbine-ui-stator = 涡轮定子
gas-turbine-ui-stator-potential = 电势
gas-turbine-ui-stator-supply = 供电

gas-turbine-ui-power = { POWERWATTS($power) }

gas-turbine-ui-locked-message = 控制已锁定。
gas-turbine-ui-footer-left = 危险：高速运转的机械。
gas-turbine-ui-footer-right = 2.1 修订版 1

### Popups
reactor-smoke-start = {CAPITALIZE(THE($owner))}开始冒烟！
reactor-smoke-stop = {CAPITALIZE(THE($owner))}不再冒烟。
reactor-fire-start = {CAPITALIZE(THE($owner))}开始燃烧！
reactor-fire-stop = {CAPITALIZE(THE($owner))}停止燃烧。

reactor-unanchor-melted = 无法解除{THE($owner)}的锚定，它已经熔在船体上了！
reactor-unanchor-warning = {THE($owner)}未清空或温度高于 80℃ 时无法解除锚定！
reactor-anchor-warning = 锚定位置无效。

### Messages
reactor-smoke-start-message = 警报：{CAPITALIZE(THE($owner))}已达到危险温度：{$temperature}K。请立即干预以防止堆芯熔毁。
reactor-smoke-stop-message = {CAPITALIZE(THE($owner))}已冷却至危险温度以下。祝您愉快。
reactor-fire-start-message = 警报：{CAPITALIZE(THE($owner))}已达到临界温度：{$temperature}K。即将发生堆芯熔毁。
reactor-fire-stop-message = {CAPITALIZE(THE($owner))}已冷却至临界温度以下。堆芯熔毁已避免。

reactor-temperature-dangerous-message = {CAPITALIZE(THE($owner))}正处于危险温度：{$temperature}K。
reactor-temperature-critical-message = {CAPITALIZE(THE($owner))}正处于临界温度：{$temperature}K。
reactor-temperature-cooling-message = {CAPITALIZE(THE($owner))}正在冷却：{$temperature}K。

reactor-melting-announcement = 空间站上的一座核反应堆正在发生堆芯熔毁。建议撤离周边区域。
reactor-melting-announcement-sender = 核事故紧急警报

reactor-meltdown-announcement = 空间站上的一座核反应堆发生了灾难性过载。可能产生放射性碎片、核沉降物与冷却剂火灾。强烈建议立即撤离周边区域。
reactor-meltdown-announcement-sender = 核反应堆熔毁

### UI
comp-nuclear-reactor-ui-locked = 已锁定
comp-nuclear-reactor-ui-insert-button = 插入
comp-nuclear-reactor-ui-remove-button = 移除
comp-nuclear-reactor-ui-eject-button = 弹出

comp-nuclear-reactor-ui-view-change = 切换视图
comp-nuclear-reactor-ui-view-temp = 温度视图
comp-nuclear-reactor-ui-view-neutron = 中子视图
comp-nuclear-reactor-ui-view-fuel = 燃料视图

comp-nuclear-reactor-ui-status-panel = 反应堆状态
comp-nuclear-reactor-ui-reactor-temp = 温度
comp-nuclear-reactor-ui-reactor-rads = 辐射
comp-nuclear-reactor-ui-reactor-therm = 热功率
comp-nuclear-reactor-ui-reactor-control = 控制棒
comp-nuclear-reactor-ui-therm-format = { POWERWATTS($power) }t

comp-nuclear-reactor-ui-footer-left = 危险：高强度辐射。
comp-nuclear-reactor-ui-footer-right = 1.0 修订版 1

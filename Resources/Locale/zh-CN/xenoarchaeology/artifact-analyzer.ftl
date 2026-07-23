analysis-console-menu-title = 三型宽谱分析控制台
analysis-console-server-list-button = 服务器
analysis-console-extract-button = 提取点数

analysis-console-info-no-scanner = 未连接分析仪！请使用多功能工具连接一台。
analysis-console-info-no-artifact = 未放置遗物！请将遗物放到平台上以查看节点信息。
analysis-console-info-ready = 系统运行正常，可以扫描。

analysis-console-no-node = 选择要查看的节点
analysis-console-info-id = [font="Monospace" size=11]ID：[/font]
analysis-console-info-id-value = [font="Monospace" size=11][color=yellow]{$id}[/color][/font]
analysis-console-info-class = [font="Monospace" size=11]类别：[/font]
analysis-console-info-class-value = [font="Monospace" size=11]{$class}[/font]
analysis-console-info-locked = [font="Monospace" size=11]状态：[/font]
analysis-console-info-locked-value = [font="Monospace" size=11][color={ $state ->
    [0] red]已锁定
    [1] lime]已解锁
    *[2] plum]已激活
}[/color][/font]
analysis-console-info-durability = [font="Monospace" size=11]耐久度：[/font]
analysis-console-info-durability-value = [font="Monospace" size=11][color={$color}]{$current}/{$max}[/color][/font]
analysis-console-info-effect = [font="Monospace" size=11]效果：[/font]
analysis-console-info-effect-value = [font="Monospace" size=11][color=gray]{ $state ->
    [true] {$info}
    *[false] 解锁节点以获取信息
}[/color][/font]
analysis-console-info-trigger = [font="Monospace" size=11]触发条件：[/font]
analysis-console-info-triggered-value = [font="Monospace" size=11][color=gray]{$triggers}[/color][/font]
analysis-console-info-scanner = 正在扫描……
analysis-console-info-scanner-paused = 已暂停。
analysis-console-progress-text = T-{$seconds} 秒

analysis-console-extract-value = [font="Monospace" size=11][color=orange]节点 {$id}（+{$value}）[/color][/font]
analysis-console-extract-none = [font="Monospace" size=11][color=orange] 已解锁节点中没有可提取的点数 [/color][/font]
analysis-console-extract-sum = [font="Monospace" size=11][color=orange]研究点数合计：{$value}[/color][/font]

analyzer-artifact-extract-popup = 遗物表面闪烁着能量！

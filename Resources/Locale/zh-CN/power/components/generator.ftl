generator-clogged = {CAPITALIZE(THE($generator))}突然停机了！

portable-generator-verb-start = 启动发电机
portable-generator-verb-start-msg-unreliable = 启动发电机，可能要尝试几次。
portable-generator-verb-start-msg-reliable = 启动发电机。
portable-generator-verb-start-msg-unanchored = 必须先锚定发电机！
portable-generator-verb-stop = 停止发电机
portable-generator-start-fail = 你拉动绳索，但它没有启动。
portable-generator-start-success = 你拉动绳索，它嗡鸣着启动了。

portable-generator-ui-title = 便携式发电机
portable-generator-ui-status-stopped = 已停止：
portable-generator-ui-status-starting = 正在启动：
portable-generator-ui-status-running = 运行中：
portable-generator-ui-start = 启动
portable-generator-ui-stop = 停止
portable-generator-ui-target-power-label = 目标功率（kW）：
portable-generator-ui-efficiency-label = 效率：
portable-generator-ui-fuel-use-label = 燃料消耗：
portable-generator-ui-fuel-left-label = 剩余燃料：
portable-generator-ui-clogged = 燃料箱中检测到污染物！
portable-generator-ui-eject = 弹出
portable-generator-ui-eta = （约 { $minutes } 分钟）
portable-generator-ui-unanchored = 未锚定
portable-generator-ui-current-output = 当前输出：{$voltage}
portable-generator-ui-network-stats = 电网：
portable-generator-ui-network-stats-value = { POWERWATTS($supply) } / { POWERWATTS($load) }
portable-generator-ui-network-stats-not-connected = 未连接

power-switchable-generator-examine = 功率输出已设为 {$voltage}。
power-switchable-generator-switched = 已将输出切换为 {$voltage}！

power-switchable-voltage = { $voltage ->
    [HV] [color=orange]HV[/color]
    [MV] [color=yellow]MV[/color]
    *[LV] [color=green]LV[/color]
}
power-switchable-switch-voltage = 切换至 {$voltage}

fuel-generator-verb-disable-on = 请先关闭发电机！
portable-generator-ui-power-switch = 状态：
portable-generator-ui-switch = 输出：

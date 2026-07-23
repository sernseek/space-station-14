cmd-atvrange-desc = 设置大气调试范围（以两个浮点数表示，起点为[red]，终点为[blue]）
cmd-atvrange-help = 用法：{$command} <起点> <终点>
cmd-atvrange-error-start = 起点浮点数无效
cmd-atvrange-error-end = 终点浮点数无效
cmd-atvrange-error-zero = 比例不能为零，否则 AtmosDebugOverlay 会发生除零错误。

cmd-atvmode-desc = 设置大气调试模式，同时会自动重置比例。
cmd-atvmode-help = 用法：{$command} <TotalMoles/GasMoles/Temperature> [<气体 ID（GasMoles 模式）>]
cmd-atvmode-error-invalid = 模式无效
cmd-atvmode-error-target-gas = 此模式必须提供目标气体。
cmd-atvmode-error-out-of-range = 无法解析气体 ID，或 ID 超出范围。
cmd-atvmode-error-info = 此模式无需更多信息。

cmd-atvcbm-desc = 将红/绿/蓝配色改为灰度
cmd-atvcbm-help = 用法：{$command} <true/false>
cmd-atvcbm-error = 标志无效

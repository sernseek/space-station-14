# Commands
## Delay shuttle round end
cmd-delayroundend-desc = 紧急撤离穿梭机脱离超空间后，停止结束回合的计时器。
cmd-delayroundend-help = 用法：delayroundend
emergency-shuttle-command-round-yes = 已延迟回合结束。
emergency-shuttle-command-round-no = 无法延迟回合结束。

## Dock emergency shuttle
cmd-dockemergencyshuttle-desc = 呼叫紧急撤离穿梭机，并尝试将其与空间站对接。
cmd-dockemergencyshuttle-help = 用法：dockemergencyshuttle

## Launch emergency shuttle
cmd-launchemergencyshuttle-desc = 在条件允许时提前发射紧急撤离穿梭机。
cmd-launchemergencyshuttle-help = 用法：launchemergencyshuttle

# Emergency shuttle # Starlight edit: reword due to potential existence of multiple stations/shuttles
emergency-shuttle-left = 所有紧急撤离穿梭机均已离港。预计 {$transitTime} 秒后抵达中央指挥部。
emergency-shuttle-launch-time = 紧急撤离穿梭机将在 {$consoleAccumulator} 秒后发射。
emergency-shuttle-docked = 紧急撤离穿梭机已在空间站{$direction}侧的{$location}对接，将在 {$time} 秒后离港。{$extended}
emergency-shuttle-good-luck = 紧急撤离穿梭机无法找到空间站。祝你好运。
emergency-shuttle-nearby = 紧急撤离穿梭机无法找到有效对接口，已跃迁至空间站{$direction}侧的{$location}，将在 {$time} 秒后离港。{$extended}
emergency-shuttle-extended = {" "}由于情况不便，发射时间已经延后。

# Emergency shuttle console popup / announcement
emergency-shuttle-console-no-early-launches = 提前发射已禁用
emergency-shuttle-console-auth-left = 还需 {$remaining} 份授权才能提前发射穿梭机。
emergency-shuttle-console-auth-revoked = 提前发射授权已撤销，还需 {$remaining} 份授权。
emergency-shuttle-console-denied = 权限不足

# UI
emergency-shuttle-console-window-title = 紧急撤离穿梭机控制台
emergency-shuttle-ui-engines = 引擎：
emergency-shuttle-ui-idle = 待机
emergency-shuttle-ui-repeal-all = 全部撤销
emergency-shuttle-ui-early-authorize = 提前发射授权
emergency-shuttle-ui-authorize = 授权
emergency-shuttle-ui-repeal = 撤销
emergency-shuttle-ui-authorizations = 授权
emergency-shuttle-ui-remaining = 剩余：{$remaining}

# Map Misc.
map-name-centcomm = 中央指挥部
map-name-terminal = 抵达航站楼

# 回放命令

cmd-replay-play-desc = 继续播放回放。
cmd-replay-play-help = replay_play

cmd-replay-pause-desc = 暂停播放回放。
cmd-replay-pause-help = replay_pause

cmd-replay-toggle-desc = 继续或暂停播放回放。
cmd-replay-toggle-help = replay_toggle

cmd-replay-toggle-screenshot-mode-desc = 切换回放截图模式，隐藏回放控制组件。
cmd-replay-toggle-screenshot-mode-help = replay_toggle_screenshot_mode

cmd-replay-stop-desc = 停止并卸载回放。
cmd-replay-stop-help = replay_stop

cmd-replay-load-desc = 加载并开始播放回放。
cmd-replay-load-help = replay_load <replay folder>
cmd-replay-load-hint = 回放文件夹

cmd-replay-skip-desc = 在时间轴上向前或向后跳转。
cmd-replay-skip-help = replay_skip <tick or timespan>
cmd-replay-skip-hint = 刻或时间段（HH:MM:SS）。

cmd-replay-set-time-desc = 向前或向后跳转至指定时间。
cmd-replay-set-time-help = replay_set <tick or time>
cmd-replay-set-time-hint = 刻或时间段（HH:MM:SS），起始于

cmd-replay-error-time = “{$time}”不是整数或时间段。
cmd-replay-error-args = 参数数量错误。
cmd-replay-error-no-replay = 当前未在播放回放。
cmd-replay-error-already-loaded = 已加载一个回放。
cmd-replay-error-run-level = 连接到服务器时无法加载回放。

# 录制命令

cmd-replay-recording-start-desc = 开始录制回放，可选择设置时间限制。
cmd-replay-recording-start-help = 用法：replay_recording_start [name] [overwrite] [time limit]
cmd-replay-recording-start-success = 已开始录制回放。
cmd-replay-recording-start-already-recording = 已在录制回放。
cmd-replay-recording-start-error = 尝试开始录制时发生错误。
cmd-replay-recording-start-hint-time = [时间限制（分钟）]
cmd-replay-recording-start-hint-name = [名称]
cmd-replay-recording-start-hint-overwrite = [覆盖（bool）]

cmd-replay-recording-stop-desc = 停止录制回放。
cmd-replay-recording-stop-help = 用法：replay_recording_stop
cmd-replay-recording-stop-success = 已停止录制回放。
cmd-replay-recording-stop-not-recording = 当前未在录制回放。

cmd-replay-recording-stats-desc = 显示当前回放录制的信息。
cmd-replay-recording-stats-help = 用法：replay_recording_stats
cmd-replay-recording-stats-result = 时长：{$time} 分钟，刻数：{$ticks}，大小：{$size} MB，速率：{$rate} MB/分钟。

# 时间控制界面
replay-time-box-scrubbing-label = 动态拖动
replay-time-box-replay-time-label = 录制时间：{$current} / {$end}（{$percentage}%）
replay-time-box-server-time-label = 服务器时间：{$current} / {$end}
replay-time-box-index-label = 索引：{$current} / {$total}
replay-time-box-tick-label = 刻：{$current} / {$total}

# Loading Screen

replay-loading = 正在加载（{$cur}/{$total}）
replay-loading-reading = 正在读取文件
replay-loading-processing = 正在处理文件
replay-loading-spawning = 正在生成实体
replay-loading-initializing = 正在初始化实体
replay-loading-starting= 正在启动实体
replay-loading-failed = 无法加载回放。错误：
                        {$reason}
replay-loading-retry = 尝试以更宽松的异常处理加载——可能引发错误！
replay-loading-cancel = 取消

# Main Menu
replay-menu-subtext = 回放客户端
replay-menu-load = 加载所选回放
replay-menu-select = 选择回放
replay-menu-open = 打开回放文件夹
replay-menu-none = 未找到回放。

# Main Menu Info Box
replay-info-title = 回放信息
replay-info-none-selected = 未选择回放
replay-info-invalid = [color=red]所选回放无效[/color]
replay-info-info = {"["}color=gray]已选择：[/color]  {$name}（{$file}）
                   {"["}color=gray]时间：[/color]   {$time}
                   {"["}color=gray]回合 ID：[/color]   {$roundId}
                   {"["}color=gray]时长：[/color]   {$duration}
                   {"["}color=gray]分支 ID：[/color]   {$forkId}
                   {"["}color=gray]版本：[/color]   {$version}
                   {"["}color=gray]引擎：[/color]   {$engVersion}
                   {"["}color=gray]类型哈希：[/color]   {$hash}
                   {"["}color=gray]组件哈希：[/color]   {$compHash}

# Replay selection window
replay-menu-select-title = 选择回放

# Replay related verbs
replay-verb-spectate = 观察

# command
cmd-replay-spectate-help = 用法：replay_spectate [可选实体]
cmd-replay-spectate-desc = 将本地玩家附加到指定实体 UID，或从中分离。
cmd-replay-spectate-hint = 可选 EntityUid

cmd-replay-toggleui-desc = 切换回放控制界面。

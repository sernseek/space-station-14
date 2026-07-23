# ban
cmd-ban-desc = 封禁某人
cmd-ban-help = 用法：ban <名称或用户 ID> <原因> [时长（分钟）；省略或填 0 表示永久封禁]
cmd-ban-player = 找不到该名称的玩家。
cmd-ban-invalid-minutes = {$minutes} 不是有效的分钟数！
cmd-ban-invalid-severity = {$severity} 不是有效的严重程度！
cmd-ban-invalid-arguments = 参数数量无效
cmd-ban-hint = <名称/用户 ID>
cmd-ban-hint-reason = <原因>
cmd-ban-hint-duration = [时长]
cmd-ban-hint-severity = [严重程度]

cmd-ban-hint-duration-1 = 永久
cmd-ban-hint-duration-2 = 1 天
cmd-ban-hint-duration-3 = 3 天
cmd-ban-hint-duration-4 = 1 周
cmd-ban-hint-duration-5 = 2 周
cmd-ban-hint-duration-6 = 1 个月

# ban panel
cmd-banpanel-desc = 打开封禁面板
cmd-banpanel-help = 用法：banpanel [名称或用户 GUID]
cmd-banpanel-server = 无法从服务端控制台使用此命令
cmd-banpanel-player-err = 找不到指定玩家

# listbans
cmd-banlist-desc = 列出用户当前有效的封禁。
cmd-banlist-help = 用法：banlist <名称或用户 ID>
cmd-banlist-empty = 未找到 {$user} 的有效封禁
cmd-banlist-hint = <名称/用户 ID>

cmd-ban_exemption_update-desc = 设置玩家免受某类封禁的豁免。
cmd-ban_exemption_update-help = 用法：ban_exemption_update <玩家> <标志> [<标志> [...]]
    指定多个标志可为玩家授予多项封禁豁免。
    若要移除所有豁免，请运行此命令并仅将 "None" 作为标志。

cmd-ban_exemption_update-nargs = 应至少提供 2 个参数
cmd-ban_exemption_update-locate = 找不到玩家“{$player}”。
cmd-ban_exemption_update-invalid-flag = 标志“{$flag}”无效。
cmd-ban_exemption_update-success = 已更新“{$player}”（{$uid}）的封禁豁免标志。
cmd-ban_exemption_update-arg-player = <玩家>
cmd-ban_exemption_update-arg-flag = <标志>

cmd-ban_exemption_get-desc = 显示指定玩家的封禁豁免。
cmd-ban_exemption_get-help = 用法：ban_exemption_get <玩家>

cmd-ban_exemption_get-nargs = 应恰好提供 1 个参数
cmd-ban_exemption_get-none = 用户不享有任何封禁豁免。
cmd-ban_exemption_get-show = 用户免受以下封禁标志影响：{$flags}。
cmd-ban_exemption_get-arg-player = <玩家>

# Ban panel
ban-panel-title = 封禁面板
ban-panel-player = 玩家
ban-panel-ip = IP
ban-panel-hwid = HWID
ban-panel-reason = 原因
ban-panel-last-conn = 使用上次连接的 IP 和 HWID？
ban-panel-submit = 封禁
ban-panel-confirm = 确定吗？
ban-panel-tabs-basic = 基本信息
ban-panel-tabs-reason = 原因
ban-panel-tabs-players = 玩家列表
ban-panel-tabs-role = 职位封禁信息
ban-panel-no-data = 必须提供要封禁的用户、IP 或 HWID
ban-panel-invalid-ip = 无法解析 IP 地址，请重试
ban-panel-select = 选择类型
ban-panel-server = 服务器封禁
ban-panel-role = 职位封禁
ban-panel-minutes = 分钟
ban-panel-hours = 小时
ban-panel-days = 天
ban-panel-weeks = 周
ban-panel-months = 月
ban-panel-years = 年
ban-panel-permanent = 永久
ban-panel-ip-hwid-tooltip = 留空并勾选下方复选框，以使用上次连接的信息
ban-panel-severity = 严重程度：
ban-panel-erase = 清除聊天消息并将玩家移出本回合
ban-panel-expiry-error = 错误

# Ban string
server-ban-string = {$admin} 对 [{$name}, {$ip}, {$hwid}] 创建了严重程度为 {$severity}、到期时间为 {$expires} 的服务器封禁，原因：{$reason}
server-ban-string-no-pii = {$admin} 对 {$name} 创建了严重程度为 {$severity}、到期时间为 {$expires} 的服务器封禁，原因：{$reason}
server-ban-string-never = 永不到期

# Kick on ban
ban-kick-reason = 你已被封禁

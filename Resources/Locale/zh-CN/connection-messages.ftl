cmd-whitelistadd-desc = 将指定用户名的玩家加入服务器白名单。
cmd-whitelistadd-help = 用法：whitelistadd <用户名或用户ID>
cmd-whitelistadd-existing = {$username} 已在白名单中！
cmd-whitelistadd-added = {$username} 已加入白名单
cmd-whitelistadd-not-found = 找不到 '{$username}'
cmd-whitelistadd-arg-player = [玩家]

cmd-whitelistremove-desc = 将指定用户名的玩家移出服务器白名单。
cmd-whitelistremove-help = 用法：whitelistremove <用户名或用户ID>
cmd-whitelistremove-existing = {$username} 不在白名单中！
cmd-whitelistremove-removed = {$username} 已移出白名单
cmd-whitelistremove-not-found = 找不到 '{$username}'
cmd-whitelistremove-arg-player = [玩家]

cmd-kicknonwhitelisted-desc = 将所有不在白名单中的玩家踢出服务器。
cmd-kicknonwhitelisted-help = 用法：kicknonwhitelisted

ban-banned-permanent = 此封禁只能通过申诉解除。
ban-banned-permanent-appeal = 此封禁只能通过申诉解除。你可以在 {$link} 提出申诉
ban-expires = 此封禁时长为 {$duration} 分钟，将于 {$time} UTC 到期。
ban-banned-1 = 你（或此设备/网络的其他用户）已被禁止在本服务器游玩。
ban-banned-2 = 封禁理由："{$reason}"
ban-banned-3 = 任何规避封禁的行为（如注册新账号）都会被记录。

soft-player-cap-full = 服务器已满！
panic-bunker-account-denied = 服务器正处于避难所模式。请在 Discord 联系管理员放行，或等待一段时间后再试。
panic-bunker-account-denied-reason = 服务器正处于避难所模式。请在 Discord 联系管理员放行，或等待一段时间后再试。要始终绕过避难所模式，{$reason}
panic-bunker-account-reason-account = 你的 SS14 账号注册时间需超过 {$minutes} 分钟。
panic-bunker-account-reason-overall = 你在本服务器的总游戏时长需超过 {$minutes} 分钟。

whitelist-playtime = 你的游戏时长不足，无法加入本服务器。至少需要 {$minutes} 分钟的游戏时长。
whitelist-player-count = 本服务器当前暂不接受新玩家，请稍后再试。
whitelist-notes = 你的管理员记录过多，无法加入本服务器。可在聊天框输入 /adminremarks 查看你的记录。
whitelist-manual = 你不在本服务器的白名单中。
whitelist-blacklisted = 你已被本服务器列入黑名单。
whitelist-always-deny = 你不被允许加入本服务器。
whitelist-fail-prefix = 未通过白名单：{$msg}

cmd-blacklistadd-desc = 将指定用户名的玩家加入服务器黑名单。
cmd-blacklistadd-help = 用法：blacklistadd <用户名>
cmd-blacklistadd-existing = {$username} 已在黑名单中！
cmd-blacklistadd-added = {$username} 已加入黑名单
cmd-blacklistadd-not-found = 找不到 '{$username}'
cmd-blacklistadd-arg-player = [玩家]

cmd-blacklistremove-desc = 将指定用户名的玩家移出服务器黑名单。
cmd-blacklistremove-help = 用法：blacklistremove <用户名>
cmd-blacklistremove-existing = {$username} 不在黑名单中！
cmd-blacklistremove-removed = {$username} 已移出黑名单
cmd-blacklistremove-not-found = 找不到 '{$username}'
cmd-blacklistremove-arg-player = [玩家]

baby-jail-account-denied = 本服务器是新手服务器，面向新玩家以及愿意帮助新人的玩家。账号注册时间过久且不在白名单中的连接不予接受。欢迎去其他服务器体验 Space Station 14 的全部内容，玩得开心！
baby-jail-account-denied-reason = 本服务器是新手服务器，面向新玩家以及愿意帮助新人的玩家。账号注册时间过久且不在白名单中的连接不予接受。欢迎去其他服务器体验 Space Station 14 的全部内容，玩得开心！原因："{$reason}"
baby-jail-account-reason-account = 你的 Space Station 14 账号注册时间过久。需在 {$minutes} 分钟以内
baby-jail-account-reason-overall = 你在本服务器的总游戏时长需少于 {$minutes} 分钟

generic-misconfigured = 服务器配置有误，暂不接受玩家加入。请联系服务器管理员并稍后再试。

conntrack-resolve-failed-retry = 服务器暂时无法验证你的连接，且没有你账号此前的地址记录。请稍后重新连接。

ipintel-server-ratelimited = 本服务器使用带外部验证的审计系统，但已达到外部服务的验证上限。请联系服务器管理团队反馈此问题并寻求帮助，或稍后再试。
ipintel-unknown = 本服务器使用带外部验证的审计系统，但在验证你的连接时出现错误。请联系服务器管理团队反馈此问题并寻求帮助，或稍后再试。
ipintel-suspicious = 你似乎正在通过数据中心、代理、VPN 或其他可疑网络连接。出于管理原因，我们不允许此类连接进入游戏。如果你开启了 VPN 或类似服务，请关闭后重新连接；如果你认为这是误判，或必须使用这些服务才能游玩，请联系服务器管理团队寻求帮助。

hwid-required = 你的客户端拒绝发送硬件 ID。请联系管理团队寻求帮助。

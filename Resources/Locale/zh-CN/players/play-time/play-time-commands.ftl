parse-minutes-fail = 无法将“{$minutes}”解析为分钟
parse-session-fail = 未找到“{$username}”的会话

## Role Timer Commands

# - playtime_addoverall
cmd-playtime_addoverall-desc = 将指定分钟数添加到玩家的总游玩时间
cmd-playtime_addoverall-help = 用法：{$command} <用户名> <分钟数>
cmd-playtime_addoverall-succeed = 已将 {$username} 的总时间增加至 {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addoverall-arg-user = <用户名>
cmd-playtime_addoverall-arg-minutes = <分钟数>
cmd-playtime_addoverall-error-args = 应恰好提供两个参数

# - playtime_addrole
cmd-playtime_addrole-desc = 将指定分钟数添加到玩家的职位游玩时间
cmd-playtime_addrole-help = 用法：{$command} <用户名> <职位> <分钟数>
cmd-playtime_addrole-succeed = 已将 {$username} / \'{$role}\' 的职位游玩时间增加至 {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addrole-arg-user = <用户名>
cmd-playtime_addrole-arg-role = <职位>
cmd-playtime_addrole-arg-minutes = <分钟数>
cmd-playtime_addrole-error-args = 应恰好提供三个参数

# - playtime_getoverall
cmd-playtime_getoverall-desc = 获取玩家的总游玩时间
cmd-playtime_getoverall-help = 用法：{$command} <用户名>
cmd-playtime_getoverall-success = {$username} 的总时间为 {TOSTRING($time, "dddd\\:hh\\:mm")}。
cmd-playtime_getoverall-arg-user = <用户名>
cmd-playtime_getoverall-error-args = 应恰好提供一个参数

# - GetRoleTimer
cmd-playtime_getrole-desc = 获取玩家的全部或某一职位计时器
cmd-playtime_getrole-help = 用法：{$command} <用户名> [职位]
cmd-playtime_getrole-no = 未找到职位计时器
cmd-playtime_getrole-role = 职位：{$role}，游玩时间：{$time}
cmd-playtime_getrole-overall = 总游玩时间为 {$time}
cmd-playtime_getrole-succeed = {$username} 的游玩时间为：{TOSTRING($time, "dddd\\:hh\\:mm")}。
cmd-playtime_getrole-arg-user = <用户名>
cmd-playtime_getrole-arg-role = <职位|'Overall'>
cmd-playtime_getrole-error-args = 应提供一个或两个参数

# - playtime_save
cmd-playtime_save-desc = 将玩家的游玩时间保存至数据库
cmd-playtime_save-help = 用法：{$command} <用户名>
cmd-playtime_save-succeed = 已保存 {$username} 的游玩时间
cmd-playtime_save-arg-user = <用户名>
cmd-playtime_save-error-args = 应恰好提供一个参数

## 'playtime_flush' command'

cmd-playtime_flush-desc = 将活跃的计时器写入游玩时间追踪存储。
cmd-playtime_flush-help = 用法：{$command} [用户名]
    此操作只会写入内部存储，不会立即写入数据库。
    如果提供了用户，则只写入该用户的数据。

cmd-playtime_flush-error-args = 应提供零个或一个参数
cmd-playtime_flush-arg-user = [用户名]

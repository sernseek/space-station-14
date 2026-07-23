## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = 临时允许用户绕过常规连接检查。
cmd-grant_connect_bypass-help = 用法：grant_connect_bypass <user> [duration minutes]
    临时授予用户绕过常规连接限制的能力。
    此权限仅适用于当前游戏服务器，且默认在 1 小时后过期。
    无论白名单、避难所模式或玩家人数上限如何，该用户都能加入。

cmd-grant_connect_bypass-arg-user = <user>
cmd-grant_connect_bypass-arg-duration = [duration minutes]

cmd-grant_connect_bypass-invalid-args = 应提供 1 或 2 个参数
cmd-grant_connect_bypass-unknown-user = 找不到用户“{$user}”
cmd-grant_connect_bypass-invalid-duration = 时长“{$duration}”无效

cmd-grant_connect_bypass-success = 已成功为用户“{$user}”添加绕过权限

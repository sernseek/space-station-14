# 各类实体状态与客户端 PVS 相关命令的本地化文本

cmd-reset-ent-help = 用法：{$command} <Entity UID>
cmd-reset-ent-desc = 将实体重置为最近收到的服务器状态。这也会重置已脱离至空空间的实体。

cmd-reset-all-ents-help = 用法：{$command}
cmd-reset-all-ents-desc = 将所有实体重置为最近收到的服务器状态。此操作只影响尚未脱离至空空间的实体。

cmd-detach-ent-help = 用法：{$command} <Entity UID>
cmd-detach-ent-desc = 将实体脱离至空空间，如同其已离开 PVS 范围。

cmd-local-delete-help = 用法：{$command} <Entity UID>
cmd-local-delete-desc = 删除实体。与普通删除命令不同，此操作仅在客户端执行。除非该实体是客户端实体，否则很可能引发错误。

cmd-full-state-reset-help = 用法：{$command}
cmd-full-state-reset-desc = 丢弃所有实体状态信息，并向服务器请求完整状态。

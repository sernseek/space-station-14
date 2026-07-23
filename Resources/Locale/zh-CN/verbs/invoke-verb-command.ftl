### 用于 invoke verb 命令的本地化文本。
# 主要是帮助信息与报错信息。

invoke-verb-command-description = 以玩家实体为主体，对某个实体调用指定名称的动词。
invoke-verb-command-help = invokeverb <playerUid | "self"> <targetUid> <verbName | "interaction" | "activation" | "alternative">

invoke-verb-command-invalid-args = invokeverb 需要 2 个参数。

invoke-verb-command-invalid-player-uid = 无法解析玩家 uid，或未传入 "self"。
invoke-verb-command-invalid-target-uid = 无法解析目标 uid。

invoke-verb-command-invalid-player-entity = 给定的玩家 uid 未对应任何有效实体。
invoke-verb-command-invalid-target-entity = 给定的目标 uid 未对应任何有效实体。

invoke-verb-command-success = 已在 { $target } 上调用动词 '{ $verb }'，主体为 { $player }。

invoke-verb-command-verb-not-found = 未能在 { $target } 上找到动词 { $verb }。

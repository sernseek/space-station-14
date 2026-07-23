# Displayed as initiator of vote when no user creates the vote
ui-vote-initiator-server = 服务器

## Default.Votes

ui-vote-restart-title = 重启回合
ui-vote-restart-succeeded = 重启投票通过。
ui-vote-restart-failed = 重启投票未通过（需要 { TOSTRING($ratio, "P0") }）。
ui-vote-restart-fail-not-enough-ghost-players = 重启投票失败：发起重启投票至少需要 { $ghostPlayerRequirement }% 的幽灵玩家。当前幽灵玩家数量不足。
ui-vote-restart-yes = 是
ui-vote-restart-no = 否
ui-vote-restart-abstain = 弃权

ui-vote-gamemode-title = 下一个游戏模式
ui-vote-gamemode-tie = 游戏预设投票出现平局！将随机选择一个预设……
ui-vote-gamemode-win = 游戏预设投票已结束！

ui-vote-map-title = 下一张地图
ui-vote-map-tie = 游戏地图投票出现平局！将随机选择一张地图……
ui-vote-map-win = 游戏地图投票已结束！
ui-vote-map-notlobby = 地图投票只能在回合前大厅中进行！
ui-vote-map-notlobby-time = 地图投票只能在回合前大厅、剩余 { $time } 时进行！


# Votekick votes
ui-vote-votekick-unknown-initiator = 某位玩家
ui-vote-votekick-unknown-target = 未知玩家
ui-vote-votekick-title = { $initiator } 发起了一项针对用户 { $targetEntity } 的投票驱逐。原因：{ $reason }
ui-vote-votekick-yes = 是
ui-vote-votekick-no = 否
ui-vote-votekick-abstain = 弃权
ui-vote-votekick-success = 针对 { $target } 的投票驱逐通过。驱逐原因：{ $reason }
ui-vote-votekick-failure = 针对 { $target } 的投票驱逐失败。驱逐原因：{ $reason }
ui-vote-votekick-not-enough-eligible = 在线的合格投票者不足以发起投票驱逐：{ $voters }/{ $requirement }
ui-vote-votekick-server-cancelled = 针对 { $target } 的投票驱逐已被服务器取消。

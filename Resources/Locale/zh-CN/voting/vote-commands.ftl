### Voting system related console commands

## 'createvote' command

cmd-createvote-desc = 创建一项投票
cmd-createvote-help = 用法：createvote <'restart'|'preset'|'map'>
cmd-createvote-cannot-call-vote-now = 你现在无法发起投票！
cmd-createvote-invalid-vote-type = 无效的投票类型
cmd-createvote-arg-vote-type = <投票类型>

## 'customvote' command

cmd-customvote-desc = 创建一项自定义投票
cmd-customvote-help = 用法：customvote <标题> <选项1> <选项2> [选项3...]
cmd-customvote-on-finished-tie = 投票“{$title}”已结束：{$ties} 之间出现平局！
cmd-customvote-on-finished-win = 投票“{$title}”已结束：{$winner} 获胜！
cmd-customvote-arg-title = <标题>
cmd-customvote-arg-option-n = <选项{ $n }>

## 'vote' command

cmd-vote-desc = 对一项进行中的投票投票
cmd-vote-help = vote <voteId> <option>
cmd-vote-cannot-call-vote-now = 你现在无法发起投票！
cmd-vote-on-execute-error-must-be-player = 必须是玩家
cmd-vote-on-execute-error-invalid-vote-id = 无效的投票 ID
cmd-vote-on-execute-error-invalid-vote-options = 无效的投票选项
cmd-vote-on-execute-error-invalid-vote = 无效的投票
cmd-vote-on-execute-error-invalid-option = 无效的选项

## 'listvotes' command

cmd-listvotes-desc = 列出当前进行中的投票
cmd-listvotes-help = 用法：listvotes

## 'cancelvote' command

cmd-cancelvote-desc = 取消一项进行中的投票
cmd-cancelvote-help = 用法：cancelvote <id>
    你可以通过 listvotes 命令获取该 ID。
cmd-cancelvote-error-invalid-vote-id = 无效的投票 ID
cmd-cancelvote-error-missing-vote-id = 缺少 ID
cmd-cancelvote-arg-id = <id>

### UI

chat-manager-max-message-length = 你的消息超出了 {$maxMessageLength} 字符的上限
chat-manager-ooc-chat-enabled-message = 场外聊天已启用。
chat-manager-ooc-chat-disabled-message = 场外聊天已禁用。
chat-manager-looc-chat-enabled-message = 本地场外聊天已启用。
chat-manager-looc-chat-disabled-message = 本地场外聊天已禁用。
chat-manager-dead-looc-chat-enabled-message = 死亡玩家现在可以使用本地场外聊天。
chat-manager-dead-looc-chat-disabled-message = 死亡玩家不能再使用本地场外聊天。
chat-manager-crit-looc-chat-enabled-message = 濒死玩家现在可以使用本地场外聊天。
chat-manager-crit-looc-chat-disabled-message = 濒死玩家不能再使用本地场外聊天。
chat-manager-admin-ooc-chat-enabled-message = 管理员场外聊天已启用。
chat-manager-admin-ooc-chat-disabled-message = 管理员场外聊天已禁用。

chat-manager-max-message-length-exceeded-message = 你的消息超出了 {$limit} 字符的上限
chat-manager-no-headset-on-message = 你没有戴耳机！
chat-manager-no-radio-key = 未指定无线电频道键！
chat-manager-no-such-channel = 不存在键为 '{$key}' 的频道！
chat-manager-whisper-headset-on-message = 你无法通过无线电耳语！

chat-manager-server-wrap-message = [bold]{$message}[/bold]
chat-manager-sender-announcement = 中央指挥部

# THE() is not used here because the entity and its name can technically be disconnected if a nameOverride is passed...
chat-manager-entity-me-wrap-message = [italic]{ PROPER($entity) ->
    *[false] {$entityName}{$message}[/italic]
     [true] {CAPITALIZE($entityName)}{$message}[/italic]
    }

chat-manager-entity-looc-wrap-message = 本地场外：[bold]{$entityName}：[/bold] {$message}
chat-manager-send-ooc-patron-wrap-message = 场外：[bold][color={$patronColor}]{$playerName}[/color]：[/bold] {$message}

chat-manager-send-dead-chat-wrap-message = {$deadChannelName}：[bold][BubbleHeader]{$playerName}[/BubbleHeader]：[/bold] [BubbleContent]{$message}[/BubbleContent]
chat-manager-send-admin-dead-chat-wrap-message = {$adminChannelName}：[bold]（[BubbleHeader]{$userName}[/BubbleHeader]）：[/bold] [BubbleContent]{$message}[/BubbleContent]
chat-manager-send-admin-chat-wrap-message = {$adminChannelName}：[bold]{$playerName}：[/bold] {$message}
chat-manager-send-admin-announcement-wrap-message = [bold]{$adminChannelName}：{$message}[/bold]

chat-manager-send-hook-ooc-wrap-message = 场外：[bold]（D）{$senderName}：[/bold] {$message}
chat-manager-send-hook-admin-wrap-message = 管理：[bold]（D）{$senderName}：[/bold] {$message}

chat-manager-dead-channel-name = 死亡
chat-manager-admin-channel-name = 管理

chat-manager-rate-limited = 你发送消息的速度太快了！
chat-manager-rate-limit-admin-announcement = 速率限制警告：{ $player }

## Speech verbs for chat

chat-speech-verb-suffix-exclamation = ！
chat-speech-verb-suffix-exclamation-strong = ！！
chat-speech-verb-suffix-question = ？
chat-speech-verb-suffix-stutter = -
chat-speech-verb-suffix-mumble = ……

chat-speech-verb-name-none = 无
chat-speech-verb-name-default = 默认
chat-speech-verb-default = 说道
chat-speech-verb-name-exclamation = 喊叫
chat-speech-verb-exclamation = 喊道
chat-speech-verb-name-exclamation-strong = 大喊
chat-speech-verb-exclamation-strong = 吼道
chat-speech-verb-name-question = 询问
chat-speech-verb-question = 问道
chat-speech-verb-name-stutter = 结巴
chat-speech-verb-stutter = 结结巴巴地说
chat-speech-verb-name-mumble = 咕哝
chat-speech-verb-mumble = 咕哝道

chat-speech-verb-name-arachnid = 蛛人
chat-speech-verb-insect-1 = 唧唧地叫
chat-speech-verb-insect-2 = 啾啾地叫
chat-speech-verb-insect-3 = 咔哒作响

chat-speech-verb-name-moth = 蛾人
chat-speech-verb-winged-1 = 振翅
chat-speech-verb-winged-2 = 扑扇翅膀
chat-speech-verb-winged-3 = 嗡嗡地叫

chat-speech-verb-name-slime = 史莱姆
chat-speech-verb-slime-1 = 咕唧作响
chat-speech-verb-slime-2 = 咕嘟冒泡
chat-speech-verb-slime-3 = 黏黏地淌

chat-speech-verb-name-plant = 狄奥娜
chat-speech-verb-plant-1 = 沙沙作响
chat-speech-verb-plant-2 = 轻轻摇曳
chat-speech-verb-plant-3 = 吱嘎作响

chat-speech-verb-name-robotic = 机械
chat-speech-verb-robotic-1 = 陈述道
chat-speech-verb-robotic-2 = 哔哔响
chat-speech-verb-robotic-3 = 嘟嘟响

chat-speech-verb-name-reptilian = 蜥蜴人
chat-speech-verb-reptilian-1 = 嘶嘶地叫
chat-speech-verb-reptilian-2 = 打响鼻
chat-speech-verb-reptilian-3 = 喷着气

chat-speech-verb-name-skeleton = 骷髅
chat-speech-verb-skeleton-1 = 咔哒作响
chat-speech-verb-skeleton-2 = 咔嗒作响
chat-speech-verb-skeleton-3 = 咯吱磨牙

chat-speech-verb-name-vox = 沃克斯
chat-speech-verb-vox-1 = 尖叫
chat-speech-verb-vox-2 = 尖啸
chat-speech-verb-vox-3 = 嘎嘎地叫

chat-speech-verb-name-canine = 犬类
chat-speech-verb-canine-1 = 吠叫
chat-speech-verb-canine-2 = 汪汪叫
chat-speech-verb-canine-3 = 嚎叫
# starlight
chat-speech-verb-canine-4 = 尖声吠叫

chat-speech-verb-name-goat = 山羊
chat-speech-verb-goat-1 = 咩咩叫
chat-speech-verb-goat-2 = 咕哝
chat-speech-verb-goat-3 = 哀叫

chat-speech-verb-name-small-mob = 老鼠
chat-speech-verb-small-mob-1 = 吱吱叫
chat-speech-verb-small-mob-2 = 啾啾叫

chat-speech-verb-name-large-mob = 鲤鱼
chat-speech-verb-large-mob-1 = 咆哮
chat-speech-verb-large-mob-2 = 低吼

chat-speech-verb-name-monkey = 猴子
chat-speech-verb-monkey-1 = 吱吱叫
chat-speech-verb-monkey-2 = 尖叫

chat-speech-verb-name-cluwne = 受诅小丑

chat-speech-verb-name-parrot = 鹦鹉
chat-speech-verb-parrot-1 = 呱呱叫
chat-speech-verb-parrot-2 = 啁啾鸣叫
chat-speech-verb-parrot-3 = 啾啾地叫

chat-speech-verb-cluwne-1 = 咯咯地笑
chat-speech-verb-cluwne-2 = 哈哈狂笑
chat-speech-verb-cluwne-3 = 大笑

chat-speech-verb-name-ghost = 幽灵
chat-speech-verb-ghost-1 = 抱怨
chat-speech-verb-ghost-2 = 喘息
chat-speech-verb-ghost-3 = 低吟
chat-speech-verb-ghost-4 = 嘟囔

chat-speech-verb-name-electricity = 电流
chat-speech-verb-electricity-1 = 噼啪作响
chat-speech-verb-electricity-2 = 嗡嗡作响
chat-speech-verb-electricity-3 = 尖啸

chat-speech-verb-vulpkanin-1 = 嗷呜叫
chat-speech-verb-vulpkanin-2 = 吠叫
chat-speech-verb-vulpkanin-3 = 呼噜叫
chat-speech-verb-vulpkanin-4 = 汪汪叫
chat-speech-verb-vulpkanin = 伏尔卡宁

chat-speech-verb-name-wawa = 娃娃
chat-speech-verb-wawa-1 = 吟诵道
chat-speech-verb-wawa-2 = 陈述道
chat-speech-verb-wawa-3 = 宣告道
chat-speech-verb-wawa-4 = 沉吟道

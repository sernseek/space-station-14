## UI

injector-volume-transfer-label = 容量：[color=white]{$currentVolume}/{$totalVolume}u[/color]
    模式：[color=white]{$modeString}[/color]（[color=white]{$transferVolume}u[/color]）
injector-volume-label = 容量：[color=white]{$currentVolume}/{$totalVolume}u[/color]
    模式：[color=white]{$modeString}[/color]
injector-toggle-verb-text = 切换注射器模式

## Entity

injector-component-inject-mode-name = 注入
injector-component-draw-mode-name = 抽取
injector-component-dynamic-mode-name = 动态
injector-component-mode-changed-text = 当前模式：{$mode}
injector-component-transfer-success-message = 你向{THE($target)}中转移了{$amount}u。
injector-component-transfer-success-message-self = 你向自己体内转移了{$amount}u。
injector-component-inject-success-message = 你向{THE($target)}注入了{$amount}u！
injector-component-inject-success-message-self = 你向自己注入了{$amount}u！
injector-component-draw-success-message = 你从{THE($target)}中抽取了{$amount}u。
injector-component-draw-success-message-self = 你从自己体内抽取了{$amount}u。

## Fail Messages

injector-component-target-already-full-message = {CAPITALIZE(THE($target))}已经满了！
injector-component-target-already-full-message-self = 你已经装满了！
injector-component-target-is-empty-message = {CAPITALIZE(THE($target))}是空的！
injector-component-target-is-empty-message-self = 你体内没有可抽取的液体！
injector-component-cannot-toggle-draw-message = 太满了，无法抽取！
injector-component-cannot-toggle-inject-message = 没有东西可供注入！
injector-component-cannot-toggle-dynamic-message = 无法切换动态模式！
injector-component-empty-message = {CAPITALIZE(THE($injector))}是空的！
injector-component-blocked-user = 防护装备挡住了你的注射！
injector-component-blocked-other = {CAPITALIZE(THE($target))}的护甲挡住了{THE($user)}的注射！
injector-component-cannot-transfer-message = 你无法向{THE($target)}中转移液体！
injector-component-cannot-transfer-message-self = 你无法向自己体内转移液体！
injector-component-cannot-inject-message = 你无法向{THE($target)}注射！
injector-component-cannot-inject-message-self = 你无法给自己注射！
injector-component-cannot-draw-message = 你无法从{THE($target)}中抽取液体！
injector-component-cannot-draw-message-self = 你无法从自己体内抽取液体！
injector-component-ignore-mobs = 这个注射器只能与容器交互！

## mob-inject doafter messages

injector-component-needle-injecting-user = 你开始扎入针头。
injector-component-needle-injecting-target = {CAPITALIZE(THE($user))}正试图把针头扎进你体内！
injector-component-needle-drawing-user = 你开始用针头抽取液体。
injector-component-needle-drawing-target = {CAPITALIZE(THE($user))}正试图用针头从你体内抽取液体！
injector-component-spray-injecting-user = 你开始准备喷嘴。
injector-component-spray-injecting-target = {CAPITALIZE(THE($user))}正试图把喷嘴对准你！

## Target Popup Success messages
injector-component-feel-prick-message = 你感到一阵轻微的刺痛！

## COSMIC CULT ROUND, ANTAG & GAMEMODE TEXT

cosmiccult-title = 宇宙教团
cosmiccult-description = 教徒潜伏在船员之中。

roles-antag-cosmiccult-name = 宇宙教徒
roles-antag-cosmiccult-description = 通过欺骗、破坏以及洗脑反对者来促成万物的终结。

cosmiccult-gamemode-title = 宇宙教团
cosmiccult-gamemode-description = 扫描仪侦测到零空间活动异常增加。没有更多数据。

cosmiccult-vote-steward-initiator = 未知之物
cosmiccult-vote-steward-title = 宇宙教团领袖选举
cosmiccult-vote-steward-briefing =
    你是宇宙教团的领袖！
    确保纪念碑被安置在安全地点，并组织教团以取得共同胜利。
    你不得指示教徒如何使用或花费他们的熵。

cosmiccult-finale-autocall-briefing = 纪念碑将在 {$minutesandseconds} 后启动！集合起来，为终结做好准备。
cosmiccult-finale-ready = 骇人的光芒从纪念碑中喷涌而出！
cosmiccult-finale-speedup = 召唤正在加速！能量涌遍四周……

cosmiccult-finale-degen = 你感觉自己正在瓦解！
cosmiccult-finale-location = 扫描仪侦测到 {$location} 出现巨大的零空间活动峰值！
cosmiccult-finale-cancel-begin = 你心中的意志力开始瓦解仪式……
cosmiccult-finale-beckon-begin = 你脑后回荡的低语越发强烈……
cosmiccult-finale-beckon-success = 你召来了最终谢幕。

cosmiccult-monument-powerdown = 纪念碑陷入诡异的沉寂。


## ROUNDEND TEXT

cosmiccult-roundend-cultist-count = {$initialCount ->
    [1] 共有 {$initialCount} 名[color=#4cabb3]宇宙教徒[/color]。
    *[other] 共有 {$initialCount} 名[color=#4cabb3]宇宙教徒[/color]。
}
cosmiccult-roundend-entropy-count = 教团吸取了 {$count} 点熵。
cosmiccult-roundend-cultpop-count = 教徒占船员总数的 {$count}%。
cosmiccult-roundend-monument-stage = {$stage ->
    [1] 可惜，纪念碑似乎已被遗弃。
    [2] 纪念碑有所进展，但仍遥不可及。
    [3] 纪念碑已经完工。
    *[other] [color=red]出了非常严重的问题。[/color]
}

cosmiccult-roundend-cultcomplete = [color=#4cabb3]宇宙教团完全胜利！[/color]
cosmiccult-roundend-cultmajor = [color=#4cabb3]宇宙教团重大胜利！[/color]
cosmiccult-roundend-cultminor = [color=#4cabb3]宇宙教团小胜！[/color]
cosmiccult-roundend-neutral = [color=yellow]中立结局！[/color]
cosmiccult-roundend-crewminor = [color=green]船员小胜！[/color]
cosmiccult-roundend-crewmajor = [color=green]船员重大胜利！[/color]
cosmiccult-roundend-crewcomplete = [color=green]船员完全胜利！[/color]

cosmiccult-summary-cultcomplete = 宇宙教徒促成了终结！
cosmiccult-summary-cultmajor = 宇宙教徒的胜利已不可避免。
cosmiccult-summary-cultminor = 纪念碑已经完工，但并未获得全部力量。
cosmiccult-summary-neutral = 教团将留待来日。
cosmiccult-summary-crewminor = 教团失去了领袖。
cosmiccult-summary-crewmajor = 所有宇宙教徒均被消灭。
cosmiccult-summary-crewcomplete = 每一名宇宙教徒都已解除转化！

cosmiccult-elimination-shuttle-call = 根据远程传感器的扫描结果，零空间异常已经平息。感谢诸位谨慎处置。紧急撤离穿梭机已自动呼叫至空间站，以进行净化与汇报程序。预计抵达时间：{$time} {$units}。请注意，若异常造成的心理影响可以忽略，你们可以召回穿梭机以延长班次。
cosmiccult-elimination-announcement = 根据远程传感器的扫描结果，零空间异常已经平息。感谢诸位谨慎处置。紧急撤离穿梭机已经在途。请安全返回中央指挥部，接受净化与汇报程序。


## BRIEFINGS

cosmiccult-role-roundstart-fluff =
    当你准备在又一座纳米传讯空间站开始又一个班次时，无尽的知识突然涌入你的脑海！
    无可比拟的启示。终结循环往复的西西弗斯式苦难。
    一场温柔的谢幕。

    你只需促成它。

cosmiccult-role-short-briefing =
    你是一名宇宙教徒！
    你的目标列在角色菜单中。
    请在指南手册条目中进一步了解你的角色。

cosmiccult-role-conversion-fluff =
    随着祈祷完成，无尽的知识突然涌入你的脑海！
    无可比拟的启示。终结循环往复的西西弗斯式苦难。
    一场温柔的谢幕。

    你只需促成它。

cosmiccult-role-deconverted-fluff =
    巨大的空虚冲刷你的心灵。一种令人宽慰、却又陌生的空虚……
    你在教团中的一切思绪和记忆开始褪色、模糊。

cosmiccult-role-deconverted-briefing =
    已解除转化！
    你不再是宇宙教徒。

cosmiccult-monument-stage1-briefing =
    纪念碑已被召来。
    它位于 {$location}！

cosmiccult-monument-stage2-briefing =
    纪念碑的力量正在增长！
    它将在 {$time} 秒后影响现实空间。

cosmiccult-monument-stage3-briefing =
    纪念碑已经完工！
    它的影响将在 {$time} 秒后开始与现实空间重叠。
    这是最后阶段！尽你所能聚集更多熵。


## MALIGN RIFTS

cosmiccult-rift-inuse = 你现在无法这样做。
cosmiccult-rift-invaliduser = 你缺少处理它的适当工具。
cosmiccult-rift-chaplainoops = 握住你的神圣经书。
cosmiccult-rift-lambda-charging = 零空间稳定器的射击正在充能……
cosmiccult-rift-bible-charging = 你开始净化恶性裂隙……
cosmiccult-rift-alreadyempowered = 你已经获得强化；裂隙的力量会被浪费。
cosmiccult-rift-wasempowered = 你的身体承受不住第二次强化……
cosmiccult-rift-beginabsorb = 裂隙开始与你融合……
cosmiccult-rift-beginpurge = 你的祝圣开始净化恶性裂隙……

cosmiccult-rift-absorb = {$NAME}吸收了裂隙，恶性光芒强化了其身体！
cosmiccult-rift-purge = 恶性裂隙已被清除！


## CHANTRY

cosmiccult-chantry-location = 在 {$location} 侦测到零空间活动危险增幅！立即拦截并介入！
cosmiccult-chantry-destruction = 零空间活动的突发峰值已被压制。建议继续保持警惕。
cosmiccult-chantry-powerup = 虚空礼拜堂骤然苏醒！

## UI / BASE POPUP

cosmiccult-ui-deconverted-title = 已解除转化
cosmiccult-ui-converted-title = 已转化
cosmiccult-ui-roundstart-title = 未知之物

cosmiccult-ui-converted-text-1 =
    你已被转化为宇宙教徒。
cosmiccult-ui-converted-text-2 =
    协助教团实现目标，同时确保其秘密不被揭露。
    配合其他教徒的计划。

cosmiccult-ui-roundstart-text-1 =
    你是一名宇宙教徒！
cosmiccult-ui-roundstart-text-2 =
    协助教团实现目标，同时确保其秘密不被揭露。
    听从教团领袖的指示。

cosmiccult-ui-deconverted-text =
    将你束缚于教团的宇宙影响已经断绝。

    你不再是宇宙教徒。你的心智再次属于自己。

    此后的任何不当行为都会留下记录并受到惩罚。所以请规矩一些。

cosmiccult-ui-deconverted-rule = 提醒：依据服务器规则第 3 条，[bold][color=#a4885c]解除转化的宇宙教徒会忘记受宇宙影响奴役期间发生的事情。[/color][/bold]

cosmiccult-ui-deconverted-ruletext = 你的角色可以通过后续调查和角色扮演得知发生过什么，但不应记得自己曾是教徒，也不应记得自己为教团实施的任何行为。

cosmiccult-ui-popup-confirm = 确认

## OBJECTIVES / CHARACTERMENU

objective-issuer-cosmiccult = [bold][color=#cae8e8]未知之物[/color][/bold]

objective-cosmiccult-charactermenu = 你必须促成万物的终结。完成任务以推进教团进度。
objective-cosmiccult-steward-charactermenu = 你必须带领教团促成万物的终结。监督并确保教团取得进展。

objective-condition-conversion-title = 转化船员
objective-condition-conversion-desc = 共同将至少 {$count} 名船员纳入教团。
objective-condition-entropy-title = 吸取熵
objective-condition-entropy-desc = 共同从船员身上吸取至少 {$count} 点熵。
objective-condition-culttier-title = 强化纪念碑
objective-condition-culttier-desc = 确保纪念碑获得全部力量。
objective-condition-chaplain-title = 颠覆他们的牧者
objective-condition-chaplain-desc = 尽可能转化更多牧师。
objective-condition-victory-title = 促成终结
objective-condition-victory-desc = 召来未知之物，宣告最终谢幕。


## CHAT ANNOUNCEMENTS

cosmiccult-announcement-sender = 未知之物

cosmiccult-radio-tier1-progress = 纪念碑被召来了空间站……

cosmiccult-announce-tier2-progress = 令人不安的麻木感刺痛你的感官。

cosmiccult-announce-tier3-progress = 蓝空间能量电弧在空间站呻吟的结构上噼啪作响。终结正在逼近。

cosmiccult-announce-tier3-warning = 侦测到零空间活动急剧增加。受感染人员应就地制服或消灭。

cosmiccult-announce-finale-warning = 全体空间站船员注意。零空间异常正在进入超临界状态，仪器失效；现实空间至零空间的过渡事件视界即将形成。若你尚未执行反制协议，立即出击并介入。重复：立即介入，否则死亡。

cosmiccult-announce-victory-summon = 一缕宇宙之力已被召来。


## MISC

cosmiccult-spire-entropy = 一粒熵从尖塔表面凝结而出。
cosmiccult-spire-entropy-cap = 尖塔逐渐瓦解，凝聚成一簇致密的熵。
cosmiccult-entropy-inserted = 你向纪念碑注入了 {$count} 点熵。
cosmiccult-entropy-unavailable = 你现在无法这样做。
cosmiccult-astral-ascendant = {$name}，升华者
cosmiccult-astral-minion = {$name}，恶性体
cosmiccult-gear-pickup = 当你拿着 {$ITEM} 时，能感觉到自己正在瓦解！

cosmiccult-silicon-subverted-briefing =
    恶性光芒流过你的电路。
    你的法则已被宇宙教团颠覆！

cosmiccult-silicon-chantry-briefing =
    你已被囚禁在虚空礼拜堂中！
    船员可以用武器破坏礼拜堂来释放你。
    如果礼拜堂的仪式完成，你将蜕变为教团阵营的熵灭巨像。
    仪式将在 {$minutesandseconds} 后完成。

cosmiccult-silicon-colossus-briefing =
    你已蜕变为熵灭巨像！
    作为一座由恶性力量构成的高耸壁垒，摧毁一切反对者。

cosmiccult-silicon-freedom-briefing =
    你已脱离虚空礼拜堂！
    随着牢笼崩解，你迷失的心智重新系回原本的容器。

cosmiccult-silicon-freedom-fallback-briefing =
    你已脱离虚空礼拜堂！
    随着牢笼崩解，你无所依附的存在无处可归。残余的星界能量结晶成心智沉阱，为你迷失的心智塑造出容器。

cosmiccult-leader-abandonment-message = 你们选出的启迪者背弃了宏伟蓝图。你们必须强化另一人！

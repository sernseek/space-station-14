## Base actions

alerts-vampire-blood-name = 已饮血量
alerts-vampire-blood-desc = 显示你喝下了多少血。伸出尖牙并左键点击目标来吸血。

alerts-vampire-fed-name = 血液饱腹度
alerts-vampire-fed-desc = 你当前的血液饱腹度。饮血以维持饱腹。

roles-antag-vamire-name = 吸血鬼
roles-antag-vampire-description = 以船员为食。伸出尖牙，吸取他们的血液。

roles-antag-thrall-name = 血仆
roles-antag-thrall-objective = 忠实侍奉你的主人并服从其命令。

vampire-roundend-name = 吸血鬼

vampire-drink-start = 你将尖牙刺入{CAPITALIZE(THE($target))}。

vampire-not-enough-blood = 血液不足。

vampire-mouth-covered = 你的嘴被遮住了！
vampire-drink-invalid-target = 你无法吸取吸血鬼或其血仆的血液。
vampire-target-protected-by-faith = 此人受到信仰的庇护！
vampire-drink-target-empty = 这个生物已经无血可吸！
vampire-drink-target-maxed = 你已经从该目标身上吸取了 { $amount } 单位血液。
vampire-drink-target-hard-max = 你已从该目标身上吸取了最大量的血液（{ $amount } 单位）。
vampire-full-power-achieved = 你的吸血鬼精华澎湃涌动——完全力量已达成！
vampire-umbrae-full-power-fov = 阴影听从你的意志。你现在可以透视墙壁！
vampire-drink-target-not-viable = 这个生物没有跳动的心脏！
vampire-drink-target-rot = 这个生物的精华污秽不堪！
vampire-sleep-shielded = 植入物使这个生物无法入睡！
vampire-sleep-protected = 需要更充分的眼神接触……

vampire-role-greeting = 你是一名吸血鬼！
    对鲜血的渴望驱使你以船员为食。使用能力转化其他船员。
    你的尖牙可以吸取人类的血液。血液会恢复生命值并赋予你新的能力。
    在本班次中找些目标来完成吧！

# Objectives
objective-issuer-vampire = [color=crimson]吸血鬼[/color]

objective-condition-drain-title = 吸取 {$count} 单位血液
objective-condition-drain-description = 用尖牙从船员身上吸取 {$count} 单位血液。

objective-vampire-thrall-obey-master-title = 服从你的主人 {$targetName}。

# Class selection action
action-vampire-class-select = 选择吸血鬼职业
action-vampire-class-select-desc = 选择你的吸血鬼分支职业

# Round end statistics
roundend-prepend-vampire-drained-low = 吸血鬼们本班次几乎没吃饱，只吸取了 {$blood} 单位血液。
roundend-prepend-vampire-drained-medium = 吸血鬼们饱餐了一顿，共吸取 {$blood} 单位血液。
roundend-prepend-vampire-drained-high = 吸血鬼们大摆鲜血盛宴，共吸取 {$blood} 单位血液！
roundend-prepend-vampire-drained-critical = 吸血鬼们陷入疯狂进食，吸取了惊人的 {$blood} 单位血液！

roundend-prepend-vampire-drained = 本回合没有吸血鬼成功吸取大量血液。
roundend-prepend-vampire-drained-named = {$name} 是最嗜血的吸血鬼，总共吸取了 {$number} 单位血液。

# Vampire class selection tooltips
vampire-class-hemomancer-tooltip = 血术师
    专精鲜血魔法以及操控周围的血液

vampire-class-umbrae-tooltip = 暗影
    专精黑暗、隐秘伏击与机动能力

vampire-class-gargantua-tooltip = 巨灵
    专精坚韧与近战伤害

vampire-class-dantalion-tooltip = 丹塔利安
    专精奴役与幻象

# Hemomancer abilities
action-vampire-hemomancer-tendrils-wrong-place = 无法在那里施法。

action-vampire-blood-barrier-wrong-place = 无法在那里放置屏障。

action-vampire-sanguine-pool-already-in = 你已经处于血池形态！
action-vampire-sanguine-pool-invalid-tile = 你无法在这里化为血池。
action-vampire-sanguine-pool-enter = 你化作了一摊鲜血！
action-vampire-sanguine-pool-exit = 你从血池中重新凝聚成形！
vampire-space-burn-warning = 虚空的刺目光芒灼烧着你的不死血肉！

action-vampire-blood-eruption-activated = 你让周围的血液喷涌成尖刺！

action-vampire-blood-bringers-rite-not-enough-power = 你尚未获得吸血鬼的完全力量（需要总血量超过 1000，并拥有 8 名不同受害者）
action-vampire-blood-brighters-rite-not-enough-blood = 血液不足，无法启动鲜血使者仪式
action-vampire-blood-bringers-rite-start = 鲜血使者仪式已启动！
action-vampire-blood-bringers-rite-stop = 鲜血使者仪式已停用
action-vampire-blood-bringers-rite-stop-blood = 鲜血使者仪式已停用——血液不足

vampire-locate-result = 你的感官追踪到 { $target } 位于 { $location }。
vampire-locate-not-same-sector = 那个人不在你所在的星区。
vampire-locate-unknown = 未知区域
vampire-locate-no-targets = 在该星区感知不到猎物。

predator-sense-title = 捕食者感知
vampire-locate-search-placeholder = 搜索……

vampiric-claws-remove-popup = 你收起了利爪。

# Umbrae abilities
action-vampire-cloak-of-darkness-start = 你融入阴影！
action-vampire-cloak-of-darkness-stop = 你走出阴影。

action-vampire-shadow-snare-placed = 你设置了一个暗影陷阱。
action-vampire-shadow-snare-wrong-place = 你无法在这里设置陷阱。
action-vampire-shadow-snare-scatter = 你驱散了暗影陷阱。
vampire-shadow-snare-oldest-removed = 你最早设置的暗影陷阱消散了。
ent-shadow-snare-ensnare = 暗影陷阱

action-vampire-shadow-anchor-returned = 你返回了暗影锚点
action-vampire-shadow-anchor-installed = 你在阴影中固定了一处位置

action-vampire-shadow-boxing-start = 你开始进行暗影拳击。
action-vampire-shadow-boxing-stop = 暗影拳击已停止。
action-vampire-shadow-boxing-ends = 暗影拳击结束。

action-vampire-dark-passage-wrong-place = 此处的黑暗无法穿透……
action-vampire-dark-passage-activated = 你从黑暗中穿行而过……

action-vampire-extinguish-activated = 你吸收了周围的光……（{$count}）

action-vampire-eternal-darkness-not-enough-blood = 你的血液已经耗尽，无法维持永恒黑暗。
action-vampire-eternal-darkness-start = 你召唤了永恒黑暗……
action-vampire-eternal-darkness-stop = 永恒黑暗消散了……

# Dantalion
vampire-enthrall-start = 你将意识探入{CAPITALIZE(THE($target))}的心灵……
vampire-enthrall-success = {CAPITALIZE(THE($target))}屈膝臣服，成为了你的血仆。
vampire-enthrall-target = 吸血鬼的支配力压垮了你的心智！
vampire-enthrall-limit = 你无法控制更多血仆。
vampire-enthrall-invalid = 该目标无法被奴役。
vampire-thrall-released = 吸血鬼对你的控制逐渐消退。

vampire-pacify-invalid = 该目标无法被安抚。
vampire-pacify-success = {CAPITALIZE(THE($target))}屈服于你压倒性的宁静。
vampire-pacify-target = 沉重的平静淹没了你的战斗意志！

vampire-subspace-swap-thrall = 你无法与自己的血仆进行亚空间交换。
vampire-subspace-swap-dead = 那个心智已超出你的触及范围。
vampire-subspace-swap-failed = 亚空间裂隙徒劳地消散了。
vampire-subspace-swap-success = 空间扭曲，你与{CAPITALIZE(THE($target))}交换了位置！
vampire-subspace-swap-target = 现实扭曲，将你撕扯到一个新的位置！

vampire-rally-thralls-success = {$count ->
    [one] 你的呼唤令一名血仆回到你身边！
    *[other] 你的呼唤令 {$count} 名血仆回到你身边！
}
vampire-rally-thralls-none = 没有血仆能够回应你的呼唤。
vampire-thrall-holy-water-freed = 圣水净化了吸血鬼对你心智的控制！

vampire-blood-bond-start = 鲜血的河流将你与血仆联结。
vampire-blood-bond-stop = 你解除了鲜血纽带。
vampire-blood-bond-no-thralls = 你没有可供联结的受奴役仆从。
vampire-blood-bond-stop-blood = 纽带自行撕裂；你没有足够的血液来维持它。

action-vampire-not-enough-power = 你的力量不足（需要总血量 >1000，并拥有 8 名不同受害者）。

# Gargantua
vampire-blood-swell-start = 你的肌肉在邪恶力量下膨胀
vampire-blood-swell-end = 鲜血狂怒平息了。

vampire-blood-rush-start = 鲜血在你的四肢中奔涌！
vampire-blood-rush-end = 你的超自然速度消退了。

vampire-seismic-stomp-activate = 大地在你的怒火下震颤！

vampire-overwhelming-force-start = 你的身躯变得不可撼动。
vampire-overwhelming-force-stop = 你放松了钢铁般的钳制。
vampire-overwhelming-force-too-heavy = 这个物体太重，根本无法移动！
vampire-overwhelming-force-door-pried = 你用蛮力撬开了门。

vampire-demonic-grasp-hit = 一只恶魔之爪抓住了你！
vampire-demonic-grasp-pull = 利爪将你拖向吸血鬼！

vampire-charge-start = 你以不可阻挡之势向前猛冲！
vampire-charge-impact = 你以毁灭性的力量撞上{CAPITALIZE(THE($target))}！


vampire-blood-swell-cancel-shoot = 你的手指塞不进扳机护圈！！

vampire-holy-place-burn = 神圣之地灼烧着你邪恶的血肉！

alerts-vampire-blood-swell-name = 鲜血膨胀
alerts-vampire-blood-swell-desc = 你的肌肉涌动着邪恶力量。
alerts-vampire-blood-rush-name = 鲜血奔涌
alerts-vampire-blood-rush-desc = 超自然的速度流遍你的四肢。

Vamp-converted-title = 已受奴役！
Vamp-converted-text =
    你已受到奴役！
    忠实服从你的主人，你可以使用“+p”接入蜂巢思维
Vamp-converted-confirm = 明白

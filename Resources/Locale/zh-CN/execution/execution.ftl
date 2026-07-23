execution-verb-name = 处决
execution-verb-message = 使用武器处决某人。

suicide-verb-name = 自杀
suicide-verb-message = 使用武器自杀。

# All the below localisation strings have access to the following variables
# attacker (the person committing the execution)
# victim (the person being executed)
# weapon (the weapon used for the execution)

# STARLIGHT CONTROLLED
# God these need to move to their own file
execution-popup-melee-initial-internal = 你将 {THE($weapon)} 抵在 {THE($victim)} 的喉咙上。
execution-popup-gun-initial-internal = 你将 {THE($weapon)} 的枪口对准 {THE($victim)} 的头部。

execution-popup-melee-initial-external = { CAPITALIZE(THE($attacker)) }将 {$weapon} 抵在 {THE($victim)} 的喉咙上。
execution-popup-gun-initial-external  = { CAPITALIZE(THE($attacker)) }将 {$weapon} 的枪口对准 {THE($victim)} 的头部。

execution-popup-melee-complete-internal = 你割开了 {THE($victim)} 的喉咙！
execution-popup-gun-complete-internal = 你朝 {THE($victim)} 的头部开了一枪！

execution-popup-melee-complete-external = { CAPITALIZE(THE($attacker)) }割开了 {THE($victim)} 的喉咙！
execution-popup-gun-complete-external = { CAPITALIZE(THE($attacker)) }朝 {THE($victim)} 的头部开了一枪！

execution-popup-gun-clumsy-internal = 你没打中 {THE($victim)} 的头，反而射中了自己的脚！
execution-popup-gun-clumsy-external = { CAPITALIZE(THE($attacker)) }没打中 {THE($victim)}，反而射中了自己的脚！

execution-popup-gun-empty = { CAPITALIZE(THE($weapon)) }咔哒作响。

execution-popup-self-melee-initial-internal = 你将 {THE($weapon)} 抵在自己的喉咙上。
execution-popup-self-gun-initial-internal = 你把 {THE($weapon)} 的枪口塞进嘴里。

execution-popup-self-melee-initial-external = { CAPITALIZE(THE($attacker)) }将 {$weapon} 抵在自己的喉咙上。
execution-popup-self-gun-initial-external = { CAPITALIZE(THE($attacker)) }把 {$weapon} 的枪口塞进嘴里。

execution-popup-self-melee-complete-internal = 你割开了自己的喉咙！
execution-popup-self-gun-complete-internal = 你朝自己的头部开了一枪！

execution-popup-self-melee-complete-external = { CAPITALIZE(THE($attacker)) }割开了自己的喉咙！
execution-popup-self-gun-complete-external = { CAPITALIZE(THE($attacker)) }朝自己的头部开了一枪！
# Starlight end

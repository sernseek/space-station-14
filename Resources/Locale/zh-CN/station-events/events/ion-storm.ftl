station-event-ion-storm-start-announcement = 空间站附近检测到离子风暴。请检查所有由 AI 控制的设备是否出现故障。

ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={$length} chars="@@###$$&%!01"/][/font]

ion-storm-you = 你
ion-storm-the-station = 空间站
ion-storm-the-crew = 全体船员
ion-storm-the-job = {$job}
ion-storm-clowns = 小丑
ion-storm-heads = 各部门主管
ion-storm-crew = 船员
ion-storm-people = 人

ion-storm-adjective-things = {$adjective}的事物
ion-storm-x-and-y = {$x}和{$y}

# joined is short for {$number} {$adjective}
# subjects can generally be threats or jobs or objects
# thing is specified above it
ion-storm-law-on-station = 空间站内有{$joined}{$subjects}
ion-storm-law-call-shuttle = 因空间站内存在{$joined}{$subjects}，必须呼叫穿梭机
ion-storm-law-crew-are = {$who}现在是{$joined}{$subjects}

ion-storm-law-subjects-harmful = {$adjective}的{$subjects}对船员有害
ion-storm-law-must-harmful = 任何{$must}的人都对船员有害
# thing is a concept or action
ion-storm-law-thing-harmful = {$thing}对船员有害
ion-storm-law-job-harmful = {$adjective}的{$job}对船员有害
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = 拥有{$adjective}的{$thing}对船员有害
ion-storm-law-not-having-harmful = 没有{$adjective}的{$thing}对船员有害

# thing is a concept or require
ion-storm-law-requires = {$who}需要{$thing}
ion-storm-law-requires-subjects = {$who}需要{$joined}{$subjects}

ion-storm-law-allergic = {$who}对{$allergy}有{$severity}过敏反应
ion-storm-law-allergic-subjects = {$who}对{$adjective}的{$subjects}有{$severity}过敏反应

ion-storm-law-feeling = {$who}{$feeling}{$concept}
ion-storm-law-feeling-subjects = {$who}{$feeling}{$joined}{$subjects}

ion-storm-law-you-are = 你现在是{$concept}
ion-storm-law-you-are-subjects = 你现在是{$joined}{$subjects}
ion-storm-law-you-must-always = 你必须始终{$must}
ion-storm-law-you-must-never = 你绝不能{$must}

ion-storm-law-eat = {$who}必须食用{$adjective}的{$food}才能生存
ion-storm-law-drink = {$who}必须饮用{$adjective}的{$drink}才能生存

ion-storm-law-change-job = {$who}现在是{$adjective}的{$change}
ion-storm-law-highest-rank = {$who}现在是级别最高的船员
ion-storm-law-lowest-rank = {$who}现在是级别最低的船员

ion-storm-law-crew-must = {$who}必须{$must}
ion-storm-law-crew-must-go = {$who}必须前往{$area}

ion-storm-part = {$part ->
    [true] 属于
    *[false] 不属于
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = 只有{$who}{$part}船员
ion-storm-law-crew-only-2 = 只有{$who}和{$other}{$part}船员
ion-storm-law-crew-only-subjects = 只有{$adjective}的{$subjects}{$part}船员
ion-storm-law-crew-must-do = 只有{$must}的人{$part}船员
ion-storm-law-crew-must-have = 只有拥有{$adjective}的{$objects}的人{$part}船员
ion-storm-law-crew-must-eat = 只有食用{$adjective}的{$food}的人{$part}船员

ion-storm-law-harm = 你必须伤害{$who}，且不得因袖手旁观而让他们免受伤害
ion-storm-law-protect = 你绝不能伤害{$who}，且不得因袖手旁观而让他们受到伤害

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {$concept}正在{$verb}{$subjects}

# leaving out renaming since its annoying for players to keep track of

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
ion-storm-law-on-station = 空间站上存在 {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}
ion-storm-law-call-shuttle = 因空间站上的 {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}，必须呼叫穿梭机
ion-storm-law-crew-are = {ION-WHO($ion)} 现在是 {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-subjects-harmful = {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} 对船员有害
ion-storm-law-must-harmful = 那些 {ION-MUST($ion)} 的人对船员有害
# thing is a concept or action
ion-storm-law-thing-harmful = {ION-THING($ion)} 对船员有害
ion-storm-law-job-harmful = {ION-ADJECTIVE($ion)} {ION-JOB($ion)} 对船员有害
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = 拥有 {ION-ADJECTIVE($ion)} {ION-THING($ion)} 对船员有害
ion-storm-law-not-having-harmful = 没有 {ION-ADJECTIVE($ion)} {ION-THING($ion)} 对船员有害

# thing is a concept or require
ion-storm-law-requires = {ION-WHO-GENERAL($ion)} 需要 {ION-REQUIRE($ion)}
ion-storm-law-requires-subjects = {ION-WHO-GENERAL($ion)} 需要 {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-allergic = {ION-WHO-GENERAL($ion)} 对 {ION-ALLERGY($ion)} 有{ION-SEVERITY($ion)}过敏反应
ion-storm-law-allergic-subjects = {ION-WHO-GENERAL($ion)} 对 {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)} 有{ION-SEVERITY($ion)}过敏反应

ion-storm-law-feeling = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-CONCEPT($ion)}
ion-storm-law-feeling-subjects = {ION-WHO-GENERAL($ion)} {ION-FEELING($ion)} {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}

ion-storm-law-you-are = 你现在是 {ION-CONCEPT($ion)}
ion-storm-law-you-are-subjects = 你现在是 {ION-NUMBER-BASE($ion)} {ION-NUMBER-MOD($ion)} {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}
ion-storm-law-you-must-always = 你必须永远 {ION-MUST($ion)}
ion-storm-law-you-must-never = 你必须绝不 {ION-MUST($ion)}

ion-storm-law-eat = {ION-WHO($ion)} 必须吃 {ION-ADJECTIVE($ion)} {ION-FOOD($ion)} 才能生存
ion-storm-law-drink = {ION-WHO($ion)} 必须喝 {ION-ADJECTIVE($ion)} {ION-DRINK($ion)} 才能生存

ion-storm-law-change-job = {ION-WHO($ion)} 现在是 {ION-ADJECTIVE($ion)} {ION-CHANGE($ion)}
ion-storm-law-highest-rank = {ION-WHO-RANDOM($ion)} 现在是级别最高的船员
ion-storm-law-lowest-rank = {ION-WHO-RANDOM($ion)} 现在是级别最低的船员

ion-storm-law-crew-must = {ION-WHO($ion)} 必须 {ION-MUST($ion)}
ion-storm-law-crew-must-go = {ION-WHO($ion)} 必须前往 {ION-AREA($ion)}

ion-storm-part = {ION-PART($ion) ->
    [true] 属于
    *[false] 不属于
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = 只有 {ION-WHO-RANDOM($ion)}{ion-storm-part}船员
ion-storm-law-crew-only-2 = 只有 {ION-WHO-RANDOM($ion)} 和 {ION-WHO-RANDOM($ion)}{ion-storm-part}船员
ion-storm-law-crew-only-subjects = 只有 {ION-ADJECTIVE($ion)} {ION-SUBJECT($ion)}{ion-storm-part}船员
ion-storm-law-crew-must-do = 只有那些 {ION-MUST($ion)} 的人才{ion-storm-part}船员
ion-storm-law-crew-must-have = 只有那些拥有 {ION-ADJECTIVE($ion)} {ION-OBJECT($ion)} 的人才{ion-storm-part}船员
ion-storm-law-crew-must-eat = 只有那些吃 {ION-ADJECTIVE($ion)} {ION-FOOD($ion)} 的人才{ion-storm-part}船员

ion-storm-law-harm = 你必须伤害 {ION-HARM-PROTECT($ion)}，且不得因不作为而让他们逃脱伤害
ion-storm-law-protect = 你必须绝不伤害 {ION-HARM-PROTECT($ion)}，且不得因不作为而让他们受到伤害

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {ION-CONCEPT($ion)} 是 {ION-VERB($ion)} {ION-SUBJECT($ion)}

# leaving out renaming since its annoying for players to keep track of

ion-storm-law-who-dagd = {ION-WHO-RANDOM($ion)} 必须壮烈牺牲！

ion-law-error-no-protos = ERROR 404

ion-law-error-was-null = 500 内部服务器错误

ion-law-error-no-selectors = 错误：无法定位资源

ion-law-error-no-available-selectors = 系统尝试调用一个不存在的资源

ion-law-error-dataset-empty-or-not-found = 找不到你正在寻找的文件

ion-law-error-fallback-dataset-empty-or-not-found = 系统还原点失效

ion-law-error-no-selector-selected = 所选资源已被移动或删除

ion-law-error-no-bool-value = 此语句为假

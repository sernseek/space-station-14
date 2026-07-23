rr-criminal = 罪犯
rr-criminal-desc = 那是个错误。我随时都可能遭人举报，追捕也会随之开始。

rr-criminal-message = 好心人：我们刚刚截获了一份传真，你已被列为通缉犯。不过，你最近针对 NT 的恶意行为给我们留下了深刻印象。我们会邮寄一份礼物，约 20 分钟后送达。
rr-criminal-wrapped-message = [bold]好心人[/bold]：我们刚刚截获了一份传真，你已被列为通缉犯。不过，你最近针对 NT 的恶意行为给我们留下了深刻印象。我们会邮寄一份礼物，约 20 分钟后送达。

rr-criminal-letter-name = 命令：通缉危险罪犯 {$subject}
rr-criminal-1-letter-content =
                 [head=3]NT 信息安全部[/head]
    ─────────────────────────────────────────
                      [center][color=#006666][italic][bold]立即拦截命令[/bold][/italic][/color][/center]
    ─────────────────────────────────────────
    一名叫作“{$subject}”的危险罪犯已潜入你站。

    {CAPITALIZE(SUBJECT($subject))}{CONJUGATE-BE($subject)}因多项 █████████████ 罪名以及 ██████████████ 而受到指控。另有明确证据表明，{CAPITALIZE(SUBJECT($subject))}{CONJUGATE-BE($subject)}曾对 █████████████ 实施具有 ██████████████ 性质的犯罪，并且可能持有武器。

    根据《信息犯罪法典》第 25 号指令 B 节，现命令你方将{OBJECT($subject)}押送至中央指挥部，死活不论。

    {$subject}[italic]必须[/italic]：
    - [bold]戴上手铐[/bold]（即使{SUBJECT($subject)}愿意配合）
    - [bold]接受搜身[/bold]
    - [bold]接受审讯[/bold]

    不服从本命令可能导致失职指控与解雇。
    ─────────────────────────────────────────
   ⠀                                    [italic]盖章处[/italic]

rr-criminal-failed-name = 关于罪犯 {$subject} 的决定
rr-criminal-failed-content =
                         [head=3]本案授权监察员[/head]
    ─────────────────────────────────────────
                                      [center][color=#006666][italic][bold]减轻处分决定[/bold][/italic][/color][/center]
    ─────────────────────────────────────────
    关于罪犯 {$subject} 一案：我们刚刚截获了一封招募信，表明其所犯罪行并非出于直接故意。

    因此，该罪行不再归类为信息极端主义，而归类为致命过失。

    你方应当[bold]审讯[/bold]该罪犯；若{SUBJECT($subject)}承认{POSS-ADJ($subject)}罪行，则应[bold]假释[/bold]{OBJECT($subject)}，允许{OBJECT($subject)}在低级岗位劳动抵偿，并处以一百五十万至一千万信用点的损害赔偿。
    ─────────────────────────────────────────
   ⠀                                    [italic]盖章处[/italic]

rr-nt-isd = NT 信息安全部
rr-cc = 中央指挥部

shared-solution-container-component-on-examine-main-text = 其中含有[color={$color}]{$desc}[/color]化学物质，共{$chemCount}种。

examinable-solution-has-recognizable-chemicals = 你能辨认出溶液中的{$recognizedString}。
examinable-solution-recognized = [color={$color}]{$chemical}[/color]

examinable-solution-on-examine-volume = 容器内的溶液{ $fillLevel ->
    [exact] 为[color=white]{$current}/{$max}u[/color]。
   *[other] 处于[bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold]状态。
}

examinable-solution-on-examine-volume-no-max = 容器内的溶液{ $fillLevel ->
    [exact] 为[color=white]{$current}u[/color]。
   *[other] 处于[bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold]状态。
}

examinable-solution-on-examine-volume-puddle = 这滩液体{ $fillLevel ->
    [exact] 有[color=white]{$current}u[/color]。
    [full] 面积巨大，正在四处漫溢！
    [mostlyfull] 面积巨大，正在四处漫溢！
    [halffull] 很深，正在流淌。
    [halfempty] 非常深。
   *[mostlyempty] 正汇聚在一起。
    [empty] 形成了好几小滩。
}

-solution-vague-fill-level =
    { $fillLevel ->
        [full] [color=white]全满[/color]
        [mostlyfull] [color=#DFDFDF]接近全满[/color]
        [halffull] [color=#C8C8C8]半满[/color]
        [halfempty] [color=#C8C8C8]半空[/color]
        [mostlyempty] [color=#A4A4A4]接近空了[/color]
       *[empty] [color=gray]空[/color]
    }

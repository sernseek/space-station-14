guidebook-reagent-effect-description =
    {$quantity ->
        [0] {""}
        *[other] 若至少有 {$quantity}u {$reagent}，{" "}
    }{$chance ->
        [1] { $effect }
        *[other] 有 { NATURALPERCENT($chance, 2) } 的概率{ $effect }
    }{ $conditionCount ->
        [0] 。
        *[other] {" "}条件为{ $conditions }。
    }

guidebook-reagent-name = [bold][color={$color}]{CAPITALIZE($name)}[/color][/bold]
guidebook-reagent-recipes-header = 配方
guidebook-reagent-recipes-reagent-display = [bold]{$reagent}[/bold]　\[{$ratio}\]
guidebook-reagent-sources-header = 来源
guidebook-reagent-sources-ent-wrapper = [bold]{$name}[/bold]　\[1\]
guidebook-reagent-sources-gas-wrapper = [bold]{$name}（气体）[/bold] \[1\]
guidebook-reagent-effects-header = 效果
guidebook-reagent-effects-metabolism-group-rate = [bold]{$group}[/bold] [color=gray]（每秒 {$rate} 单位）[/color]
guidebook-reagent-plant-metabolisms-header = 植物代谢
guidebook-reagent-plant-metabolisms-rate = [bold]植物代谢[/bold] [color=gray]（基础速率为每 3 秒 1 单位）[/color]
guidebook-reagent-physical-description = [italic]看起来{$description}。[/italic]
guidebook-reagent-recipes-mix-info = {$minTemp ->
    [0] {$hasMax ->
            [true] 在低于 {NATURALFIXED($maxTemp, 2)}K 时{CAPITALIZE($verb)}
            *[false] {CAPITALIZE($verb)}
        }
    *[other] {$hasMax ->
            [true] 在 {NATURALFIXED($minTemp, 2)}K 至 {NATURALFIXED($maxTemp, 2)}K 之间{CAPITALIZE($verb)}
            *[false] 在高于 {NATURALFIXED($minTemp, 2)}K 时{CAPITALIZE($verb)}
        }
}

contraband-examine-text-Minor =
    { $type ->
        *[item] [color=yellow]此物品被视为轻微违禁品。[/color]
        [reagent] [color=yellow]此试剂被视为轻微违禁品。[/color]
    }

contraband-examine-text-Restricted =
    { $type ->
        *[item] [color=yellow]此物品仅限特定部门使用。[/color]
        [reagent] [color=yellow]此试剂仅限特定部门使用。[/color]
    }

contraband-examine-text-Restricted-department =
    { $type ->
        *[item] [color=yellow]此物品仅限 {$departments} 使用，可能被视为违禁品。[/color]
        [reagent] [color=yellow]此试剂仅限 {$departments} 使用，可能被视为违禁品。[/color]
    }

contraband-examine-text-Major =
    { $type ->
        *[item] [color=red]此物品被视为重大违禁品。[/color]
        [reagent] [color=red]此试剂被视为重大违禁品。[/color]
    }

contraband-examine-text-GrandTheft =
    { $type ->
        *[item] [color=red]此物品是辛迪加特工眼中价值极高的目标！[/color]
        [reagent] [color=red]此试剂是辛迪加特工眼中价值极高的目标！[/color]
    }

contraband-examine-text-Highly-Illegal =
    { $type ->
        *[item] [color=crimson]此物品是严重违法的违禁品！[/color]
        [reagent] [color=crimson]此试剂是严重违法的违禁品！[/color]
    }

contraband-examine-text-Syndicate =
    { $type ->
        *[item] [color=crimson]此物品是严重违法的辛迪加违禁品！[/color]
        [reagent] [color=crimson]此试剂是严重违法的辛迪加违禁品！[/color]
    }

contraband-examine-text-Magical =
    { $type ->
        *[item] [color=#b337b3]此物品是严重违法的魔法违禁品！[/color]
        [reagent] [color=#b337b3]此试剂是严重违法的魔法违禁品！[/color]
    }

contraband-examine-text-avoid-carrying-around = [color=red][italic]没有充分理由时，最好别把它明晃晃地带在身上。[/italic][/color]
contraband-examine-text-in-the-clear = [color=green][italic]你可以放心地把它带在明面上。[/italic][/color]

contraband-examinable-verb-text = 合法性
contraband-examinable-verb-message = 检查此物品是否合法。

contraband-department-plural = {$department}
contraband-job-plural = {$job}

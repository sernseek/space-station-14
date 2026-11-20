contraband-tier-1 = 受限

contraband-tier-2 = 严格管制

contraband-tier-3 = 严重

contraband-tier-4 = 极度违法

contraband-tier-5 = 极度危险

contraband-type-syndicate = 辛迪加

contraband-type-magical = 充满魔力

contraband-type-ussp = USSP

contraband-type-tsf = 跨太阳系联邦

contraband-type-cybernetic = 赛博改造

contraband-type-medtak = 医疗特遣队

contraband-type-casino = 加摩拉赌场

contraband-type-cosmic = 宇宙教团

contraband-type-central-command = 中央指挥部

contraband-type-nanotrasen = 纳米传讯

contraband-type-eto = ETO

contraband-examine-text-tier =
    { $itemType ->
        *[item] [color={$color}]这是一件{$descriptor}（{$tier}级）违禁品。[/color]
        [reagent] [color={$color}]这是一份{$descriptor}（{$tier}级）违禁试剂。[/color]
    }

contraband-examine-text-tier-typed =
    { $itemType ->
        *[item] [color={$color}]这是一件{$descriptor}（{$tier}级）{$contrabandType}违禁品。[/color]
        [reagent] [color={$color}]这是一份{$descriptor}（{$tier}级）{$contrabandType}违禁试剂。[/color]
    }

contraband-examine-text-restricted =
    { $itemType ->
        *[item] [color=yellow]该物品仅限{$authorizations}使用。[/color]
        [reagent] [color=yellow]该试剂仅限{$authorizations}使用。[/color]
    }

contraband-authorization-prescription-patients = 持有有效处方的患者

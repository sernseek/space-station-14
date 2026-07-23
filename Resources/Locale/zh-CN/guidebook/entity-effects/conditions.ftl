entity-condition-guidebook-total-damage =
    { $max ->
        [2147483648] 总伤害至少为 {NATURALFIXED($min, 2)}
        *[other] { $min ->
                    [0] 总伤害至多为 {NATURALFIXED($max, 2)}
                    *[other] 总伤害在 {NATURALFIXED($min, 2)} 至 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-type-damage =
    { $max ->
        [2147483648] {$type}伤害至少为 {NATURALFIXED($min, 2)}
        *[other] { $min ->
                    [0] {$type}伤害至多为 {NATURALFIXED($max, 2)}
                    *[other] {$type}伤害在 {NATURALFIXED($min, 2)} 至 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-group-damage =
    { $max ->
        [2147483648] {$type}伤害至少为 {NATURALFIXED($min, 2)}。
        *[other] { $min ->
                    [0] {$type}伤害至多为 {NATURALFIXED($max, 2)}。
                    *[other] {$type}伤害在 {NATURALFIXED($min, 2)} 至 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-total-hunger =
    { $max ->
        [2147483648] 目标的饥饿度至少为 {NATURALFIXED($min, 2)}
        *[other] { $min ->
                    [0] 目标的饥饿度至多为 {NATURALFIXED($max, 2)}
                    *[other] 目标的饥饿度在 {NATURALFIXED($min, 2)} 至 {NATURALFIXED($max, 2)} 之间
                 }
    }

entity-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] {$reagent}至少有 {NATURALFIXED($min, 2)}u
        *[other] { $min ->
                    [0] {$reagent}至多有 {NATURALFIXED($max, 2)}u
                    *[other] {$reagent}有 {NATURALFIXED($min, 2)}u 至 {NATURALFIXED($max, 2)}u
                 }
    }

entity-condition-guidebook-mob-state-condition =
    生物处于{ $state }状态

entity-condition-guidebook-job-condition =
    目标的职位是{ $job }

entity-condition-guidebook-solution-temperature =
    溶液温度{ $max ->
            [2147483648] 至少为 {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] 至多为 {NATURALFIXED($max, 2)}K
                        *[other] 在 {NATURALFIXED($min, 2)}K 至 {NATURALFIXED($max, 2)}K 之间
                     }
    }

entity-condition-guidebook-body-temperature =
    身体温度{ $max ->
            [2147483648] 至少为 {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] 至多为 {NATURALFIXED($max, 2)}K
                        *[other] 在 {NATURALFIXED($min, 2)}K 至 {NATURALFIXED($max, 2)}K 之间
                     }
    }

entity-condition-guidebook-organ-type =
    进行代谢的器官{ $shouldhave ->
                                [true] 是
                                *[false] 不是
                           }{$name}器官

entity-condition-guidebook-has-tag =
    目标{ $invert ->
                 [true] 没有
                 *[false] 有
                }{$tag}标签

entity-condition-guidebook-this-reagent = 此试剂

entity-condition-guidebook-breathing =
    代谢者{ $isBreathing ->
                [true] 呼吸正常
                *[false] 正在窒息
               }

entity-condition-guidebook-internals =
    代谢者{ $usingInternals ->
                [true] 正在使用内循环
                *[false] 正在呼吸环境空气
               }

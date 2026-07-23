entity-condition-guidebook-unknown-reagent = 未知试剂

entity-condition-guidebook-blood-reagent-threshold =
    { $max ->
        [2147483648] 血液中至少含有 {NATURALFIXED($min, 2)}u 的{$reagent}
        *[other] { $min ->
                    [0] 血液中至多含有 {NATURALFIXED($max, 2)}u 的{$reagent}
                    *[other] 血液中含有 {NATURALFIXED($min, 2)}u 至 {NATURALFIXED($max, 2)}u 的{$reagent}
                 }
    }

entity-condition-guidebook-has-components =
    目标{ $shouldhave ->
                    [true] 具有
                    *[false] 不具有
               }{$name}组件

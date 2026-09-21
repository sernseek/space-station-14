# TODO[新增] 值
entity-effect-guidebook-modify-solution-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] 向
                *[-1] 从
            }
        *[other]
            { $deltasign ->
                [1] 向
                *[-1] 从
            }
    } {$solution} 溶液中{ $deltasign ->
        [1] 添加
        *[-1] 移除
    } {NATURALFIXED($amount, 2)}u {$reagent}

# TODO[新增] 值
entity-effect-guidebook-regrow-doll-shell =
    { $chance ->
        [1] 重新生长
        *[other] 重新生长
    } 一片壳体

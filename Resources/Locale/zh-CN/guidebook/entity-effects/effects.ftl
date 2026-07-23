-create-3rd-person =
    { $chance ->
        [1] 生成
        *[other] 生成
    }

-cause-3rd-person =
    { $chance ->
        [1] 导致
        *[other] 导致
    }

-satiate-3rd-person =
    { $chance ->
        [1] 缓解
        *[other] 缓解
    }

entity-effect-guidebook-spawn-entity =
    { $chance ->
        [1] 生成
        *[other] 生成
    } {$amount} 个{$entname}

entity-effect-guidebook-destroy =
    { $chance ->
        [1] 摧毁
        *[other] 摧毁
    }物体

entity-effect-guidebook-break =
    { $chance ->
        [1] 破坏
        *[other] 破坏
    }物体

entity-effect-guidebook-explosion =
    { $chance ->
        [1] 引发
        *[other] 引发
    }爆炸

entity-effect-guidebook-emp =
    { $chance ->
        [1] 产生
        *[other] 产生
    }电磁脉冲

entity-effect-guidebook-flash =
    { $chance ->
        [1] 产生
        *[other] 产生
    }致盲闪光

entity-effect-guidebook-foam-area =
    { $chance ->
        [1] 产生
        *[other] 产生
    }大量泡沫

entity-effect-guidebook-smoke-area =
    { $chance ->
        [1] 产生
        *[other] 产生
    }大量烟雾

entity-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] 缓解
        *[other] 缓解
    }{ $relative ->
        [1] 口渴，效果为平均水平
        *[other] 口渴，效果为平均速率的 {NATURALFIXED($relative, 3)} 倍
    }

entity-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] 缓解
        *[other] 缓解
    }{ $relative ->
        [1] 饥饿，效果为平均水平
        *[other] 饥饿，效果为平均速率的 {NATURALFIXED($relative, 3)} 倍
    }

entity-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] 治疗
                [deals] 造成
                *[both] 改变生命值
             }
        *[other] { $healsordeals ->
                    [heals] 治疗
                    [deals] 造成
                    *[both] 改变生命值
                 }
    }：{ $changes }

entity-effect-guidebook-even-health-change =
    { $chance ->
        [1] { $healsordeals ->
            [heals] 均匀治疗
            [deals] 均匀造成
            *[both] 均匀改变生命值
        }
        *[other] { $healsordeals ->
            [heals] 均匀治疗
            [deals] 均匀造成
            *[both] 均匀改变生命值
        }
    }：{ $changes }

entity-effect-guidebook-status-effect-old =
    { $type ->
        [update]{ $chance ->
                    [1] 导致
                     *[other] 导致
                 }持续至少 {NATURALFIXED($time, 3)} 秒的 {LOC($key)}，不可叠加
        [add]   { $chance ->
                    [1] 导致
                    *[other] 导致
                }持续至少 {NATURALFIXED($time, 3)} 秒的 {LOC($key)}，可以叠加
        [set]  { $chance ->
                    [1] 导致
                    *[other] 导致
                }持续 {NATURALFIXED($time, 3)} 秒的 {LOC($key)}，不可叠加
        *[remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                }{NATURALFIXED($time, 3)} 秒的 {LOC($key)}
    }

entity-effect-guidebook-status-effect =
    { $type ->
        [update]{ $chance ->
                    [1] 导致
                     *[other] 导致
                 }持续至少 {NATURALFIXED($time, 3)} 秒的 {$key}，不可叠加
        [add]   { $chance ->
                    [1] 导致
                    *[other] 导致
                }持续至少 {NATURALFIXED($time, 3)} 秒的 {$key}，可以叠加
        [set]  { $chance ->
                    [1] 导致
                    *[other] 导致
                }持续至少 {NATURALFIXED($time, 3)} 秒的 {$key}，不可叠加
        *[remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                }{NATURALFIXED($time, 3)} 秒的 {$key}
    }{ $delay ->
        [0] ，立即生效
        *[other] ，延迟 {NATURALFIXED($delay, 3)} 秒生效
    }

entity-effect-guidebook-status-effect-indef =
    { $type ->
        [update]{ $chance ->
                    [1] 导致
                    *[other] 导致
                 }永久的 {$key}
        [add]   { $chance ->
                    [1] 导致
                    *[other] 导致
                }永久的 {$key}
        [set]  { $chance ->
                    [1] 导致
                    *[other] 导致
                }永久的 {$key}
        *[remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                }{$key}
    }{ $delay ->
        [0] ，立即生效
        *[other] ，延迟 {NATURALFIXED($delay, 3)} 秒生效
    }

entity-effect-guidebook-knockdown =
    { $type ->
        [update]{ $chance ->
                    [1] 导致
                    *[other] 导致
                    }持续至少 {NATURALFIXED($time, 3)} 秒的 {LOC($key)}，不可叠加
        [add]   { $chance ->
                    [1] 导致
                    *[other] 导致
                }持续至少 {NATURALFIXED($time, 3)} 秒的击倒，可以叠加
        *[set]  { $chance ->
                    [1] 导致
                    *[other] 导致
                }持续至少 {NATURALFIXED($time, 3)} 秒的击倒，不可叠加
        [remove]{ $chance ->
                    [1] 移除
                    *[other] 移除
                }{NATURALFIXED($time, 3)} 秒的击倒
    }

entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] 将
        *[other] 将
    }溶液温度精确设为 {NATURALFIXED($temperature, 2)}K

entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] 加热
                *[-1] 冷却
            }
        *[other]
            { $deltasign ->
                [1] 加热
                *[-1] 冷却
            }
    }溶液，直至温度{ $deltasign ->
                [1] 至多达到 {NATURALFIXED($maxtemp, 2)}K
                *[-1] 至少达到 {NATURALFIXED($mintemp, 2)}K
            }

entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] 向溶液中加入
                *[-1] 从溶液中移除
            }
        *[other]
            { $deltasign ->
                [1] 向溶液中加入
                *[-1] 从溶液中移除
            }
    }{NATURALFIXED($amount, 2)}u {$reagent}{ $deltasign ->
        [1] {" "}
        *[-1] {" "}
    }

entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] 向溶液中加入
                *[-1] 从溶液中移除
            }
        *[other]
            { $deltasign ->
                [1] 向溶液中加入
                *[-1] 从溶液中移除
            }
    }{NATURALFIXED($amount, 2)}u {$group}组试剂{ $deltasign ->
            [1] {" "}
            *[-1] {" "}
        }

entity-effect-guidebook-adjust-temperature =
    { $chance ->
        [1] { $deltasign ->
                [1] 向所在身体增加
                *[-1] 从所在身体移除
            }
        *[other]
            { $deltasign ->
                [1] 向所在身体增加
                *[-1] 从所在身体移除
            }
    }{POWERJOULES($amount)} 热量{ $deltasign ->
            [1] {" "}
            *[-1] {" "}
        }

entity-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] 导致
        *[other] 导致
    }疾病{ $disease }

entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] 导致
        *[other] 导致
    }疾病{ $diseases }

entity-effect-guidebook-jittering =
    { $chance ->
        [1] 导致
        *[other] 导致
    }颤抖

entity-effect-guidebook-clean-bloodstream =
    { $chance ->
        [1] 清除
        *[other] 清除
    }血液中的其他化学品

entity-effect-guidebook-cure-disease =
    { $chance ->
        [1] 治愈
        *[other] 治愈
    }疾病

entity-effect-guidebook-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] 造成
                *[-1] 治疗
            }
        *[other]
            { $deltasign ->
                [1] 造成
                *[-1] 治疗
            }
    }眼部伤害

entity-effect-guidebook-vomit =
    { $chance ->
        [1] 导致
        *[other] 导致
    }呕吐

entity-effect-guidebook-create-gas =
    { $chance ->
        [1] 生成
        *[other] 生成
    }{ $moles } 摩尔{ $gas }

entity-effect-guidebook-drunk =
    { $chance ->
        [1] 导致
        *[other] 导致
    }醉酒

entity-effect-guidebook-electrocute =
    { $chance ->
        [1] { $stuns ->
            [true] 电击
            *[false] 触电
            }
        *[other] { $stuns ->
            [true] 电击
            *[false] 触电
            }
    }代谢者 {NATURALFIXED($time, 3)} 秒

entity-effect-guidebook-emote =
    { $chance ->
        [1] 强迫
        *[other] 强迫
    }代谢者做出[bold][color=white]{$emote}[/color][/bold]动作

entity-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] 扑灭
        *[other] 扑灭
    }火焰

entity-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] 提高
        *[other] 提高
    }可燃性

entity-effect-guidebook-ignite =
    { $chance ->
        [1] 点燃
        *[other] 点燃
    }代谢者

entity-effect-guidebook-make-sentient =
    { $chance ->
        [1] 使
        *[other] 使
    }代谢者获得智慧

entity-effect-guidebook-make-polymorph =
    { $chance ->
        [1] 将
        *[other] 将
    }代谢者变形成{ $entityname }

entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] 引起
                *[-1] 减少
            }
        *[other] { $deltasign ->
                    [1] 引起
                    *[-1] 减少
                 }
    }出血

entity-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] 提高
                *[-1] 降低
            }
        *[other] { $deltasign ->
                    [1] 提高
                    *[-1] 降低
                 }
    }血量

entity-effect-guidebook-paralyze =
    { $chance ->
        [1] 麻痹
        *[other] 麻痹
    }代谢者至少 {NATURALFIXED($time, 3)} 秒

entity-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] 将
        *[other] 将
    }移动速度修改为 {NATURALFIXED($sprintspeed, 3)} 倍，持续至少 {NATURALFIXED($time, 3)} 秒

entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] 暂时
        *[other] 暂时
    }抑制发作性嗜睡

entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] 洗掉
        *[other] 洗掉
    }脸上的奶油派

entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] 治愈
        *[other] 治愈
    }正在发展的丧尸感染

entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] 使
        *[other] 使
    }目标感染丧尸病毒

entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] 治愈
        *[other] 治愈
    }正在发展的丧尸感染，并免疫今后的感染

entity-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] 恢复
        *[other] 恢复
    }{NATURALFIXED($time, 3)} 秒的腐烂进度

entity-effect-guidebook-area-reaction =
    { $chance ->
        [1] 产生
        *[other] 产生
    }持续 {NATURALFIXED($duration, 3)} 秒的烟雾或泡沫反应

entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] 将
        *[other] 将
    }{$reagent}加入其内部溶液容器

entity-effect-guidebook-artifact-unlock =
    { $chance ->
        [1] 有助于
        *[other] 有助于
        }解锁异星神器。

entity-effect-guidebook-artifact-durability-restore =
    为已激活的异星神器节点恢复 {$restored} 点耐久度。

entity-effect-guidebook-plant-attribute =
    { $chance ->
        [1] 调整
        *[other] 调整
    }{$attribute}：{$positive ->
    [true] [color=red]{$amount}[/color]
    *[false] [color=green]{$amount}[/color]
    }

entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] 使
        *[other] 使
    }植物返龄，幅度取决于植物年龄和生长时间

entity-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] 恢复
        *[other] 恢复
    }因变异而失去的植物繁殖能力

entity-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] 提高
        *[other] 提高
    }植物寿命和／或基础健康度，每项有 10% 概率生效

entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] 将
        *[other] 将
    }植物效力提高 {$increase}，最高为 {$limit}。效力达到 {$seedlesstreshold} 后会使植物失去种子。尝试将效力提高至超过 {$limit} 时，有 10% 概率降低产量

entity-effect-guidebook-plant-seeds-add =
    { $chance ->
        [1] 恢复
        *[other] 恢复
    }植物的种子

entity-effect-guidebook-plant-seeds-remove =
    { $chance ->
        [1] 移除
        *[other] 移除
    }植物的种子

entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
        [1] 使
        *[other] 使
    }植物变异并产生 {$name}

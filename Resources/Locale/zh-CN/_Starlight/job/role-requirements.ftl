job-no-requirements = 此职业没有要求。
ghost-role-no-requirements = 此角色没有要求。

# 配色惯例：满足的要求用亮绿色，仍可满足的未达要求用黄色，无法满足的要求用红色

role-timer-department-sufficient = 你在[color={$departmentColor}]{$department}[/color]部门已有 [color=limegreen]{TOSTRING($current, "0")}[/color]，要求为 [color=lightblue]{TOSTRING($required, "0")}[/color] 游戏时长。
role-timer-department-insufficient = 你在[color={$departmentColor}]{$department}[/color]部门只有 [color=yellow]{TOSTRING($current, "0")}[/color]，要求为 [color=lightblue]{TOSTRING($required, "0")}[/color] 游戏时长。
role-timer-department-not-too-high = 你在[color={$departmentColor}]{$department}[/color]部门已有 [color=limegreen]{TOSTRING($current, "0")}[/color] 游戏时长，上限为 [color=lightblue]{TOSTRING($required, "0")}[/color]。
role-timer-department-too-high = 你在[color={$departmentColor}]{$department}[/color]部门已有 [color=red]{TOSTRING($current, "0")}[/color] 游戏时长，上限为 [color=lightblue]{TOSTRING($required, "0")}[/color]。（你是想扮演实习职位吗？）

role-timer-overall-sufficient = 你的总游戏时长为 [color=limegreen]{TOSTRING($current, "0")}[/color]，要求为 [color=lightblue]{TOSTRING($required, "0")}[/color]。
role-timer-overall-insufficient = 你的总游戏时长只有 [color=yellow]{TOSTRING($current, "0")}[/color]，要求为 [color=lightblue]{TOSTRING($required, "0")}[/color]。
role-timer-overall-not-too-high = 你的总游戏时长为 [color=limegreen]{TOSTRING($current, "0")}[/color]，上限为 [color=lightblue]{TOSTRING($required, "0")}[/color]。
role-timer-overall-too-high = 你的总游戏时长为 [color=red]{TOSTRING($current, "0")}[/color]，上限为 [color=lightblue]{TOSTRING($required, "0")}[/color]。（你是想扮演实习职位吗？）

role-timer-role-sufficient = 你担任[color={$departmentColor}]{$job}[/color]已有 [color=limegreen]{TOSTRING($current, "0")}[/color]，要求为 [color=lightblue]{TOSTRING($required, "0")}[/color] 游戏时长。
role-timer-role-insufficient = 你担任[color={$departmentColor}]{$job}[/color]只有 [color=yellow]{TOSTRING($current, "0")}[/color]，要求为 [color=lightblue]{TOSTRING($required, "0")}[/color] 游戏时长。
role-timer-role-not-too-high = 你担任[color={$departmentColor}]{$job}[/color]已有 [color=limegreen]{TOSTRING($current, "0")}[/color] 游戏时长，上限为 [color=lightblue]{TOSTRING($required, "0")}[/color]。
role-timer-role-too-high = 你担任[color={$departmentColor}]{$job}[/color]已有 [color=red]{TOSTRING($current, "0")}[/color] 游戏时长，上限为 [color=lightblue]{TOSTRING($required, "0")}[/color]。（你是想扮演实习职位吗？）

role-whitelisted = 你[color=limegreen]已在[/color]此角色的白名单中。
role-not-whitelisted = 你[color=yellow]不在[/color]此角色的白名单中。

role-timer-age-old-enough = 角色年龄必须至少为 [color=limegreen]{$age}[/color] 岁才能扮演此角色。
role-timer-age-not-old-enough = 角色年龄必须至少为 [color=yellow]{$age}[/color] 岁才能扮演此角色。
role-timer-age-young-enough = 角色年龄最多为 [color=limegreen]{$age}[/color] 岁才能扮演此角色。
role-timer-age-not-young-enough = 角色年龄最多为 [color=yellow]{$age}[/color] 岁才能扮演此角色。

role-timer-whitelisted-species-pass = 角色[color=limegreen]必须[/color]属于以下物种之一才能扮演此角色：[color=limegreen]{$species}[/color]
role-timer-whitelisted-species-fail = 角色[color=yellow]必须[/color]属于以下物种之一才能扮演此角色：[color=yellow]{$species}[/color]
role-timer-blacklisted-species-pass = 角色[color=limegreen]不得[/color]属于以下任何物种才能扮演此角色：[color=limegreen]{$species}[/color]
role-timer-blacklisted-species-fail = 角色[color=yellow]不得[/color]属于以下任何物种才能扮演此角色：[color=yellow]{$species}[/color]

role-timer-whitelisted-traits-pass = 角色[color=limegreen]必须[/color]拥有以下特质之一：[color=limegreen]{$traits}[/color]
role-timer-whitelisted-traits-fail = 角色[color=yellow]必须[/color]拥有以下特质之一：[color=yellow]{$traits}[/color]
role-timer-blacklisted-traits-pass = 角色[color=limegreen]不得[/color]拥有以下任何特质：[color=limegreen]{$traits}[/color]
role-timer-blacklisted-traits-fail = 角色[color=yellow]不得[/color]拥有以下任何特质：[color=yellow]{$traits}[/color]

role-ban = 你已被此角色[color=red]封禁[/color]。

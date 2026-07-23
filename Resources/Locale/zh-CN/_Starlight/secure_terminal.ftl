## 安全指挥终端 – UI 文本

secure-terminal-window-title = 安全终端
secure-terminal-requests-header = 请求
secure-terminal-information-header = 信息
secure-terminal-authorization-header = 授权

secure-terminal-select-request = 从左侧列表选择一项请求以查看详情。

secure-terminal-request-button = 请求
secure-terminal-request-button-confirm = 确认？
secure-terminal-authorize-button = 授权
secure-terminal-deny-button = 拒绝 / 取消
secure-terminal-recall-button = 召回军械库
secure-terminal-recall-locked = 召回将于 {$minutes} 分钟后可用。
secure-terminal-used-note = 该军械库本回合已被永久启用或召回，无法再次部署。
secure-terminal-already-used = 该资源本回合已被使用，无法再次请求。

secure-terminal-auth-waiting = 此请求当前没有待处理的提案。
secure-terminal-auth-desc = 当前提案——未响应 = [color=red]红色[/color]，已同意 = [color=green]绿色[/color]：
secure-terminal-awaiting-member = 等待{$label}

secure-terminal-pending-countdown-label = 将于 {$minutes} 分 {$seconds} 秒后过期……
secure-terminal-countdown-label = 将于 {$minutes} 分 {$seconds} 秒后生效……

secure-terminal-fee-note = 手续费：{$fee}
secure-terminal-salary-note = 因动员开支，空间站薪资降低 {$penalty}%。
secure-terminal-delay-note = 预计授权后 {$minutes} 分钟抵达。

secure-terminal-requires-no-war-note = 战争行动期间不可用。
secure-terminal-requires-war-note = 仅在战争行动期间可用。
secure-terminal-requires-alert-note = 需要{$level}警报处于生效状态。
secure-terminal-alert-time-remaining = 警报还需持续 {$minutes} 分钟才能发起此请求。
secure-terminal-on-cooldown-note = 冷却中——{$minutes} 分钟后可用。
secure-terminal-requires-alert-suffix = 需要：{$level}
secure-terminal-requires-war-suffix = 需要：战争行动

secure-terminal-reason = 填写请求理由：

## 服务器 → 全站广播

secure-terminal-proposal-created = {$request}已发起请求，等待联合授权。
secure-terminal-proposal-created-reason = {$request}已发起请求，等待联合授权。理由：{$reason}
secure-terminal-proposal-denied = {$request}请求已被取消。
secure-terminal-proposal-denied-cc = {$request}请求已被中央指挥部驳回。
secure-terminal-radio-proposal = {$request}提案已发起。请前往最近的钥匙卡认证装置进行授权或拒绝。
secure-terminal-radio-proposal-reason = {$request}提案已发起。请前往最近的钥匙卡认证装置进行授权或拒绝。理由：{$reason}
secure-terminal-radio-denied = {$request}请求已被取消。
secure-terminal-activation-countdown = {$request}已获完全授权。
    将于 {$minutes} 分钟后生效。
    因动员开支，空间站薪资已降低。
secure-terminal-unknown-job = 未知

## 弹出消息

secure-terminal-no-station = 此控制台未找到所属空间站。
secure-terminal-request-denied = 拒绝访问。
secure-terminal-authorize-denied = 你没有联署此请求所需的权限。
secure-terminal-requires-war = 此请求仅在正式宣布战争行动后可用。
secure-terminal-wrong-alert = 当前警报等级不满足此请求的要求。
secure-terminal-alert-not-long-enough = 警报等级持续时间不足，无法授权。请稍候再试。
secure-terminal-recall-too-soon = 军械库部署时间不足，无法召回。请稍候。
secure-terminal-on-cooldown = 此请求正在冷却中。
secure-terminal-already-pending = 此请求已有待处理的提案。
secure-terminal-already-active = 已有其它请求正在等待或生效中。请等其完成后再发起新请求。
secure-terminal-no-active-proposal = 未找到此请求的有效提案。
secure-terminal-already-authorized = 你已授权过此提案。
secure-terminal-already-activated = 此终端已授权过此提案。
secure-terminal-auth-note = 此终端仅用于授权。
secure-terminal-authorized-by = 注意——{$request}请求已获授权。授权人：{$signatories}。
secure-terminal-armory-recalled = {$request}召回命令已下达。军械库部署已取消。
secure-terminal-awaiting-admin = 注意——{$request}请求已发送。等待中央指挥部授权。
secure-terminal-admin = 正在请求管理员批准：{$request}
                        理由：{$reason}
                        使用 AGhost 批准/拒绝该请求。

## 请求名称与描述

secure-terminal-warops-security-name = 核战响应小队
secure-terminal-warops-security-desc = 部署一支专为战争行动配置的应急响应队安保分队。仅在战争行动期间可用。
                                       在已宣布的战争行动中，空间站遭受直接武装袭击时使用。
secure-terminal-warops-security-announcement = 应急响应队——安保特化分队——已获授权并正在途中。预计抵达时间：30 分钟。

secure-terminal-ert-security-name = 应急响应队安保
secure-terminal-ert-security-desc = 部署一支应急响应队安保分队。
secure-terminal-ert-security-announcement = 应急响应队——安保分队——已获授权并正在途中。预计抵达时间：10 分钟。

secure-terminal-ert-engineering-name = 应急响应队工程
secure-terminal-ert-engineering-desc = 部署一支应急响应队工程分队，协助修复空间站关键基础设施。
    当空间站遭受超出本地修复能力的灾难性结构、大气或电力故障时建议使用。
secure-terminal-ert-engineering-announcement = 应急响应队——工程分队——已获授权并正在途中。预计抵达时间：10 分钟。

secure-terminal-ert-medical-name = 应急响应队医疗
secure-terminal-ert-medical-desc = 部署一支应急响应队医疗分队，负责大规模伤员分诊与紧急手术。
    当空间站医疗部门不堪重负、瘫痪或被摧毁时建议使用。
secure-terminal-ert-medical-announcement = 应急响应队——医疗分队——已获授权并正在途中。预计抵达时间：10 分钟。

secure-terminal-ert-janitorial-name = 应急响应队清洁
secure-terminal-ert-janitorial-desc = 部署一支应急响应队清洁分队，负责危险物清理与空间站修复。
    发生需要快速净化的大规模生物、化学或环境污染后建议使用。
secure-terminal-ert-janitorial-announcement = 应急响应队——清洁分队——已获授权并正在途中。预计抵达时间：10 分钟。

secure-terminal-ert-chaplain-name = 应急响应队牧师
secure-terminal-ert-chaplain-desc = 部署一名应急响应队牧师，负责船员士气与临终关怀。
    在长期紧急状态下提供心灵抚慰并维持船员士气。
secure-terminal-ert-chaplain-announcement = 应急响应队——牧师——已获授权并正在途中。预计抵达时间：10 分钟。

secure-terminal-ert-cburn-name = 应急响应队 CBURN
secure-terminal-ert-cburn-desc = 部署一支应急响应队 CBURN 分队。
secure-terminal-ert-cburn-announcement = 应急响应队——CBURN 分队——已获授权并正在途中。预计抵达时间：15 分钟。

secure-terminal-code-gamma-name = 伽马代码
secure-terminal-code-gamma-desc = 将空间站警报升至[color=palevioletred]伽马[/color]等级。军事管制——所有平民须由安保护送至安全区域。
    安保人员须全程武装。所有平民必须向最近的部门主管报到，并被护送至安全地点。应急照明启动。
secure-terminal-code-gamma-announcement = 注意！伽马代码即将生效。将实施军事管制。全体船员立即向最近的部门主管报到。

secure-terminal-end-gamma-name = 解除伽马警报
secure-terminal-end-gamma-desc = 解除[color=palevioletred]伽马[/color]警报，将空间站恢复至绿色等级。要求伽马警报已持续至少 15 分钟。
secure-terminal-end-gamma-announcement = 伽马代码正在解除。空间站正恢复正常运转。请保持警惕，等待部门主管的进一步指示。

secure-terminal-code-psi-name = 普赛代码
secure-terminal-code-psi-desc = 将空间站警报升至[color=mediumpurple]普赛[/color]等级。检测到敌对合成体单位——避开不受约束的赛博格并寻找指挥部人员。
    表明存在敌对或不受约束的赛博格活动。全体船员必须避开身份不明的赛博格，结伴行动，并听从部门主管指挥。
secure-terminal-code-psi-announcement = 注意！指挥部已批准普赛代码。非纳米传讯硅基单位已被确认为现行威胁。全体船员——向最近的部门主管报到。

secure-terminal-end-psi-name = 解除普赛警报
secure-terminal-end-psi-desc = 解除[color=mediumpurple]普赛[/color]警报，将空间站恢复至绿色等级。要求普赛警报已持续至少 15 分钟。
secure-terminal-end-psi-announcement = 普赛代码正在解除。已确认的合成体威胁已被消灭。空间站正恢复正常运转。

secure-terminal-armory-gamma-name = 伽马军械库
secure-terminal-armory-gamma-desc = 调派[color=palevioletred]伽马军械库[/color]——应对伽马局势的重型武器储备。一次性部署。
                                    向获授权人员配发重型安保装备。
secure-terminal-armory-gamma-announcement = 伽马军械库已获授权并正在途中。

secure-terminal-armory-psi-name = 普赛军械库
secure-terminal-armory-psi-desc = 调派[color=mediumpurple]普赛军械库[/color]——应对普赛局势的反赛博格武器。一次性部署。
                                  提供消灭不受约束硅基单位所需的工具。
secure-terminal-armory-psi-announcement = 普赛军械库已获授权并正在途中。

secure-terminal-med-pod-name = 紧急医疗舱
secure-terminal-med-pod-desc = 调派紧急医疗舱——配备手术与复苏设备的快速部署分诊单元。
    当大规模伤亡超出空间站医疗承载能力时使用。
secure-terminal-med-pod-announcement = 紧急医疗舱已获授权并正在途中。预计抵达时间：5 分钟。

secure-terminal-nukerequest-name = 自毁密码
secure-terminal-nukerequest-desc = 请求核自毁密码。
                                   在任何情况下都绝不容忍滥用核请求系统。
                                   发送请求并不保证得到回应。

secure-terminal-code-violet-name = 紫色代码
secure-terminal-code-violet-desc = 将空间站警报升至[color=Violet]紫色[/color]等级。

secure-terminal-end-violet-name = 解除紫色警报
secure-terminal-end-violet-desc = 解除[color=Violet]紫色[/color]警报，将空间站恢复至绿色等级。要求紫色警报已持续至少 10 分钟。

secure-terminal-emergency-maintenance-name = 紧急维护通道权限
secure-terminal-emergency-maintenance-desc = 授予紧急维护通道权限。
secure-terminal-emergency-maintenance-announcement = 维护通道与外部气闸门的权限限制已解除。

secure-terminal-end-emergency-maintenance-name = 撤销紧急维护通道权限
secure-terminal-end-emergency-maintenance-desc = 撤销紧急维护通道权限。
secure-terminal-end-emergency-maintenance-announcement = 维护通道与外部气闸门的权限限制已恢复。

secure-terminal-emergency-station-name = 全站紧急通行权限
secure-terminal-emergency-station-desc = 启用全站紧急通行权限。
secure-terminal-emergency-station-announcement = 因危机持续，全站气闸门的权限限制已解除。除非指挥部另有命令，非法闯入相关规定仍然有效。
secure-terminal-end-emergency-station-name = 停用全站紧急通行权限
secure-terminal-end-emergency-station-desc = 停用全站紧急通行权限。
secure-terminal-end-emergency-station-announcement = 全站气闸门的权限限制已恢复。如被困请向空间站AI或同事求助。

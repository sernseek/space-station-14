device-pda-slot-component-slot-name-cartridge = 卡带

default-program-name = 程序
notekeeper-program-name = 记事本
nano-task-program-name = NanoTask
news-read-program-name = 空间站新闻

crew-manifest-program-name = 船员名册
crew-manifest-cartridge-loading = 加载中……

net-probe-program-name = 网络探针
net-probe-scan = 已扫描 {$device}！
net-probe-label-name = 名称
net-probe-label-address = 地址
net-probe-label-frequency = 频率
net-probe-label-network = 网络

log-probe-program-name = 日志探针
log-probe-scan = 已从 {$device} 下载日志！
log-probe-label-time = 时间
log-probe-label-accessor = 访问者
log-probe-label-number = #
log-probe-print-button = 打印日志
log-probe-printout-device = 已扫描设备：{$name}
log-probe-printout-header = 最新日志：
log-probe-printout-entry = #{$number} / {$time} / {$accessor}

astro-nav-program-name = 星图导航

med-tek-program-name = 医疗技术

# NanoTask cartridge

nano-task-ui-heading-high-priority-tasks = {$amount} 项高优先级任务
nano-task-ui-heading-medium-priority-tasks = {$amount} 项中优先级任务
nano-task-ui-heading-low-priority-tasks = {$amount} 项低优先级任务
nano-task-ui-done = 完成
nano-task-ui-revert-done = 撤销
nano-task-ui-priority-low = 低
nano-task-ui-priority-medium = 中
nano-task-ui-priority-high = 高
nano-task-ui-cancel = 取消
nano-task-ui-print = 打印
nano-task-ui-delete = 删除
nano-task-ui-save = 保存
nano-task-ui-new-task = 新建任务
nano-task-ui-description-label = 描述：
nano-task-ui-description-placeholder = 做一件重要的事
nano-task-ui-requester-label = 请求者：
nano-task-ui-requester-placeholder = John NanoTrasen
nano-task-ui-item-title = 编辑任务
nano-task-printed-description = [bold]描述[/bold]：{$description}
nano-task-printed-requester = [bold]请求者[/bold]：{$requester}
nano-task-printed-high-priority = [bold]优先级[/bold]：[color=red]高[/color]
nano-task-printed-medium-priority = [bold]优先级[/bold]：中
nano-task-printed-low-priority = [bold]优先级[/bold]：低

# Wanted list cartridge
wanted-list-program-name = 通缉名单
wanted-list-label-no-records = 一切太平，牛仔
wanted-list-search-placeholder = 按姓名和状态搜索

wanted-list-age-label = [color=darkgray]年龄：[/color] [color=white]{$age}[/color]
wanted-list-job-label = [color=darkgray]职位：[/color] [color=white]{$job}[/color]
wanted-list-species-label = [color=darkgray]物种：[/color] [color=white]{$species}[/color]
wanted-list-gender-label = [color=darkgray]性别：[/color] [color=white]{$gender}[/color]

wanted-list-reason-label = [color=darkgray]原因：[/color] [color=white]{$reason}[/color]
wanted-list-unknown-reason-label = 原因不明

wanted-list-initiator-label = [color=darkgray]发起者：[/color] [color=white]{$initiator}[/color]
wanted-list-unknown-initiator-label = 发起者不明

wanted-list-status-label = [color=darkgray]状态：[/color] {$status ->
        [suspected] [color=yellow]嫌疑人[/color]
        [wanted] [color=red]通缉中[/color]
        [detained] [color=#b18644]已拘留[/color]
        [paroled] [color=green]已假释[/color]
        [discharged] [color=green]已释放[/color]
        [hostile] [color=darkred]敌对[/color]
        [eliminated] [color=gray]已消灭[/color]
        *[other] 无
    }

wanted-list-history-table-time-col = 时间
wanted-list-history-table-reason-col = 罪名
wanted-list-history-table-initiator-col = 发起者

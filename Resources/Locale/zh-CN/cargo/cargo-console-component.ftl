## UI
cargo-console-menu-title = 货运申请控制台
cargo-console-menu-account-name-label = 账户：{" "}
cargo-console-menu-account-name-none-text = 无
cargo-console-menu-account-name-format = [bold][color={$color}]{$name}[/color][/bold]　[font="Monospace"]\[{$code}\][/font]
cargo-console-menu-shuttle-name-label = 穿梭机名称：{" "}
cargo-console-menu-shuttle-name-none-text = 无
cargo-console-menu-points-label = 余额：{" "}
cargo-console-menu-points-amount = ${$amount}
cargo-console-menu-shuttle-status-label = 穿梭机状态：{" "}
cargo-console-menu-shuttle-status-away-text = 离站
cargo-console-menu-order-capacity-label = 订单容量：{" "}
cargo-console-menu-call-shuttle-button = 启动传送台
cargo-console-menu-permissions-button = 权限
cargo-console-menu-categories-label = 分类：{" "}
cargo-console-menu-search-bar-placeholder = 搜索
cargo-console-menu-requests-label = 申请
cargo-console-menu-orders-label = 订单
cargo-console-menu-order-reason-description = 原因：{$reason}
cargo-console-menu-populate-categories-all-text = 全部
cargo-console-menu-populate-orders-cargo-order-row-product-name-text = {$productName}（x{$orderAmount}），申请人：{$orderRequester}，付款账户：[color={$accountColor}]{$account}[/color]
cargo-console-menu-cargo-order-row-approve-button = 批准
cargo-console-menu-cargo-order-row-cancel-button = 取消
cargo-console-menu-tab-title-orders = 订单
cargo-console-menu-tab-title-funds = 转账
cargo-console-menu-account-action-transfer-limit = [bold]转账限额：[/bold] ${$limit}
cargo-console-menu-account-action-transfer-limit-unlimited-notifier = [color=gold]（无限）[/color]
cargo-console-menu-account-action-select = [bold]账户操作：[/bold]
cargo-console-menu-account-action-amount = [bold]金额：[/bold] $
cargo-console-menu-account-action-button = 转账
cargo-console-menu-toggle-account-lock-button = 切换转账限额
cargo-console-menu-account-action-option-withdraw = 提取现金
cargo-console-menu-account-action-option-transfer = 向 {$code} 转账

# Orders
cargo-console-order-not-allowed = 权限不足
cargo-console-station-not-found = 没有可用的空间站
cargo-console-invalid-product = 产品 ID 无效
cargo-console-too-many = 已批准的订单过多
cargo-console-snip-snip = 订单已裁减至容量限制
cargo-console-insufficient-funds = 资金不足（需要 {$cost}）
cargo-console-unfulfilled = 没有空间完成订单
cargo-console-trade-station = 已发送至 {$destination}
cargo-console-unlock-approved-order-broadcast = [bold]{$productName} x{$orderAmount}[/bold] 已由 [bold]{$approver}[/bold] 批准，花费 [bold]{$cost}[/bold]
cargo-console-fund-withdraw-broadcast = [bold]{$name} 从 {$name1} \[{$code1}\] 提取了 {$amount} spesos
cargo-console-fund-transfer-broadcast = [bold]{$name} 将 {$amount} spesos 从 {$name1} \[{$code1}\] 转入 {$name2} \[{$code2}\][/bold]
cargo-console-fund-transfer-user-unknown = 未知

cargo-console-paper-reason-default = 无
cargo-console-paper-approver-default = 本人
cargo-console-paper-print-name = 订单 #{$orderNumber}
cargo-console-paper-print-text = [head=2]订单 #{$orderNumber}[/head]
    {"[bold]物品：[/bold]"} {$itemName}（x{$orderQuantity}）
    {"[bold]申请人：[/bold]"} {$requester}

    {"[head=3]订单信息[/head]"}
    {"[bold]付款账户[/bold]："} {$account} [font="Monospace"]\[{$accountcode}\][/font]
    {"[bold]批准人：[/bold]"} {$approver}
    {"[bold]原因：[/bold]"} {$reason}

# Cargo shuttle console
cargo-shuttle-console-menu-title = 货运穿梭机控制台
cargo-shuttle-console-station-unknown = 未知
cargo-shuttle-console-shuttle-not-found = 未找到
cargo-shuttle-console-organics = 检测到穿梭机上有有机生命体
cargo-no-shuttle = 未找到货运穿梭机！

# Funding allocation console
cargo-funding-alloc-console-menu-title = 资金分配控制台
cargo-funding-alloc-console-label-account = [bold]账户[/bold]
cargo-funding-alloc-console-label-code = [bold] 代码 [/bold]
cargo-funding-alloc-console-label-balance = [bold] 余额 [/bold]
cargo-funding-alloc-console-label-cut = [bold] 收益分配（%）[/bold]

cargo-funding-alloc-console-label-primary-cut = 非保险箱来源资金中货运部所占比例（%）：
cargo-funding-alloc-console-label-lockbox-cut = 保险箱销售额中货运部所占比例（%）：

cargo-funding-alloc-console-label-help-non-adjustible = 非保险箱销售利润中，货运部获得 {$percent}%。剩余部分按下方设置分配：
cargo-funding-alloc-console-label-help-adjustible = 非保险箱来源的剩余资金按下方设置分配：
cargo-funding-alloc-console-button-save = 保存更改
cargo-funding-alloc-console-label-save-fail = [bold]收益分配无效！[/bold] [color=red]({$pos ->
    [1] +
    *[-1] -
}{$val}%)[/color]

# Slip template
cargo-acquisition-slip-body = [head=3]资产详情[/head]
    {"[bold]产品：[/bold]"} {$product}
    {"[bold]描述：[/bold]"} {$description}
    {"[bold]单价：[/bold"}] ${$unit}
    {"[bold]数量：[/bold]"} {$amount}
    {"[bold]总价：[/bold]"} ${$cost}

    {"[head=3]购买详情[/head]"}
    {"[bold]订购人：[/bold]"} {$orderer}
    {"[bold]原因：[/bold]"} {$reason}

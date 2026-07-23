moff-blade-server-rack-window-title = 刀片服务器机架
moff-blade-server-rack-window-footer-flavor = 设备固件 © 2125 NANOSOFT

moff-blade-server-rack-slot-status = 插槽 {$index}：{$content}

moff-blade-server-rack-slot-entity-unknown = 未知
moff-blade-server-rack-slot-empty = 空闲

moff-blade-server-rack-slot-eject = 弹出
moff-blade-server-rack-slot-insert = 插入
moff-blade-server-rack-slot-power-toggle = 切换电源

moff-blade-server-rack-slot-locked-fail = 它被锁住了！
moff-blade-server-rack-slot-whitelist-fail = 那东西装不进去！

moff-blade-server-rack-examine-empty = 其中[color=#1f8ab2]没有刀片服务器[/color]。
moff-blade-server-rack-examine-single = 其中只有{$slot}。
moff-blade-server-rack-examine-multiple-start = 其中装有
moff-blade-server-rack-examine-multiple-slot-line = - {$slot}
moff-blade-server-rack-examine-slot = 插槽 {$index} 中的{ INDEFINITE($name) } [color=#1f8ab2]{ CAPITALIZE($name) }[/color]
moff-blade-server-rack-examine-distant =
    其中装有[color=#1f8ab2]{$numBlades} { $numBlades ->
        [1] 个刀片服务器
        *[other] 个刀片服务器
    }[/color]，但从这个距离无法分辨{ $numBlades ->
        [1] 它是什么
        *[other] 它们是什么
    }。

moff-blade-server-frame-incompatible-board = 这块电路板似乎与框架不兼容……
moff-blade-server-board-compatible-hint = 它可以用来制造[color=#1f8ab2]刀片服务器[/color]

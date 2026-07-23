server-ban-string-infinity = 永久
server-ban-no-name = 未找到。（{ $hwid }）
server-time-ban =
    临时封禁 { $mins } 分钟。
server-perma-ban = 永久封禁
server-role-ban =
    临时职位封禁 { $mins } 分钟。
server-perma-role-ban = 永久职位封禁
server-time-ban-string =
    > **违规者**
    > **登录名：** ``{ $targetName }``
    > **Discord：** { $targetLink }

    > **管理员**
    > **登录名：** ``{ $adminName }``
    > **Discord：** { $adminLink }

    > **时间**
    > **执行于：** { $TimeNow }
    > **到期于：** { $expiresString }

    > **原因：** { $reason }

    > **严重程度：** { $severity }
server-ban-footer = { $server } | 回合：#{ $round }
server-perma-ban-string =
    > **违规者**
    > **登录名：** ``{ $targetName }``
    > **Discord：** { $targetLink }

    > **管理员**
    > **登录名：** ``{ $adminName }``
    > **Discord：** { $adminLink }

    > **时间**
    > **执行于：** { $TimeNow }

    > **原因：** { $reason }

    > **严重程度：** { $severity }
server-role-ban-string =
    > **违规者**
    > **登录名：** ``{ $targetName }``
    > **Discord：** { $targetLink }

    > **管理员**
    > **登录名：** ``{ $adminName }``
    > **Discord：** { $adminLink }

    > **时间**
    > **执行于：** { $TimeNow }
    > **到期于：** { $expiresString }

    > **职位：** { $roles }

    > **原因：** { $reason }

    > **严重程度：** { $severity }
server-perma-role-ban-string =
    > **违规者**
    > **登录名：** ``{ $targetName }``
    > **Discord：** ``{ $targetLink }``

    > **管理员**
    > **登录名：** ``{ $adminName }``
    > **Discord：** { $adminLink }

    > **时间**
    > **执行于：** { $TimeNow }

    > **职位：** { $roles }

    > **原因：** { $reason }

    > **严重程度：** { $severity }

discord-watchlist-connection-header = 观察名单上的 {$players} 名玩家已连接到 {$serverName}

discord-watchlist-connection-entry = - {$playerName}，备注“{$message}”{ $expiry ->
        [0] {""}
        *[other] {" "}（于 <t:{$expiry}:R> 到期）
    }，另见 {$otherWatchlists} 份观察名单

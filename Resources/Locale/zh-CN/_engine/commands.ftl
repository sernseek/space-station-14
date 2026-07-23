### 引擎控制台命令本地化

cmd-hint-float = [浮点数]

## 通用命令错误

cmd-invalid-arg-number-error = 参数数量无效。

cmd-parse-failure-integer = {$arg} 不是有效的整数。
cmd-parse-failure-float = {$arg} 不是有效的浮点数。
cmd-parse-failure-bool = {$arg} 不是有效的 bool 值。
cmd-parse-failure-uid = {$arg} 不是有效的实体 UID。
cmd-parse-failure-mapid = {$arg} 不是有效的 MapId。
cmd-parse-failure-enum = {$arg} 不是 {$enum} 枚举值。
cmd-parse-failure-grid = {$arg} 不是有效的网格。
cmd-parse-failure-cultureinfo = “{$arg}”不是有效的 CultureInfo。
cmd-parse-failure-entity-exist = UID {$arg} 不对应任何现有实体。
cmd-parse-failure-session = 不存在用户名为 {$username} 的会话。

cmd-error-file-not-found = 找不到文件：{$file}。
cmd-error-dir-not-found = 找不到目录：{$dir}。

cmd-failure-no-attached-entity = 此 Shell 未附加实体。

## “help”命令
cmd-help-desc = 显示通用帮助或指定命令的帮助文本。
cmd-help-help = 用法：{$command} [command name]
    未提供命令名称时，显示通用帮助文本。提供命令名称时，显示该命令的帮助文本。

cmd-help-no-args = 要显示指定命令的帮助，请输入“help <command>”。要列出所有可用命令，请输入“list”。要搜索命令，请使用“list <filter>”。
cmd-help-unknown = 未知命令：{ $command }
cmd-help-top = { $command } — { $description }
cmd-help-invalid-args = 参数数量无效。
cmd-help-arg-cmdname = [command name]

## “cvar”命令
cmd-cvar-desc = 获取或设置 CVar。
cmd-cvar-help = 用法：{$command} <name | ?> [value]
    若传入值，则解析该值并将其存为 CVar 的新值。
    否则显示 CVar 的当前值。
    使用“cvar ?”获取所有已注册 CVar 的列表。

cmd-cvar-invalid-args = 必须提供恰好一个或两个参数。
cmd-cvar-not-registered = CVar“{ $cvar }”尚未注册。使用“cvar ?”获取所有已注册 CVar 的列表。
cmd-cvar-parse-error = 输入值的格式不符合类型 { $type }
cmd-cvar-compl-list = 列出可用 CVar
cmd-cvar-arg-name = <name | ?>
cmd-cvar-value-hidden = <值已隐藏>

## “cvar_subs”命令
cmd-cvar_subs-desc = 列出 CVar 的 OnValueChanged 订阅。
cmd-cvar_subs-help = 用法：{$command} <name>

cmd-cvar_subs-invalid-args = 必须提供恰好一个参数。
cmd-cvar_subs-arg-name = <name>

## “list”命令
cmd-list-desc = 列出可用命令，可选择使用搜索筛选器。
cmd-list-help = 用法：{$command} [filter]
    列出所有可用命令。若提供参数，则用它按名称筛选命令。

cmd-list-heading = 侧别 名称            描述{"\u000A"}-------------------------{"\u000A"}

cmd-list-arg-filter = [filter]

## “>”命令，即远程执行
cmd-remoteexec-desc = 执行服务器端命令。
cmd-remoteexec-help = 用法：> <command> [arg] [arg] [arg...]
    在服务器上执行命令。若客户端存在同名命令，则必须使用此方式，因为直接运行会优先执行客户端命令。

## “gc”命令
cmd-gc-desc = 运行 GC（垃圾回收器）。
cmd-gc-help = 用法：{$command} [generation]
    使用 GC.Collect() 执行垃圾回收。
    若提供参数，则将其解析为 GC 代数，并使用 GC.Collect(int)。
    使用“gcf”命令执行压缩 LOH 的完整 GC。
cmd-gc-failed-parse = 无法解析参数。
cmd-gc-arg-generation = [generation]

## “gcf”命令
cmd-gcf-desc = 运行完整 GC，压缩 LOH 等全部内容。
cmd-gcf-help = 用法：{$command}
    执行完整的 GC.Collect(2, GCCollectionMode.Forced, true, true)，同时压缩 LOH。
    这很可能导致程序卡住数百毫秒，请注意。

## “gc_mode”命令
cmd-gc_mode-desc = 更改或读取 GC 延迟模式。
cmd-gc_mode-help = 用法：{$command} [type]
    未提供参数时，返回当前 GC 延迟模式。
    传入参数时，将其解析为 GCLatencyMode 并设为 GC 延迟模式。

cmd-gc_mode-current = 当前 GC 延迟模式：{ $prevMode }
cmd-gc_mode-possible = 可用模式：
cmd-gc_mode-option = - { $mode }
cmd-gc_mode-unknown = 未知 GC 延迟模式：{ $arg }
cmd-gc_mode-attempt = 正在尝试更改 GC 延迟模式：{ $prevMode } -> { $mode }
cmd-gc_mode-result = 更改后的 GC 延迟模式：{ $mode }
cmd-gc_mode-arg-type = [type]

## “mem”命令
cmd-mem-desc = 打印托管内存信息。
cmd-mem-help = 用法：{$command}

cmd-mem-report = 堆大小：{ TOSTRING($heapSize, "N0") }
    总分配量：{ TOSTRING($totalAllocated, "N0") }

## “physics”命令
cmd-physics-overlay = {$overlay} 不是可识别的覆盖层

## “lsasm”命令
cmd-lsasm-desc = 按加载上下文列出已加载的程序集。
cmd-lsasm-help = 用法：lsasm

## “exec”命令
cmd-exec-desc = 从游戏的可写用户数据中执行脚本文件。
cmd-exec-help = 用法：{$command} <fileName>
    除非以 # 开头，否则文件中的每一行都会作为一条命令执行。

cmd-exec-arg-filename = <fileName>

## “dump_net_comps”命令
cmd-dump_net_comps-desc = 打印网络组件表。
cmd-dump_net_comps-help = 用法：{$command}

cmd-dump_net_comps-error-writeable = 注册仍可写，尚未生成网络 ID。
cmd-dump_net_comps-header = 网络组件注册项：

## “dump_event_tables”命令
cmd-dump_event_tables-desc = 打印实体的定向事件表。
cmd-dump_event_tables-help = 用法：{$command} <entityUid>

cmd-dump_event_tables-missing-arg-entity = 缺少实体参数
cmd-dump_event_tables-error-entity = 实体无效
cmd-dump_event_tables-arg-entity = <entityUid>

## “monitor”命令
cmd-monitor-desc = 切换 F3 菜单中的调试监视器。
cmd-monitor-help = 用法：{$command} <name>
    可用监视器：{ $monitors }
    还可使用特殊值“-all”和“+all”分别隐藏或显示所有监视器。

cmd-monitor-arg-monitor = <monitor>
cmd-monitor-invalid-name = 监视器名称无效
cmd-monitor-arg-count = 缺少监视器参数
cmd-monitor-minus-all-hint = 隐藏所有监视器
cmd-monitor-plus-all-hint = 显示所有监视器

## “setambientlight”命令
cmd-set-ambient-light-desc = 允许以 SRGB 设置指定地图的环境光。
cmd-set-ambient-light-help = 用法：{$command} [mapid] [r g b a]
cmd-set-ambient-light-parse = 无法将参数解析为颜色的字节值。

## 地图命令

cmd-savemap-desc = 将地图序列化到磁盘。除非强制执行，否则不会保存初始化后的地图。
cmd-savemap-help = 用法：{$command} <MapID> <Path> [force]
cmd-savemap-not-exist = 目标地图不存在。
cmd-savemap-init-warning = 尝试在未强制保存的情况下保存初始化后的地图。
cmd-savemap-attempt = 正在尝试将地图 {$mapId} 保存至 {$path}。
cmd-savemap-success = 地图保存成功。
cmd-savemap-error = 无法保存地图！详情请查看服务器日志。
cmd-hint-savemap-id = <MapID>
cmd-hint-savemap-path = <Path>
cmd-hint-savemap-force = [bool]

cmd-loadmap-desc = 从磁盘将地图加载到游戏中。
cmd-loadmap-help = 用法：{$command} <MapID> <Path> [x] [y] [rotation] [consistentUids]
cmd-loadmap-nullspace = 无法加载至地图 0。
cmd-loadmap-exists = 地图 {$mapId} 已存在。
cmd-loadmap-success = 地图 {$mapId} 已从 {$path} 加载。
cmd-loadmap-error = 从 {$path} 加载地图时发生错误。
cmd-hint-loadmap-x-position = [x-position]
cmd-hint-loadmap-y-position = [y-position]
cmd-hint-loadmap-rotation = [rotation]
cmd-hint-loadmap-uids = [float]

cmd-hint-savebp-id = <Grid EntityID>

## “flushcookies”命令
# 注意：flushcookies 命令来自 Robust.Client.WebView，并不位于主引擎代码中。

cmd-flushcookies-desc = 将 CEF Cookie 存储刷新到磁盘。
cmd-flushcookies-help = 用法：{$command}
    这可确保 Cookie 在非正常关闭时正确保存到磁盘。
    请注意，实际操作为异步执行。

cmd-ldrsc-desc = 预缓存资源。
cmd-ldrsc-help = 用法：{$command} <path> <type>

cmd-rldrsc-desc = 重新加载资源。
cmd-rldrsc-help = 用法：{$command} <path> <type>

cmd-gridtc-desc = 获取网格的地块数量。
cmd-gridtc-help = 用法：{$command} <gridId>

# 客户端命令
cmd-guidump-desc = 将 GUI 树转储至用户数据中的 /guidump.txt。
cmd-guidump-help = 用法：{$command}

cmd-uitest-desc = 打开一个模拟界面测试窗口。
cmd-uitest-help = 用法：{$command}

## “uitest2”命令
cmd-uitest2-desc = 打开界面控件测试系统窗口。
cmd-uitest2-help = 用法：{$command} <tab>
cmd-uitest2-arg-tab = <tab>
cmd-uitest2-error-args = 最多只能有一个参数
cmd-uitest2-error-tab = 无效标签页：“{$value}”
cmd-uitest2-title = UITest2

cmd-setclipboard-desc = 设置系统剪贴板。
cmd-setclipboard-help = 用法：{$command} <text>

cmd-getclipboard-desc = 获取系统剪贴板。
cmd-getclipboard-help = 用法：{$command}

cmd-togglelight-desc = 切换光照渲染。
cmd-togglelight-help = 用法：{$command}

cmd-togglefov-desc = 切换客户端视野。
cmd-togglefov-help = 用法：{$command}

cmd-togglehardfov-desc = 切换客户端硬视野。（用于调试 space-station-14#2353）
cmd-togglehardfov-help = 用法：{$command}

cmd-toggleshadows-desc = 切换阴影渲染。
cmd-toggleshadows-help = 用法：{$command}

cmd-togglelightbuf-desc = 切换照明渲染。包括阴影，但不包括视野。
cmd-togglelightbuf-help = 用法：{$command}

cmd-chunkinfo-desc = 获取鼠标光标下区块的信息。
cmd-chunkinfo-help = 用法：{$command}

cmd-rldshader-desc = 重新加载所有着色器。
cmd-rldshader-help = 用法：{$command}

cmd-cldbglyr-desc = 切换视野和光照调试层。
cmd-cldbglyr-help= 用法：{$command} <layer>：切换 <layer>
    cldbglyr：关闭所有层

cmd-key-info-desc = 获取某个按键的按键信息。
cmd-key-info-help = 用法：{$command} <Key>

## “bind”命令
cmd-bind-desc = 将输入按键组合绑定到输入命令。
cmd-bind-help = 用法：{$command} { cmd-bind-arg-key } { cmd-bind-arg-mode } { cmd-bind-arg-command }
    请注意，此操作不会自动保存绑定。
    使用“svbind”命令保存绑定配置。

cmd-bind-arg-key = <KeyName>
cmd-bind-arg-mode = <BindMode>
cmd-bind-arg-command = <InputCommand>

cmd-net-draw-interp-desc = 切换网络插值的调试绘制。
cmd-net-draw-interp-help = 用法：{$command}

cmd-net-watch-ent-desc = 将某个 EntityId 的所有网络更新转储至控制台。
cmd-net-watch-ent-help = 用法：{$command} <0|EntityUid>

cmd-net-refresh-desc = 请求完整服务器状态。
cmd-net-refresh-help = 用法：{$command}

cmd-net-entity-report-desc = 切换网络实体报告面板。
cmd-net-entity-report-help = 用法：{$command}

cmd-fill-desc = 用内容填满控制台以便调试。
cmd-fill-help = 用法：{$command}
                用一些无意义内容填满控制台以便调试。

cmd-cls-desc = 清空控制台。
cmd-cls-help = 用法：{$command}
               清除调试控制台中的所有消息。

cmd-sendgarbage-desc = 向服务器发送垃圾数据。
cmd-sendgarbage-help = 用法：{$command}
                       服务器将回复“no u”

cmd-loadgrid-desc = 从文件将网格加载到现有地图。
cmd-loadgrid-help = 用法：{$command} <MapID> <Path> [x y] [rotation] [storeUids]

cmd-loc-desc = 将玩家实体的绝对位置打印到控制台。
cmd-loc-help = 用法：{$command}

cmd-tpgrid-desc = 将网格传送至新位置。
cmd-tpgrid-help = 用法：{$command} <gridId> <X> <Y> [<MapId>]

cmd-rmgrid-desc = 从地图中移除网格。无法移除默认网格。
cmd-rmgrid-help = 用法：{$command} <gridId>

cmd-mapinit-desc = 对地图运行地图初始化。
cmd-mapinit-help = 用法：{$command} <mapID>

cmd-lsmap-desc = 列出地图。
cmd-lsmap-help = 用法：{$command}

cmd-lsgrid-desc = 列出网格。
cmd-lsgrid-help = 用法：{$command}

cmd-addmap-desc = 向回合添加一张新的空地图。若 mapID 已存在，此命令不执行任何操作。
cmd-addmap-help = 用法：{$command} <mapID> [pre-init]

cmd-rmmap-desc = 从世界中移除地图。无法移除空空间。
cmd-rmmap-help = 用法：{$command} <mapId>

cmd-savegrid-desc = 将网格序列化到磁盘。
cmd-savegrid-help = 用法：{$command} <gridID> <Path>

cmd-testbed-desc = 在指定地图上加载物理测试台。
cmd-testbed-help = 用法：{$command} <mapid> <test>

## “flushcookies”命令
# 注意：flushcookies 命令来自 Robust.Client.WebView，并不位于主引擎代码中。

## “addcomp”命令
cmd-addcomp-desc = 向实体添加组件。
cmd-addcomp-help = 用法：{$command} <uid> <componentName>
cmd-addcompc-desc = 在客户端向实体添加组件。
cmd-addcompc-help = 用法：{$command} <uid> <componentName>

## “rmcomp”命令
cmd-rmcomp-desc = 从实体移除组件。
cmd-rmcomp-help = 用法：{$command} <uid> <componentName>
cmd-rmcompc-desc = 在客户端从实体移除组件。
cmd-rmcompc-help = 用法：{$command} <uid> <componentName>

## “addview”命令
cmd-addview-desc = 允许订阅实体视图以进行调试。
cmd-addview-help = 用法：{$command} <entityUid>
cmd-addviewc-desc = 允许订阅实体视图以进行调试。
cmd-addviewc-help = 用法：{$command} <entityUid>

## “removeview”命令
cmd-removeview-desc = 允许取消订阅实体视图以进行调试。
cmd-removeview-help = 用法：{$command} <entityUid>

## “loglevel”命令
cmd-loglevel-desc = 更改指定日志记录器的日志级别。
cmd-loglevel-help = 用法：{$command} <sawmill> <level>
      sawmill：日志消息前的标签。此参数指定要设置级别的日志记录器。
      level：日志级别。必须与 LogLevel 枚举的某个值匹配。

cmd-testlog-desc = 向日志记录器写入测试日志。
cmd-testlog-help = 用法：{$command} <sawmill> <level> <message>
    sawmill：日志消息前的标签。
    level：日志级别。必须与 LogLevel 枚举的某个值匹配。
    message：要记录的消息。若要使用空格，请用双引号括起此参数。

## “vv”命令
cmd-vv-desc = 打开查看变量。
cmd-vv-help = 用法：{$command} <entity ID|IoC interface name|SIoC interface name>

## “showvelocities”命令
cmd-showvelocities-desc = 显示你的角速度和线速度。
cmd-showvelocities-help = 用法：{$command}

## “setinputcontext”命令
cmd-setinputcontext-desc = 设置活动输入上下文。
cmd-setinputcontext-help = 用法：{$command} <context>

## “forall”命令
cmd-forall-desc = 对拥有给定组件的所有实体运行命令。
cmd-forall-help = 用法：{$command} <bql query> do <command...>

## “delete”命令
cmd-delete-desc = 删除具有指定 ID 的实体。
cmd-delete-help = 用法：{$command} <entity UID>

# 系统命令
cmd-showtime-desc = 显示服务器时间。
cmd-showtime-help = 用法：{$command}

cmd-restart-desc = 正常重启服务器（而不仅是回合）。
cmd-restart-help = 用法：{$command}

cmd-shutdown-desc = 正常关闭服务器。
cmd-shutdown-help = 用法：{$command}

cmd-saveconfig-desc = 将服务器配置保存到配置文件。
cmd-saveconfig-help = 用法：{$command}

cmd-netaudit-desc = 打印 NetMsg 安全信息。
cmd-netaudit-help = 用法：{$command}

# 玩家命令
cmd-tp-desc = 将玩家传送至回合中的任意位置。
cmd-tp-help = 用法：{$command} <x> <y> [<mapID>]

cmd-tpto-desc = 将当前玩家或指定玩家／实体传送至第一个玩家／实体的位置。
cmd-tpto-help = 用法：{$command} <username|uid> [username|NetEntity]...
cmd-tpto-destination-hint = 目的地（NetEntity 或用户名）
cmd-tpto-victim-hint = 要传送的实体（NetEntity 或用户名）
cmd-tpto-parse-error = 无法解析实体或玩家：{$str}

cmd-listplayers-desc = 列出当前连接的所有玩家。
cmd-listplayers-help = 用法：{$command}

cmd-kick-desc = 将已连接的玩家踢出服务器并断开其连接。
cmd-kick-help = 用法：{$command} <PlayerIndex> [<Reason>]

# 旋转命令
cmd-spin-desc = 使实体旋转。默认实体为所附加玩家的父实体。
cmd-spin-help = 用法：{$command} velocity [drag] [entityUid]

# 本地化命令
cmd-rldloc-desc = 重新加载本地化（客户端和服务器）。
cmd-rldloc-help = 用法：{$command}

# 调试实体控制
cmd-spawn-desc = 生成指定类型的实体。
cmd-spawn-help = 用法：{$command} <prototype> | {$command} <prototype> <relative entity ID> | {$command} <prototype> <x> <y>
cmd-cspawn-desc = 在脚下生成指定类型的客户端实体。
cmd-cspawn-help = 用法：{$command} <entity type>

cmd-dumpentities-desc = 转储实体列表。
cmd-dumpentities-help = 用法：{$command}
                        转储 UID 和原型的实体列表。

cmd-getcomponentregistration-desc = 获取组件注册信息。
cmd-getcomponentregistration-help = 用法：{$command} <componentName>

cmd-showrays-desc = 切换物理射线的调试绘制。必须为 <raylifetime> 提供整数。
cmd-showrays-help = 用法：{$command} <raylifetime>

cmd-disconnect-desc = 立即断开与服务器的连接并返回主菜单。
cmd-disconnect-help = 用法：{$command}

cmd-entfo-desc = 显示实体的详细诊断信息。
cmd-entfo-help = 用法：{$command} <entityuid>
    可在实体 UID 前加“c”，将其转换为客户端实体 UID。

cmd-fuck-desc = 抛出异常。
cmd-fuck-help = 用法：{$command}

cmd-showpos-desc = 显示屏幕上所有实体的位置。
cmd-showpos-help = 用法：{$command}

cmd-showrot-desc = 显示屏幕上所有实体的旋转。
cmd-showrot-help = 用法：{$command}

cmd-showvel-desc = 显示屏幕上所有实体的局部速度。
cmd-showvel-help = 用法：{$command}

cmd-showangvel-desc = 显示屏幕上所有实体的角速度。
cmd-showangvel-help = 用法：{$command}

cmd-sggcell-desc = 列出对齐网格单元上的实体。
cmd-sggcell-help = 用法：{$command} <gridID> <vector2i>\nvector2i 参数格式为 x<int>,y<int>。

cmd-overrideplayername-desc = 更改尝试连接服务器时使用的名称。
cmd-overrideplayername-help = 用法：{$command} <name>

cmd-showanchored-desc = 显示特定地块上锚定的实体。
cmd-showanchored-help = 用法：{$command}

cmd-dmetamem-desc = 以适用于沙盒配置文件的格式转储某类型的成员。
cmd-dmetamem-help = 用法：{$command} <type>

cmd-launchauth-desc = 从启动器数据加载身份验证令牌，以协助测试正式服务器。
cmd-launchauth-help = 用法：{$command} <account name>

cmd-lightbb-desc = 切换是否显示光源边界框。
cmd-lightbb-help = 用法：{$command}

cmd-monitorinfo-desc = 监视器信息。
cmd-monitorinfo-help = 用法：{$command} <id>

cmd-setmonitor-desc = 设置监视器。
cmd-setmonitor-help = 用法：{$command} <id>

cmd-physics-desc = 显示调试物理覆盖层。所提供的参数指定覆盖层。
cmd-physics-help = 用法：{$command} <aabbs / com / contactnormals / contactpoints / distance / joints / shapeinfo / shapes>

cmd-hardquit-desc = 立即终止游戏客户端。
cmd-hardquit-help = 用法：{$command}
                    立即终止游戏客户端，不留痕迹，也不通知服务器。

cmd-quit-desc = 正常关闭游戏客户端。
cmd-quit-help = 用法：{$command}
                正常关闭游戏客户端，并通知已连接的服务器等。

cmd-csi-desc = 打开 C# 交互式控制台。
cmd-csi-help = 用法：{$command}

cmd-scsi-desc = 在服务器上打开 C# 交互式控制台。
cmd-scsi-help = 用法：{$command}

cmd-watch-desc = 打开变量监视窗口。
cmd-watch-help = 用法：{$command}

cmd-showspritebb-desc = 切换是否显示精灵边界。
cmd-showspritebb-help = 用法：{$command}

cmd-togglelookup-desc = 通过覆盖层显示／隐藏实体查询边界。
cmd-togglelookup-help = 用法：{$command}

cmd-net_entityreport-desc = 切换网络实体报告面板。
cmd-net_entityreport-help = 用法：{$command}

cmd-net_refresh-desc = 请求完整服务器状态。
cmd-net_refresh-help = 用法：{$command}

cmd-net_graph-desc = 切换网络统计面板。
cmd-net_graph-help = 用法：{$command}

cmd-net_watchent-desc = 将某个 EntityId 的所有网络更新转储至控制台。
cmd-net_watchent-help = 用法：{$command} <0|EntityUid>

cmd-net_draw_interp-desc = 切换网络插值的调试绘制。
cmd-net_draw_interp-help = 用法：{$command} <0|EntityUid>

cmd-vram-desc = 显示游戏的视频内存使用统计。
cmd-vram-help = 用法：{$command}

cmd-showislands-desc = 显示每个物理岛中当前涉及的物理体。
cmd-showislands-help = 用法：{$command}

cmd-showgridnodes-desc = 显示用于网格分割的节点。
cmd-showgridnodes-help = 用法：{$command}

cmd-profsnap-desc = 创建性能分析快照。
cmd-profsnap-help = 用法：{$command}

cmd-devwindow-desc = 开发窗口。
cmd-devwindow-help = 用法：{$command}

cmd-scene-desc = 立即更改界面场景／状态。
cmd-scene-help = 用法：{$command} <className>

cmd-szr_stats-desc = 报告序列化器统计信息。
cmd-szr_stats-help = 用法：{$command}

cmd-hwid-desc = 返回当前 HWID（硬件 ID）。
cmd-hwid-help = 用法：{$command}

cmd-vvread-desc = 使用 VV（查看变量）获取路径的值。
cmd-vvread-help = 用法：{$command} <path>

cmd-vvwrite-desc = 使用 VV（查看变量）修改路径的值。
cmd-vvwrite-help = 用法：{$command} <path>

cmd-vvinvoke-desc = 使用 VV 调用路径并传入参数。
cmd-vvinvoke-help = 用法：{$command} <path> [arguments...]

cmd-dump_dependency_injectors-desc = 转储 IoCManager 的依赖注入器缓存。
cmd-dump_dependency_injectors-help = 用法：{$command}
cmd-dump_dependency_injectors-total-count = 总数：{ $total }

cmd-dump_netserializer_type_map-desc = 转储 NetSerializer 的类型映射和序列化器哈希。
cmd-dump_netserializer_type_map-help = 用法：{$command}

cmd-hub_advertise_now-desc = 立即向主 Hub 服务器发布信息。
cmd-hub_advertise_now-help = 用法：{$command}

cmd-echo-desc = 将参数回显到控制台。
cmd-echo-help = 用法：{$command} "<message>"

## “vfs_ls”命令
cmd-vfs_ls-desc = 列出 VFS 中的目录内容。
cmd-vfs_ls-help = 用法：{$command} <path>
    示例：
    vfs_list /Assemblies

cmd-vfs_ls-err-args = 需要恰好 1 个参数。
cmd-vfs_ls-hint-path = <path>

cmd-reloadtiletextures-desc = 重新加载地块纹理图集，以便热重载地块精灵。
cmd-reloadtiletextures-help = 用法：{$command}

cmd-audio_length-desc = 显示音频文件的时长。
cmd-audio_length-help = 用法：{$command} { cmd-audio_length-arg-file-name }
cmd-audio_length-arg-file-name = <file name>

## PVS
cmd-pvs-override-info-desc = 打印与实体关联的所有 PVS 覆盖信息。
cmd-pvs-override-info-empty = 实体 {$nuid} 没有 PVS 覆盖。
cmd-pvs-override-info-global = 实体 {$nuid} 拥有全局覆盖。
cmd-pvs-override-info-clients = 实体 {$nuid} 拥有 {$clients} 的会话覆盖。

cmd-localization_set_culture-desc = 设置客户端 LocalizationManager 的 DefaultCulture。
cmd-localization_set_culture-help = 用法：{$command} <cultureName>
cmd-localization_set_culture-culture-name = <cultureName>
cmd-localization_set_culture-changed = 本地化已更改为 { $code }（{ $nativeName }／{ $englishName }）

cmd-addmap-hint-2 = runMapInit [true / false]

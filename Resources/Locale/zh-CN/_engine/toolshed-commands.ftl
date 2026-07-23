command-help-usage =
    用法：
command-help-invertible =
    可使用“not”前缀反转此命令的行为。
command-description-tpto =
    将给定实体传送至某个目标实体。
command-description-player-list =
    返回所有玩家会话的列表。
command-description-player-self =
    返回当前玩家会话。
command-description-player-imm =
    返回与参数所指定玩家关联的会话。
command-description-player-entity =
    返回输入会话的实体。
command-description-self =
    返回当前附加的实体。
command-description-physics-velocity =
    返回输入实体的速度。
command-description-physics-angular-velocity =
    返回输入实体的角速度。
command-description-buildinfo =
    提供游戏构建信息。
command-description-cmd-list =
    返回当前一侧的所有命令列表。
command-description-explain =
    解释给定表达式，并提供命令描述与签名。此命令仅适用于有效表达式，无法解释其解析失败的命令。
command-description-search =
    在输入中搜索所提供的值。
command-description-stopwatch =
    测量给定表达式的执行时间。
command-description-types-consumers =
    提供所有可接受给定类型的命令。
command-description-types-tree =
    调试工具，返回命令解释器可将输入向下转换成的所有类型。
command-description-types-gettype =
    返回输入的类型。
command-description-types-fullname =
    返回 CoreCLR 所认定的输入类型全名。
command-description-as =
    将输入转换为给定类型。
    如果你知道类型而解释器不知道，此命令实际上相当于类型提示。
command-description-count =
    统计输入中的条目数量，并返回一个整数。
command-description-map =
    使用给定代码块映射输入。
command-description-select =
    从输入中选择 N 个对象或 N% 的对象。
    还可用 not 反转此命令，改为选择除 N 个对象之外的所有对象。
command-description-comp =
    从输入实体返回给定组件，并丢弃不含该组件的实体。
command-description-delete =
    删除输入实体。
command-description-ent =
    返回所提供的实体 ID。
command-description-entities =
    返回服务器上的所有实体。
command-description-paused =
    根据输入实体是否暂停进行筛选。
command-description-with =
    根据输入实体是否拥有给定组件进行筛选。
command-description-fuck =
    抛出异常。
command-description-ecscomp-listty =
    列出所有已注册的组件类型。
command-description-cd =
    将会话的当前目录更改为给定的相对或绝对路径。
command-description-ls-here =
    列出当前目录的内容。
command-description-ls-in =
    列出给定相对或绝对路径的内容。
command-description-methods-get =
    返回与输入类型关联的所有方法。
command-description-methods-overrides =
    返回输入类型上重写的所有方法。
command-description-methods-overridesfrom =
    返回输入类型上从给定类型重写的所有方法。
command-description-cmd-moo =
    提出重要问题。
command-description-cmd-descloc =
    返回命令描述的本地化字符串。
command-description-cmd-getshim =
    返回命令的执行垫片。
command-description-help =
    简要介绍 Toolshed 的用法。
command-description-ioc-registered =
    返回当前线程（通常为游戏线程）上向 IoCManager 注册的所有类型。
command-description-ioc-get =
    获取 IoC 注册项的实例。
command-description-loc-tryloc =
    尝试获取本地化字符串，失败时返回 null。
command-description-loc-loc =
    获取本地化字符串，失败时返回未本地化的字符串。
command-description-physics-angular_velocity =
    返回给定实体的角速度。
command-description-vars =
    提供此会话中设置的所有变量列表。
command-description-any =
    输入中有任何值时返回 true，否则返回 false。
command-description-contains =
    返回输入的可枚举对象是否包含指定值。
command-description-ArrowCommand =
    将输入赋给变量。
command-description-isempty =
    输入为空时返回 true，否则返回 false。
command-description-isnull =
    输入为 null 时返回 true，否则返回 false。
command-description-unique =
    对输入序列进行去重筛选，移除重复值。
command-description-where =
    给定输入序列 IEnumerable<T> 后，接受签名为 T -> bool 的代码块，以决定是否将各输入值纳入输出序列。
command-description-do =
    用于兼容 BQL，将给定旧命令应用于输入序列。
command-description-named =
    使用正则表达式 ^selector$ 按名称筛选输入实体。
command-description-prototyped =
    按原型筛选输入实体。
command-description-nearby =
    创建新列表，包含输入周围给定范围内的所有实体。
command-description-first =
    返回给定可枚举对象的第一个条目。
command-description-splat =
    “展开”代码块、值或变量，在列表中创建其 N 个副本。
command-description-val =
    将给定值、代码块或变量转换为给定类型。此命令主要用于规避当前变量功能的限制。
command-description-var =
    返回给定变量的内容。此命令会尝试自动推断变量类型。修改变量的复合命令可能需要改用“val”命令。
command-description-actor-controlled =
    根据实体当前是否受控进行筛选。
command-description-actor-session =
    返回与输入实体关联的会话。
command-description-physics-parent =
    返回输入实体的父实体。
command-description-emplace =
    对输入运行给定代码块，并将输入值置于代码块内的 $value 变量中。
    对实体还会提取 $wx、$wy、$proto、$desc、$name 和 $paused。
    其他类型也可能有可提取值，详情请查阅相应类型的文档。
command-description-AddCommand =
    执行数值加法。
command-description-SubtractCommand =
    执行数值减法。
command-description-MultiplyCommand =
    执行数值乘法。
command-description-DivideCommand =
    执行数值除法。
command-description-min =
    返回两个值中的较小值。
command-description-max =
    返回两个值中的较大值。
command-description-BitAndCommand =
    执行按位与。
command-description-bitor =
    执行按位或。
command-description-BitXorCommand =
    执行按位异或。
command-description-neg =
    对输入取负。
command-description-GreaterThanCommand =
    执行大于比较：x > y。
command-description-LessThanCommand =
    执行小于比较：x < y。
command-description-GreaterThanOrEqualCommand =
    执行大于等于比较：x >= y。
command-description-LessThanOrEqualCommand =
    执行小于等于比较：x <= y。
command-description-EqualCommand =
    执行相等比较，输入相等时返回 true。
command-description-NotEqualCommand =
    执行相等比较，输入不相等时返回 true。
command-description-append =
    将一个值追加到输入可枚举对象。
command-description-DefaultIfNullCommand =
    如果输入为 null，则将其替换为该类型的默认值；但仅适用于值类型（不适用于对象）。
command-description-OrValueCommand =
    如果输入为 null，则使用提供的备用值。
command-description-DebugPrintCommand =
    原样打印给定值，用于在命令运行期间调试输出。
command-description-i =
    整数常量。
command-description-f =
    浮点数常量。
command-description-s =
    字符串常量。
command-description-b =
    布尔常量。
command-description-join =
    将两个序列合并为一个序列。
command-description-reduce =
    使用给定代码块作为归约器，将序列转换为单个值。
    代码块的左侧为隐式值，右侧则存入 $value。
command-description-rep =
    将输入值重复 N 次以构成序列。
command-description-take =
    从输入序列中取出 N 个值。
command-description-spawn-at =
    在给定坐标生成实体。
command-description-spawn-on =
    在给定实体所在坐标上生成实体。
command-description-spawn-in =
    在给定实体上的给定容器中生成实体；若无法容纳，则将其放在该实体的坐标处。
command-description-spawn-attached =
    生成附加到给定实体的实体，其相对位置为 (0 0)。
command-description-mappos =
    返回实体相对于当前地图的坐标。
command-description-pos =
    返回实体的坐标。
command-description-tp-coords =
    将给定实体传送至目标坐标。
command-description-tp-to =
    将给定实体传送至目标实体。
command-description-tp-into =
    将给定实体传送“进入”目标实体，并附加在相对位置 (0 0)。
command-description-comp-get =
    从给定实体获取给定组件。
command-description-comp-add =
    向给定实体添加给定组件。
command-description-comp-ensure =
    确保给定实体拥有给定组件。
command-description-comp-has =
    检查给定实体是否拥有给定组件。
command-description-AddVecCommand =
    将标量（单个值）加到输入中的每个元素。
command-description-SubVecCommand =
    从输入中的每个元素减去标量（单个值）。
command-description-MulVecCommand =
    将输入中的每个元素乘以标量（单个值）。
command-description-DivVecCommand =
    将输入中的每个元素除以标量（单个值）。
command-description-rng-to =
    返回输入值（含）与参数（不含）之间的数字。
command-description-rng-from =
    返回参数（含）与输入值（不含）之间的数字。
command-description-rng-prob =
    根据输入的概率（0 至 1）返回布尔值。
command-description-sum =
    计算输入值之和。
command-description-bin =
    对输入“分箱”，统计各唯一元素出现的次数。
command-description-extremes =
    交错返回列表两端的极值。
command-description-sortby =
    按计算出的键将输入从小到大排序。
command-description-sortmapby =
    按计算出的键将输入从小到大排序，随后将值替换为计算出的键。
command-description-sort =
    将输入从小到大排序。
command-description-sortdownby =
    按计算出的键将输入从大到小排序。
command-description-sortmapdownby =
    按计算出的键将输入从大到小排序，随后将值替换为计算出的键。
command-description-sortdown =
    将输入从大到小排序。
command-description-iota =
    返回从 1 到 N 的数字列表。
command-description-to =
    返回从 N 到 M 的数字列表。
command-description-curtick =
    当前游戏刻。
command-description-curtime =
    当前游戏时间（TimeSpan）。
command-description-realtime =
    自启动以来的当前实际时间（TimeSpan）。
command-description-servertime =
    当前服务器游戏时间；若本机就是服务器，则为零（TimeSpan）。
command-description-replace =
    用给定原型替换输入实体，保留位置和旋转（除此之外均不保留）。
command-description-allcomps =
    返回给定实体上的所有组件。
command-description-entitysystemupdateorder-tick =
    列出实体系统的刻更新顺序。
command-description-entitysystemupdateorder-frame =
    列出实体系统的帧更新顺序。
command-description-more =
    打印 $more 的内容，即 Toolshed 在上一条命令中未打印的额外内容。
command-description-ModulusCommand =
    计算两个值的模。
    这通常是余数，具体请查阅该类型的 C# 文档。
command-description-ModVecCommand =
    使用给定的右侧常量值对输入执行取模运算。
command-description-BitAndNotCommand =
    对输入执行按位与非。
command-description-bitornot =
    对输入执行按位或非。
command-description-BitXnorCommand =
    对输入执行按位同或。
command-description-BitNotCommand =
    对输入执行按位非。
command-description-abs =
    计算输入的绝对值（移除符号）。
command-description-average =
    计算输入的平均值（算术平均数）。
command-description-bibytecount =
    在输入实现 IBinaryInteger 的前提下，返回输入的字节大小。
    此结果并非 sizeof。
command-description-shortestbitlength =
    返回表示输入值所需的最少位数。
command-description-countleadzeros =
    统计输入值二进制表示中的前导零数量。
command-description-counttrailingzeros =
    统计输入值二进制表示中的尾随零数量。
command-description-fpi =
    float 类型的 pi（3.14159…）。
command-description-fe =
    float 类型的 e（2.71828…）。
command-description-ftau =
    float 类型的 tau（6.28318…）。
command-description-fepsilon =
    float 的 epsilon 值，精确为 1.4e-45。
command-description-dpi =
    double 类型的 pi（3.14159…）。
command-description-de =
    double 类型的 e（2.71828…）。
command-description-dtau =
    double 类型的 tau（6.28318…）。
command-description-depsilon =
    double 的 epsilon 值，精确为 4.9406564584124654E-324。
command-description-hpi =
    half 类型的 pi（3.14…）。
command-description-he =
    half 类型的 e（2.71…）。
command-description-htau =
    half 类型的 tau（6.28…）。
command-description-hepsilon =
    half 的 epsilon 值，精确为 5.9604645E-08。
command-description-floor =
    返回输入值的向下取整结果（向零舍入）。
command-description-ceil =
    返回输入值的向上取整结果（远离零舍入）。
command-description-round =
    对输入值进行四舍五入。
command-description-trunc =
    截断输入值。
command-description-round2frac =
    将输入值舍入至指定的小数位数。
command-description-exponentbytecount =
    返回存储指数所需的字节数。
command-description-significandbytecount =
    返回存储有效数所需的字节数。
command-description-significandbitcount =
    返回有效数的确切位长。
command-description-exponentshortestbitcount =
    返回存储指数所需的最少位数。
command-description-stepnext =
    步进至下一个浮点值，对有效数加一并处理进位。
command-description-stepprev =
    步进至上一个浮点值，对有效数减一并处理借位。
command-description-checkedto =
    将输入数值类型转换为目标类型；无法转换时出错。
command-description-saturateto =
    将输入数值类型转换为目标类型；值超出范围时进行饱和处理。
    例如，将 382 转换为 byte 会饱和为 255（byte 的最大值）。
command-description-truncto =
    通过截断将输入数值类型转换为目标类型。
    对于整数，此操作是带符号扩展的位转换。
command-description-iscanonical =
    返回输入是否为规范形式。
command-description-iscomplex =
    返回输入是否为复数（按值而非按类型判断）。
command-description-iseven =
    返回输入是否为偶数。
    不是一个 JavaScript 包。
command-description-isodd =
    返回输入是否为奇数。
command-description-isfinite =
    返回输入是否为有限值。
command-description-isimaginary =
    返回输入是否为纯虚数（无实部）。
command-description-isinfinite =
    返回输入是否为无限值。
command-description-isinteger =
    返回输入是否为整数（按值而非按类型判断）。
command-description-isnan =
    返回输入是否为非数（NaN）。
    这是特殊浮点值，因此按值而非按类型判断。
command-description-isnegative =
    返回输入是否为负数。
command-description-ispositive =
    返回输入是否为正数。
command-description-isreal =
    返回输入是否为纯实数（无虚部）。
command-description-issubnormal =
    返回输入是否为次正规形式。
command-description-iszero =
    返回输入是否为零。
command-description-pow =
    计算左侧值的右侧次幂，即 x^y。
command-description-sqrt =
    计算输入的平方根。
command-description-cbrt =
    计算输入的立方根。
command-description-root =
    计算输入的 N 次方根。
command-description-hypot =
    计算边长为 A 和 B 的三角形斜边。
command-description-sin =
    计算输入的正弦。
command-description-sinpi =
    计算输入乘以 pi 后的正弦。
command-description-asin =
    计算输入的反正弦。
command-description-asinpi =
    计算输入乘以 pi 后的反正弦。
command-description-cos =
    计算输入的余弦。
command-description-cospi =
    计算输入乘以 pi 后的余弦。
command-description-acos =
    计算输入的反余弦。
command-description-acospi =
    计算输入乘以 pi 后的反余弦。
command-description-tan =
    计算输入的正切。
command-description-tanpi =
    计算输入乘以 pi 后的正切。
command-description-atan =
    计算输入的反正切。
command-description-atanpi =
    计算输入乘以 pi 后的反正切。
command-description-iterate =
    对输入迭代给定函数 N 次，并返回结果列表。
    可将其理解为连续对一个值应用函数，同时记录所有中间值。
command-description-pick =
    从输入中随机选择一个值。
command-description-tee =
    将输入分流至给定代码块，并忽略代码块的结果。
    这实际上允许代码产生分支，对同一个值执行多项操作。
command-description-cmd-info =
    返回给定命令的 CommandSpec。
    单独使用时，这意味着它会打印命令的帮助消息。
command-description-comp-rm =
    从实体移除给定组件。

command-description-overlay-toggle = 开关覆盖层
command-description-overlay-add = 添加覆盖层（若尚不存在）
command-description-overlay-remove = 移除覆盖层

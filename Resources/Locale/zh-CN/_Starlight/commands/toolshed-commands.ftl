command-description-radio-addcustom =
    向管道传入实体上的指定组件添加自定义频道。在末尾指定 true 或 false，以确保该组件存在。
command-description-radio-remcustom =
    从管道传入实体上的指定组件移除给定 ID 的自定义频道。
command-description-container-insertentity =
    将给定实体插入管道传入实体上的指定容器。
command-description-container-insert =
    将管道传入的实体插入指定实体上的指定容器。
command-description-container-create =
    在管道传入的实体上创建新容器。
command-description-container-createslot =
    在管道传入的实体上创建新的容器槽。
command-description-container-delete =
    删除管道传入实体上的容器。
command-description-container-drop =
    从管道传入实体上的指定容器中丢出所有所含实体。
command-description-container-dropandget =
    从管道传入实体上的指定容器中丢出所有所含实体，并返回所有丢出的物品，而非管道传入的实体。
command-description-container-dropanddelete =
    从管道传入实体上的指定容器中丢出所有所含实体，然后删除该容器。
command-description-container-get =
    获取管道传入实体上给定容器 ID 对应的容器对象。
command-description-container-getentities =
    获取管道传入实体上给定容器内的所有实体。
command-description-container-getcontaining =
    获取当前容纳管道传入实体的所有容器。
command-description-container-getoutercontainer =
    获取容纳管道传入实体的最外层容器。
command-description-container-getowner =
    获取拥有指定容器的实体。
command-description-solution-adjcapacity =
    调整给定溶液的容量。
command-description-solution-adjtemperature =
    调整给定溶液的温度。
command-description-solution-adjthermalenergy =
    调整给定溶液的热能。
command-description-solution-create=
    在管道传入的实体上以给定名称创建新溶液。若已存在，则返回现有溶液。
command-description-solution-delete=
    删除管道传入实体上的指定溶液。
### Starlight (upstream #39080)
command-description-subtlemessage =
    向所有输入实体发送隐晦消息。
command-description-grid-getplayers =
    获取管道传入网格上的所有玩家。
command-description-grid-get =
    获取管道传入玩家所在的网格。
command-description-grid-getstation =
    获取管道传入玩家所在的空间站；若传入的是网格，则获取该实体所属的空间站。
command-description-crewmanifest-addto =
    将管道传入的实体添加到指定空间站的船员名单。
command-description-crewmanifest-removefrom =
    从指定空间站的船员名单移除管道传入的实体。
command-description-crewmanifest-addplayer =
    将指定玩家添加到管道传入空间站的船员名单。
command-description-crewmanifest-removeplayer =
    从管道传入空间站的船员名单移除指定玩家。
command-description-storage-reshape =
    根据 box2iconstructor 命令提供的数据重塑存储空间。
command-description-box2iconstructor-new =
    在实体上创建新的 Box2i 列表定义；接着串联 box2iconstructor:add 命令，最后使用需要该定义的命令。
command-description-box2iconstructor-add =
    向现有定义添加新的 Box2i。使用前请先调用 box2iconstructor:new。
command-description-box2iconstructor-clean =
    清理实体上未使用的 Box2i 列表定义。
command-description-vector2dataconstructor-new =
    在实体上创建新的 Vector2 列表定义；接着串联 vector2dataconstructor:add 命令，最后使用需要该定义的命令。
command-description-vector2dataconstructor-add =
    向现有定义添加新的 Vector2。使用前请先调用 vector2dataconstructor:new。
command-description-vector2dataconstructor-clean =
    清理实体上未使用的 Vector2 列表定义。
command-description-job-set =
    更改管道传入实体的职业。
command-description-job-delset =
    先删除再设置职业，以更改管道传入实体的职业，从而播放简报。
command-description-ccomp-ensure =
    若具有指定名称的组件存在，则确保所有客户端都将该组件添加到实体。
command-description-ccomp-write =
    尝试让所有客户端通过 vvwrite 将某些内容写入客户端组件。
command-description-ccomp-rm =
    若具有指定名称的组件存在，则确保所有客户端都将其从实体删除。
command-description-globalsound-play =
    为管道传入的实体或会话全局播放声音。
command-description-polymorph-begin =
    标记一系列变形配置指令的开始，并将 PolymorphSetupComponent 附加到实体。
command-description-polymorph-setproto =
    设置实体将变形成的原型。
command-description-polymorph-seteffect =
    设置要在变形后实体上生成的原型，通常用于创建特效。
command-description-polymorph-setdelay =
    设置再次激活此特定变形前必须等待的秒数。
command-description-polymorph-setduration =
    设置变形在自动还原前持续的秒数。
command-description-polymorph-setforced =
    设置为不允许实体自身激活或取消变形。
command-description-polymorph-settransferdamage =
    设置为将当前实体的伤害转移到变形后的实体。
command-description-polymorph-settransfername =
    设置为让变形后的实体继承原实体名称。
command-description-polymorph-settransferappearance =
    设置是否将头发、肤色、身高等外观属性转移到变形后的实体。
command-description-polymorph-setinventory =
    设置实体的物品栏如何转移到变形后的实体。
command-description-polymorph-setrevertoncrit =
    设置实体进入危急状态时是否还原变形。
command-description-polymorph-setrevertondeath =
    设置实体死亡时是否还原变形。
command-description-polymorph-setrevertondelete =
    设置实体被删除时是否还原变形。
command-description-polymorph-setrevertoneat =
    设置实体被吃掉时是否还原变形。
command-description-polymorph-setallowrepeats =
    设置是否允许重复变形。
command-description-polymorph-setignoreallowrepeats =
    设置为即使 AllowRepeatedMorphs 为 true 也允许发生变形。
command-description-polymorph-setcooldown =
    设置再次变形前的冷却秒数。
command-description-polymorph-setentersound =
    设置进入变形时播放的声音。
command-description-polymorph-setexitsound =
    设置退出变形时播放的声音。
command-description-polymorph-clearentersound =
    清除进入变形时播放的声音。
command-description-polymorph-clearexitsound =
    清除退出变形时播放的声音。
command-description-polymorph-setenterpopup =
    设置进入变形时显示的弹窗。
command-description-polymorph-setexitpopup =
    设置退出变形时显示的弹窗。
command-description-polymorph-clearcopycomp =
    清除要复制到变形实体的组件列表。
command-description-polymorph-addcopycomp =
    向要复制到变形实体的组件列表添加条目。
command-description-polymorph-rmcopycomp =
    从要复制到变形实体的组件列表移除条目。
command-description-polymorph-apply =
    立即应用变形并结束。
command-description-polymorph-applyget =
    立即应用变形并结束，返回新实体。
command-description-polymorph-addaction =
    使用当前变形设置链向实体添加变形动作。之后通常应调用 polymorph:apply 或 polymorph:finish。
command-description-polymorph-addactionproto =
    向实体添加原型化变形动作。
command-description-polymorph-rmaction =
    从实体移除通过 polymorph:addaction 添加的变形动作。
command-description-polymorph-rmactionproto =
    从实体移除原型化变形动作。
command-description-polymorph-revert =
    如果可能，还原到上一个 x 实体。
command-description-polymorph-reset =
    将实体的变形重置为原始状态。
command-description-polymorph-finish =
    将此变形设置链标记为完成，清理并移除组件。
command-description-vv-open =
    打开管道传入实体或路径的 ViewVariables 窗口。
command-description-vv-write =
    使用 VV（查看变量）修改路径值。可以用变量作为值，但必须是序列化字符串。
command-description-vv-owrite =
    使用 VV（查看变量）修改路径值。可以用原始变量作为值。
command-description-vv-read =
    使用 VV（查看变量）输出路径值。
command-description-vv-rsave =
    使用 VV（查看变量）获取路径值。可以保存到变量。
command-description-vv-rsaveraw =
    使用 VV（查看变量）获取路径值。可以保存到变量；保存原始值，而非序列化字符串。
command-description-mind-wipe =
    清除玩家或实体的心智。注意：在赋予新心智之前，这会让其无法继续游戏。
command-description-mind-takeover =
    直接接管生物；若心智不存在则创建，并强制使实体获得智慧。
command-description-mind-takeoverwipe =
    清除自己的心智，然后接管实体。这会清除所有心智角色和目标等内容。
command-description-mind-controlwipe =
    清除目标玩家的心智，并使其控制管道传入的实体；同时创建新心智并使该实体获得智慧。
command-description-killsign-set =
    使用指定状态向实体应用击杀标记。
command-description-killsign-list =
    列出所有可用的击杀标记。
command-description-killsign-rm =
    从实体移除击杀标记。
command-description-fixinput =
    刷新实体会话的输入上下文。
command-description-faction-add =
    向此实体添加阵营。
command-description-faction-remove =
    从此实体移除阵营。
command-description-faction-aggro =
    使此实体敌视目标实体。
command-description-faction-deaggro =
    使此实体不再敌视目标实体。
command-description-faction-ignore =
    使此实体与目标实体相互忽略。
command-description-faction-unignore =
    使此实体与目标实体不再相互忽略。
command-description-faction-clear =
    清除此实体的所有阵营。
command-description-npc-sethtn =
    在实体上创建 NPC，并设置其 HTN 复合节点。
command-description-npc-setenabled =
    启用或禁用此 NPC 的 HTN 行为。
command-description-stationinit-begin =
    开始初始化新的回合中空间站，并将 BecomesStationMidRoundComponent 附加到网格。
command-description-stationinit-setid =
    设置空间站 ID，以防出现重复。
command-description-stationinit-clearbaseprotos =
    清除基础空间站原型列表。
command-description-stationinit-addbaseproto =
    添加要使用的基础空间站原型。
command-description-stationinit-rmbaseproto =
    移除所使用的基础空间站原型。
command-description-stationinit-setallowftl =
    设置是否允许任何人通过超光速航行抵达此空间站所在地图。
command-description-stationinit-setuseemergencyshuttle =
    设置是否生成在回合结束时使用的紧急撤离穿梭机。
command-description-stationinit-setusearmories =
    设置是否生成能通过 armory 命令送往空间站的军械库。
command-description-stationinit-setusearrivals =
    设置是否为空间站生成抵达穿梭机。
command-description-stationinit-setallowdungeonspawns =
    设置是否允许生成 VGroid 等地牢。
command-description-stationinit-setallowcargo =
    设置是否允许生成货运穿梭机和 ATS。
command-description-stationinit-clearallowedgridspawns =
    清除允许从基础原型生成的网格生成项列表。
command-description-stationinit-addallowedgridspawn =
    添加允许从基础原型生成的网格生成项。
command-description-stationinit-rmallowedgridspawn =
    移除允许从基础原型生成的网格生成项。
command-description-stationinit-setemergencyshuttlepath =
    设置紧急撤离穿梭机网格使用的替代路径。
command-description-stationinit-clearjobs =
    清除此空间站的所有职业。
command-description-stationinit-addjob =
    向此空间站添加新职业。
command-description-stationinit-rmjob =
    从此空间站移除职业。
command-description-stationinit-setallowevents =
    设置是否允许事件将此空间站作为目标。
command-description-stationinit-setdovariationpass =
    设置是否允许对新创建的空间站执行回合开始变体处理。
command-description-stationinit-namegrid =
    重命名目标网格；初始化时将使用网格名称作为空间站名称。
command-description-stationinit-initialize =
    完成设置并初始化空间站。
command-description-stationinit-initializeget =
    完成设置并初始化空间站，然后返回新创建的空间站实体。
command-description-aitakeover =
    使管道传入的实体接管目标 AI 核心。
command-description-mobthreshold-initialize =
    在实体上正确初始化新的生物阈值。
command-description-corporeal-on =
    使你的幽灵可见并获得说话能力。
command-description-corporeal-off =
    使你的幽灵隐形并撤销说话能力。
command-description-markup-adddesc =
    使用给定 ID 向管道传入实体的描述添加标记文本。
command-description-markup-editdesc =
    编辑管道传入实体描述中一行具有给定 ID 的标记文本。
command-description-markup-rmdesc =
    从管道传入实体的描述移除一行具有给定 ID 的标记文本。
command-description-markup-cleardesc =
    清除管道传入实体描述中的所有附加标记文本行。
command-description-markup-listdesc =
    列出管道传入实体上的所有描述标记文本及其 ID。
command-description-atmos-add =
    向管道传入的网格添加大气。
command-description-atmos-fix =
    修复管道传入网格的大气。
command-description-atmos-rejoin =
    尝试使管道传入的大气设备重新接入大气系统。
command-description-jobs-makeunlimited =
    将职业名额设为无限。
command-description-jobs-makelimited =
    将职业名额设为有限。可以重置为 0，或重置为回合中途应有的数量。

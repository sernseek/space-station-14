# 地图 YAML 里的裸字符串译名（幽灵传送点 location: / 摄像头 id:）。
#
# key = map-string-<slug>，slug 规则见 Content.Client/Localization/MapStringLocalizer.cs：
# 小写 ASCII 字母数字，其余连续字符折叠成一个 '-'。大小写差异会自动并到同一个 key
# （"Medbay" 和 "medbay" 共用 map-string-medbay），尾部编号会回退到词干
# （"Hallway 3" 找不到时回退 map-string-hallway 再接回 " 3"）。
#
# 查不到条目就原样显示英文，所以这份表可以随时增量补，不必求全。
# 故意写成乱码的地图标签（"K1&45eN"、"Em3rGEnc$ dOC$#74?" 等）刻意不收录。
#
# 用 Tools/localization/extract_map_strings.py --list 查看还有哪些高频原文没覆盖。

## 部门与主要科室
map-string-medbay = 医疗部
map-string-medical = 医疗部
map-string-medical-front = 医疗部前台
map-string-medical-entrance = 医疗部入口
map-string-medical-lobby = 医疗大厅
map-string-medical-hallway = 医疗部走廊
map-string-medical-storage = 医疗储藏室
map-string-medical-lockers = 医疗部储物柜
map-string-medbay-north = 医疗部北区
map-string-medbay-south = 医疗部南区
map-string-surgery = 手术室
map-string-exam-room = 诊查室
map-string-cloning = 克隆室
map-string-cryonics = 低温科
map-string-cryogenics = 低温科
map-string-cryo = 冷冻舱
map-string-cryopod = 冷冻舱
map-string-cryosleep = 冷冻休眠室
map-string-virology = 病毒学
map-string-chemistry = 化学室
map-string-morgue = 停尸房
map-string-crematorium = 火葬场
map-string-psychology = 心理科
map-string-paramedic = 急救员
map-string-brigmed = 狱医室
map-string-brigmedic = 狱医

map-string-security = 安保部
map-string-security-front = 安保部前台
map-string-security-breakroom = 安保部休息室
map-string-security-locker-room = 安保部更衣室
map-string-brig = 禁闭室
map-string-armory = 军械库
map-string-armoury = 军械库
map-string-genpop = 普通监区
map-string-genpop-dorm = 普通监区宿舍
map-string-genpop-lockers = 普通监区储物柜
map-string-genpop-enterance = 普通监区入口
map-string-genpop-west = 普通监区西区
map-string-solitary = 单人禁闭室
map-string-interrogation = 审讯室
map-string-visitation = 探视室
map-string-warden = 典狱长
map-string-warden-s-office = 典狱长办公室
map-string-warden-s-bedroom = 典狱长卧室
map-string-detective = 侦探
map-string-detective-office = 侦探办公室
map-string-detective-s-room = 侦探办公室
map-string-checkpoint = 检查站
map-string-checkpoint-east = 东检查站
map-string-checkpoint-west = 西检查站
map-string-evac-checkpoint = 撤离检查站
map-string-arrivals-checkpoint = 到站厅检查站
map-string-science-checkpoint = 科研部检查站
map-string-sec-dock = 安保船坞
map-string-sec-docking-arm = 安保对接臂
map-string-sec-eva = 安保 EVA
map-string-shooting-range = 靶场
map-string-training = 训练室
map-string-barraks = 兵营

map-string-engineering = 工程部
map-string-engineering-front = 工程部前部
map-string-engineering-front-desk = 工程部前台
map-string-engineering-desk = 工程部台席
map-string-engineering-lobby = 工程部大厅
map-string-engineering-hallway = 工程部走廊
map-string-engineering-airlock = 工程部气闸门
map-string-engineering-locker-room = 工程部更衣室
map-string-engi-front = 工程部前部
map-string-atmospherics = 大气部
map-string-atmos = 大气部
map-string-atmos-desk = 大气部台席
map-string-atmos-north = 大气部北区
map-string-atmos-lockers = 大气部储物柜
map-string-atmos-locker-room = 大气部更衣室
map-string-atmospherics-north = 大气部北区
map-string-atmospherics-south = 大气部南区
map-string-atmospherics-locker-room = 大气部更衣室
map-string-atmo-tank = 大气储罐
map-string-canister-storage = 气罐储藏室
map-string-distro = 配气管网
map-string-teg = TEG
map-string-teg-north = TEG 北侧
map-string-teg-control-room = TEG 控制室
map-string-ame = AME
map-string-ame-room = AME 舱室
map-string-smes = SMES
map-string-smes-bank = SMES 阵列
map-string-solars-ne = 东北太阳能板
map-string-particle-accelerator = 粒子加速器
map-string-pa = 粒子加速器
map-string-pa-room = 粒子加速器舱室
map-string-nuclear-reactor = 核反应堆
map-string-nuclear-reactor-office = 核反应堆办公室
map-string-gravity = 重力
map-string-gravity-generator = 重力发生器
map-string-station-anchor = 空间站锚定器
map-string-anchor = 锚定器
map-string-power-shell = 电力外壳
map-string-tech-storage = 技术仓库
map-string-tech-vault = 技术金库

map-string-science = 科研部
map-string-science-front = 科研部前部
map-string-science-front-desk = 科研部前台
map-string-science-entrance = 科研部入口
map-string-science-hallway = 科研部走廊
map-string-science-locker-room = 科研部更衣室
map-string-rnd = 研发部
map-string-r-d = 研发部
map-string-robotics = 机器人学
map-string-robotics-bay = 机器人学工作区
map-string-xenobiology = 异种生物学
map-string-xenobio = 异种生物学
map-string-anomaly = 异常
map-string-anomaly-lab = 异常实验室
map-string-anomaly-generator = 异常发生器
map-string-artifact-lab = 神器实验室
map-string-server-room = 服务器机房
map-string-servers = 服务器
map-string-routers = 路由器
map-string-camera-routers = 摄像头路由器
map-string-channel = 频道

map-string-cargo = 货运部
map-string-cargo-front = 货运部前台
map-string-cargo-desk = 货运台
map-string-cargo-lobby = 货运大厅
map-string-cargo-bay = 货运舱
map-string-cargo-bay-north = 货运舱北区
map-string-cargo-bay-south = 货运舱南区
map-string-cargo-bay-east = 货运舱东区
map-string-cargo-dock = 货运船坞
map-string-cargo-breakroom = 货运部休息室
map-string-salvage = 打捞部
map-string-salvage-bay = 打捞舱
map-string-salvage-dock = 打捞船坞
map-string-salvage-mining = 打捞 / 采矿
map-string-mining = 采矿
map-string-materials = 材料库
map-string-mail = 邮件
map-string-mail-room = 邮件室

map-string-service = 服务部
map-string-bar = 酒吧
map-string-main-hall-bar = 主厅酒吧
map-string-maints-bar = 维护通道酒吧
map-string-borg-bar = 赛博格酒吧
map-string-bartender-room = 酒保室
map-string-bartender-s-room = 酒保室
map-string-kitchen = 厨房
map-string-freezer = 冷库
map-string-botany = 植物学
map-string-botany-backroom = 植物学后间
map-string-hydroponics = 水培室
map-string-chapel = 教堂
map-string-chaplain-s-room = 牧师室
map-string-chaplain-s-office = 牧师办公室
map-string-janitor = 清洁工
map-string-janitor-closet = 清洁工储物间
map-string-library = 图书馆
map-string-theatre = 剧院
map-string-theater = 剧院
map-string-theatre-hallway = 剧院走廊
map-string-stage = 舞台
map-string-musician-stage = 乐师舞台
map-string-club-backstage = 俱乐部后台
map-string-musician = 乐师
map-string-mime = 默剧演员
map-string-clown = 小丑
map-string-clown-mime = 小丑 / 默剧演员
map-string-reporter = 记者
map-string-newsroom = 新闻编辑室
map-string-news-room = 新闻编辑室
map-string-barbershop = 理发店
map-string-boutique = 精品店
map-string-clothing-store = 服装店
map-string-toy-store = 玩具店
map-string-drugstore = 药店
map-string-food-court = 美食广场
map-string-showroom = 展厅
map-string-arcade = 街机厅
map-string-laser-arena = 镭射竞技场
map-string-boxing-ring = 拳击台
map-string-sauna = 桑拿房
map-string-pool = 泳池
map-string-fish-tank = 鱼缸
map-string-animal-farm = 动物农场
map-string-observatory = 观星台
map-string-atrium = 中庭
map-string-mr-chang-s-takeout = 张先生外卖

## 指挥部与办公室
map-string-bridge = 舰桥
map-string-bridge-north = 舰桥北侧
map-string-bridge-south = 舰桥南侧
map-string-bridge-east = 舰桥东侧
map-string-bridge-west = 舰桥西侧
map-string-bridge-entrance = 舰桥入口
map-string-bridge-hallway = 舰桥走廊
map-string-bridge-airlock = 舰桥气闸门
map-string-vault = 金库
map-string-captain-s-office = 舰长办公室
map-string-captain-office = 舰长办公室
map-string-captain-s-room = 舰长室
map-string-captain-s-quarters = 舰长住舱
map-string-captain-s-bedroom = 舰长卧室
map-string-captain-bedroom = 舰长卧室
map-string-hop-office = 人事主管办公室
map-string-hop-s-office = 人事主管办公室
map-string-hop-bedroom = 人事主管卧室
map-string-main-hall-hop = 主厅人事主管处
map-string-hos = 安保主管
map-string-hos-office = 安保主管办公室
map-string-cmo = 医疗主管
map-string-cmo-office = 医疗主管办公室
map-string-cmo-s-office = 医疗主管办公室
map-string-cmo-s-room = 医疗主管室
map-string-ce-office = 工程主管办公室
map-string-ce-s-office = 工程主管办公室
map-string-ce-s-room = 工程主管室
map-string-ce-bedroom = 工程主管卧室
map-string-ce-s-bedroom = 工程主管卧室
map-string-rd-office = 研究主管办公室
map-string-rd-s-office = 研究主管办公室
map-string-rd-s-room = 研究主管室
map-string-rd-bedroom = 研究主管卧室
map-string-qm = 军需官
map-string-qm-office = 军需官办公室
map-string-qm-s-office = 军需官办公室
map-string-quartermaster-s-office = 军需官办公室
map-string-qm-s-room = 军需官室
map-string-qm-bedroom = 军需官卧室
map-string-qm-s-bedroom = 军需官卧室
map-string-magistrate = 治安官
map-string-magistrate-office = 治安官办公室
map-string-magistrate-s-office = 治安官办公室
map-string-law-office = 律师办公室
map-string-court = 法庭
map-string-courtroom = 法庭
map-string-general-s-office = 将军办公室
map-string-nt-rep = NT 代表
map-string-ntr = NTR
map-string-ntr-office = NTR 办公室
map-string-ntr-bso = NTR / BSO
map-string-bso = BSO
map-string-nct = NCT
map-string-nct-office = NCT 办公室

## AI 与通讯
map-string-ai = AI
map-string-ai-core = AI 核心
map-string-ai-core-north = AI 核心北侧
map-string-ai-core-south = AI 核心南侧
map-string-ai-core-exterior = AI 核心外围
map-string-ai-exterior = AI 外围
map-string-ai-upload = AI 上传室
map-string-ai-power = AI 电力室
map-string-telecomms = 通讯部
map-string-telecomms-entrance = 通讯部入口
map-string-monitoring = 监控室

## 通用区域
map-string-arrivals = 到站厅
map-string-arrivals-north = 到站厅北区
map-string-arrivals-south = 到站厅南区
map-string-arrivals-east = 到站厅东区
map-string-arrivals-west = 到站厅西区
map-string-arrivals-dock = 到站船坞
map-string-evac = 撤离区
map-string-evac-north = 撤离区北侧
map-string-evac-south = 撤离区南侧
map-string-evac-west = 撤离区西侧
map-string-eva = EVA
map-string-eva-storage = EVA 储藏室
map-string-eva-supply = EVA 补给
map-string-dorms = 宿舍
map-string-dorm-room = 宿舍房间
map-string-dorm-washrooms = 宿舍盥洗室
map-string-maints = 维护通道
map-string-disposals = 垃圾处理
map-string-warehouse = 仓库
map-string-storage = 储藏室
map-string-locker = 储物柜
map-string-lockers = 储物柜
map-string-locker-room = 更衣室
map-string-breakroom = 休息室
map-string-break-room = 休息室
map-string-break = 休息室
map-string-lobby = 大厅
map-string-entrance = 入口
map-string-front = 前部
map-string-front-desk = 前台
map-string-reception = 接待处
map-string-conference = 会议室
map-string-conference-room = 会议室
map-string-meeting-room = 会议室
map-string-equipment-room = 装备室
map-string-tool-room = 工具间
map-string-tools = 工具间
map-string-hallway = 走廊
map-string-hallway-e = 东走廊
map-string-hallway-n = 北走廊
map-string-hallway-w = 西走廊
map-string-hallway-south = 南走廊
map-string-east-hallway = 东走廊
map-string-west-hallway = 西走廊
map-string-south-hallway = 南走廊
map-string-general-hall = 主厅
map-string-north-hall = 北厅
map-string-south-hall = 南厅
map-string-north = 北区
map-string-west = 西区
map-string-the-pass = 通道
map-string-north-airlock = 北气闸门
map-string-south-airlock = 南气闸门
map-string-east-airlock = 东气闸门
map-string-west-airlock = 西气闸门
map-string-docks-east = 东船坞
map-string-docks-west = 西船坞
map-string-port-bow = 左舷艏
map-string-starboard-quarter = 右舷艉
map-string-ship-constuction-bay = 飞船建造舱
map-string-shuttle-construction-bay = 穿梭机建造舱

## 载具与外部站点
map-string-escape-shuttle = 逃生穿梭机
map-string-evac-shuttle = 撤离穿梭机
map-string-cargo-shuttle = 货运穿梭机
map-string-lottery-shuttle = 抽奖穿梭机
map-string-wizard-shuttle = 巫师穿梭机
map-string-cburn-shuttle = CBURN 穿梭机
map-string-ert-shuttle = ERT 穿梭机
map-string-ert-shuttle-janitor = ERT 穿梭机（清洁工）
map-string-special-operations-shuttle = 特勤穿梭机
map-string-automated-trade-station = 自动贸易站
map-string-nuclear-operative-outpost = 核特工前哨
map-string-syndicate-research-outpost = 辛迪加研究前哨
map-string-comet = 彗星号
map-string-nt-scrubber = NT 洗涤舰
map-string-medtak-av-40 = MedTak AV-40
map-string-medtak-point-alpha = MedTak 阿尔法点
map-string-transrecon = TransRecon
map-string-orwell = 奥威尔
map-string-cardboardistan = 纸箱斯坦
map-string-plasma-pit-045 = 等离子坑 #045
map-string-plasma-pit-046 = 等离子坑 #046

## ATS（自动贸易站）
map-string-ats-docks = ATS 船坞
map-string-ats-engine = ATS 引擎室
map-string-ats-atmos = ATS 大气部
map-string-ats-medbay = ATS 医疗部
map-string-ats-offices = ATS 办公区
map-string-ats-kitchen = ATS 厨房
map-string-ats-break-room = ATS 休息室
map-string-ats-engineering = ATS 工程部

## TSF
map-string-tsf-montague-bridge = TSF“蒙塔古”舰桥
map-string-tsf-starboard-bay = TSF 右舷舱
map-string-tsf-port-bay = TSF 左舷舱
map-string-tsf-briefing-stage = TSF 简报台
map-string-tsf-engine-room = TSF 引擎室
map-string-tsf-brig = TSF 禁闭室
map-string-tsf-cafeteria = TSF 食堂
map-string-tsf-kitchen = TSF 厨房
map-string-tsf-representative-s-office = TSF 代表办公室
map-string-tsf-cryostorage = TSF 冷冻仓储
map-string-tsf-medical-wing = TSF 医疗区
map-string-tsf-janitorial-closet = TSF 清洁储物间
map-string-tsf-tool-storage = TSF 工具储藏室
map-string-tsf-bathrooms = TSF 盥洗室
map-string-tsf-deployment-staging-area = TSF 部署集结区
map-string-tsf-armory = TSF 军械库
map-string-tsf-port-backup-generator = TSF 左舷备用发电机
map-string-tsf-starboard-backup-generator = TSF 右舷备用发电机

## 以下由 compose_map_strings.py 按词元词典组合生成，
## 需要润色的条目直接改这里的值即可（本工具不会覆盖已有 key）。

# A.I. core
map-string-a-i-core = A I 核心
# A.I. entrance
map-string-a-i-entrance = A I 入口
# A.I. power control
map-string-a-i-power-control = A I 电力控制
# A.I. upload
map-string-a-i-upload = A I 上传室
# A.P.E. Storage
map-string-a-p-e-storage = A P E 储藏
# Abandoned Docking Sub
map-string-abandoned-docking-sub = Abandoned 对接 Sub
# advanced SMES (AI Core)
map-string-advanced-smes-ai-core = AI 核心先进 SMES
# advanced SMES (AME)
map-string-advanced-smes-ame = AME 先进 SMES
# advanced SMES (Bank Go)
map-string-advanced-smes-bank-go = 银行 Go 先进 SMES
# advanced SMES (Bank Ichi)
map-string-advanced-smes-bank-ichi = 银行 Ichi 先进 SMES
# advanced SMES (Bank Ni)
map-string-advanced-smes-bank-ni = 银行 Ni 先进 SMES
# advanced SMES (Bank San)
map-string-advanced-smes-bank-san = 银行 San 先进 SMES
# advanced SMES (Bank Shi)
map-string-advanced-smes-bank-shi = 银行 Shi 先进 SMES
# advanced SMES (Engine One)
map-string-advanced-smes-engine-one = 引擎一先进 SMES
# advanced SMES (Engine Two)
map-string-advanced-smes-engine-two = 引擎二先进 SMES
# advanced SMES (North-West Solars)
map-string-advanced-smes-north-west-solars = 西北太阳能板先进 SMES
# advanced SMES (Particle Accelerator)
map-string-advanced-smes-particle-accelerator = 粒子加速器先进 SMES
# advanced SMES (Singulo)
map-string-advanced-smes-singulo = 奇点先进 SMES
# advanced SMES (SMES Bank Five)
map-string-advanced-smes-smes-bank-five = SMES 银行 Five 先进 SMES
# advanced SMES (SMES Bank Four)
map-string-advanced-smes-smes-bank-four = SMES 银行 Four 先进 SMES
# advanced SMES (SMES Bank One)
map-string-advanced-smes-smes-bank-one = SMES 银行一先进 SMES
# advanced SMES (SMES Bank Six)
map-string-advanced-smes-smes-bank-six = SMES 银行 Six 先进 SMES
# advanced SMES (SMES Bank Three)
map-string-advanced-smes-smes-bank-three = SMES 银行 Three 先进 SMES
# advanced SMES (SMES Bank Two)
map-string-advanced-smes-smes-bank-two = SMES 银行二先进 SMES
# advanced SMES (SMES (Deathsquad Dock))
map-string-advanced-smes-smes-deathsquad-dock = 先进 SMES SMES Deathsquad 船坞
# advanced SMES (SMES (ERT Dock))
map-string-advanced-smes-smes-ert-dock = 先进 SMES SMES ERT 船坞
# advanced SMES (SMES (Ichi))
map-string-advanced-smes-smes-ichi = 先进 SMES SMES Ichi
# advanced SMES (SMES (Ni))
map-string-advanced-smes-smes-ni = 先进 SMES SMES Ni
# advanced SMES (SMES (North-West/Solars))
map-string-advanced-smes-smes-north-west-solars = 先进 SMES SMES 西北太阳能板
# advanced SMES (SMES (San))
map-string-advanced-smes-smes-san = 先进 SMES SMES San
# advanced SMES (SMES (Shi))
map-string-advanced-smes-smes-shi = 先进 SMES SMES Shi
# advanced SMES (South-West Solars)
map-string-advanced-smes-south-west-solars = 西南太阳能板先进 SMES
# Aft Maintenance APC
map-string-aft-maintenance-apc = 艉维护通道 APC
# Aft-Port
map-string-aft-port = 艉左舷
# Aft-Starboard
map-string-aft-starboard = 艉右舷
# Aft Substation
map-string-aft-substation = 艉变电站
# AI Access APC
map-string-ai-access-apc = AI 通路 APC
# AI Airlock
map-string-ai-airlock = AI 气闸门
# AI Backup Power
map-string-ai-backup-power = AI 备用电力
# AI Bridge
map-string-ai-bridge = AI 舰桥
# AI central
map-string-ai-central = AI 中央
# AI Chamber North
map-string-ai-chamber-north = AI 舱室北
# AI Chamber South
map-string-ai-chamber-south = AI 舱室南
# ai chute
map-string-ai-chute = AI 滑槽
# AI Connection
map-string-ai-connection = AI 连接段
# AI Control
map-string-ai-control = AI 控制
# ai core a
map-string-ai-core-a = AI 核心 A
# AI Core Access
map-string-ai-core-access = AI 核心通路
# AI Core Air Alarm
map-string-ai-core-air-alarm = AI 核心空气警报器
# AI Core Airlock Door
map-string-ai-core-airlock-door = AI 核心气闸门门
# AI Core APC
map-string-ai-core-apc = AI 核心 APC
# ai core b
map-string-ai-core-b = AI 核心 B
# AI Core Bridge East
map-string-ai-core-bridge-east = AI 核心舰桥东
# AI Core Bridge North
map-string-ai-core-bridge-north = AI 核心舰桥北
# AI Core Bridge West
map-string-ai-core-bridge-west = AI 核心舰桥西
# AI Core Central Room
map-string-ai-core-central-room = AI 核心中央室
# AI Core Chute
map-string-ai-core-chute = AI 核心滑槽
# AI Core Closet
map-string-ai-core-closet = AI 核心储物间
# AI Core Construction Room
map-string-ai-core-construction-room = AI 核心建造室
# AI Core Core
map-string-ai-core-core = AI 核心核心
# AI Core Core Core
map-string-ai-core-core-core = AI 核心核心核心
# AI Core Core Entrance
map-string-ai-core-core-entrance = AI 核心核心入口
# AI Core East
map-string-ai-core-east = AI 核心东
# AI Core Engineering
map-string-ai-core-engineering = AI 核心工程
# AI Core Entrance
map-string-ai-core-entrance = AI 核心入口
# AI Core Entrance APC
map-string-ai-core-entrance-apc = AI 核心入口 APC
# AI Core Entrance Ext
map-string-ai-core-entrance-ext = AI 核心入口外部
# AI core entrance hall
map-string-ai-core-entrance-hall = AI 核心入口厅
# AI Core Entrance Room
map-string-ai-core-entrance-room = AI 核心入口室
# AI Core Ext E
map-string-ai-core-ext-e = AI 核心外部 E
# AI Core Ext N
map-string-ai-core-ext-n = AI 核心外部 N
# AI Core Ext S
map-string-ai-core-ext-s = AI 核心外部 S
# AI Core First Room
map-string-ai-core-first-room = AI 核心一室
# AI Core Foyer
map-string-ai-core-foyer = AI 核心门厅
# AI Core Front
map-string-ai-core-front = AI 核心前
# AI Core Hallway
map-string-ai-core-hallway = AI 核心走廊
# AI Core - Law Board Storage
map-string-ai-core-law-board-storage = AI 核心律政主板储藏
# AI Core Maintenance 
map-string-ai-core-maintenance = AI 核心维护通道
# AI Core N Walkway
map-string-ai-core-n-walkway = AI 核心 N 通道
# AI Core NE Walkway
map-string-ai-core-ne-walkway = AI 核心东北通道
# AI Core NW Walkway
map-string-ai-core-nw-walkway = AI 核心西北通道
# AI Core Power
map-string-ai-core-power = AI 核心电力
# AI core power room
map-string-ai-core-power-room = AI 核心电力室
# AI Core Powerline
map-string-ai-core-powerline = AI 核心电力线
# AI Core Rear
map-string-ai-core-rear = AI 核心后
# AI Core - Routers and Servers
map-string-ai-core-routers-and-servers = AI 核心路由器服务器
# AI Core SE Walkway
map-string-ai-core-se-walkway = AI 核心东南通道
# AI Core SMES
map-string-ai-core-smes = AI 核心 SMES
# ai core solar array
map-string-ai-core-solar-array = AI 核心太阳能阵列
# AI Core Space Access
map-string-ai-core-space-access = AI 核心太空通路
# ai core stage
map-string-ai-core-stage = AI 核心舞台
# AI Core Substation
map-string-ai-core-substation = AI 核心变电站
# AI Core SW Walkway
map-string-ai-core-sw-walkway = AI 核心西南通道
# AI Core Tunnel Exterior Camera
map-string-ai-core-tunnel-exterior-camera = AI 核心通道外围摄像头
# AI Core - Upload
map-string-ai-core-upload = AI 核心上传室
# AI Core W Walkway
map-string-ai-core-w-walkway = AI 核心 W 通道
# AI Core West
map-string-ai-core-west = AI 核心西
# AI Dock
map-string-ai-dock = AI 船坞
# AI East
map-string-ai-east = AI 东
# AI Engineering
map-string-ai-engineering = AI 工程
# ai enterance
map-string-ai-enterance = AI 入口
# AI entrance
map-string-ai-entrance = AI 入口
# AI Entrance air alarm
map-string-ai-entrance-air-alarm = AI 入口空气警报器
# Ai entrance hallway
map-string-ai-entrance-hallway = AI 入口走廊
# AI Entryway
map-string-ai-entryway = AI 入口
# AI Ext North-East
map-string-ai-ext-north-east = AI 外部东北
# AI Front
map-string-ai-front = AI 前
# AI Hall North
map-string-ai-hall-north = AI 厅北
# AI Hall South
map-string-ai-hall-south = AI 厅南
# AI Lobby
map-string-ai-lobby = AI 大厅
# AI Main
map-string-ai-main = AI 主
# AI Maint East
map-string-ai-maint-east = AI 维护通道东
# AI Maint East Hall
map-string-ai-maint-east-hall = AI 维护通道东厅
# AI Maint West
map-string-ai-maint-west = AI 维护通道西
# AI Maint West Hall
map-string-ai-maint-west-hall = AI 维护通道西厅
# AI North-West
map-string-ai-north-west = AI 西北
# AI Observation Air Alarm
map-string-ai-observation-air-alarm = AI 观测空气警报器
# AI Observation APC
map-string-ai-observation-apc = AI 观测 APC
# AI Power air alarm
map-string-ai-power-air-alarm = AI 电力空气警报器
# AI Power APC
map-string-ai-power-apc = AI 电力 APC
# AI rechargers
map-string-ai-rechargers = AI 充电器
# AI Sat Airlock APC
map-string-ai-sat-airlock-apc = AI 卫星气闸门 APC
# AI Sat Core APC
map-string-ai-sat-core-apc = AI 卫星核心 APC
# AI Sat Entrance
map-string-ai-sat-entrance = AI 卫星入口
# AI Sat Entrance APC
map-string-ai-sat-entrance-apc = AI 卫星入口 APC
# AI Sat Foyer APC
map-string-ai-sat-foyer-apc = AI 卫星门厅 APC
# AI Sat Maints APC
map-string-ai-sat-maints-apc = AI 卫星维护通道 APC
# AI Sat Tunnel
map-string-ai-sat-tunnel = AI 卫星通道
# AI Sat Upload APC
map-string-ai-sat-upload-apc = AI 卫星上传室 APC
# AI Satelite Hallway
map-string-ai-satelite-hallway = AI 卫星走廊
# AI Satelite Northeast
map-string-ai-satelite-northeast = AI 卫星东北
# AI Satelite Northwest
map-string-ai-satelite-northwest = AI 卫星西北
# AI Satelite SMES
map-string-ai-satelite-smes = AI 卫星 SMES
# AI Satelite South
map-string-ai-satelite-south = AI 卫星南
# AI Satelite Southeast
map-string-ai-satelite-southeast = AI 卫星东南
# AI Satelite Southwest
map-string-ai-satelite-southwest = AI 卫星西南
# AI Satelite Substation
map-string-ai-satelite-substation = AI 卫星变电站
# ai satellite
map-string-ai-satellite = AI 卫星
# AI Satellite East APC
map-string-ai-satellite-east-apc = AI 卫星东 APC
# AI Satellite Enterance
map-string-ai-satellite-enterance = AI 卫星入口
# ai satellite entry room
map-string-ai-satellite-entry-room = AI 卫星入口室
# AI Satellite West APC
map-string-ai-satellite-west-apc = AI 卫星西 APC
# AI south
map-string-ai-south = AI 南
# AI South-East
map-string-ai-south-east = AI 东南
# AI South-West
map-string-ai-south-west = AI 西南
# AI storeroom
map-string-ai-storeroom = AI 储藏室
# AI Substation
map-string-ai-substation = AI 变电站
# AI Upload Air Alarm
map-string-ai-upload-air-alarm = AI 上传室空气警报器
# AI Upload APC
map-string-ai-upload-apc = AI 上传室 APC
# AI Upload Backup Power
map-string-ai-upload-backup-power = AI 上传室备用电力
# AI Upload Substation
map-string-ai-upload-substation = AI 上传室变电站
# AI Utility Room
map-string-ai-utility-room = AI 辅助室
# AI West
map-string-ai-west = AI 西
# air alarm (AI)
map-string-air-alarm-ai = AI 空气警报器
# air alarm (AI Core)
map-string-air-alarm-ai-core = AI 核心空气警报器
# air alarm (AI Entrance)
map-string-air-alarm-ai-entrance = AI 入口空气警报器
# air alarm (AI Upload)
map-string-air-alarm-ai-upload = AI 上传室空气警报器
# air alarm (AME)
map-string-air-alarm-ame = AME 空气警报器
# air alarm (Anomaly Lab)
map-string-air-alarm-anomaly-lab = 异常实验室空气警报器
# air alarm (Armory)
map-string-air-alarm-armory = 军械库空气警报器
# air alarm (Armory Hallway)
map-string-air-alarm-armory-hallway = 军械库走廊空气警报器
# air alarm (Armoury)
map-string-air-alarm-armoury = 军械库空气警报器
# air alarm (Arrivals)
map-string-air-alarm-arrivals = 到站厅空气警报器
# air alarm (Arrivals Checkpoint)
map-string-air-alarm-arrivals-checkpoint = 到站厅检查站空气警报器
# air alarm (Arrivals Hall)
map-string-air-alarm-arrivals-hall = 到站厅厅空气警报器
# air alarm (Arrivals Hallway)
map-string-air-alarm-arrivals-hallway = 到站厅走廊空气警报器
# air alarm (Arrivals North)
map-string-air-alarm-arrivals-north = 到站厅北空气警报器
# air alarm (Arrivals South)
map-string-air-alarm-arrivals-south = 到站厅南空气警报器
# air alarm (Artifact Chamber)
map-string-air-alarm-artifact-chamber = 神器舱室空气警报器
# air alarm (Artifact Testing)
map-string-air-alarm-artifact-testing = 神器测试空气警报器
# air alarm (Atmos Locker Room)
map-string-air-alarm-atmos-locker-room = 大气更衣室空气警报器
# air alarm (Atmospherics)
map-string-air-alarm-atmospherics = 大气空气警报器
# air alarm (Atmospherics Burn Chamber)
map-string-air-alarm-atmospherics-burn-chamber = 大气烧伤舱室空气警报器
# air alarm (Backstage)
map-string-air-alarm-backstage = 后台空气警报器
# air alarm (Bar)
map-string-air-alarm-bar = 酒吧空气警报器
# air alarm (Bar Backroom)
map-string-air-alarm-bar-backroom = 酒吧后间空气警报器
# air alarm (Bar Washrooms)
map-string-air-alarm-bar-washrooms = 酒吧盥洗室空气警报器
# air alarm (Bartender's Room)
map-string-air-alarm-bartender-s-room = 酒保室空气警报器
# air alarm (Bathroom)
map-string-air-alarm-bathroom = 盥洗室空气警报器
# air alarm (Botany)
map-string-air-alarm-botany = 植物学空气警报器
# air alarm (Botany Backroom)
map-string-air-alarm-botany-backroom = 植物学后间空气警报器
# air alarm (Boutique Backroom)
map-string-air-alarm-boutique-backroom = 精品店后间空气警报器
# air alarm (Bridge)
map-string-air-alarm-bridge = 舰桥空气警报器
# air alarm (Bridge Evac)
map-string-air-alarm-bridge-evac = 舰桥撤离空气警报器
# air alarm (Bridge Hall)
map-string-air-alarm-bridge-hall = 舰桥厅空气警报器
# air alarm (Bridge Hall West)
map-string-air-alarm-bridge-hall-west = 舰桥厅西空气警报器
# air alarm (Bridge Lodging Hallway)
map-string-air-alarm-bridge-lodging-hallway = 舰桥 Lodging 走廊空气警报器
# air alarm (Bridge Main Hallway)
map-string-air-alarm-bridge-main-hallway = 舰桥主走廊空气警报器
# air alarm (Brig)
map-string-air-alarm-brig = 禁闭室空气警报器
# air alarm (Brig Medic)
map-string-air-alarm-brig-medic = 禁闭室 Medic 空气警报器
# air alarm (Brigmed)
map-string-air-alarm-brigmed = 狱医室空气警报器
# air alarm (BSO Barracks)
map-string-air-alarm-bso-barracks = BSO 兵营空气警报器
# air alarm (Camera Servers)
map-string-air-alarm-camera-servers = 摄像头服务器空气警报器
# air alarm (Captain's Bedroom)
map-string-air-alarm-captain-s-bedroom = 舰长卧室空气警报器
# air alarm (Captain's Office)
map-string-air-alarm-captain-s-office = 舰长办公室空气警报器
# air alarm (Captain's Room)
map-string-air-alarm-captain-s-room = 舰长室空气警报器
# air alarm (Cargo Bay)
map-string-air-alarm-cargo-bay = 货运舱空气警报器
# air alarm (Cargo Entrance)
map-string-air-alarm-cargo-entrance = 货运入口空气警报器
# air alarm (Cargo Hallway)
map-string-air-alarm-cargo-hallway = 货运走廊空气警报器
# air alarm (Cargo Reception)
map-string-air-alarm-cargo-reception = 货运接待处空气警报器
# air alarm (Cargo Tunnel)
map-string-air-alarm-cargo-tunnel = 货运通道空气警报器
# air alarm (Cargo Washrooms)
map-string-air-alarm-cargo-washrooms = 货运盥洗室空气警报器
# air alarm (CE's Bedroom)
map-string-air-alarm-ce-s-bedroom = 工程主管卧室空气警报器
# air alarm (CE's Office)
map-string-air-alarm-ce-s-office = 工程主管办公室空气警报器
# air alarm (Central Service)
map-string-air-alarm-central-service = 中央服务空气警报器
# air alarm (Chapel)
map-string-air-alarm-chapel = 教堂空气警报器
# air alarm (Chapel Hallway)
map-string-air-alarm-chapel-hallway = 教堂走廊空气警报器
# air alarm (Chaplain's Room)
map-string-air-alarm-chaplain-s-room = 牧师室空气警报器
# air alarm (Chemistry)
map-string-air-alarm-chemistry = 化学空气警报器
# air alarm (Clothing Boutique)
map-string-air-alarm-clothing-boutique = 服装精品店空气警报器
# air alarm (Clown)
map-string-air-alarm-clown = 小丑空气警报器
# air alarm (CMO's Bedroom)
map-string-air-alarm-cmo-s-bedroom = 医疗主管卧室空气警报器
# air alarm (CMO's Office)
map-string-air-alarm-cmo-s-office = 医疗主管办公室空气警报器
# air alarm (Command Evacuation Dock)
map-string-air-alarm-command-evacuation-dock = 指挥部撤离船坞空气警报器
# air alarm (Courtroom)
map-string-air-alarm-courtroom = 法庭空气警报器
# air alarm (Crematorium)
map-string-air-alarm-crematorium = 火葬场空气警报器
# air alarm (Crematory)
map-string-air-alarm-crematory = Crematory 空气警报器
# air alarm (Cryogenics)
map-string-air-alarm-cryogenics = 低温科空气警报器
# air alarm (Cryosleep)
map-string-air-alarm-cryosleep = 冷冻休眠空气警报器
# air alarm (Detective's Office)
map-string-air-alarm-detective-s-office = 侦探办公室空气警报器
# air alarm (Disposals)
map-string-air-alarm-disposals = 垃圾处理空气警报器
# air alarm (Dorm 1)
map-string-air-alarm-dorm-1 = 宿舍 1 空气警报器
# air alarm (Dorm 2)
map-string-air-alarm-dorm-2 = 宿舍 2 空气警报器
# air alarm (Dorm 3)
map-string-air-alarm-dorm-3 = 宿舍 3 空气警报器
# air alarm (Dorm 4)
map-string-air-alarm-dorm-4 = 宿舍 4 空气警报器
# air alarm (Dorm A)
map-string-air-alarm-dorm-a = 宿舍 A 空气警报器
# air alarm (Dorm B)
map-string-air-alarm-dorm-b = 宿舍 B 空气警报器
# air alarm (Dorm Washrooms)
map-string-air-alarm-dorm-washrooms = 宿舍盥洗室空气警报器
# air alarm (Dorms)
map-string-air-alarm-dorms = 宿舍空气警报器
# air alarm (Dorms Hall)
map-string-air-alarm-dorms-hall = 宿舍厅空气警报器
# air alarm (Dorms Hallway)
map-string-air-alarm-dorms-hallway = 宿舍走廊空气警报器
# air alarm (East Bar Hallway)
map-string-air-alarm-east-bar-hallway = 东酒吧走廊空气警报器
# air alarm (East Hall)
map-string-air-alarm-east-hall = 东厅空气警报器
# air alarm (Emergency Suit Storage)
map-string-air-alarm-emergency-suit-storage = 应急宇航服储藏空气警报器
# air alarm (Engi Tools)
map-string-air-alarm-engi-tools = 工程工具空气警报器
# air alarm (Engineering)
map-string-air-alarm-engineering = 工程空气警报器
# air alarm (Engineering Control Room)
map-string-air-alarm-engineering-control-room = 工程控制室空气警报器
# air alarm (Engineering Entrance)
map-string-air-alarm-engineering-entrance = 工程入口空气警报器
# air alarm (Engineering Front)
map-string-air-alarm-engineering-front = 工程前空气警报器
# air alarm (Engineering Hallway)
map-string-air-alarm-engineering-hallway = 工程走廊空气警报器
# air alarm (Engineering Locker Room)
map-string-air-alarm-engineering-locker-room = 工程更衣室空气警报器
# air alarm (EVA)
map-string-air-alarm-eva = EVA 空气警报器
# air alarm (EVA Storage)
map-string-air-alarm-eva-storage = EVA 储藏空气警报器
# air alarm (Evac)
map-string-air-alarm-evac = 撤离空气警报器
# air alarm (Evac Checkpoint)
map-string-air-alarm-evac-checkpoint = 撤离检查站空气警报器
# air alarm (Evac Hall)
map-string-air-alarm-evac-hall = 撤离厅空气警报器
# air alarm (Freezer)
map-string-air-alarm-freezer = 冷库空气警报器
# air alarm (Genpop)
map-string-air-alarm-genpop = 普通监区空气警报器
# air alarm (Genpop Dorm)
map-string-air-alarm-genpop-dorm = 普通监区宿舍空气警报器
# air alarm (GenPop Entry)
map-string-air-alarm-genpop-entry = 普通监区入口空气警报器
# air alarm (Genpop Locker Room)
map-string-air-alarm-genpop-locker-room = 普通监区更衣室空气警报器
# air alarm (Gravity Generator)
map-string-air-alarm-gravity-generator = 重力发生器空气警报器
# air alarm (HOP)
map-string-air-alarm-hop = 人事主管空气警报器
# air alarm (HoP Back Hallway)
map-string-air-alarm-hop-back-hallway = 人事主管后走廊空气警报器
# air alarm (HoP's Bedroom)
map-string-air-alarm-hop-s-bedroom = 人事主管卧室空气警报器
# air alarm (HoP's Office)
map-string-air-alarm-hop-s-office = 人事主管办公室空气警报器
# air alarm (HOP's Room)
map-string-air-alarm-hop-s-room = 人事主管室空气警报器
# air alarm (HoS' Office)
map-string-air-alarm-hos-office = HoS' 办公室空气警报器
# air alarm (HoS's Bedroom)
map-string-air-alarm-hos-s-bedroom = 安保主管卧室空气警报器
# air alarm (HoS's Office)
map-string-air-alarm-hos-s-office = 安保主管办公室空气警报器
# air alarm (Hydroponics)
map-string-air-alarm-hydroponics = 水培空气警报器
# air alarm (Hydroponics Hallway)
map-string-air-alarm-hydroponics-hallway = 水培走廊空气警报器
# air alarm (IAA)
map-string-air-alarm-iaa = 内务调查员空气警报器
# air alarm (Interrogation)
map-string-air-alarm-interrogation = 审讯室空气警报器
# air alarm (Intersection)
map-string-air-alarm-intersection = 路口空气警报器
# air alarm (Janitor Closet)
map-string-air-alarm-janitor-closet = 清洁工储物间空气警报器
# air alarm (Janitor's Closet)
map-string-air-alarm-janitor-s-closet = 清洁工储物间空气警报器
# air alarm (Kitchen)
map-string-air-alarm-kitchen = 厨房空气警报器
# air alarm (Law Office)
map-string-air-alarm-law-office = 律政办公室空气警报器
# air alarm (Library)
map-string-air-alarm-library = 图书馆空气警报器
# air alarm (Library Backroom)
map-string-air-alarm-library-backroom = 图书馆后间空气警报器
# air alarm (Library Hallway)
map-string-air-alarm-library-hallway = 图书馆走廊空气警报器
# air alarm (Lounge)
map-string-air-alarm-lounge = 休息室空气警报器
# air alarm (Magistrate)
map-string-air-alarm-magistrate = 治安官空气警报器
# air alarm (Mail Room)
map-string-air-alarm-mail-room = 邮件室空气警报器
# air alarm (Mailroom)
map-string-air-alarm-mailroom = 邮件室空气警报器
# air alarm (Main Greenway North)
map-string-air-alarm-main-greenway-north = 主绿道北空气警报器
# air alarm (Main Greenway South)
map-string-air-alarm-main-greenway-south = 主绿道南空气警报器
# air alarm (Maints Bar)
map-string-air-alarm-maints-bar = 维护通道酒吧空气警报器
# air alarm (Medbay)
map-string-air-alarm-medbay = 医疗部空气警报器
# air alarm (Medbay Entrance)
map-string-air-alarm-medbay-entrance = 医疗部入口空气警报器
# air alarm (Medbay Hall)
map-string-air-alarm-medbay-hall = 医疗部厅空气警报器
# air alarm (Medical Breakroom)
map-string-air-alarm-medical-breakroom = 医疗休息室空气警报器
# air alarm (Medical Hall)
map-string-air-alarm-medical-hall = 医疗厅空气警报器
# air alarm (Medical Hallway)
map-string-air-alarm-medical-hallway = 医疗走廊空气警报器
# air alarm (Medical Locker Room)
map-string-air-alarm-medical-locker-room = 医疗更衣室空气警报器
# air alarm (Medical Reception)
map-string-air-alarm-medical-reception = 医疗接待处空气警报器
# air alarm (Medical Washrooms)
map-string-air-alarm-medical-washrooms = 医疗盥洗室空气警报器
# air alarm (Meeting Room)
map-string-air-alarm-meeting-room = 会议室空气警报器
# air alarm (Mime)
map-string-air-alarm-mime = 默剧演员空气警报器
# air alarm (Morgue)
map-string-air-alarm-morgue = 停尸房空气警报器
# air alarm (NCT Office)
map-string-air-alarm-nct-office = NCT 办公室空气警报器
# air alarm (News Server Room)
map-string-air-alarm-news-server-room = 新闻服务器机房空气警报器
# air alarm (Newsroom)
map-string-air-alarm-newsroom = 新闻编辑室空气警报器
# air alarm (Newsroom Entrance)
map-string-air-alarm-newsroom-entrance = 新闻编辑室入口空气警报器
# air alarm (North Bar Hallway)
map-string-air-alarm-north-bar-hallway = 北酒吧走廊空气警报器
# air alarm (North Hall)
map-string-air-alarm-north-hall = 北厅空气警报器
# air alarm (Northeast Hall)
map-string-air-alarm-northeast-hall = 东北厅空气警报器
# air alarm (Northwest Hall)
map-string-air-alarm-northwest-hall = 西北厅空气警报器
# air alarm (Noth Solars Hallway)
map-string-air-alarm-noth-solars-hallway = Noth 太阳能板走廊空气警报器
# air alarm (NTR)
map-string-air-alarm-ntr = NTR 空气警报器
# air alarm (NTR's Office)
map-string-air-alarm-ntr-s-office = NTR 办公室空气警报器
# air alarm (Old Hall East)
map-string-air-alarm-old-hall-east = 旧厅东空气警报器
# air alarm (Old Hall West)
map-string-air-alarm-old-hall-west = 旧厅西空气警报器
# air alarm (Paramedic)
map-string-air-alarm-paramedic = 急救员空气警报器
# air alarm (Paramedic's Office)
map-string-air-alarm-paramedic-s-office = 急救员办公室空气警报器
# air alarm (Particle Accelerator)
map-string-air-alarm-particle-accelerator = 粒子加速器空气警报器
# air alarm (Psychology)
map-string-air-alarm-psychology = 心理科空气警报器
# air alarm (Pyschologist's Office)
map-string-air-alarm-pyschologist-s-office = Pyschologist's 办公室空气警报器
# air alarm (QM's Bedroom)
map-string-air-alarm-qm-s-bedroom = 军需官卧室空气警报器
# air alarm (QM's Office)
map-string-air-alarm-qm-s-office = 军需官办公室空气警报器
# air alarm (Quarantine)
map-string-air-alarm-quarantine = 隔离区空气警报器
# air alarm (Radiation Suit Room)
map-string-air-alarm-radiation-suit-room = 辐射宇航服室空气警报器
# air alarm (RD's Bedroom)
map-string-air-alarm-rd-s-bedroom = 研究主管卧室空气警报器
# air alarm (RD's Office)
map-string-air-alarm-rd-s-office = 研究主管办公室空气警报器
# air alarm (Reporter)
map-string-air-alarm-reporter = 记者空气警报器
# air alarm (Research and Development)
map-string-air-alarm-research-and-development = 研发部空气警报器
# air alarm (Robotics)
map-string-air-alarm-robotics = 机器人学空气警报器
# air alarm (Robotics Surgery)
map-string-air-alarm-robotics-surgery = 机器人学手术室空气警报器
# air alarm (Salvage)
map-string-air-alarm-salvage = 打捞空气警报器
# air alarm (Salvage Arm)
map-string-air-alarm-salvage-arm = 打捞臂空气警报器
# air alarm (Salvage Bay)
map-string-air-alarm-salvage-bay = 打捞舱空气警报器
# air alarm (Salvage Maintenance)
map-string-air-alarm-salvage-maintenance = 打捞维护通道空气警报器
# air alarm (Sauna)
map-string-air-alarm-sauna = 桑拿房空气警报器
# air alarm (Sauna Locker Room)
map-string-air-alarm-sauna-locker-room = 桑拿房更衣室空气警报器
# air alarm (Sci - Anomaly)
map-string-air-alarm-sci-anomaly = 科研异常空气警报器
# air alarm (Sci - Can Storage)
map-string-air-alarm-sci-can-storage = 科研 Can 储藏空气警报器
# air alarm (Sci - North)
map-string-air-alarm-sci-north = 科研北空气警报器
# air alarm (Sci - RD Office)
map-string-air-alarm-sci-rd-office = 科研研究主管办公室空气警报器
# air alarm (Sci - South Hall)
map-string-air-alarm-sci-south-hall = 科研南厅空气警报器
# air alarm (Science)
map-string-air-alarm-science = 科研空气警报器
# air alarm (Science Airlock)
map-string-air-alarm-science-airlock = 科研气闸门空气警报器
# air alarm (Science Entrance)
map-string-air-alarm-science-entrance = 科研入口空气警报器
# air alarm (Science Firebreak)
map-string-air-alarm-science-firebreak = 科研防火隔断空气警报器
# air alarm (Science Front)
map-string-air-alarm-science-front = 科研前空气警报器
# air alarm (Science Hallway East)
map-string-air-alarm-science-hallway-east = 科研走廊东空气警报器
# air alarm (Science Hallway West)
map-string-air-alarm-science-hallway-west = 科研走廊西空气警报器
# air alarm (Science Lobby)
map-string-air-alarm-science-lobby = 科研大厅空气警报器
# air alarm (Science Locker Room)
map-string-air-alarm-science-locker-room = 科研更衣室空气警报器
# air alarm (Sec - Brig)
map-string-air-alarm-sec-brig = 安保禁闭室空气警报器
# air alarm (Sec - East)
map-string-air-alarm-sec-east = 安保东空气警报器
# air alarm (Sec - HOS Office)
map-string-air-alarm-sec-hos-office = 安保安保主管办公室空气警报器
# air alarm (SEC Maintenance)
map-string-air-alarm-sec-maintenance = 安保维护通道空气警报器
# air alarm (Security)
map-string-air-alarm-security = 安保空气警报器
# air alarm (Security Back Entrance)
map-string-air-alarm-security-back-entrance = 安保后入口空气警报器
# air alarm (Security Breakroom)
map-string-air-alarm-security-breakroom = 安保休息室空气警报器
# air alarm (Security Docking)
map-string-air-alarm-security-docking = 安保对接空气警报器
# air alarm (Security Entrance)
map-string-air-alarm-security-entrance = 安保入口空气警报器
# air alarm (Security Front)
map-string-air-alarm-security-front = 安保前空气警报器
# air alarm (Security Lobby)
map-string-air-alarm-security-lobby = 安保大厅空气警报器
# air alarm (Security Locker Room)
map-string-air-alarm-security-locker-room = 安保更衣室空气警报器
# air alarm (Security Reception)
map-string-air-alarm-security-reception = 安保接待处空气警报器
# air alarm (Security - Warden)
map-string-air-alarm-security-warden = 安保典狱长空气警报器
# air alarm (Service Breakroom)
map-string-air-alarm-service-breakroom = 服务休息室空气警报器
# air alarm (Service Hall)
map-string-air-alarm-service-hall = 服务厅空气警报器
# air alarm (Service Hallway)
map-string-air-alarm-service-hallway = 服务走廊空气警报器
# air alarm (South Hall)
map-string-air-alarm-south-hall = 南厅空气警报器
# air alarm (Southeast Hall)
map-string-air-alarm-southeast-hall = 东南厅空气警报器
# air alarm (Southwest Hall)
map-string-air-alarm-southwest-hall = 西南厅空气警报器
# air alarm (Spacebucks)
map-string-air-alarm-spacebucks = 太空币空气警报器
# air alarm (Station Anchor)
map-string-air-alarm-station-anchor = 空间站锚定器空气警报器
# air alarm (Storage Closet)
map-string-air-alarm-storage-closet = 储藏储物间空气警报器
# air alarm (Surgery)
map-string-air-alarm-surgery = 手术室空气警报器
# air alarm (Tech Vault)
map-string-air-alarm-tech-vault = 技术金库空气警报器
# air alarm (TEG)
map-string-air-alarm-teg = TEG 空气警报器
# air alarm (TEG Burn Chamber)
map-string-air-alarm-teg-burn-chamber = TEG 烧伤舱室空气警报器
# air alarm (Telecomms)
map-string-air-alarm-telecomms = 通讯空气警报器
# air alarm (Test Chamber East)
map-string-air-alarm-test-chamber-east = 测试舱室东空气警报器
# air alarm (Test Chamber West)
map-string-air-alarm-test-chamber-west = 测试舱室西空气警报器
# air alarm (Theater)
map-string-air-alarm-theater = 剧院空气警报器
# air alarm (Theater Hallway)
map-string-air-alarm-theater-hallway = 剧院走廊空气警报器
# air alarm (Theatre)
map-string-air-alarm-theatre = 剧院空气警报器
# air alarm (Tool Room)
map-string-air-alarm-tool-room = 工具室空气警报器
# air alarm (Tools Room)
map-string-air-alarm-tools-room = 工具室空气警报器
# air alarm (Vault)
map-string-air-alarm-vault = 金库空气警报器
# air alarm (Virology)
map-string-air-alarm-virology = 病毒学空气警报器
# air alarm (Virology Airlock)
map-string-air-alarm-virology-airlock = 病毒学气闸门空气警报器
# air alarm (Virology Entrance)
map-string-air-alarm-virology-entrance = 病毒学入口空气警报器
# air alarm (Visitation)
map-string-air-alarm-visitation = 探视空气警报器
# air alarm (Vox Dorm)
map-string-air-alarm-vox-dorm = 沃克斯宿舍空气警报器
# air alarm (Warden's Office)
map-string-air-alarm-warden-s-office = 典狱长办公室空气警报器
# air alarm (West Hall)
map-string-air-alarm-west-hall = 西厅空气警报器
# air alarm (Xenoarchaeology)
map-string-air-alarm-xenoarchaeology = 异种考古学空气警报器
# air alarm (Xenobio)
map-string-air-alarm-xenobio = 异种生物学空气警报器
# air monitor (Artifact Chamber)
map-string-air-monitor-artifact-chamber = 神器舱室空气监视器
# Airlock
map-string-airlock = 气闸门
# airlock at containment
map-string-airlock-at-containment = 气闸门封闭
# Airlock (N)
map-string-airlock-n = N 气闸门
# airlock to containment
map-string-airlock-to-containment = 气闸门封闭
# Also Bar
map-string-also-bar = 酒吧
# AME Air Alarm
map-string-ame-air-alarm = AME 空气警报器
# AME chamber
map-string-ame-chamber = AME 舱室
# AME Entrance
map-string-ame-entrance = AME 入口
# AME fire alarm
map-string-ame-fire-alarm = AME 火警警报器
# AME hallway
map-string-ame-hallway = AME 走廊
# ame room air alarm
map-string-ame-room-air-alarm = AME 室空气警报器
# AME South
map-string-ame-south = AME 南
# amenities substation
map-string-amenities-substation = 生活设施变电站
# Anchor APC
map-string-anchor-apc = 锚定器 APC
# Anchor/Grav/Comms
map-string-anchor-grav-comms = 锚定器重力通讯
# Anchor/Gravity
map-string-anchor-gravity = 锚定器重力
# Anchor Room
map-string-anchor-room = 锚定器室
# Anchor SMES
map-string-anchor-smes = 锚定器 SMES
# Anchor substation
map-string-anchor-substation = 锚定器变电站
# Anchorage
map-string-anchorage = 泊位
# animal pen
map-string-animal-pen = 动物围栏
# Anom Lab NW
map-string-anom-lab-nw = 异常实验室西北
# Anom Lab SE
map-string-anom-lab-se = 异常实验室东南
# Anomally Generator
map-string-anomally-generator = 异常发电机
# Anomally Lab Air Alarm
map-string-anomally-lab-air-alarm = 异常实验室空气警报器
# Anomally Lab APC
map-string-anomally-lab-apc = 异常实验室 APC
# anomalous lab
map-string-anomalous-lab = 异常实验室
# anomalous lab corridor
map-string-anomalous-lab-corridor = 异常实验室走廊
# anomalous lab corridor air alarm
map-string-anomalous-lab-corridor-air-alarm = 异常实验室走廊空气警报器
# Anomaly APC
map-string-anomaly-apc = 异常 APC
# Anomaly Generator air alarm
map-string-anomaly-generator-air-alarm = 异常发电机空气警报器
# Anomaly Generator Room
map-string-anomaly-generator-room = 异常发电机室
# Anomaly Lab APC
map-string-anomaly-lab-apc = 异常实验室 APC
# APC (AI Core)
map-string-apc-ai-core = AI 核心 APC
# APC (AI Entrance)
map-string-apc-ai-entrance = AI 入口 APC
# APC (AI Upload)
map-string-apc-ai-upload = AI 上传室 APC
# APC (Anchor)
map-string-apc-anchor = 锚定器 APC
# APC (Anomaly)
map-string-apc-anomaly = 异常 APC
# APC (Anomaly Lab)
map-string-apc-anomaly-lab = 异常实验室 APC
# APC (Armory)
map-string-apc-armory = 军械库 APC
# APC (Armoury)
map-string-apc-armoury = 军械库 APC
# APC (Arrival dock east)
map-string-apc-arrival-dock-east = 到站船坞东 APC
# APC (Arrival dock west)
map-string-apc-arrival-dock-west = 到站船坞西 APC
# APC (Arrivals)
map-string-apc-arrivals = 到站厅 APC
# APC (Arrivals Checkpoint)
map-string-apc-arrivals-checkpoint = 到站厅检查站 APC
# APC (Arrivals Hall)
map-string-apc-arrivals-hall = 到站厅厅 APC
# APC (Arrivals North)
map-string-apc-arrivals-north = 到站厅北 APC
# APC (Arrivals South)
map-string-apc-arrivals-south = 到站厅南 APC
# APC (Artifact lab)
map-string-apc-artifact-lab = 神器实验室 APC
# APC (Artifacts)
map-string-apc-artifacts = 神器 APC
# APC (Atmo West)
map-string-apc-atmo-west = 大气西 APC
# APC (Atmos East)
map-string-apc-atmos-east = 大气东 APC
# APC (Atmos External)
map-string-apc-atmos-external = 大气外部 APC
# APC (Atmos front)
map-string-apc-atmos-front = 大气前 APC
# APC (Atmos hall)
map-string-apc-atmos-hall = 大气厅 APC
# APC (Atmos locker)
map-string-apc-atmos-locker = 大气储物柜 APC
# APC (Atmos Locker Room)
map-string-apc-atmos-locker-room = 大气更衣室 APC
# APC (Atmos Lockers)
map-string-apc-atmos-lockers = 大气储物柜 APC
# APC (Atmos technical storage)
map-string-apc-atmos-technical-storage = 大气技术储藏 APC
# APC (Atmospherics)
map-string-apc-atmospherics = 大气 APC
# APC (Atmospherics South)
map-string-apc-atmospherics-south = 大气南 APC
# APC (Atmospherics West)
map-string-apc-atmospherics-west = 大气西 APC
# APC (Backstage)
map-string-apc-backstage = 后台 APC
# APC (Bar)
map-string-apc-bar = 酒吧 APC
# APC (Bar Maintenance)
map-string-apc-bar-maintenance = 酒吧维护通道 APC
# APC (Bar Washrooms)
map-string-apc-bar-washrooms = 酒吧盥洗室 APC
# APC (Barraks)
map-string-apc-barraks = 兵营 APC
# APC (Bartender's Room)
map-string-apc-bartender-s-room = 酒保室 APC
# APC (Bathroom)
map-string-apc-bathroom = 盥洗室 APC
# APC (Botany)
map-string-apc-botany = 植物学 APC
# APC (Boutique Backroom)
map-string-apc-boutique-backroom = 精品店后间 APC
# APC (Boxing Ring)
map-string-apc-boxing-ring = 拳击环 APC
# APC (Bridge)
map-string-apc-bridge = 舰桥 APC
# APC (Bridge east)
map-string-apc-bridge-east = 舰桥东 APC
# APC (Bridge Evac)
map-string-apc-bridge-evac = 舰桥撤离 APC
# APC (Bridge - Gravity Generator)
map-string-apc-bridge-gravity-generator = 舰桥重力发生器 APC
# APC (Bridge Hall)
map-string-apc-bridge-hall = 舰桥厅 APC
# APC (Bridge Hallway)
map-string-apc-bridge-hallway = 舰桥走廊 APC
# APC (Bridge Lodging Hallway)
map-string-apc-bridge-lodging-hallway = 舰桥 Lodging 走廊 APC
# APC (Bridge west)
map-string-apc-bridge-west = 舰桥西 APC
# APC (Briefing room)
map-string-apc-briefing-room = 简报室 APC
# APC (Brig)
map-string-apc-brig = 禁闭室 APC
# APC (Brig IPC Recharger)
map-string-apc-brig-ipc-recharger = 禁闭室 IPC Recharger APC
# APC (Brig Medic)
map-string-apc-brig-medic = 禁闭室 Medic APC
# APC (Brig processing)
map-string-apc-brig-processing = 禁闭室处理 APC
# APC (Brigmedic)
map-string-apc-brigmedic = 狱医 APC
# APC (BSO Barracks)
map-string-apc-bso-barracks = BSO 兵营 APC
# APC (BSO office)
map-string-apc-bso-office = BSO 办公室 APC
# APC (Camera Routers)
map-string-apc-camera-routers = 摄像头路由器 APC
# APC (Camera Servers)
map-string-apc-camera-servers = 摄像头服务器 APC
# APC (Cameras)
map-string-apc-cameras = 摄像头 APC
# APC (Canisters)
map-string-apc-canisters = 气罐 APC
# APC (Captain)
map-string-apc-captain = 舰长 APC
# APC (Captain office)
map-string-apc-captain-office = 舰长办公室 APC
# APC (Captain's Office)
map-string-apc-captain-s-office = 舰长办公室 APC
# APC (Captain's Room)
map-string-apc-captain-s-room = 舰长室 APC
# APC (Cargo Bay)
map-string-apc-cargo-bay = 货运舱 APC
# APC (Cargo break)
map-string-apc-cargo-break = 货运休息 APC
# APC (Cargo Desk)
map-string-apc-cargo-desk = 货运台席 APC
# APC (Cargo Entrance)
map-string-apc-cargo-entrance = 货运入口 APC
# APC (Cargo front)
map-string-apc-cargo-front = 货运前 APC
# APC (Cargo hall)
map-string-apc-cargo-hall = 货运厅 APC
# APC (Cargo Hallway)
map-string-apc-cargo-hallway = 货运走廊 APC
# APC (Cargo locker)
map-string-apc-cargo-locker = 货运储物柜 APC
# APC (Cargo Maintenance)
map-string-apc-cargo-maintenance = 货运维护通道 APC
# APC (Cargo Reception)
map-string-apc-cargo-reception = 货运接待处 APC
# APC (Cargo Shuttle)
map-string-apc-cargo-shuttle = 货运穿梭机 APC
# APC (Cargo Washrooms)
map-string-apc-cargo-washrooms = 货运盥洗室 APC
# APC (CE Office)
map-string-apc-ce-office = 工程主管办公室 APC
# APC (CE's Office)
map-string-apc-ce-s-office = 工程主管办公室 APC
# APC (Central - Chapel)
map-string-apc-central-chapel = 中央教堂 APC
# APC (Central Service)
map-string-apc-central-service = 中央服务 APC
# APC (Central - Theatre)
map-string-apc-central-theatre = 中央剧院 APC
# APC (Chapel)
map-string-apc-chapel = 教堂 APC
# APC (Chapel Hallway)
map-string-apc-chapel-hallway = 教堂走廊 APC
# APC (Chapel N)
map-string-apc-chapel-n = 教堂 N APC
# APC (Chapel S)
map-string-apc-chapel-s = 教堂 S APC
# APC (Chaplain office)
map-string-apc-chaplain-office = 牧师办公室 APC
# APC (Chaplain's Room)
map-string-apc-chaplain-s-room = 牧师室 APC
# APC (Chef Bedroom)
map-string-apc-chef-bedroom = 厨师卧室 APC
# APC (Chemist)
map-string-apc-chemist = 化学师 APC
# APC (Chemistry)
map-string-apc-chemistry = 化学 APC
# APC (Chief Engineer)
map-string-apc-chief-engineer = 工程主管 APC
# APC (Chief Medical Officer)
map-string-apc-chief-medical-officer = 医疗主管 APC
# APC (Clothing Boutique)
map-string-apc-clothing-boutique = 服装精品店 APC
# APC (CMO Office)
map-string-apc-cmo-office = 医疗主管办公室 APC
# APC (CMO's Office)
map-string-apc-cmo-s-office = 医疗主管办公室 APC
# APC (Conference)
map-string-apc-conference = 会议 APC
# APC (Courtroom)
map-string-apc-courtroom = 法庭 APC
# APC (Crematorium)
map-string-apc-crematorium = 火葬场 APC
# APC (Cryo Pod)
map-string-apc-cryo-pod = 冷冻舱 APC
# APC (Cryogenics)
map-string-apc-cryogenics = 低温科 APC
# APC (Cryosleep)
map-string-apc-cryosleep = 冷冻休眠 APC
# APC (Detective)
map-string-apc-detective = 侦探 APC
# APC (Detective's Office)
map-string-apc-detective-s-office = 侦探办公室 APC
# APC (Dining area)
map-string-apc-dining-area = 餐饮区 APC
# APC (Disposals)
map-string-apc-disposals = 垃圾处理 APC
# APC (Dock NE)
map-string-apc-dock-ne = 船坞东北 APC
# APC (Dock SE)
map-string-apc-dock-se = 船坞东南 APC
# APC (Dock SW)
map-string-apc-dock-sw = 船坞西南 APC
# APC (Docking arm)
map-string-apc-docking-arm = 对接臂 APC
# APC (Dorm A)
map-string-apc-dorm-a = 宿舍 A APC
# APC (Dorm B)
map-string-apc-dorm-b = 宿舍 B APC
# APC (Dorm Washrooms)
map-string-apc-dorm-washrooms = 宿舍盥洗室 APC
# APC (Dorms)
map-string-apc-dorms = 宿舍 APC
# APC (Dorms Hall)
map-string-apc-dorms-hall = 宿舍厅 APC
# APC (East artifact chamber)
map-string-apc-east-artifact-chamber = 东神器舱室 APC
# APC (East Science Maintenance)
map-string-apc-east-science-maintenance = 东科研维护通道 APC
# APC (East Security Maintenance)
map-string-apc-east-security-maintenance = 东安保维护通道 APC
# APC (East solars)
map-string-apc-east-solars = 东太阳能板 APC
# APC (Engi External Path)
map-string-apc-engi-external-path = 工程外部 Path APC
# APC (Engi Lockers)
map-string-apc-engi-lockers = 工程储物柜 APC
# APC (Engineering)
map-string-apc-engineering = 工程 APC
# APC (Engineering break)
map-string-apc-engineering-break = 工程休息 APC
# APC (Engineering Control Room)
map-string-apc-engineering-control-room = 工程控制室 APC
# APC (Engineering Desk)
map-string-apc-engineering-desk = 工程台席 APC
# APC (Engineering front)
map-string-apc-engineering-front = 工程前 APC
# APC (Engineering Locker Room)
map-string-apc-engineering-locker-room = 工程更衣室 APC
# APC (Engineering Maints)
map-string-apc-engineering-maints = 工程维护通道 APC
# APC Engineering Port
map-string-apc-engineering-port = APC 工程左舷
# APC Engineering Starboard
map-string-apc-engineering-starboard = APC 工程右舷
# APC (Engineering west hall)
map-string-apc-engineering-west-hall = 工程西厅 APC
# APC (Enginering locker)
map-string-apc-enginering-locker = Enginering 储物柜 APC
# APC (Escape pods)
map-string-apc-escape-pods = 逃生舱 APC
# APC (EVA Storage)
map-string-apc-eva-storage = EVA 储藏 APC
# APC (Evac)
map-string-apc-evac = 撤离 APC
# APC (Evac Checkpoint)
map-string-apc-evac-checkpoint = 撤离检查站 APC
# APC (Evac East)
map-string-apc-evac-east = 撤离东 APC
# APC (Evac Maintenance)
map-string-apc-evac-maintenance = 撤离维护通道 APC
# APC (Evac West)
map-string-apc-evac-west = 撤离西 APC
# APC (Freezer)
map-string-apc-freezer = 冷库 APC
# APC (Gangway airlock)
map-string-apc-gangway-airlock = Gangway 气闸门 APC
# APC (Genpop)
map-string-apc-genpop = 普通监区 APC
# APC (Grav/Anchor)
map-string-apc-grav-anchor = 重力锚定器 APC
# APC (Gravity)
map-string-apc-gravity = 重力 APC
# APC (Gravity Generator)
map-string-apc-gravity-generator = 重力发生器 APC
# APC (Hallway E)
map-string-apc-hallway-e = 走廊 E APC
# APC (Head of Security)
map-string-apc-head-of-security = 安保主管 APC
# APC (HOP)
map-string-apc-hop = 人事主管 APC
# APC (HOP Exterior)
map-string-apc-hop-exterior = 人事主管外围 APC
# APC (HOP Office)
map-string-apc-hop-office = 人事主管办公室 APC
# APC (HoP's Office)
map-string-apc-hop-s-office = 人事主管办公室 APC
# APC (HOP's Room)
map-string-apc-hop-s-room = 人事主管室 APC
# APC (HOS Office)
map-string-apc-hos-office = 安保主管办公室 APC
# APC (HoS's Office)
map-string-apc-hos-s-office = 安保主管办公室 APC
# APC (Hydroponics)
map-string-apc-hydroponics = 水培 APC
# APC (IAA)
map-string-apc-iaa = 内务调查员 APC
# APC (Interrogation)
map-string-apc-interrogation = 审讯室 APC
# APC (Janitor)
map-string-apc-janitor = 清洁工 APC
# APC (Janitor Closet)
map-string-apc-janitor-closet = 清洁工储物间 APC
# APC (Janitor's Closet)
map-string-apc-janitor-s-closet = 清洁工储物间 APC
# APC (Kitchen)
map-string-apc-kitchen = 厨房 APC
# APC (Law)
map-string-apc-law = 律政 APC
# APC (Law Office)
map-string-apc-law-office = 律政办公室 APC
# APC (Lawyer)
map-string-apc-lawyer = 律师 APC
# APC (Lawyer Hallway)
map-string-apc-lawyer-hallway = 律师走廊 APC
# APC (Library)
map-string-apc-library = 图书馆 APC
# APC (Lounge)
map-string-apc-lounge = 休息室 APC
# APC (Mail)
map-string-apc-mail = 邮件 APC
# APC (Mailroom)
map-string-apc-mailroom = 邮件室 APC
# APC (Main Greenway North)
map-string-apc-main-greenway-north = 主绿道北 APC
# APC (Main Greenway South)
map-string-apc-main-greenway-south = 主绿道南 APC
# APC (Main Hall West)
map-string-apc-main-hall-west = 主厅西 APC
# APC (Maintenance)
map-string-apc-maintenance = 维护通道 APC
# APC (Maints Bar)
map-string-apc-maints-bar = 维护通道酒吧 APC
# APC (Maints Central)
map-string-apc-maints-central = 维护通道中央 APC
# APC (Maints NE)
map-string-apc-maints-ne = 维护通道东北 APC
# APC (Maints North)
map-string-apc-maints-north = 维护通道北 APC
# APC (Maints NW)
map-string-apc-maints-nw = 维护通道西北 APC
# APC (Material storage)
map-string-apc-material-storage = 材料储藏 APC
# APC (Medbay)
map-string-apc-medbay = 医疗部 APC
# APC (Medbay Entrance)
map-string-apc-medbay-entrance = 医疗部入口 APC
# APC (Medbay Hall)
map-string-apc-medbay-hall = 医疗部厅 APC
# APC Medical
map-string-apc-medical = APC 医疗
# APC (Medical break)
map-string-apc-medical-break = 医疗休息 APC
# APC (Medical Breakroom)
map-string-apc-medical-breakroom = 医疗休息室 APC
# APC (Medical front)
map-string-apc-medical-front = 医疗前 APC
# APC (Medical hall)
map-string-apc-medical-hall = 医疗厅 APC
# APC (Medical locker)
map-string-apc-medical-locker = 医疗储物柜 APC
# APC (Medical Locker Room)
map-string-apc-medical-locker-room = 医疗更衣室 APC
# APC (Medical Lockers)
map-string-apc-medical-lockers = 医疗储物柜 APC
# APC (Medical Reception)
map-string-apc-medical-reception = 医疗接待处 APC
# APC (Medical Washrooms)
map-string-apc-medical-washrooms = 医疗盥洗室 APC
# APC (Meeting Room)
map-string-apc-meeting-room = 会议室 APC
# APC (Mess Hall)
map-string-apc-mess-hall = Mess 厅 APC
# APC Middle Hallway
map-string-apc-middle-hallway = APC 中部走廊
# APC (Monitoring)
map-string-apc-monitoring = 监控 APC
# APC (Morgue)
map-string-apc-morgue = 停尸房 APC
# APC (NCT Office)
map-string-apc-nct-office = NCT 办公室 APC
# APC (Newsroom)
map-string-apc-newsroom = 新闻编辑室 APC
# APC (North Airlock)
map-string-apc-north-airlock = 北气闸门 APC
# APC (North Bar Hallway)
map-string-apc-north-bar-hallway = 北酒吧走廊 APC
# APC (North Hall)
map-string-apc-north-hall = 北厅 APC
# APC North Hallway
map-string-apc-north-hallway = APC 北走廊
# APC (North Science Maintenance)
map-string-apc-north-science-maintenance = 北科研维护通道 APC
# APC North Service
map-string-apc-north-service = APC 北服务
# APC (North Solar)
map-string-apc-north-solar = 北太阳能 APC
# APC (North Solars)
map-string-apc-north-solars = 北太阳能板 APC
# APC (Northeast Hall)
map-string-apc-northeast-hall = 东北厅 APC
# APC (NTR office)
map-string-apc-ntr-office = NTR 办公室 APC
# APC (NTR's Office)
map-string-apc-ntr-s-office = NTR 办公室 APC
# APC (Old Hall)
map-string-apc-old-hall = 旧厅 APC
# APC (Paramedic)
map-string-apc-paramedic = 急救员 APC
# APC (Paramedic's Office)
map-string-apc-paramedic-s-office = 急救员办公室 APC
# APC (Particle Accelerator)
map-string-apc-particle-accelerator = 粒子加速器 APC
# APC (Psychologist office)
map-string-apc-psychologist-office = 心理师办公室 APC
# APC (Psychologist's Office)
map-string-apc-psychologist-s-office = 心理师办公室 APC
# APC (Psychology)
map-string-apc-psychology = 心理科 APC
# APC (Public hall, Bridge)
map-string-apc-public-hall-bridge = 公共厅舰桥 APC
# APC (Public hall, Cargo)
map-string-apc-public-hall-cargo = 公共厅货运 APC
# APC (Public hall, Chapel)
map-string-apc-public-hall-chapel = 公共厅教堂 APC
# APC (Public hall,Chemistry)
map-string-apc-public-hall-chemistry = 公共厅化学 APC
# APC (Public hall, Engineering)
map-string-apc-public-hall-engineering = 公共厅工程 APC
# APC (Public hall, Evac)
map-string-apc-public-hall-evac = 公共厅撤离 APC
# APC (Public hall, Science)
map-string-apc-public-hall-science = 公共厅科研 APC
# APC (Public hall, Service)
map-string-apc-public-hall-service = 公共厅服务 APC
# APC (Public hall, Tools)
map-string-apc-public-hall-tools = 公共厅工具 APC
# APC (QM Office)
map-string-apc-qm-office = 军需官办公室 APC
# APC (QM's Office)
map-string-apc-qm-s-office = 军需官办公室 APC
# APC (Quarter Master)
map-string-apc-quarter-master = 舷段 Master APC
# APC (RD Office)
map-string-apc-rd-office = 研究主管办公室 APC
# APC (RD's Office)
map-string-apc-rd-s-office = 研究主管办公室 APC
# APC (Reporter)
map-string-apc-reporter = 记者 APC
# APC (Research)
map-string-apc-research = 研究 APC
# APC (Research Director)
map-string-apc-research-director = 研究主管 APC
# APC (Robotics)
map-string-apc-robotics = 机器人学 APC
# APC (Robotics Surgery)
map-string-apc-robotics-surgery = 机器人学手术室 APC
# APC (Salvage)
map-string-apc-salvage = 打捞 APC
# APC (Salvage Arm)
map-string-apc-salvage-arm = 打捞臂 APC
# APC (Salvage Bay)
map-string-apc-salvage-bay = 打捞舱 APC
# APC (Salvage Maintenance)
map-string-apc-salvage-maintenance = 打捞维护通道 APC
# APC (Salvage / Mining)
map-string-apc-salvage-mining = 打捞采矿 APC
# APC (Sauna)
map-string-apc-sauna = 桑拿房 APC
# APC (Sci - R&D)
map-string-apc-sci-r-d = 科研 R D APC
# APC (Sci - RD Office)
map-string-apc-sci-rd-office = 科研研究主管办公室 APC
# APC (Sci - Robotics)
map-string-apc-sci-robotics = 科研机器人学 APC
# APC (Sci - Server)
map-string-apc-sci-server = 科研服务器 APC
# APC (Sci - XenoArch)
map-string-apc-sci-xenoarch = 科研异种考古学 APC
# APC (Science)
map-string-apc-science = 科研 APC
# APC (Science break)
map-string-apc-science-break = 科研休息 APC
# APC (Science Front)
map-string-apc-science-front = 科研前 APC
# APC (Science hall)
map-string-apc-science-hall = 科研厅 APC
# APC (Science Hallway East)
map-string-apc-science-hallway-east = 科研走廊东 APC
# APC (Science Hallway West)
map-string-apc-science-hallway-west = 科研走廊西 APC
# APC (Science Lobby)
map-string-apc-science-lobby = 科研大厅 APC
# APC (Science locker)
map-string-apc-science-locker = 科研储物柜 APC
# APC (Science Locker Room)
map-string-apc-science-locker-room = 科研更衣室 APC
# APC (Science Lockers)
map-string-apc-science-lockers = 科研储物柜 APC
# APC (Sec - Brig)
map-string-apc-sec-brig = 安保禁闭室 APC
# APC (Sec - Detective)
map-string-apc-sec-detective = 安保侦探 APC
# APC (Sec - East)
map-string-apc-sec-east = 安保东 APC
# APC (Sec - Hallway West)
map-string-apc-sec-hallway-west = 安保走廊西 APC
# APC (Sec - HOS)
map-string-apc-sec-hos = 安保安保主管 APC
# APC (Sec - Warden)
map-string-apc-sec-warden = 安保典狱长 APC
# APC (Security)
map-string-apc-security = 安保 APC
# APC (Security break)
map-string-apc-security-break = 安保休息 APC
# APC (Security Breakroom)
map-string-apc-security-breakroom = 安保休息室 APC
# APC (Security Docking Arm)
map-string-apc-security-docking-arm = 安保对接臂 APC
# APC (Security Front)
map-string-apc-security-front = 安保前 APC
# APC (Security hall)
map-string-apc-security-hall = 安保厅 APC
# APC (Security Hallway)
map-string-apc-security-hallway = 安保走廊 APC
# APC (Security locker)
map-string-apc-security-locker = 安保储物柜 APC
# APC (Security Locker Room)
map-string-apc-security-locker-room = 安保更衣室 APC
# APC (Security Lockers)
map-string-apc-security-lockers = 安保储物柜 APC
# APC (Security Reception)
map-string-apc-security-reception = 安保接待处 APC
# APC (Service Hall)
map-string-apc-service-hall = 服务厅 APC
# APC (Service Hallway)
map-string-apc-service-hallway = 服务走廊 APC
# APC (Shuttle Workshop)
map-string-apc-shuttle-workshop = 穿梭机工坊 APC
# APC (SMES Array)
map-string-apc-smes-array = SMES 阵列 APC
# APC (SMES bank)
map-string-apc-smes-bank = SMES 银行 APC
# APC (Solars NE)
map-string-apc-solars-ne = 太阳能板东北 APC
# APC (South Hall)
map-string-apc-south-hall = 南厅 APC
# APC (South Medical Maintenance)
map-string-apc-south-medical-maintenance = 南医疗维护通道 APC
# APC South Service
map-string-apc-south-service = APC 南服务
# APC (South Solar)
map-string-apc-south-solar = 南太阳能 APC
# APC (Southeast Hall)
map-string-apc-southeast-hall = 东南厅 APC
# APC (Spacebucks)
map-string-apc-spacebucks = 太空币 APC
# APC (Station Anchor)
map-string-apc-station-anchor = 空间站锚定器 APC
# APC (Storage Closet)
map-string-apc-storage-closet = 储藏储物间 APC
# APC (Supermatter)
map-string-apc-supermatter = 超物质 APC
# APC (Supply - Cargo Bay)
map-string-apc-supply-cargo-bay = 补给货运舱 APC
# APC (Surgery)
map-string-apc-surgery = 手术室 APC
# APC (Tech Vault)
map-string-apc-tech-vault = 技术金库 APC
# APC (Tech Vault Secure)
map-string-apc-tech-vault-secure = 技术金库保密 APC
# APC (Technical storage)
map-string-apc-technical-storage = 技术储藏 APC
# APC (Telecomms)
map-string-apc-telecomms = 通讯 APC
# APC (Telecomms Hi-Sec)
map-string-apc-telecomms-hi-sec = 通讯 Hi 安保 APC
# APC (Telecommunications)
map-string-apc-telecommunications = 通讯 APC
# APC (Test Chamber 2)
map-string-apc-test-chamber-2 = 测试舱室 2 APC
# APC (Test Chambers 1)
map-string-apc-test-chambers-1 = 测试舱室 1 APC
# APC (Theater)
map-string-apc-theater = 剧院 APC
# APC (Theatre)
map-string-apc-theatre = 剧院 APC
# APC (Thrusters E1)
map-string-apc-thrusters-e1 = 推进器 E1 APC
# APC (Thrusters E2)
map-string-apc-thrusters-e2 = 推进器 E2 APC
# APC (Thrusters S1)
map-string-apc-thrusters-s1 = 推进器 S1 APC
# APC (Thrusters S2)
map-string-apc-thrusters-s2 = 推进器 S2 APC
# APC (Thrusters W1)
map-string-apc-thrusters-w1 = 推进器 W1 APC
# APC (Thrusters W2)
map-string-apc-thrusters-w2 = 推进器 W2 APC
# APC (Tool Room)
map-string-apc-tool-room = 工具室 APC
# APC (Tools)
map-string-apc-tools = 工具 APC
# APC (Vault)
map-string-apc-vault = 金库 APC
# APC (Virology)
map-string-apc-virology = 病毒学 APC
# APC (Visitation)
map-string-apc-visitation = 探视 APC
# APC (Warden)
map-string-apc-warden = 典狱长 APC
# APC (Warden office)
map-string-apc-warden-office = 典狱长办公室 APC
# APC Washrooms
map-string-apc-washrooms = APC 盥洗室
# APC (West artifact chamber)
map-string-apc-west-artifact-chamber = 西神器舱室 APC
# APC (West Hall)
map-string-apc-west-hall = 西厅 APC
# APC (West Medical Maintenance)
map-string-apc-west-medical-maintenance = 西医疗维护通道 APC
# APC (West Security Maintenance)
map-string-apc-west-security-maintenance = 西安保维护通道 APC
# APC (West solars)
map-string-apc-west-solars = 西太阳能板 APC
# APC (Wing Connection E)
map-string-apc-wing-connection-e = 区连接段 E APC
# APC (Wing Connection W)
map-string-apc-wing-connection-w = 区连接段 W APC
# APC (Xenoarchaeology)
map-string-apc-xenoarchaeology = 异种考古学 APC
# APC (Xenobio)
map-string-apc-xenobio = 异种生物学 APC
# Arboretum
map-string-arboretum = 植物园
# Arcade Air Alarm
map-string-arcade-air-alarm = 街机厅空气警报器
# Arcade APC
map-string-arcade-apc = 街机厅 APC
# arena blue starting area
map-string-arena-blue-starting-area = 竞技场蓝出发区
# arena closet
map-string-arena-closet = 竞技场储物间
# arena east
map-string-arena-east = 竞技场东
# arena north
map-string-arena-north = 竞技场北
# arena north west
map-string-arena-north-west = 竞技场西北
# arena red starting area
map-string-arena-red-starting-area = 竞技场红出发区
# arena south
map-string-arena-south = 竞技场南
# arena south hallway
map-string-arena-south-hallway = 竞技场南走廊
# arena west
map-string-arena-west = 竞技场西
# Armory air alarm
map-string-armory-air-alarm = 军械库空气警报器
# Armory APC
map-string-armory-apc = 军械库 APC
# armory area air alarm
map-string-armory-area-air-alarm = 军械库区空气警报器
# Armory Blue
map-string-armory-blue = 军械库蓝
# armory corridor
map-string-armory-corridor = 军械库走廊
# Armory Entrance
map-string-armory-entrance = 军械库入口
# Armory Front
map-string-armory-front = 军械库前
# Armory Hallway
map-string-armory-hallway = 军械库走廊
# Armory (N)
map-string-armory-n = N 军械库
# Armory North
map-string-armory-north = 军械库北
# Armory Red
map-string-armory-red = 军械库红
# Armory (S)
map-string-armory-s = S 军械库
# Armory South
map-string-armory-south = 军械库南
# Armory Vault
map-string-armory-vault = 军械库金库
# Armoury - Front
map-string-armoury-front = 军械库前
# Armoury - LMG
map-string-armoury-lmg = 军械库轻机枪
# Armoury - Main
map-string-armoury-main = 军械库主
# arrival arm east
map-string-arrival-arm-east = 到站臂东
# arrival arm west
map-string-arrival-arm-west = 到站臂西
# Arrival Engineering Closet
map-string-arrival-engineering-closet = 到站工程储物间
# arrival north dock
map-string-arrival-north-dock = 到站北船坞
# arrival south dock
map-string-arrival-south-dock = 到站南船坞
# Arrivals air alarm
map-string-arrivals-air-alarm = 到站厅空气警报器
# Arrivals Airlock Ext
map-string-arrivals-airlock-ext = 到站厅气闸门外部
# Arrivals APC
map-string-arrivals-apc = 到站厅 APC
# Arrivals by EVA Storage
map-string-arrivals-by-eva-storage = 到站厅 EVA 储藏
# Arrivals Cafe
map-string-arrivals-cafe = 到站厅咖啡厅
# Arrivals Cafe Air Alarm
map-string-arrivals-cafe-air-alarm = 到站厅咖啡厅空气警报器
# Arrivals Checkpoint Air Alarm
map-string-arrivals-checkpoint-air-alarm = 到站厅检查站空气警报器
# Arrivals Checkpoint APC
map-string-arrivals-checkpoint-apc = 到站厅检查站 APC
# Arrivals Checkpoint Exterior
map-string-arrivals-checkpoint-exterior = 到站厅检查站外围
# Arrivals Command Hub APC
map-string-arrivals-command-hub-apc = 到站厅指挥部枢纽 APC
# Arrivals Cryo
map-string-arrivals-cryo = 到站厅冷冻
# Arrivals Dock A-
map-string-arrivals-dock-a = 到站厅船坞 A
# Arrivals Dock B-
map-string-arrivals-dock-b = 到站厅船坞 B
# arrivals dock east
map-string-arrivals-dock-east = 到站厅船坞东
# arrivals dock west
map-string-arrivals-dock-west = 到站厅船坞西
# Arrivals Docks
map-string-arrivals-docks = 到站厅船坞
# Arrivals E
map-string-arrivals-e = 到站厅 E
# Arrivals East APC
map-string-arrivals-east-apc = 到站厅东 APC
# Arrivals east dock
map-string-arrivals-east-dock = 到站厅东船坞
# Arrivals East Hall
map-string-arrivals-east-hall = 到站厅东厅
# Arrivals Engi Storage APC
map-string-arrivals-engi-storage-apc = 到站厅工程储藏 APC
# Arrivals Entrance
map-string-arrivals-entrance = 到站厅入口
# arrivals exit
map-string-arrivals-exit = 到站厅出口
# Arrivals fire alarm
map-string-arrivals-fire-alarm = 到站厅火警警报器
# arrivals hallway air alarm
map-string-arrivals-hallway-air-alarm = 到站厅走廊空气警报器
# Arrivals Hallway E-
map-string-arrivals-hallway-e = 到站厅走廊 E
# Arrivals Hallway W-
map-string-arrivals-hallway-w = 到站厅走廊 W
# Arrivals Lounge East
map-string-arrivals-lounge-east = 到站厅休息室东
# Arrivals Lounge West
map-string-arrivals-lounge-west = 到站厅休息室西
# Arrivals Middle
map-string-arrivals-middle = 到站厅中部
# Arrivals N
map-string-arrivals-n = 到站厅 N
# Arrivals North APC
map-string-arrivals-north-apc = 到站厅北 APC
# Arrivals North East
map-string-arrivals-north-east = 到站厅东北
# Arrivals North-West
map-string-arrivals-north-west = 到站厅西北
# arrivals northwest
map-string-arrivals-northwest = 到站厅西北
# Arrivals Offices
map-string-arrivals-offices = 到站厅办公区
# Arrivals Port
map-string-arrivals-port = 到站厅左舷
# Arrivals Port Bow
map-string-arrivals-port-bow = 到站厅左舷艏
# Arrivals S
map-string-arrivals-s = 到站厅 S
# Arrivals Sec Checkpoint
map-string-arrivals-sec-checkpoint = 到站厅安保检查站
# Arrivals Sec Office
map-string-arrivals-sec-office = 到站厅安保办公室
# Arrivals Security
map-string-arrivals-security = 到站厅安保
# Arrivals security checkpoint
map-string-arrivals-security-checkpoint = 到站厅安保检查站
# Arrivals shuttle dock
map-string-arrivals-shuttle-dock = 到站厅穿梭机船坞
# Arrivals Smoke Lounge APC
map-string-arrivals-smoke-lounge-apc = 到站厅吸烟休息室 APC
# Arrivals Smoke Room
map-string-arrivals-smoke-room = 到站厅吸烟室
# Arrivals South APC
map-string-arrivals-south-apc = 到站厅南 APC
# Arrivals South East
map-string-arrivals-south-east = 到站厅东南
# Arrivals South East APC
map-string-arrivals-south-east-apc = 到站厅东南 APC
# Arrivals South-West
map-string-arrivals-south-west = 到站厅西南
# Arrivals SouthEast
map-string-arrivals-southeast = 到站厅东南
# Arrivals Southwest
map-string-arrivals-southwest = 到站厅西南
# Arrivals Spare Dock
map-string-arrivals-spare-dock = 到站厅备用船坞
# Arrivals Starboard
map-string-arrivals-starboard = 到站厅右舷
# Arrivals Substation
map-string-arrivals-substation = 到站厅变电站
# Arrivals W
map-string-arrivals-w = 到站厅 W
# Arrivals West APC
map-string-arrivals-west-apc = 到站厅西 APC
# Arrivals west dock
map-string-arrivals-west-dock = 到站厅西船坞
# Arrivals West Hall
map-string-arrivals-west-hall = 到站厅西厅
# Arti Canisters
map-string-arti-canisters = 神器气罐
# Arti Lab
map-string-arti-lab = 神器实验室
# Arti One
map-string-arti-one = 神器一
# Arti Two
map-string-arti-two = 神器二
# Artifact
map-string-artifact = 神器
# Artifact Atmospherics
map-string-artifact-atmospherics = 神器大气
# Artifact Chamber
map-string-artifact-chamber = 神器舱室
# Artifact Chamber Air Alarm
map-string-artifact-chamber-air-alarm = 神器舱室空气警报器
# Artifact Chamber Airlock
map-string-artifact-chamber-airlock = 神器舱室气闸门
# Artifact Chamber Gasworks North
map-string-artifact-chamber-gasworks-north = 神器舱室气体处理北
# Artifact Chamber Gasworks South
map-string-artifact-chamber-gasworks-south = 神器舱室气体处理南
# Artifact Chamber North Air Alarm
map-string-artifact-chamber-north-air-alarm = 神器舱室北空气警报器
# Artifact Chamber One
map-string-artifact-chamber-one = 神器舱室一
# Artifact Chamber South Air Alarm
map-string-artifact-chamber-south-air-alarm = 神器舱室南空气警报器
# Artifact Chamber Two
map-string-artifact-chamber-two = 神器舱室二
# Artifact Console Room
map-string-artifact-console-room = 神器控制台室
# artifact delivery area
map-string-artifact-delivery-area = 神器投递区
# Artifact East
map-string-artifact-east = 神器东
# Artifact Hallway APC
map-string-artifact-hallway-apc = 神器走廊 APC
# Artifact Lab Air Alarm
map-string-artifact-lab-air-alarm = 神器实验室空气警报器
# Artifact Lab APC
map-string-artifact-lab-apc = 神器实验室 APC
# Artifact Lab Chamber
map-string-artifact-lab-chamber = 神器实验室舱室
# Artifact Lab Entrance Air Alarm
map-string-artifact-lab-entrance-air-alarm = 神器实验室入口空气警报器
# Artifact Lab North Air Alarm
map-string-artifact-lab-north-air-alarm = 神器实验室北空气警报器
# Artifact Lab South Air Alarm
map-string-artifact-lab-south-air-alarm = 神器实验室南空气警报器
# Artifact North APC
map-string-artifact-north-apc = 神器北 APC
# artifact reseach east
map-string-artifact-reseach-east = 神器研究东
# Artifact Research Lab
map-string-artifact-research-lab = 神器研究实验室
# Artifact room south
map-string-artifact-room-south = 神器室南
# Artifact South
map-string-artifact-south = 神器南
# Artifact South APC
map-string-artifact-south-apc = 神器南 APC
# Artifact Test Lab
map-string-artifact-test-lab = 神器测试实验室
# Artifact Testing
map-string-artifact-testing = 神器测试
# Artifact Testing APC
map-string-artifact-testing-apc = 神器测试 APC
# Artifact - West
map-string-artifact-west = 神器西
# artifacts
map-string-artifacts = 神器
# Artifacts (N)
map-string-artifacts-n = N 神器
# Artifacts (S)
map-string-artifacts-s = S 神器
# Asteroid bridge east
map-string-asteroid-bridge-east = 小行星舰桥东
# Asteroid bridge west
map-string-asteroid-bridge-west = 小行星舰桥西
# asteroid center north
map-string-asteroid-center-north = 小行星中心北
# asteroid center south
map-string-asteroid-center-south = 小行星中心南
# asteroid east
map-string-asteroid-east = 小行星东
# Asteroid south bridge
map-string-asteroid-south-bridge = 小行星南舰桥
# asteroid west
map-string-asteroid-west = 小行星西
# Atmo North
map-string-atmo-north = 大气北
# Atmos (Air)
map-string-atmos-air = 空气大气
# Atmos Airlock Ext
map-string-atmos-airlock-ext = 大气气闸门外部
# Atmos Airlocks
map-string-atmos-airlocks = 大气气闸门
# Atmos APC
map-string-atmos-apc = 大气 APC
# Atmos (Burn Chamber)
map-string-atmos-burn-chamber = 烧伤舱室大气
# atmos burn chamber air alarm
map-string-atmos-burn-chamber-air-alarm = 大气烧伤舱室空气警报器
# Atmos Canister Storage
map-string-atmos-canister-storage = 大气气罐储藏
# Atmos Canisters
map-string-atmos-canisters = 大气气罐
# Atmos Desk APC
map-string-atmos-desk-apc = 大气台席 APC
# Atmos E
map-string-atmos-e = 大气 E
# atmos east
map-string-atmos-east = 大气东
# Atmos entrance
map-string-atmos-entrance = 大气入口
# Atmos External
map-string-atmos-external = 大气外部
# Atmos Foyeur
map-string-atmos-foyeur = 大气门厅
# Atmos Front
map-string-atmos-front = 大气前
# Atmos front desk
map-string-atmos-front-desk = 大气前台
# Atmos Gear Room
map-string-atmos-gear-room = 大气装备室
# atmos hall
map-string-atmos-hall = 大气厅
# atmos hallway
map-string-atmos-hallway = 大气走廊
# Atmos Lobby
map-string-atmos-lobby = 大气大厅
# Atmos Lobby APC
map-string-atmos-lobby-apc = 大气大厅 APC
# Atmos Lockeroom
map-string-atmos-lockeroom = 大气更衣室
# Atmos Lockerroom APC
map-string-atmos-lockerroom-apc = 大气 Lockerroom APC
# Atmos lockers/engi hallway
map-string-atmos-lockers-engi-hallway = 大气储物柜工程走廊
# Atmos Main Hall
map-string-atmos-main-hall = 大气主厅
# Atmos Middle
map-string-atmos-middle = 大气中部
# Atmos - Miners
map-string-atmos-miners = 大气矿工
# Atmos N
map-string-atmos-n = 大气 N
# Atmos North APC
map-string-atmos-north-apc = 大气北 APC
# Atmos Northeast
map-string-atmos-northeast = 大气东北
# atmos northwest
map-string-atmos-northwest = 大气西北
# Atmos Primary Airlock
map-string-atmos-primary-airlock = 大气主气闸门
# Atmos S
map-string-atmos-s = 大气 S
# Atmos South
map-string-atmos-south = 大气南
# Atmos South APC
map-string-atmos-south-apc = 大气南 APC
# Atmos Storage
map-string-atmos-storage = 大气储藏
# Atmos Storage APC
map-string-atmos-storage-apc = 大气储藏 APC
# atmos substation
map-string-atmos-substation = 大气变电站
# Atmos Tank Room
map-string-atmos-tank-room = 大气储罐室
# Atmos Tanks North
map-string-atmos-tanks-north = 大气储罐北
# Atmos Tanks South
map-string-atmos-tanks-south = 大气储罐南
# atmos TEG
map-string-atmos-teg = 大气 TEG
# Atmos W
map-string-atmos-w = 大气 W
# atmos west
map-string-atmos-west = 大气西
# Atmos (West Gas Storage)
map-string-atmos-west-gas-storage = 西气体储藏大气
# Atmospherics air alarm
map-string-atmospherics-air-alarm = 大气空气警报器
# Atmospherics APC
map-string-atmospherics-apc = 大气 APC
# Atmospherics Burn Chamber
map-string-atmospherics-burn-chamber = 大气烧伤舱室
# Atmospherics Burn Chamber Air Alarm
map-string-atmospherics-burn-chamber-air-alarm = 大气烧伤舱室空气警报器
# atmospherics canister room
map-string-atmospherics-canister-room = 大气气罐室
# Atmospherics Central APC
map-string-atmospherics-central-apc = 大气中央 APC
# Atmospherics East
map-string-atmospherics-east = 大气东
# Atmospherics Entrance
map-string-atmospherics-entrance = 大气入口
# Atmospherics Entrance Air Alarm
map-string-atmospherics-entrance-air-alarm = 大气入口空气警报器
# Atmospherics Entrance APC
map-string-atmospherics-entrance-apc = 大气入口 APC
# Atmospherics Equipment
map-string-atmospherics-equipment = 大气装备
# Atmospherics Fire Alarm
map-string-atmospherics-fire-alarm = 大气火警警报器
# Atmospherics Front
map-string-atmospherics-front = 大气前
# Atmospherics Front Desk
map-string-atmospherics-front-desk = 大气前台
# Atmospherics Lockers
map-string-atmospherics-lockers = 大气储物柜
# Atmospherics Main
map-string-atmospherics-main = 大气主
# Atmospherics North APC
map-string-atmospherics-north-apc = 大气北 APC
# Atmospherics NW
map-string-atmospherics-nw = 大气西北
# Atmospherics SE
map-string-atmospherics-se = 大气东南
# Atmospherics South APC
map-string-atmospherics-south-apc = 大气南 APC
# Atmospherics South East
map-string-atmospherics-south-east = 大气东南
# Atmospherics South West
map-string-atmospherics-south-west = 大气西南
# Atmospherics Substation
map-string-atmospherics-substation = 大气变电站
# Atmospherics SW
map-string-atmospherics-sw = 大气西南
# Atmospherics West
map-string-atmospherics-west = 大气西
# Atrium A
map-string-atrium-a = 中庭 A
# Atrium C
map-string-atrium-c = 中庭 C
# Atrium NE
map-string-atrium-ne = 中庭东北
# Atrium NW
map-string-atrium-nw = 中庭西北
# Atrium SE
map-string-atrium-se = 中庭东南
# Atrium SW
map-string-atrium-sw = 中庭西南
# Aux Hall A
map-string-aux-hall-a = 辅助厅 A
# Aux Hall B
map-string-aux-hall-b = 辅助厅 B
# Aux Hall C
map-string-aux-hall-c = 辅助厅 C
# B01 - AI Core West
map-string-b01-ai-core-west = B01 AI 核心西
# B02 - AI Core East
map-string-b02-ai-core-east = B02 AI 核心东
# B03 - AI Upload
map-string-b03-ai-upload = B03 AI 上传室
# B04 - AI Entrance
map-string-b04-ai-entrance = B04 AI 入口
# B05 - Camera Servers
map-string-b05-camera-servers = B05 摄像头服务器
# Back Entrance
map-string-back-entrance = 后入口
# Backstage
map-string-backstage = 后台
# backstage exit
map-string-backstage-exit = 后台出口
# backstage north
map-string-backstage-north = 后台北
# backstage south
map-string-backstage-south = 后台南
# Backup Evac North
map-string-backup-evac-north = 备用撤离北
# Backup Evac South
map-string-backup-evac-south = 备用撤离南
# Bagel Central Eva Airlock
map-string-bagel-central-eva-airlock = 贝果中央 EVA 气闸门
# Bagel Central Eva Closet
map-string-bagel-central-eva-closet = 贝果中央 EVA 储物间
# Bagel Space
map-string-bagel-space = 贝果太空
# Bar Air Alarm
map-string-bar-air-alarm = 酒吧空气警报器
# Bar APC
map-string-bar-apc = 酒吧 APC
# Bar - Bartender's Room
map-string-bar-bartender-s-room = 酒吧酒保室
# Bar/Chemistry Substation
map-string-bar-chemistry-substation = 酒吧化学变电站
# Bar Counter
map-string-bar-counter = 酒吧柜台
# Bar - East
map-string-bar-east = 酒吧东
# Bar East Hallway
map-string-bar-east-hallway = 酒吧东走廊
# Bar Exterior
map-string-bar-exterior = 酒吧外围
# bar external air alarm
map-string-bar-external-air-alarm = 酒吧外部空气警报器
# Bar fire alarm
map-string-bar-fire-alarm = 酒吧火警警报器
# Bar Front
map-string-bar-front = 酒吧前
# bar internal air alarm
map-string-bar-internal-air-alarm = 酒吧内部空气警报器
# Bar / Kitchen
map-string-bar-kitchen = 酒吧厨房
# Bar Left
map-string-bar-left = 酒吧左
# Bar Maint Door
map-string-bar-maint-door = 酒吧维护通道门
# Bar - Musician's Stage
map-string-bar-musician-s-stage = 酒吧乐师舞台
# Bar North
map-string-bar-north = 酒吧北
# Bar North Entrance
map-string-bar-north-entrance = 酒吧北入口
# Bar North Hallway
map-string-bar-north-hallway = 酒吧北走廊
# Bar North Substation Closet
map-string-bar-north-substation-closet = 酒吧北变电站储物间
# Bar Northwest
map-string-bar-northwest = 酒吧西北
# Bar Outdoor
map-string-bar-outdoor = 酒吧户外
# Bar Right
map-string-bar-right = 酒吧右
# bar seating area
map-string-bar-seating-area = 酒吧座位区区
# Bar South
map-string-bar-south = 酒吧南
# Bar South Entrance
map-string-bar-south-entrance = 酒吧南入口
# Bar Southeast
map-string-bar-southeast = 酒吧东南
# Bar Southwest
map-string-bar-southwest = 酒吧西南
# Bar Stage
map-string-bar-stage = 酒吧舞台
# bar substation
map-string-bar-substation = 酒吧变电站
# Bar - West
map-string-bar-west = 酒吧西
# Bar West Hallway
map-string-bar-west-hallway = 酒吧西走廊
# Bartender APC
map-string-bartender-apc = 酒保 APC
# Bartender backroom
map-string-bartender-backroom = 酒保后间
# Bartender's Lounge
map-string-bartender-s-lounge = 酒保休息室
# Bartender's Room APC
map-string-bartender-s-room-apc = 酒保室 APC
# basketball court air alarm
map-string-basketball-court-air-alarm = 篮球法庭空气警报器
# basketball court north east
map-string-basketball-court-north-east = 篮球法庭东北
# basketball court north west
map-string-basketball-court-north-west = 篮球法庭西北
# basketball court south west
map-string-basketball-court-south-west = 篮球法庭西南
# Bathroom
map-string-bathroom = 盥洗室
# bathroom air alarm
map-string-bathroom-air-alarm = 盥洗室空气警报器
# Bathroom APC
map-string-bathroom-apc = 盥洗室 APC
# Bathroom Corridor
map-string-bathroom-corridor = 盥洗室走廊
# Bay [East]
map-string-bay-east = 舱东
# Bay [West]
map-string-bay-west = 舱西
# bear outpost APC
map-string-bear-outpost-apc = bear 前哨 APC
# Bedroom
map-string-bedroom = 卧室
# Birdies
map-string-birdies = 鸟儿
# Blue Armory Air Alarm
map-string-blue-armory-air-alarm = 蓝军械库空气警报器
# Blue dorm
map-string-blue-dorm = 蓝宿舍
# Blueshield
map-string-blueshield = 蓝盾
# blueshield officer
map-string-blueshield-officer = 蓝盾干员
# Board Storage
map-string-board-storage = 主板储藏
# Boardroom
map-string-boardroom = 会议室
# Boardroom Air Alarm
map-string-boardroom-air-alarm = 会议室空气警报器
# Boardroom APC
map-string-boardroom-apc = 会议室 APC
# Boardroom Fire Alarm
map-string-boardroom-fire-alarm = 会议室火警警报器
# Bomb Training Area
map-string-bomb-training-area = 炸弹训练区
# Botanist's Lockers
map-string-botanist-s-lockers = 植物学家储物柜
# Botany Air Alarm
map-string-botany-air-alarm = 植物学空气警报器
# Botany APC
map-string-botany-apc = 植物学 APC
# Botany Backroom Air Alarm
map-string-botany-backroom-air-alarm = 植物学后间空气警报器
# Botany Fire Alarm
map-string-botany-fire-alarm = 植物学火警警报器
# Botany Front
map-string-botany-front = 植物学前
# Botany Locker Room
map-string-botany-locker-room = 植物学更衣室
# Botany Lockers
map-string-botany-lockers = 植物学储物柜
# Botany north
map-string-botany-north = 植物学北
# Botany North APC
map-string-botany-north-apc = 植物学北 APC
# Botany Outdoor
map-string-botany-outdoor = 植物学户外
# Botany South
map-string-botany-south = 植物学南
# Bow Thruster APC
map-string-bow-thruster-apc = 艏 Thruster APC
# Boxer's Dorms
map-string-boxer-s-dorms = 拳手宿舍
# Boxing
map-string-boxing = 拳击
# Boxing air alarm
map-string-boxing-air-alarm = 拳击空气警报器
# Boxing APC
map-string-boxing-apc = 拳击 APC
# Boxing East
map-string-boxing-east = 拳击东
# Boxing Ring Air Alarm
map-string-boxing-ring-air-alarm = 拳击环空气警报器
# Boxing Ring North
map-string-boxing-ring-north = 拳击环北
# Boxing Ring South
map-string-boxing-ring-south = 拳击环南
# Boxing West
map-string-boxing-west = 拳击西
# break area
map-string-break-area = 休息区
# Break Room - North
map-string-break-room-north = 休息室北
# Break Room - Scrubbers
map-string-break-room-scrubbers = 休息室洗涤器
# Break Room - South
map-string-break-room-south = 休息室南
# Breakroom Air Alarm
map-string-breakroom-air-alarm = 休息室空气警报器
# Breakroom APC
map-string-breakroom-apc = 休息室 APC
# bridge a
map-string-bridge-a = 舰桥 A
# Bridge AI Access
map-string-bridge-ai-access = 舰桥 AI 通路
# Bridge Air Alarm
map-string-bridge-air-alarm = 舰桥空气警报器
# Bridge APC
map-string-bridge-apc = 舰桥 APC
# bridge area air alarm
map-string-bridge-area-air-alarm = 舰桥区空气警报器
# bridge b
map-string-bridge-b = 舰桥 B
# Bridge Bar
map-string-bridge-bar = 舰桥酒吧
# bridge c
map-string-bridge-c = 舰桥 C
# Bridge [Captain's office]
map-string-bridge-captain-s-office = 舰桥舰长办公室
# Bridge control
map-string-bridge-control = 舰桥控制
# bridge corridor west
map-string-bridge-corridor-west = 舰桥走廊西
# bridge deck
map-string-bridge-deck = 舰桥甲板
# Bridge Deterance SMES
map-string-bridge-deterance-smes = 舰桥 Deterance SMES
# Bridge (E)
map-string-bridge-e = E 舰桥
# Bridge East APC
map-string-bridge-east-apc = 舰桥东 APC
# bridge east hall end
map-string-bridge-east-hall-end = 舰桥东厅末端
# bridge east hallway
map-string-bridge-east-hallway = 舰桥东走廊
# Bridge Entrance E
map-string-bridge-entrance-e = 舰桥入口 E
# Bridge Entry
map-string-bridge-entry = 舰桥入口
# Bridge Entryway
map-string-bridge-entryway = 舰桥入口
# Bridge Evac
map-string-bridge-evac = 舰桥撤离
# Bridge Exterior Access
map-string-bridge-exterior-access = 舰桥外围通路
# Bridge Exterior East
map-string-bridge-exterior-east = 舰桥外围东
# Bridge Exterior North
map-string-bridge-exterior-north = 舰桥外围北
# Bridge Exterior South
map-string-bridge-exterior-south = 舰桥外围南
# Bridge Exterior West
map-string-bridge-exterior-west = 舰桥外围西
# Bridge fire alarm
map-string-bridge-fire-alarm = 舰桥火警警报器
# Bridge forward
map-string-bridge-forward = 舰桥前
# bridge front
map-string-bridge-front = 舰桥前
# Bridge front hall
map-string-bridge-front-hall = 舰桥前厅
# Bridge [General]
map-string-bridge-general = 舰桥综合
# Bridge hall
map-string-bridge-hall = 舰桥厅
# Bridge hall west
map-string-bridge-hall-west = 舰桥厅西
# Bridge Hallway air alarm
map-string-bridge-hallway-air-alarm = 舰桥走廊空气警报器
# Bridge hallway east
map-string-bridge-hallway-east = 舰桥走廊东
# Bridge Hallway fire alarm
map-string-bridge-hallway-fire-alarm = 舰桥走廊火警警报器
# Bridge Hallway West
map-string-bridge-hallway-west = 舰桥走廊西
# Bridge [HoP's office]
map-string-bridge-hop-s-office = 舰桥人事主管办公室
# Bridge Interior North
map-string-bridge-interior-north = 舰桥内部北
# Bridge Interior South
map-string-bridge-interior-south = 舰桥内部南
# Bridge Main
map-string-bridge-main = 舰桥主
# Bridge North APC
map-string-bridge-north-apc = 舰桥北 APC
# Bridge Offices
map-string-bridge-offices = 舰桥办公区
# bridge pit east
map-string-bridge-pit-east = 舰桥坑东
# bridge pit west
map-string-bridge-pit-west = 舰桥坑西
# Bridge Power Closet
map-string-bridge-power-closet = 舰桥电力储物间
# Bridge Reception
map-string-bridge-reception = 舰桥接待处
# Bridge Redress
map-string-bridge-redress = 舰桥更衣
# bridge smes
map-string-bridge-smes = 舰桥 SMES
# Bridge South APC
map-string-bridge-south-apc = 舰桥南 APC
# Bridge [Storage]
map-string-bridge-storage = 舰桥储藏
# Bridge Substation
map-string-bridge-substation = 舰桥变电站
# Bridge Triage
map-string-bridge-triage = 舰桥分诊
# Bridge (W)
map-string-bridge-w = W 舰桥
# bridge west hallway
map-string-bridge-west-hallway = 舰桥西走廊
# Briefing
map-string-briefing = 简报
# Brig Air Alarm
map-string-brig-air-alarm = 禁闭室空气警报器
# Brig APC
map-string-brig-apc = 禁闭室 APC
# Brig Cell Auros
map-string-brig-cell-auros = 禁闭室牢房 Auros
# Brig Cell Boron
map-string-brig-cell-boron = 禁闭室牢房 Boron
# Brig Cell Chiron
map-string-brig-cell-chiron = 禁闭室牢房 Chiron
# Brig East APC
map-string-brig-east-apc = 禁闭室东 APC
# Brig EVA
map-string-brig-eva = 禁闭室 EVA
# Brig IPC APC
map-string-brig-ipc-apc = 禁闭室 IPC APC
# brig kitchen
map-string-brig-kitchen = 禁闭室厨房
# brig lobby
map-string-brig-lobby = 禁闭室大厅
# Brig Med Air Alarm
map-string-brig-med-air-alarm = 禁闭室医疗空气警报器
# Brig Med APC
map-string-brig-med-apc = 禁闭室医疗 APC
# Brig Medical
map-string-brig-medical = 禁闭室医疗
# brig medical air alarm
map-string-brig-medical-air-alarm = 禁闭室医疗空气警报器
# brig processing
map-string-brig-processing = 禁闭室处理
# brig visitation
map-string-brig-visitation = 禁闭室探视
# Brig West APC
map-string-brig-west-apc = 禁闭室西 APC
# Brigmed Air Alarm
map-string-brigmed-air-alarm = 狱医室空气警报器
# BrigMed APC
map-string-brigmed-apc = 狱医室 APC
# Brigmed / Detective
map-string-brigmed-detective = 狱医室侦探
# Brigmedic air alarm
map-string-brigmedic-air-alarm = 狱医空气警报器
# Brigmedical
map-string-brigmedical = 狱医室
# Brigmedical Bay
map-string-brigmedical-bay = 狱医室舱
# Brigmedical Morgue
map-string-brigmedical-morgue = 狱医室停尸房
# broken fire alarm
map-string-broken-fire-alarm = broken 火警警报器
# BSO Barracks
map-string-bso-barracks = BSO 兵营
# BSO Office
map-string-bso-office = BSO 办公室
# BSO's Area
map-string-bso-s-area = BSO 区
# BSO's Bedroom
map-string-bso-s-bedroom = BSO 卧室
# BSO's Office
map-string-bso-s-office = BSO 办公室
# BSO's Room
map-string-bso-s-room = BSO 室
# Burn
map-string-burn = 烧伤
# Burn chamber
map-string-burn-chamber = 烧伤舱室
# Burn Chamber air alarm
map-string-burn-chamber-air-alarm = 烧伤舱室空气警报器
# Burn Chambers
map-string-burn-chambers = 烧伤舱室
# Burn Chambers Air Alarm
map-string-burn-chambers-air-alarm = 烧伤舱室空气警报器
# C01 - Bridge Entrance
map-string-c01-bridge-entrance = C01 舰桥入口
# C02 - Conference Room
map-string-c02-conference-room = C02 会议室
# C03 - Bridge
map-string-c03-bridge = C03 舰桥
# C04 - Bridge Dock East
map-string-c04-bridge-dock-east = C04 舰桥船坞东
# C05 - Bridge Dock West
map-string-c05-bridge-dock-west = C05 舰桥船坞西
# C06 - Captain's Office
map-string-c06-captain-s-office = C06 舰长办公室
# C07 - Captain's Room
map-string-c07-captain-s-room = C07 舰长室
# C08 - HoS's Office
map-string-c08-hos-s-office = C08 安保主管办公室
# C09 - HoS's Room
map-string-c09-hos-s-room = C09 安保主管室
# C10 - HoP's Office
map-string-c10-hop-s-office = C10 人事主管办公室
# C11 - HoP's Room
map-string-c11-hop-s-room = C11 人事主管室
# C12 - CE's Office
map-string-c12-ce-s-office = C12 工程主管办公室
# C13 - CE's Room
map-string-c13-ce-s-room = C13 工程主管室
# C14 - CMO's Office
map-string-c14-cmo-s-office = C14 医疗主管办公室
# C15 - CMO's Room
map-string-c15-cmo-s-room = C15 医疗主管室
# C16 - QM's Office
map-string-c16-qm-s-office = C16 军需官办公室
# C17 - QM's Room
map-string-c17-qm-s-room = C17 军需官室
# C18 - RD's Office
map-string-c18-rd-s-office = C18 研究主管办公室
# C19 - RD's Room
map-string-c19-rd-s-room = C19 研究主管室
# C20 - Vault
map-string-c20-vault = C20 金库
# Cafeteria
map-string-cafeteria = 食堂
# cafeteria air alarm
map-string-cafeteria-air-alarm = 食堂空气警报器
# cafeteria centre
map-string-cafeteria-centre = 食堂中心
# cafeteria east
map-string-cafeteria-east = 食堂东
# cafeteria east hallway
map-string-cafeteria-east-hallway = 食堂东走廊
# cafeteria line
map-string-cafeteria-line = 食堂通道
# cafeteria south
map-string-cafeteria-south = 食堂南
# cafeteria west
map-string-cafeteria-west = 食堂西
# cafeteria west hallway
map-string-cafeteria-west-hallway = 食堂西走廊
# camera room
map-string-camera-room = 摄像头室
# Camera Server Room
map-string-camera-server-room = 摄像头服务器机房
# Cameras
map-string-cameras = 摄像头
# Cameras APC
map-string-cameras-apc = 摄像头 APC
# Canister Storage Air Alarm
map-string-canister-storage-air-alarm = 气罐储藏空气警报器
# Canister Storage Fire Alarm
map-string-canister-storage-fire-alarm = 气罐储藏火警警报器
# Canisters
map-string-canisters = 气罐
# Captain
map-string-captain = 舰长
# Captain air alarm
map-string-captain-air-alarm = 舰长空气警报器
# Captain APC
map-string-captain-apc = 舰长 APC
# Captain Bathroom
map-string-captain-bathroom = 舰长盥洗室
# Captain Bedroom Air Alarm
map-string-captain-bedroom-air-alarm = 舰长卧室空气警报器
# Captain Office Air Alarm
map-string-captain-office-air-alarm = 舰长办公室空气警报器
# Captain Office APC
map-string-captain-office-apc = 舰长办公室 APC
# Captain's Address
map-string-captain-s-address = 舰长地址
# Captain's Balcony
map-string-captain-s-balcony = 舰长露台
# Captain's Bedroom APC
map-string-captain-s-bedroom-apc = 舰长卧室 APC
# Captain's Office APC
map-string-captain-s-office-apc = 舰长办公室 APC
# Captain's Office North
map-string-captain-s-office-north = 舰长办公室北
# Captain's Office South
map-string-captain-s-office-south = 舰长办公室南
# captain's quarters air alarm
map-string-captain-s-quarters-air-alarm = 舰长住舱空气警报器
# Captain's Quarters APC
map-string-captain-s-quarters-apc = 舰长住舱 APC
# Captains Room
map-string-captains-room = 舰长室
# Cargo Air Alarm
map-string-cargo-air-alarm = 货运空气警报器
# Cargo Airlock
map-string-cargo-airlock = 货运气闸门
# Cargo APC
map-string-cargo-apc = 货运 APC
# cargo/arrivals substation
map-string-cargo-arrivals-substation = 货运到站厅变电站
# cargo bay 1 a
map-string-cargo-bay-1-a = 货运舱 1 A
# cargo bay 1 air alarm
map-string-cargo-bay-1-air-alarm = 货运舱 1 空气警报器
# cargo bay 1 b
map-string-cargo-bay-1-b = 货运舱 1 B
# Cargo Bay air alarm
map-string-cargo-bay-air-alarm = 货运舱空气警报器
# Cargo Bay APC
map-string-cargo-bay-apc = 货运舱 APC
# Cargo Bay Closet
map-string-cargo-bay-closet = 货运舱储物间
# Cargo Bay Dock
map-string-cargo-bay-dock = 货运舱船坞
# Cargo Bay fire alarm
map-string-cargo-bay-fire-alarm = 货运舱火警警报器
# Cargo Bay One
map-string-cargo-bay-one = 货运舱一
# Cargo bay/Research substation
map-string-cargo-bay-research-substation = 货运舱研究变电站
# Cargo Bay Two
map-string-cargo-bay-two = 货运舱二
# Cargo Bay West
map-string-cargo-bay-west = 货运舱西
# Cargo break room
map-string-cargo-break-room = 货运休息室
# Cargo Breakroom Air Alarm
map-string-cargo-breakroom-air-alarm = 货运休息室空气警报器
# Cargo Breakroom APC
map-string-cargo-breakroom-apc = 货运休息室 APC
# Cargo checkpoint
map-string-cargo-checkpoint = 货运检查站
# Cargo Closet Entrance
map-string-cargo-closet-entrance = 货运储物间入口
# Cargo Connector
map-string-cargo-connector = 货运连接段
# Cargo Desk Air Alarm
map-string-cargo-desk-air-alarm = 货运台席空气警报器
# Cargo Desk APC
map-string-cargo-desk-apc = 货运台席 APC
# Cargo Dock APC
map-string-cargo-dock-apc = 货运船坞 APC
# Cargo Dock N
map-string-cargo-dock-n = 货运船坞 N
# Cargo Dock S
map-string-cargo-dock-s = 货运船坞 S
# Cargo Docking Arm
map-string-cargo-docking-arm = 货运对接臂
# Cargo Docks
map-string-cargo-docks = 货运船坞
# Cargo Enterance
map-string-cargo-enterance = 货运入口
# Cargo Entrance APC
map-string-cargo-entrance-apc = 货运入口 APC
# cargo entry hallway
map-string-cargo-entry-hallway = 货运入口走廊
# Cargo Front air alarm
map-string-cargo-front-air-alarm = 货运前空气警报器
# Cargo Front Corridor
map-string-cargo-front-corridor = 货运前走廊
# Cargo Front Desk
map-string-cargo-front-desk = 货运前台
# cargo front hallway
map-string-cargo-front-hallway = 货运前走廊
# cargo hall
map-string-cargo-hall = 货运厅
# cargo hall air alarm
map-string-cargo-hall-air-alarm = 货运厅空气警报器
# Cargo Hallway
map-string-cargo-hallway = 货运走廊
# cargo hallway air alarm
map-string-cargo-hallway-air-alarm = 货运走廊空气警报器
# Cargo Hallway East
map-string-cargo-hallway-east = 货运走廊东
# Cargo Hallway West
map-string-cargo-hallway-west = 货运走廊西
# cargo locker room
map-string-cargo-locker-room = 货运更衣室
# cargo mail
map-string-cargo-mail = 货运邮件
# Cargo Main Hall
map-string-cargo-main-hall = 货运主厅
# Cargo Middle
map-string-cargo-middle = 货运中部
# Cargo Museum Backroom
map-string-cargo-museum-backroom = 货运博物馆后间
# Cargo north
map-string-cargo-north = 货运北
# cargo north hallway
map-string-cargo-north-hallway = 货运北走廊
# Cargo Office APC
map-string-cargo-office-apc = 货运办公室 APC
# Cargo Processing
map-string-cargo-processing = 货运处理
# Cargo Reception
map-string-cargo-reception = 货运接待处
# Cargo Reception air alarm
map-string-cargo-reception-air-alarm = 货运接待处空气警报器
# Cargo Reception APC
map-string-cargo-reception-apc = 货运接待处 APC
# Cargo Reception fire alarm
map-string-cargo-reception-fire-alarm = 货运接待处火警警报器
# Cargo Request Room
map-string-cargo-request-room = 货运申请室
# Cargo Sec Office
map-string-cargo-sec-office = 货运安保办公室
# Cargo south
map-string-cargo-south = 货运南
# cargo south hallway
map-string-cargo-south-hallway = 货运南走廊
# Cargo Storage
map-string-cargo-storage = 货运储藏
# Cargo Storage APC
map-string-cargo-storage-apc = 货运储藏 APC
# Cargo Storage Room
map-string-cargo-storage-room = 货运储藏室
# Cargo Substation
map-string-cargo-substation = 货运变电站
# Cargo Supply Room
map-string-cargo-supply-room = 货运补给室
# Cargo Tunnel
map-string-cargo-tunnel = 货运通道
# cargo waiting area
map-string-cargo-waiting-area = 货运等候区
# cargo waiting area air alarm
map-string-cargo-waiting-area-air-alarm = 货运等候区空气警报器
# Cargo Warehouse Air Alarm
map-string-cargo-warehouse-air-alarm = 货运仓库空气警报器
# Cargo Warehouse APC
map-string-cargo-warehouse-apc = 货运仓库 APC
# Cargobay
map-string-cargobay = 货运舱
# Cat zoo
map-string-cat-zoo = 猫动物园
# Catwalk
map-string-catwalk = 栈道
# CC Checkpoint
map-string-cc-checkpoint = 中央指挥部检查站
# CE
map-string-ce = 工程主管
# CE air alarm
map-string-ce-air-alarm = 工程主管空气警报器
# CE APC
map-string-ce-apc = 工程主管 APC
# CE Office Air Alarm
map-string-ce-office-air-alarm = 工程主管办公室空气警报器
# CE Office APC
map-string-ce-office-apc = 工程主管办公室 APC
# CE Room APC
map-string-ce-room-apc = 工程主管室 APC
# CE's
map-string-ce-s = 工程主管
# ce's corridor
map-string-ce-s-corridor = 工程主管走廊
# ce's corridor air alarm
map-string-ce-s-corridor-air-alarm = 工程主管走廊空气警报器
# CE's Storage Closet
map-string-ce-s-storage-closet = 工程主管储藏储物间
# Cell [01]
map-string-cell-01 = 牢房 01
# Cell [02]
map-string-cell-02 = 牢房 02
# Cell [03]
map-string-cell-03 = 牢房 03
# Center
map-string-center = 中心
# Central
map-string-central = 中央
# Central Hall
map-string-central-hall = 中央厅
# Central Hall West
map-string-central-hall-west = 中央厅西
# Central Hallway
map-string-central-hallway = 中央走廊
# Central Hallway Air Alarm
map-string-central-hallway-air-alarm = 中央走廊空气警报器
# Central Hallway APC
map-string-central-hallway-apc = 中央走廊 APC
# Central Hallway (E)
map-string-central-hallway-e = E 中央走廊
# Central Hallway East
map-string-central-hallway-east = 中央走廊东
# Central Hallway West
map-string-central-hallway-west = 中央走廊西
# Central Lab
map-string-central-lab = 中央实验室
# Central Lobby
map-string-central-lobby = 中央大厅
# Central medical
map-string-central-medical = 中央医疗
# Central science
map-string-central-science = 中央科研
# central statue
map-string-central-statue = 中央雕像
# Changing Rooms
map-string-changing-rooms = 更衣室
# Chapel Air Alarm
map-string-chapel-air-alarm = 教堂空气警报器
# Chapel Altar
map-string-chapel-altar = 教堂祭坛
# Chapel APC
map-string-chapel-apc = 教堂 APC
# Chapel Backroom Air Alarm
map-string-chapel-backroom-air-alarm = 教堂后间空气警报器
# Chapel - Chaplain's room
map-string-chapel-chaplain-s-room = 教堂牧师室
# Chapel Crematorium
map-string-chapel-crematorium = 教堂火葬场
# Chapel Entrance
map-string-chapel-entrance = 教堂入口
# Chapel Entry
map-string-chapel-entry = 教堂入口
# Chapel Exterior
map-string-chapel-exterior = 教堂外围
# Chapel fire alarm
map-string-chapel-fire-alarm = 教堂火警警报器
# Chapel Funeral Room
map-string-chapel-funeral-room = 教堂殡仪室
# Chapel Hallway
map-string-chapel-hallway = 教堂走廊
# chapel hallway air alarm
map-string-chapel-hallway-air-alarm = 教堂走廊空气警报器
# Chapel/library substation
map-string-chapel-library-substation = 教堂图书馆变电站
# Chapel - Main
map-string-chapel-main = 教堂主
# Chapel Morgue
map-string-chapel-morgue = 教堂停尸房
# Chapel (N)
map-string-chapel-n = N 教堂
# Chapel North
map-string-chapel-north = 教堂北
# Chapel Priory
map-string-chapel-priory = 教堂修道院
# Chapel (S)
map-string-chapel-s = S 教堂
# Chapel Sanctuary
map-string-chapel-sanctuary = 教堂圣所
# Chapel South
map-string-chapel-south = 教堂南
# Chapel - Stage
map-string-chapel-stage = 教堂舞台
# Chaplain Bedroom
map-string-chaplain-bedroom = 牧师卧室
# Chaplain Office
map-string-chaplain-office = 牧师办公室
# Chaplain Room
map-string-chaplain-room = 牧师室
# Chaplain Room APC
map-string-chaplain-room-apc = 牧师室 APC
# Chaplain's Bedroom
map-string-chaplain-s-bedroom = 牧师卧室
# Chaplains Back Area
map-string-chaplains-back-area = 牧师后区
# Chaplains Office APC
map-string-chaplains-office-apc = 牧师办公室 APC
# Charging Bay
map-string-charging-bay = 充电舱
# Charging Bay Air Alarm
map-string-charging-bay-air-alarm = 充电舱空气警报器
# Checkpoint Lineup
map-string-checkpoint-lineup = 检查站列队指认
# Chef Bedroom
map-string-chef-bedroom = 厨师卧室
# Chef's Room
map-string-chef-s-room = 厨师室
# Chem
map-string-chem = 化学
# Chem and Bombs
map-string-chem-and-bombs = 化学炸弹
# Chem APC
map-string-chem-apc = 化学 APC
# Chemical Wing A
map-string-chemical-wing-a = 化学区 A
# Chemical Wing B
map-string-chemical-wing-b = 化学区 B
# Chemist cam 1.
map-string-chemist-cam-1 = 化学师摄像头 1
# Chemist cam 2.
map-string-chemist-cam-2 = 化学师摄像头 2
# Chemistry air alarm
map-string-chemistry-air-alarm = 化学空气警报器
# Chemistry APC
map-string-chemistry-apc = 化学 APC
# chemistry corridor
map-string-chemistry-corridor = 化学走廊
# Chemistry fire alarm
map-string-chemistry-fire-alarm = 化学火警警报器
# Chemistry Lab
map-string-chemistry-lab = 化学实验室
# chief engineer's bedroom
map-string-chief-engineer-s-bedroom = 工程主管卧室
# chief engineer's office
map-string-chief-engineer-s-office = 工程主管办公室
# Chief Medical Officer's Bedroom
map-string-chief-medical-officer-s-bedroom = 医疗主管卧室
# Chief Medical Officer's Office
map-string-chief-medical-officer-s-office = 医疗主管办公室
# Circuitry
map-string-circuitry = 电路
# civilian conference room
map-string-civilian-conference-room = 平民会议室
# civilian conference room air alarm
map-string-civilian-conference-room-air-alarm = 平民会议室空气警报器
# civilian conference room north
map-string-civilian-conference-room-north = 平民会议室北
# CK News ground team
map-string-ck-news-ground-team = CK 新闻地面组
# Classics of Nanotrasen
map-string-classics-of-nanotrasen = 典藏纳米传讯
# Clean Room
map-string-clean-room = 净化室
# Cloning APC
map-string-cloning-apc = 克隆 APC
# cloning chamber
map-string-cloning-chamber = 克隆舱室
# Cloning/Morgue
map-string-cloning-morgue = 克隆停尸房
# Clothing Boutique
map-string-clothing-boutique = 服装精品店
# Clothing Boutique Hallway
map-string-clothing-boutique-hallway = 服装精品店走廊
# Clothing Store East
map-string-clothing-store-east = 服装商店东
# Clothing Store West
map-string-clothing-store-west = 服装商店西
# Clown and mime's room
map-string-clown-and-mime-s-room = 小丑默剧演员室
# Clown APC
map-string-clown-apc = 小丑 APC
# Clown Bedroom
map-string-clown-bedroom = 小丑卧室
# Clown/Mime Room
map-string-clown-mime-room = 小丑默剧演员室
# Clown Room
map-string-clown-room = 小丑室
# Clown's Bedroom
map-string-clown-s-bedroom = 小丑卧室
# Club Bar
map-string-club-bar = 俱乐部酒吧
# Club Front Desk
map-string-club-front-desk = 俱乐部前台
# Club Main
map-string-club-main = 俱乐部主
# Club Seating Area
map-string-club-seating-area = 俱乐部座位区区
# CMO air alarm
map-string-cmo-air-alarm = 医疗主管空气警报器
# CMO APC
map-string-cmo-apc = 医疗主管 APC
# CMO Bedroom
map-string-cmo-bedroom = 医疗主管卧室
# CMO Exam Room
map-string-cmo-exam-room = 医疗主管诊查室
# CMO Office Air Alarm
map-string-cmo-office-air-alarm = 医疗主管办公室空气警报器
# CMO Office APC
map-string-cmo-office-apc = 医疗主管办公室 APC
# CMO Private Clinic
map-string-cmo-private-clinic = 医疗主管私人诊所
# CMO Private Exam Air Alarm
map-string-cmo-private-exam-air-alarm = 医疗主管私人诊查空气警报器
# CMO Private Practice
map-string-cmo-private-practice = 医疗主管私人训练
# CMO's
map-string-cmo-s = 医疗主管
# CMO's Anatomy
map-string-cmo-s-anatomy = 医疗主管解剖
# CMO's Bedroom
map-string-cmo-s-bedroom = 医疗主管卧室
# cmo's corridor air alarm
map-string-cmo-s-corridor-air-alarm = 医疗主管走廊空气警报器
# CMO's Room APC
map-string-cmo-s-room-apc = 医疗主管室 APC
# coffee bar
map-string-coffee-bar = 咖啡酒吧
# Cold and hot chambers
map-string-cold-and-hot-chambers = 冷藏高温舱室
# Command
map-string-command = 指挥部
# command air alarm
map-string-command-air-alarm = 指挥部空气警报器
# Command APC
map-string-command-apc = 指挥部 APC
# Command Bar
map-string-command-bar = 指挥部酒吧
# Command - Bridge
map-string-command-bridge = 指挥部舰桥
# Command center/Plaza substation
map-string-command-center-plaza-substation = 指挥部中心广场变电站
# Command conference
map-string-command-conference = 指挥部会议
# command conference room
map-string-command-conference-room = 指挥部会议室
# command corridor east
map-string-command-corridor-east = 指挥部走廊东
# command corridor west
map-string-command-corridor-west = 指挥部走廊西
# command dining area
map-string-command-dining-area = 指挥部餐饮区
# Command Dock
map-string-command-dock = 指挥部船坞
# Command Dock Airlock
map-string-command-dock-airlock = 指挥部船坞气闸门
# Command East Hallway
map-string-command-east-hallway = 指挥部东走廊
# Command Enterance
map-string-command-enterance = 指挥部入口
# command entry corridor
map-string-command-entry-corridor = 指挥部入口走廊
# command entry corridor west
map-string-command-entry-corridor-west = 指挥部入口走廊西
# command external
map-string-command-external = 指挥部外部
# Command Foyer
map-string-command-foyer = 指挥部门厅
# command freezer
map-string-command-freezer = 指挥部冷库
# command hall air alarm
map-string-command-hall-air-alarm = 指挥部厅空气警报器
# command hallway
map-string-command-hallway = 指挥部走廊
# command hallway air alarm
map-string-command-hallway-air-alarm = 指挥部走廊空气警报器
# command internal
map-string-command-internal = 指挥部内部
# command kitchen
map-string-command-kitchen = 指挥部厨房
# Command lounge
map-string-command-lounge = 指挥部休息室
# Command - Main
map-string-command-main = 指挥部主
# command main corridor air alarm
map-string-command-main-corridor-air-alarm = 指挥部主走廊空气警报器
# Command Main Hall
map-string-command-main-hall = 指挥部主厅
# Command materials room
map-string-command-materials-room = 指挥部材料室
# Command Meeting Room
map-string-command-meeting-room = 指挥部会议室
# Command North Hallway
map-string-command-north-hallway = 指挥部北走廊
# Command pods
map-string-command-pods = 指挥部舱
# command recreation area air alarm
map-string-command-recreation-area-air-alarm = 指挥部 recreation 区空气警报器
# Command SMES
map-string-command-smes = 指挥部 SMES
# Command South Hallway
map-string-command-south-hallway = 指挥部南走廊
# Command Storage
map-string-command-storage = 指挥部储藏
# Command Substation
map-string-command-substation = 指挥部变电站
# command west corridor air alarm
map-string-command-west-corridor-air-alarm = 指挥部西走廊空气警报器
# Command West Hallway
map-string-command-west-hallway = 指挥部西走廊
# Common Substation
map-string-common-substation = 公共变电站
# comms room
map-string-comms-room = 通讯室
# Conf Room APC
map-string-conf-room-apc = Conf 室 APC
# Conference APC
map-string-conference-apc = 会议 APC
# Conference Area
map-string-conference-area = 会议区
# Conference fire alarm
map-string-conference-fire-alarm = 会议火警警报器
# Conference Room air alarm
map-string-conference-room-air-alarm = 会议室空气警报器
# Conference Room APC
map-string-conference-room-apc = 会议室 APC
# Conference Seating
map-string-conference-seating = 会议座位区
# Connector 1A
map-string-connector-1a = 连接段 1A
# Connector 1B
map-string-connector-1b = 连接段 1B
# Connector 2A
map-string-connector-2a = 连接段 2A
# Connector 2B
map-string-connector-2b = 连接段 2B
# Connector 3A
map-string-connector-3a = 连接段 3A
# Connector 3B
map-string-connector-3b = 连接段 3B
# Connector 4A
map-string-connector-4a = 连接段 4A
# Connector 4B
map-string-connector-4b = 连接段 4B
# Connector 5A
map-string-connector-5a = 连接段 5A
# Connector 5B
map-string-connector-5b = 连接段 5B
# Connector 6A
map-string-connector-6a = 连接段 6A
# Connector 6B
map-string-connector-6b = 连接段 6B
# Consoles
map-string-consoles = 控制台
# Containment APC
map-string-containment-apc = 封闭 APC
# containment electrical
map-string-containment-electrical = 封闭电气
# containment equipment
map-string-containment-equipment = 封闭装备
# containment northeast
map-string-containment-northeast = 封闭东北
# containment northwest
map-string-containment-northwest = 封闭西北
# containment southeast
map-string-containment-southeast = 封闭东南
# containment southwest
map-string-containment-southwest = 封闭西南
# Containment Storage APC
map-string-containment-storage-apc = 封闭储藏 APC
# Contraband Lockup
map-string-contraband-lockup = 违禁品拘留室
# Control Room
map-string-control-room = 控制室
# Cooking with NT!
map-string-cooking-with-nt = 烹饪 NT
# Cooling
map-string-cooling = 冷却
# core
map-string-core = 核心
# Core entrance
map-string-core-entrance = 核心入口
# Corporate Enforcement Office
map-string-corporate-enforcement-office = 企业执法办公室
# corridor
map-string-corridor = 走廊
# corridor junction
map-string-corridor-junction = 走廊交汇处
# Court Date? I Barely Know Her!
map-string-court-date-i-barely-know-her = 法庭 Date I Barely Know Her
# Court Exterior
map-string-court-exterior = 法庭外围
# Court Front
map-string-court-front = 法庭前
# Court Gallery
map-string-court-gallery = 法庭展廊
# Court Gallery air alarm
map-string-court-gallery-air-alarm = 法庭展廊空气警报器
# Court Gallery fire alarm
map-string-court-gallery-fire-alarm = 法庭展廊火警警报器
# Court Hallway
map-string-court-hallway = 法庭走廊
# Court House
map-string-court-house = 法庭住所
# Court House APC
map-string-court-house-apc = 法庭住所 APC
# Court Interior
map-string-court-interior = 法庭内部
# Court Room APC
map-string-court-room-apc = 法庭室 APC
# Court Room Public Seating
map-string-court-room-public-seating = 法庭室公共座位区
# Courthouse
map-string-courthouse = 法院
# Courthouse APC
map-string-courthouse-apc = 法院 APC
# Courthouse - North
map-string-courthouse-north = 法院北
# courtroom a
map-string-courtroom-a = 法庭 A
# Courtroom Air Alarm
map-string-courtroom-air-alarm = 法庭空气警报器
# Courtroom APC
map-string-courtroom-apc = 法庭 APC
# courtroom b
map-string-courtroom-b = 法庭 B
# Courtroom Cam
map-string-courtroom-cam = 法庭摄像头
# Courtroom Camera
map-string-courtroom-camera = 法庭摄像头
# Courtroom Corridor
map-string-courtroom-corridor = 法庭走廊
# Courtroom fire alarm
map-string-courtroom-fire-alarm = 法庭火警警报器
# Courtroom North
map-string-courtroom-north = 法庭北
# Courtroom Seating
map-string-courtroom-seating = 法庭座位区
# Courtroom South
map-string-courtroom-south = 法庭南
# Courtroom Stand
map-string-courtroom-stand = 法庭站台
# Courtyard Power
map-string-courtyard-power = 庭院电力
# Crossroad
map-string-crossroad = 交叉路口
# Cryo Sleep Hallway
map-string-cryo-sleep-hallway = 冷冻睡眠走廊
# Cryogenics air alarm
map-string-cryogenics-air-alarm = 低温科空气警报器
# Cryogenics APC
map-string-cryogenics-apc = 低温科 APC
# Cryogenics fire alarm
map-string-cryogenics-fire-alarm = 低温科火警警报器
# Cryonics APC
map-string-cryonics-apc = 低温科 APC
# cryonics bay
map-string-cryonics-bay = 低温科舱
# Cryopods
map-string-cryopods = 冷冻舱
# Cryopods Air Alarm
map-string-cryopods-air-alarm = 冷冻舱空气警报器
# Cryopods APC
map-string-cryopods-apc = 冷冻舱 APC
# Cryosleep air alarm
map-string-cryosleep-air-alarm = 冷冻休眠空气警报器
# Cryosleep APC
map-string-cryosleep-apc = 冷冻休眠 APC
# cryosleep hallway north
map-string-cryosleep-hallway-north = 冷冻休眠走廊北
# cryosleep hallway south
map-string-cryosleep-hallway-south = 冷冻休眠走廊南
# Cybersun breakroom
map-string-cybersun-breakroom = 赛博阳休息室
# Cybersun front
map-string-cybersun-front = 赛博阳前
# Cybersun front hall/escape pods
map-string-cybersun-front-hall-escape-pods = 赛博阳前厅逃生舱
# Cybersun legal department
map-string-cybersun-legal-department = 赛博阳法务部
# Cybersun lockers
map-string-cybersun-lockers = 赛博阳储物柜
# Cybersun News
map-string-cybersun-news = 赛博阳新闻
# Cybersun R&D - anomaly
map-string-cybersun-r-d-anomaly = 赛博阳 R D 异常
# Cybersun robotics
map-string-cybersun-robotics = 赛博阳机器人学
# Cyborg Closet
map-string-cyborg-closet = 赛博格储物间
# Cyborg Recharging
map-string-cyborg-recharging = 赛博格充电
# Cyrogenics
map-string-cyrogenics = 低温科
# D&D Room
map-string-d-d-room = D D 室
# Data Lounge
map-string-data-lounge = 数据休息室
# Data Servers
map-string-data-servers = 数据服务器
# Decon R&D
map-string-decon-r-d = 净化 R D
# Decon Robotics
map-string-decon-robotics = 净化机器人学
# Defusal Training
map-string-defusal-training = 拆弹训练
# Departures APC
map-string-departures-apc = 离站 APC
# Departures GardenAPC
map-string-departures-gardenapc = 离站 GardenAPC
# Departures Security Station APC
map-string-departures-security-station-apc = 离站安保空间站 APC
# Desk
map-string-desk = 台席
# Desks
map-string-desks = 台席
# Detective Air Alarm
map-string-detective-air-alarm = 侦探空气警报器
# Detective APC
map-string-detective-apc = 侦探 APC
# Detective Office APC
map-string-detective-office-apc = 侦探办公室 APC
# Detective Room
map-string-detective-room = 侦探室
# Detective's Office
map-string-detective-s-office = 侦探办公室
# Detectives Bedroom
map-string-detectives-bedroom = 侦探卧室
# Detectives Office
map-string-detectives-office = 侦探办公室
# Detectives Office APC
map-string-detectives-office-apc = 侦探办公室 APC
# Detetives Office Air Alarm
map-string-detetives-office-air-alarm = Detetives 办公室空气警报器
# Detox
map-string-detox = 戒断
# Dining Area
map-string-dining-area = 餐饮区
# Dining Hall North
map-string-dining-hall-north = 餐饮厅北
# Dining Hall South
map-string-dining-hall-south = 餐饮厅南
# Dining Lobby
map-string-dining-lobby = 餐饮大厅
# Dining room
map-string-dining-room = 餐厅
# Display Room
map-string-display-room = 展示室
# Disposals Air Alarm
map-string-disposals-air-alarm = 垃圾处理空气警报器
# Disposals APC
map-string-disposals-apc = 垃圾处理 APC
# Disposals Atmos Closet
map-string-disposals-atmos-closet = 垃圾处理大气储物间
# Disposals Entrance
map-string-disposals-entrance = 垃圾处理入口
# Disposals Office APC
map-string-disposals-office-apc = 垃圾处理办公室 APC
# Disposals Sub
map-string-disposals-sub = 垃圾处理 Sub
# Dissection
map-string-dissection = 解剖
# Distro Burn
map-string-distro-burn = 配气管网烧伤
# Distro Main
map-string-distro-main = 配气管网主
# Dock
map-string-dock = 船坞
# Dock Checkpoint East
map-string-dock-checkpoint-east = 船坞检查站东
# Dock Checkpoint West
map-string-dock-checkpoint-west = 船坞检查站西
# Dock East
map-string-dock-east = 船坞东
# Dock East One
map-string-dock-east-one = 船坞东一
# Dock East Two
map-string-dock-east-two = 船坞东二
# Dock Interior
map-string-dock-interior = 船坞内部
# Dock (NE)
map-string-dock-ne = 东北船坞
# Dock / Salvage / Mining
map-string-dock-salvage-mining = 船坞打捞采矿
# Dock SE
map-string-dock-se = 船坞东南
# Dock Substation
map-string-dock-substation = 船坞变电站
# Dock SW
map-string-dock-sw = 船坞西南
# Dock West
map-string-dock-west = 船坞西
# Dock West One
map-string-dock-west-one = 船坞西一
# Dock West Two
map-string-dock-west-two = 船坞西二
# Docking
map-string-docking = 对接
# docking APC
map-string-docking-apc = 对接 APC
# Docking Arm
map-string-docking-arm = 对接臂
# docking arm airlock
map-string-docking-arm-airlock = 对接臂气闸门
# Docking Arm APC
map-string-docking-arm-apc = 对接臂 APC
# docking arm base
map-string-docking-arm-base = 对接臂基地
# docking arm observation
map-string-docking-arm-observation = 对接臂观测
# Docking arm port
map-string-docking-arm-port = 对接臂左舷
# Docking east
map-string-docking-east = 对接东
# Docking North
map-string-docking-north = 对接北
# Docking South
map-string-docking-south = 对接南
# Docking west
map-string-docking-west = 对接西
# Docks
map-string-docks = 船坞
# Donk co. breakroom
map-string-donk-co-breakroom = 当克公司休息室
# DONK co. cargo bay
map-string-donk-co-cargo-bay = 当克公司货运舱
# DONK co. cargo dock
map-string-donk-co-cargo-dock = 当克公司货运船坞
# Donk co. front
map-string-donk-co-front = 当克公司前
# DONK co. front hall
map-string-donk-co-front-hall = 当克公司前厅
# Donk co. hall
map-string-donk-co-hall = 当克公司厅
# Donk co. - Qm's office
map-string-donk-co-qm-s-office = 当克公司军需官办公室
# Donk co. - salvage bay
map-string-donk-co-salvage-bay = 当克公司打捞舱
# dorm
map-string-dorm = 宿舍
# Dorm APC
map-string-dorm-apc = 宿舍 APC
# Dorm Arcade
map-string-dorm-arcade = 宿舍街机厅
# Dorm Arcade APC
map-string-dorm-arcade-apc = 宿舍街机厅 APC
# Dorm Bathroom
map-string-dorm-bathroom = 宿舍盥洗室
# Dorm Bathroom APC
map-string-dorm-bathroom-apc = 宿舍盥洗室 APC
# Dorm East
map-string-dorm-east = 宿舍东
# Dorm Entrance
map-string-dorm-entrance = 宿舍入口
# Dorm Game Room
map-string-dorm-game-room = 宿舍游戏室
# Dorm Hall
map-string-dorm-hall = 宿舍厅
# Dorm Hall West
map-string-dorm-hall-west = 宿舍厅西
# Dorm Laundry
map-string-dorm-laundry = 宿舍洗衣房
# Dorm Meeting Room APC
map-string-dorm-meeting-room-apc = 宿舍会议室 APC
# Dorm Subs
map-string-dorm-subs = 宿舍 Subs
# Dormitories
map-string-dormitories = 宿舍
# Dormitory
map-string-dormitory = 宿舍
# Dorms air alarm
map-string-dorms-air-alarm = 宿舍空气警报器
# Dorms APC
map-string-dorms-apc = 宿舍 APC
# dorms corridor
map-string-dorms-corridor = 宿舍走廊
# Dorms/Cryo
map-string-dorms-cryo = 宿舍冷冻
# Dorms East
map-string-dorms-east = 宿舍东
# dorms hall
map-string-dorms-hall = 宿舍厅
# Dorms Hallway
map-string-dorms-hallway = 宿舍走廊
# Dorms hallway north
map-string-dorms-hallway-north = 宿舍走廊北
# Dorms hallway south
map-string-dorms-hallway-south = 宿舍走廊南
# Dorms Main
map-string-dorms-main = 宿舍主
# Dorms Restroom Air Alarm
map-string-dorms-restroom-air-alarm = 宿舍盥洗室空气警报器
# dorms substation
map-string-dorms-substation = 宿舍变电站
# Dorms West
map-string-dorms-west = 宿舍西
# Dr. Abode: Season
map-string-dr-abode-season = 博士住所 Season
# Dr Sturgeon, MD 24/
map-string-dr-sturgeon-md-24 = 博士鲟鱼医疗主管 24
# Drone Room
map-string-drone-room = 无人机室
# Drone Storage
map-string-drone-storage = 无人机储藏
# E01 - Engineering Entrance
map-string-e01-engineering-entrance = E01 工程入口
# E02 - SMES Bank
map-string-e02-smes-bank = E02 SMES 银行
# E03 - Engineering North
map-string-e03-engineering-north = E03 工程北
# E04 - Engineering Breakroom
map-string-e04-engineering-breakroom = E04 工程休息室
# E05 - Engineering Front
map-string-e05-engineering-front = E05 工程前
# E06 - AME Chamber
map-string-e06-ame-chamber = E06 AME 舱室
# E07 - Storage Closet
map-string-e07-storage-closet = E07 储藏储物间
# E08 - Tech Vault
map-string-e08-tech-vault = E08 技术金库
# E09 - Gravity Generator
map-string-e09-gravity-generator = E09 重力发生器
# E10 - Station Anchor
map-string-e10-station-anchor = E10 空间站锚定器
# E11 - Telecomms
map-string-e11-telecomms = E11 通讯
# E12 - Particle Accelerator
map-string-e12-particle-accelerator = E12 粒子加速器
# E13 - Tesla Containment
map-string-e13-tesla-containment = E13 特斯拉封闭
# E14 - TEG East
map-string-e14-teg-east = E14 TEG 东
# E16 - Atmospherics North
map-string-e16-atmospherics-north = E16 大气北
# E17 - Atmospherics West
map-string-e17-atmospherics-west = E17 大气西
# E18 - Atmospherics South
map-string-e18-atmospherics-south = E18 大气南
# East
map-string-east = 东
# East Air Alarm
map-string-east-air-alarm = 东空气警报器
# East Arrivals Substation
map-string-east-arrivals-substation = 东到站厅变电站
# East Bar Exterior air alarm
map-string-east-bar-exterior-air-alarm = 东酒吧外围空气警报器
# East Bar Exterior fire alarm
map-string-east-bar-exterior-fire-alarm = 东酒吧外围火警警报器
# East Boxing Ring
map-string-east-boxing-ring = 东拳击环
# East Bridgehead
map-string-east-bridgehead = 东舰桥前区
# East Brig Hall
map-string-east-brig-hall = 东禁闭室厅
# East Broadside Loading Zone
map-string-east-broadside-loading-zone = 东舷侧装卸区
# East Cargo Substation
map-string-east-cargo-substation = 东货运变电站
# East Entrance Corridor
map-string-east-entrance-corridor = 东入口走廊
# East Hall
map-string-east-hall = 东厅
# East Hall A
map-string-east-hall-a = 东厅 A
# East Hallway air alarm
map-string-east-hallway-air-alarm = 东走廊空气警报器
# East Hallway APC
map-string-east-hallway-apc = 东走廊 APC
# East Hallway by Arrivals
map-string-east-hallway-by-arrivals = 东走廊到站厅
# East Hallway by Janitor
map-string-east-hallway-by-janitor = 东走廊清洁工
# East Hallway fire alarm
map-string-east-hallway-fire-alarm = 东走廊火警警报器
# East Laser Rack
map-string-east-laser-rack = 东激光架
# East Maintenance APC
map-string-east-maintenance-apc = 东维护通道 APC
# East Maints APC
map-string-east-maints-apc = 东维护通道 APC
# East Med Sub
map-string-east-med-sub = 东医疗 Sub
# east security
map-string-east-security = 东安保
# East Service Substation
map-string-east-service-substation = 东服务变电站
# East Side
map-string-east-side = 东侧
# east solars
map-string-east-solars = 东太阳能板
# East Solars SMES
map-string-east-solars-smes = 东太阳能板 SMES
# east surgery
map-string-east-surgery = 东手术室
# Eastern Lobby
map-string-eastern-lobby = 东大厅
# Emergency Room
map-string-emergency-room = 应急室
# Emergency Room Air Alarm
map-string-emergency-room-air-alarm = 应急室空气警报器
# EMERGENCY RUM PARTY!!!
map-string-emergency-rum-party = 应急 RUM 派对
# EMS
map-string-ems = 急救
# Engi Arrivals Supply Closet
map-string-engi-arrivals-supply-closet = 工程到站厅补给储物间
# engi breakroom
map-string-engi-breakroom = 工程休息室
# Engi Construction Area
map-string-engi-construction-area = 工程建造区
# Engi Construction Room
map-string-engi-construction-room = 工程建造室
# Engi Entrance
map-string-engi-entrance = 工程入口
# engi hall
map-string-engi-hall = 工程厅
# Engi hallway southeast
map-string-engi-hallway-southeast = 工程走廊东南
# engi hardsuits
map-string-engi-hardsuits = 工程硬质宇航服
# engi lockers
map-string-engi-lockers = 工程储物柜
# Engi Lockers APC
map-string-engi-lockers-apc = 工程储物柜 APC
# Engi Main Hall
map-string-engi-main-hall = 工程主厅
# Engi Maint Tunnel
map-string-engi-maint-tunnel = 工程维护通道通道
# engi storage
map-string-engi-storage = 工程储藏
# Engi Sub
map-string-engi-sub = 工程 Sub
# Engie AI Hall
map-string-engie-ai-hall = 工程 AI 厅
# Engie Atmos
map-string-engie-atmos = 工程大气
# Engie Breakroom
map-string-engie-breakroom = 工程休息室
# Engie Front
map-string-engie-front = 工程前
# Engie Lockers
map-string-engie-lockers = 工程储物柜
# Engie Power
map-string-engie-power = 工程电力
# Engie Power Storage
map-string-engie-power-storage = 工程电力储藏
# Engie Surplus
map-string-engie-surplus = 工程剩余物资
# Engine
map-string-engine = 引擎
# Engine Access
map-string-engine-access = 引擎通路
# Engine Airlock
map-string-engine-airlock = 引擎气闸门
# Engine - AME
map-string-engine-ame = 引擎 AME
# Engine & Atmos
map-string-engine-atmos = 引擎大气
# Engine - Battery
map-string-engine-battery = 引擎蓄电池
# Engine chamber north
map-string-engine-chamber-north = 引擎舱室北
# Engine chamber south
map-string-engine-chamber-south = 引擎舱室南
# Engine East
map-string-engine-east = 引擎东
# Engine Entry
map-string-engine-entry = 引擎入口
# Engine Hall North
map-string-engine-hall-north = 引擎厅北
# Engine Hallway East
map-string-engine-hallway-east = 引擎走廊东
# Engine Hallway South
map-string-engine-hallway-south = 引擎走廊南
# Engine NE
map-string-engine-ne = 引擎东北
# Engine - North
map-string-engine-north = 引擎北
# Engine NW
map-string-engine-nw = 引擎西北
# Engine Room & Medbay APC
map-string-engine-room-medbay-apc = 引擎室医疗部 APC
# Engine SE
map-string-engine-se = 引擎东南
# Engine (SM - N)
map-string-engine-sm-n = 超物质 N 引擎
# Engine (SM - S)
map-string-engine-sm-s = 超物质 S 引擎
# Engine - South
map-string-engine-south = 引擎南
# Engine Storage
map-string-engine-storage = 引擎储藏
# Engine Storage Room
map-string-engine-storage-room = 引擎储藏室
# Engine SW
map-string-engine-sw = 引擎西南
# Engine West
map-string-engine-west = 引擎西
# Engineer locker room
map-string-engineer-locker-room = 工程师更衣室
# Engineering Air Alarm
map-string-engineering-air-alarm = 工程空气警报器
# Engineering APC
map-string-engineering-apc = 工程 APC
# Engineering Backrooms
map-string-engineering-backrooms = 工程后间
# engineering break room
map-string-engineering-break-room = 工程休息室
# Engineering Break Room APC
map-string-engineering-break-room-apc = 工程休息室 APC
# Engineering Breakroom
map-string-engineering-breakroom = 工程休息室
# Engineering Breakroom Air Alarm
map-string-engineering-breakroom-air-alarm = 工程休息室空气警报器
# Engineering Breakroom APC
map-string-engineering-breakroom-apc = 工程休息室 APC
# Engineering Central Airlock
map-string-engineering-central-airlock = 工程中央气闸门
# Engineering Checkpoint
map-string-engineering-checkpoint = 工程检查站
# Engineering Closet
map-string-engineering-closet = 工程储物间
# Engineering Desk APC
map-string-engineering-desk-apc = 工程台席 APC
# Engineering E
map-string-engineering-e = 工程 E
# Engineering East Hallway
map-string-engineering-east-hallway = 工程东走廊
# Engineering Entrance
map-string-engineering-entrance = 工程入口
# Engineering Entrance Fire Alarm
map-string-engineering-entrance-fire-alarm = 工程入口火警警报器
# Engineering EVA
map-string-engineering-eva = 工程 EVA
# Engineering Exit Hallway
map-string-engineering-exit-hallway = 工程出口走廊
# Engineering Foyer
map-string-engineering-foyer = 工程门厅
# Engineering Front air alarm
map-string-engineering-front-air-alarm = 工程前空气警报器
# engineering front desk internal
map-string-engineering-front-desk-internal = 工程前台内部
# Engineering Hall
map-string-engineering-hall = 工程厅
# Engineering Hall A
map-string-engineering-hall-a = 工程厅 A
# Engineering Hall B
map-string-engineering-hall-b = 工程厅 B
# Engineering Hallway air alarm
map-string-engineering-hallway-air-alarm = 工程走廊空气警报器
# Engineering Hallway APC
map-string-engineering-hallway-apc = 工程走廊 APC
# Engineering Hallway East
map-string-engineering-hallway-east = 工程走廊东
# Engineering Hallway North
map-string-engineering-hallway-north = 工程走廊北
# Engineering Hallway West
map-string-engineering-hallway-west = 工程走廊西
# Engineering Lobby APC
map-string-engineering-lobby-apc = 工程大厅 APC
# Engineering Locker RoomsAPC
map-string-engineering-locker-roomsapc = 工程储物柜 RoomsAPC
# Engineering Lockerroom APC
map-string-engineering-lockerroom-apc = 工程 Lockerroom APC
# engineering lockers
map-string-engineering-lockers = 工程储物柜
# Engineering Main
map-string-engineering-main = 工程主
# engineering main air alarm
map-string-engineering-main-air-alarm = 工程主空气警报器
# Engineering Maints APC
map-string-engineering-maints-apc = 工程维护通道 APC
# Engineering North APC
map-string-engineering-north-apc = 工程北 APC
# Engineering North Hallway
map-string-engineering-north-hallway = 工程北走廊
# Engineering Outdoor Area
map-string-engineering-outdoor-area = 工程户外区
# Engineering Outpost
map-string-engineering-outpost = 工程前哨
# Engineering Outside Comms Air Alarm
map-string-engineering-outside-comms-air-alarm = 工程外部通讯空气警报器
# Engineering Power Hall APC
map-string-engineering-power-hall-apc = 工程电力厅 APC
# Engineering Reception
map-string-engineering-reception = 工程接待处
# Engineering Reception air alarm
map-string-engineering-reception-air-alarm = 工程接待处空气警报器
# Engineering Reception fire alarm
map-string-engineering-reception-fire-alarm = 工程接待处火警警报器
# Engineering South APC
map-string-engineering-south-apc = 工程南 APC
# Engineering South Hallway
map-string-engineering-south-hallway = 工程南走廊
# Engineering South Hallway APC
map-string-engineering-south-hallway-apc = 工程南走廊 APC
# Engineering [Storage]
map-string-engineering-storage = 工程储藏
# Engineering Storage APC
map-string-engineering-storage-apc = 工程储藏 APC
# Engineering Sub
map-string-engineering-sub = 工程 Sub
# Engineering Sub 1
map-string-engineering-sub-1 = 工程 Sub 1
# Engineering Sub 2
map-string-engineering-sub-2 = 工程 Sub 2
# Engineering Substation
map-string-engineering-substation = 工程变电站
# Engineering Substation Storage Room
map-string-engineering-substation-storage-room = 工程变电站储藏室
# Engineering Supply APC
map-string-engineering-supply-apc = 工程补给 APC
# engineering supply vault
map-string-engineering-supply-vault = 工程补给金库
# Engineering Vacant Room APC
map-string-engineering-vacant-room-apc = 工程 Vacant 室 APC
# Engineering W
map-string-engineering-w = 工程 W
# Engineering West APC
map-string-engineering-west-apc = 工程西 APC
# Engineering West Hallway
map-string-engineering-west-hallway = 工程西走廊
# Engineering Workshop Air Alarm
map-string-engineering-workshop-air-alarm = 工程工坊空气警报器
# Engineering Workshop APC
map-string-engineering-workshop-apc = 工程工坊 APC
# Engines/Anchor
map-string-engines-anchor = 引擎锚定器
# enhanced interrogation
map-string-enhanced-interrogation = 强化审讯室
# Enterance
map-string-enterance = 入口
# enterance hallway
map-string-enterance-hallway = 入口走廊
# Entry Airlock
map-string-entry-airlock = 入口气闸门
# Entry Hallway
map-string-entry-hallway = 入口走廊
# ERT Armory
map-string-ert-armory = ERT 军械库
# ERT Armoury
map-string-ert-armoury = ERT 军械库
# ERT Atmos/Cans
map-string-ert-atmos-cans = ERT 大气气罐
# ERT Bedroom
map-string-ert-bedroom = ERT 卧室
# ERT Bridge
map-string-ert-bridge = ERT 舰桥
# ERT Brig
map-string-ert-brig = ERT 禁闭室
# ERT Burn Unit
map-string-ert-burn-unit = ERT 烧伤单元
# ERT Chapel
map-string-ert-chapel = ERT 教堂
# ERT East Dock
map-string-ert-east-dock = ERT 东船坞
# ERT Engineering
map-string-ert-engineering = ERT 工程
# ERT Engineering/Mats
map-string-ert-engineering-mats = ERT 工程材料
# ERT Equipment
map-string-ert-equipment = ERT 装备
# ERT Hallway
map-string-ert-hallway = ERT 走廊
# ERT Janitor
map-string-ert-janitor = ERT 清洁工
# ERT Lounge
map-string-ert-lounge = ERT 休息室
# ERT Medical
map-string-ert-medical = ERT 医疗
# ERT Morgue
map-string-ert-morgue = ERT 停尸房
# ERT Power/Atmos
map-string-ert-power-atmos = ERT 电力大气
# ERT Prep [North]
map-string-ert-prep-north = ERT 准备北
# ERT Prep [South]
map-string-ert-prep-south = ERT 准备南
# ERT Security
map-string-ert-security = ERT 安保
# ERT West Dock
map-string-ert-west-dock = ERT 西船坞
# Escape Pods
map-string-escape-pods = 逃生舱
# EVA Air Alarm
map-string-eva-air-alarm = EVA 空气警报器
# EVA Front
map-string-eva-front = EVA 前
# EVA Hallway APC
map-string-eva-hallway-apc = EVA 走廊 APC
# EVA Main
map-string-eva-main = EVA 主
# eva room
map-string-eva-room = EVA 室
# EVA Room APC
map-string-eva-room-apc = EVA 室 APC
# EVA Storage air alarm
map-string-eva-storage-air-alarm = EVA 储藏空气警报器
# EVA Storage APC
map-string-eva-storage-apc = EVA 储藏 APC
# EVA Storage substation
map-string-eva-storage-substation = EVA 储藏变电站
# EVA Surplus
map-string-eva-surplus = EVA 剩余物资
# Evac advanced SMES
map-string-evac-advanced-smes = 撤离先进 SMES
# Evac air alarm
map-string-evac-air-alarm = 撤离空气警报器
# evac airlock
map-string-evac-airlock = 撤离气闸门
# Evac APC
map-string-evac-apc = 撤离 APC
# Evac Arm East
map-string-evac-arm-east = 撤离臂东
# Evac Arm West
map-string-evac-arm-west = 撤离臂西
# Evac bar
map-string-evac-bar = 撤离酒吧
# Evac Base
map-string-evac-base = 撤离基地
# Evac Bathroom
map-string-evac-bathroom = 撤离盥洗室
# Evac Breakroom
map-string-evac-breakroom = 撤离休息室
# Evac by NCT Office
map-string-evac-by-nct-office = 撤离 NCT 办公室
# Evac camera
map-string-evac-camera = 撤离摄像头
# Evac Center
map-string-evac-center = 撤离中心
# Evac Checkpoint Air Alarm
map-string-evac-checkpoint-air-alarm = 撤离检查站空气警报器
# Evac Corridor
map-string-evac-corridor = 撤离走廊
# Evac Dock East
map-string-evac-dock-east = 撤离船坞东
# Evac Dock NE
map-string-evac-dock-ne = 撤离船坞东北
# Evac Dock NW
map-string-evac-dock-nw = 撤离船坞西北
# Evac Dock West
map-string-evac-dock-west = 撤离船坞西
# evac e
map-string-evac-e = 撤离 E
# Evac East
map-string-evac-east = 撤离东
# Evac fire alarm
map-string-evac-fire-alarm = 撤离火警警报器
# evac hall air alarm
map-string-evac-hall-air-alarm = 撤离厅空气警报器
# Evac Hallway
map-string-evac-hallway = 撤离走廊
# evac hallway south
map-string-evac-hallway-south = 撤离走廊南
# Evac Holding
map-string-evac-holding = 撤离拘留
# Evac Kitchen Storeroom
map-string-evac-kitchen-storeroom = 撤离厨房储藏室
# Evac Muster APC
map-string-evac-muster-apc = 撤离 Muster APC
# Evac N
map-string-evac-n = 撤离 N
# evac ne
map-string-evac-ne = 撤离东北
# evac northeast
map-string-evac-northeast = 撤离东北
# evac northwest
map-string-evac-northwest = 撤离西北
# evac nw
map-string-evac-nw = 撤离西北
# Evac S
map-string-evac-s = 撤离 S
# evac se
map-string-evac-se = 撤离东南
# EVAC Security Checkpoint
map-string-evac-security-checkpoint = 撤离安保检查站
# EVAC Security Holding
map-string-evac-security-holding = 撤离安保拘留
# Evac Security Post
map-string-evac-security-post = 撤离安保岗
# evac southeast
map-string-evac-southeast = 撤离东南
# evac southwest
map-string-evac-southwest = 撤离西南
# Evac Storage
map-string-evac-storage = 撤离储藏
# Evac Substation
map-string-evac-substation = 撤离变电站
# evac sw
map-string-evac-sw = 撤离西南
# Evac Terminal
map-string-evac-terminal = 撤离终端
# evac upper
map-string-evac-upper = 撤离上层
# Evac W
map-string-evac-w = 撤离 W
# evac waiting outer
map-string-evac-waiting-outer = 撤离等候外
# Evacuation Area
map-string-evacuation-area = 撤离区
# Evidence Room
map-string-evidence-room = 证物室
# Exam
map-string-exam = 诊查
# Exam APC
map-string-exam-apc = 诊查 APC
# exam north
map-string-exam-north = 诊查北
# Exam Room Air Alarm
map-string-exam-room-air-alarm = 诊查室空气警报器
# Exam Room APC
map-string-exam-room-apc = 诊查室 APC
# exam south
map-string-exam-south = 诊查南
# Examination
map-string-examination = 诊查
# execution room viewing area
map-string-execution-room-viewing-area = 行刑室观景区
# Exhibit A
map-string-exhibit-a = 展品 A
# Exhibit B
map-string-exhibit-b = 展品 B
# Exterior East
map-string-exterior-east = 外围东
# Exterior East Engines
map-string-exterior-east-engines = 外围东引擎
# Exterior of Janitor
map-string-exterior-of-janitor = 外围清洁工
# Exterior West
map-string-exterior-west = 外围西
# Exterior West Engines
map-string-exterior-west-engines = 外围西引擎
# External
map-string-external = 外部
# Fabrication Room
map-string-fabrication-room = 制造室
# Field Camera
map-string-field-camera = 力场摄像头
# Field Repor
map-string-field-repor = 力场记者
# fire alarm (AI)
map-string-fire-alarm-ai = AI 火警警报器
# fire alarm (AME)
map-string-fire-alarm-ame = AME 火警警报器
# fire alarm (Anomaly Lab)
map-string-fire-alarm-anomaly-lab = 异常实验室火警警报器
# fire alarm (Armory Hallway)
map-string-fire-alarm-armory-hallway = 军械库走廊火警警报器
# fire alarm (Arrivals)
map-string-fire-alarm-arrivals = 到站厅火警警报器
# fire alarm (Arrivals Hall)
map-string-fire-alarm-arrivals-hall = 到站厅厅火警警报器
# fire alarm (Arrivals Hallway)
map-string-fire-alarm-arrivals-hallway = 到站厅走廊火警警报器
# fire alarm (Arrivals North)
map-string-fire-alarm-arrivals-north = 到站厅北火警警报器
# fire alarm (Arrivals South)
map-string-fire-alarm-arrivals-south = 到站厅南火警警报器
# fire alarm (Arrivals West)
map-string-fire-alarm-arrivals-west = 到站厅西火警警报器
# fire alarm (Atmos Locker Room)
map-string-fire-alarm-atmos-locker-room = 大气更衣室火警警报器
# fire alarm (Atmospherics)
map-string-fire-alarm-atmospherics = 大气火警警报器
# fire alarm (Backstage)
map-string-fire-alarm-backstage = 后台火警警报器
# fire alarm (Bar)
map-string-fire-alarm-bar = 酒吧火警警报器
# fire alarm (Bar Maintenance)
map-string-fire-alarm-bar-maintenance = 酒吧维护通道火警警报器
# fire alarm (Bar Washrooms)
map-string-fire-alarm-bar-washrooms = 酒吧盥洗室火警警报器
# fire alarm (Bartender's Room)
map-string-fire-alarm-bartender-s-room = 酒保室火警警报器
# fire alarm (Botany)
map-string-fire-alarm-botany = 植物学火警警报器
# fire alarm (Boutique Backroom)
map-string-fire-alarm-boutique-backroom = 精品店后间火警警报器
# fire alarm (Bridge)
map-string-fire-alarm-bridge = 舰桥火警警报器
# fire alarm (Bridge Airlock)
map-string-fire-alarm-bridge-airlock = 舰桥气闸门火警警报器
# fire alarm (Bridge Evac)
map-string-fire-alarm-bridge-evac = 舰桥撤离火警警报器
# fire alarm (Bridge Hall)
map-string-fire-alarm-bridge-hall = 舰桥厅火警警报器
# fire alarm (Bridge Lodging Hallway)
map-string-fire-alarm-bridge-lodging-hallway = 舰桥 Lodging 走廊火警警报器
# fire alarm (Bridge Main Hallway)
map-string-fire-alarm-bridge-main-hallway = 舰桥主走廊火警警报器
# fire alarm (Brig Medic)
map-string-fire-alarm-brig-medic = 禁闭室 Medic 火警警报器
# fire alarm (BSO Barracks)
map-string-fire-alarm-bso-barracks = BSO 兵营火警警报器
# fire alarm (Captain's Room)
map-string-fire-alarm-captain-s-room = 舰长室火警警报器
# fire alarm (Cargo Bay)
map-string-fire-alarm-cargo-bay = 货运舱火警警报器
# fire alarm (Cargo Entrance)
map-string-fire-alarm-cargo-entrance = 货运入口火警警报器
# fire alarm (Cargo Hallway)
map-string-fire-alarm-cargo-hallway = 货运走廊火警警报器
# fire alarm (Cargo Reception)
map-string-fire-alarm-cargo-reception = 货运接待处火警警报器
# fire alarm (Cargo Tunnel)
map-string-fire-alarm-cargo-tunnel = 货运通道火警警报器
# fire alarm (Cargo Washrooms)
map-string-fire-alarm-cargo-washrooms = 货运盥洗室火警警报器
# fire alarm (Central Service)
map-string-fire-alarm-central-service = 中央服务火警警报器
# fire alarm (Chapel)
map-string-fire-alarm-chapel = 教堂火警警报器
# fire alarm (Chapel Hallway)
map-string-fire-alarm-chapel-hallway = 教堂走廊火警警报器
# fire alarm (Chaplain's Room)
map-string-fire-alarm-chaplain-s-room = 牧师室火警警报器
# fire alarm (Chemistry)
map-string-fire-alarm-chemistry = 化学火警警报器
# fire alarm (Clothing Boutique)
map-string-fire-alarm-clothing-boutique = 服装精品店火警警报器
# fire alarm (CMO's Office)
map-string-fire-alarm-cmo-s-office = 医疗主管办公室火警警报器
# fire alarm (Command Evacuation Dock)
map-string-fire-alarm-command-evacuation-dock = 指挥部撤离船坞火警警报器
# fire alarm (Courtroom)
map-string-fire-alarm-courtroom = 法庭火警警报器
# fire alarm (Crematory)
map-string-fire-alarm-crematory = Crematory 火警警报器
# fire alarm (Cryogenics)
map-string-fire-alarm-cryogenics = 低温科火警警报器
# fire alarm (Detective's Office)
map-string-fire-alarm-detective-s-office = 侦探办公室火警警报器
# fire alarm (Dorm Washrooms)
map-string-fire-alarm-dorm-washrooms = 宿舍盥洗室火警警报器
# fire alarm (Dorms)
map-string-fire-alarm-dorms = 宿舍火警警报器
# fire alarm (Dorms Hall)
map-string-fire-alarm-dorms-hall = 宿舍厅火警警报器
# fire alarm (Dorms Hallway)
map-string-fire-alarm-dorms-hallway = 宿舍走廊火警警报器
# fire alarm (East Bar Hallway)
map-string-fire-alarm-east-bar-hallway = 东酒吧走廊火警警报器
# fire alarm (East Hall)
map-string-fire-alarm-east-hall = 东厅火警警报器
# fire alarm (Engineeering Locker Room)
map-string-fire-alarm-engineeering-locker-room = Engineeering 更衣室火警警报器
# fire alarm (Engineering)
map-string-fire-alarm-engineering = 工程火警警报器
# fire alarm (Engineering Control Room)
map-string-fire-alarm-engineering-control-room = 工程控制室火警警报器
# fire alarm (Engineering Entrance)
map-string-fire-alarm-engineering-entrance = 工程入口火警警报器
# fire alarm (Engineering Front)
map-string-fire-alarm-engineering-front = 工程前火警警报器
# fire alarm (Engineering Hallway)
map-string-fire-alarm-engineering-hallway = 工程走廊火警警报器
# fire alarm (Engineering Locker Room)
map-string-fire-alarm-engineering-locker-room = 工程更衣室火警警报器
# fire alarm (EVA Storage)
map-string-fire-alarm-eva-storage = EVA 储藏火警警报器
# fire alarm (Evac)
map-string-fire-alarm-evac = 撤离火警警报器
# fire alarm (Evac Checkpoint)
map-string-fire-alarm-evac-checkpoint = 撤离检查站火警警报器
# fire alarm (Evac Hall)
map-string-fire-alarm-evac-hall = 撤离厅火警警报器
# fire alarm (Gen Pop)
map-string-fire-alarm-gen-pop = 发电机 Pop 火警警报器
# fire alarm (Genpop)
map-string-fire-alarm-genpop = 普通监区火警警报器
# fire alarm (Genpop Locker Room)
map-string-fire-alarm-genpop-locker-room = 普通监区更衣室火警警报器
# fire alarm (HoP Back Hallway)
map-string-fire-alarm-hop-back-hallway = 人事主管后走廊火警警报器
# fire alarm (HoS' Office)
map-string-fire-alarm-hos-office = HoS' 办公室火警警报器
# fire alarm (Hydroponics)
map-string-fire-alarm-hydroponics = 水培火警警报器
# fire alarm (Hydroponics Hallway)
map-string-fire-alarm-hydroponics-hallway = 水培走廊火警警报器
# fire alarm (IAA)
map-string-fire-alarm-iaa = 内务调查员火警警报器
# fire alarm (Interrogation)
map-string-fire-alarm-interrogation = 审讯室火警警报器
# fire alarm (Intersection)
map-string-fire-alarm-intersection = 路口火警警报器
# fire alarm (Janitor Closet)
map-string-fire-alarm-janitor-closet = 清洁工储物间火警警报器
# fire alarm (Kitchen)
map-string-fire-alarm-kitchen = 厨房火警警报器
# fire alarm (Law Office)
map-string-fire-alarm-law-office = 律政办公室火警警报器
# fire alarm (Librarian's Room)
map-string-fire-alarm-librarian-s-room = 图书管理员室火警警报器
# fire alarm (Library)
map-string-fire-alarm-library = 图书馆火警警报器
# fire alarm (Library Hallway)
map-string-fire-alarm-library-hallway = 图书馆走廊火警警报器
# fire alarm (Mail Room)
map-string-fire-alarm-mail-room = 邮件室火警警报器
# fire alarm (Mailroom)
map-string-fire-alarm-mailroom = 邮件室火警警报器
# fire alarm (Main Greenway North)
map-string-fire-alarm-main-greenway-north = 主绿道北火警警报器
# fire alarm (Main Greenway South)
map-string-fire-alarm-main-greenway-south = 主绿道南火警警报器
# fire alarm (Maints Bar)
map-string-fire-alarm-maints-bar = 维护通道酒吧火警警报器
# fire alarm (Medbay)
map-string-fire-alarm-medbay = 医疗部火警警报器
# fire alarm (Medbay Entrance)
map-string-fire-alarm-medbay-entrance = 医疗部入口火警警报器
# fire alarm (Medbay Hall)
map-string-fire-alarm-medbay-hall = 医疗部厅火警警报器
# fire alarm (Medical Breakroom)
map-string-fire-alarm-medical-breakroom = 医疗休息室火警警报器
# fire alarm (Medical Hall)
map-string-fire-alarm-medical-hall = 医疗厅火警警报器
# fire alarm (Medical Hallway)
map-string-fire-alarm-medical-hallway = 医疗走廊火警警报器
# fire alarm (Medical Locker Room)
map-string-fire-alarm-medical-locker-room = 医疗更衣室火警警报器
# fire alarm (Medical Reception)
map-string-fire-alarm-medical-reception = 医疗接待处火警警报器
# fire alarm (Medical Washrooms)
map-string-fire-alarm-medical-washrooms = 医疗盥洗室火警警报器
# fire alarm (Meeting Room)
map-string-fire-alarm-meeting-room = 会议室火警警报器
# fire alarm (Morgue)
map-string-fire-alarm-morgue = 停尸房火警警报器
# fire alarm (North Bar Hallway)
map-string-fire-alarm-north-bar-hallway = 北酒吧走廊火警警报器
# fire alarm (North Hall)
map-string-fire-alarm-north-hall = 北厅火警警报器
# fire alarm (Northeast Hall)
map-string-fire-alarm-northeast-hall = 东北厅火警警报器
# fire alarm (Northwest Hall)
map-string-fire-alarm-northwest-hall = 西北厅火警警报器
# fire alarm (Noth Solars Hallway)
map-string-fire-alarm-noth-solars-hallway = Noth 太阳能板走廊火警警报器
# fire alarm (NTR's Office)
map-string-fire-alarm-ntr-s-office = NTR 办公室火警警报器
# fire alarm (Paramedic)
map-string-fire-alarm-paramedic = 急救员火警警报器
# fire alarm (Particle Accelerator)
map-string-fire-alarm-particle-accelerator = 粒子加速器火警警报器
# fire alarm (Psychologist's Office)
map-string-fire-alarm-psychologist-s-office = 心理师办公室火警警报器
# fire alarm (Psychology)
map-string-fire-alarm-psychology = 心理科火警警报器
# fire alarm (QM's Office)
map-string-fire-alarm-qm-s-office = 军需官办公室火警警报器
# fire alarm (Radiation Suit Room)
map-string-fire-alarm-radiation-suit-room = 辐射宇航服室火警警报器
# fire alarm (RD's Office)
map-string-fire-alarm-rd-s-office = 研究主管办公室火警警报器
# fire alarm (Reporter)
map-string-fire-alarm-reporter = 记者火警警报器
# fire alarm (Robotics)
map-string-fire-alarm-robotics = 机器人学火警警报器
# fire alarm (Salvage Arm)
map-string-fire-alarm-salvage-arm = 打捞臂火警警报器
# fire alarm (Salvage Bay)
map-string-fire-alarm-salvage-bay = 打捞舱火警警报器
# fire alarm (Sauna Locker Room)
map-string-fire-alarm-sauna-locker-room = 桑拿房更衣室火警警报器
# fire alarm (Science)
map-string-fire-alarm-science = 科研火警警报器
# fire alarm (Science Airlock)
map-string-fire-alarm-science-airlock = 科研气闸门火警警报器
# fire alarm (Science Entrance)
map-string-fire-alarm-science-entrance = 科研入口火警警报器
# fire alarm (Science Firebreak)
map-string-fire-alarm-science-firebreak = 科研防火隔断火警警报器
# fire alarm (Science Front)
map-string-fire-alarm-science-front = 科研前火警警报器
# fire alarm (Science Hallway East)
map-string-fire-alarm-science-hallway-east = 科研走廊东火警警报器
# fire alarm (Science Hallway West)
map-string-fire-alarm-science-hallway-west = 科研走廊西火警警报器
# fire alarm (Science Lobby)
map-string-fire-alarm-science-lobby = 科研大厅火警警报器
# fire alarm (Science Locker Room)
map-string-fire-alarm-science-locker-room = 科研更衣室火警警报器
# fire alarm (SEC Maintenance)
map-string-fire-alarm-sec-maintenance = 安保维护通道火警警报器
# fire alarm (Security)
map-string-fire-alarm-security = 安保火警警报器
# fire alarm (Security Breakroom)
map-string-fire-alarm-security-breakroom = 安保休息室火警警报器
# fire alarm (Security Docking)
map-string-fire-alarm-security-docking = 安保对接火警警报器
# fire alarm (Security Entrance)
map-string-fire-alarm-security-entrance = 安保入口火警警报器
# fire alarm (Security Front)
map-string-fire-alarm-security-front = 安保前火警警报器
# fire alarm (Security Lobby)
map-string-fire-alarm-security-lobby = 安保大厅火警警报器
# fire alarm (Security Locker Room)
map-string-fire-alarm-security-locker-room = 安保更衣室火警警报器
# fire alarm (Security Reception)
map-string-fire-alarm-security-reception = 安保接待处火警警报器
# fire alarm (Service Hall)
map-string-fire-alarm-service-hall = 服务厅火警警报器
# fire alarm (Service Hallway)
map-string-fire-alarm-service-hallway = 服务走廊火警警报器
# fire alarm (South Hall)
map-string-fire-alarm-south-hall = 南厅火警警报器
# fire alarm (Southwest Hall)
map-string-fire-alarm-southwest-hall = 西南厅火警警报器
# fire alarm (Spacebucks)
map-string-fire-alarm-spacebucks = 太空币火警警报器
# fire alarm (Surgery)
map-string-fire-alarm-surgery = 手术室火警警报器
# fire alarm (TEG)
map-string-fire-alarm-teg = TEG 火警警报器
# fire alarm (Telecomms)
map-string-fire-alarm-telecomms = 通讯火警警报器
# fire alarm (Theater Hallway)
map-string-fire-alarm-theater-hallway = 剧院走廊火警警报器
# fire alarm (Theatre)
map-string-fire-alarm-theatre = 剧院火警警报器
# fire alarm (Tools Room)
map-string-fire-alarm-tools-room = 工具室火警警报器
# fire alarm (Virology)
map-string-fire-alarm-virology = 病毒学火警警报器
# fire alarm (Virology Airlock)
map-string-fire-alarm-virology-airlock = 病毒学气闸门火警警报器
# fire alarm (West Hall)
map-string-fire-alarm-west-hall = 西厅火警警报器
# fire alarm (Xenoarchaeology)
map-string-fire-alarm-xenoarchaeology = 异种考古学火警警报器
# fire alarm (Xenobio)
map-string-fire-alarm-xenobio = 异种生物学火警警报器
# Firebreak
map-string-firebreak = 防火隔断
# Firing Range
map-string-firing-range = 射击靶场
# Firing Range APC
map-string-firing-range-apc = 射击靶场 APC
# Food Court A
map-string-food-court-a = 餐饮法庭 A
# Food Court B
map-string-food-court-b = 餐饮法庭 B
# Food Court C
map-string-food-court-c = 餐饮法庭 C
# Food Court North
map-string-food-court-north = 餐饮法庭北
# Food Court South
map-string-food-court-south = 餐饮法庭南
# Food Eaties and Bar
map-string-food-eaties-and-bar = 餐饮小吃酒吧
# Food Growies
map-string-food-growies = 餐饮种植区
# Fore-Port
map-string-fore-port = 前左舷
# Fore-Starboard
map-string-fore-starboard = 前右舷
# Fountain
map-string-fountain = 喷泉
# Freezer air alarm
map-string-freezer-air-alarm = 冷库空气警报器
# Freezer APC
map-string-freezer-apc = 冷库 APC
# Front Area
map-string-front-area = 前区
# Front Room
map-string-front-room = 前室
# Funeral Parlor
map-string-funeral-parlor = 殡仪休息室
# Funeral Viewing Room APC
map-string-funeral-viewing-room-apc = 殡仪观景室 APC
# G01 - Arrivals North
map-string-g01-arrivals-north = G01 到站厅北
# G02 - Arrivals South
map-string-g02-arrivals-south = G02 到站厅南
# G03 - Arrivals Hall
map-string-g03-arrivals-hall = G03 到站厅厅
# G04 - Northwest Hall
map-string-g04-northwest-hall = G04 西北厅
# G05 - North Hall
map-string-g05-north-hall = G05 北厅
# G06 - Northeast Hall
map-string-g06-northeast-hall = G06 东北厅
# G07 - East Hall
map-string-g07-east-hall = G07 东厅
# G08 - Southeast Hall
map-string-g08-southeast-hall = G08 东南厅
# G09 - South Hall
map-string-g09-south-hall = G09 南厅
# G10 - Intersection
map-string-g10-intersection = G10 路口
# G11 - West Hall
map-string-g11-west-hall = G11 西厅
# G12 - Bridge Hall
map-string-g12-bridge-hall = G12 舰桥厅
# G13 - Service Hall
map-string-g13-service-hall = G13 服务厅
# G14 - Spacebucks Hall
map-string-g14-spacebucks-hall = G14 太空币厅
# G15 - Genpop Hall
map-string-g15-genpop-hall = G15 普通监区厅
# G16 - Dorms Hall East
map-string-g16-dorms-hall-east = G16 宿舍厅东
# G17 - Dorms Hall West
map-string-g17-dorms-hall-west = G17 宿舍厅西
# G18 - Evac Hall
map-string-g18-evac-hall = G18 撤离厅
# G19 - Evac East
map-string-g19-evac-east = G19 撤离东
# G20 - Evac West
map-string-g20-evac-west = G20 撤离西
# G21 - Tool Room
map-string-g21-tool-room = G21 工具室
# G23 - Disposals
map-string-g23-disposals = G23 垃圾处理
# G24 - Cryosleep
map-string-g24-cryosleep = G24 冷冻休眠
# G25 - Visitation
map-string-g25-visitation = G25 探视
# Gamba Room
map-string-gamba-room = 赌场室
# Gambling Den
map-string-gambling-den = 赌场休憩室
# Game Room
map-string-game-room = 游戏室
# Game Room APC
map-string-game-room-apc = 游戏室 APC
# Gameroom
map-string-gameroom = 游戏室
# Games
map-string-games = 游戏
# Garden
map-string-garden = 花园
# Gas Cans
map-string-gas-cans = 气体气罐
# Gas Condenser
map-string-gas-condenser = 气体冷凝器
# Gas Tanks
map-string-gas-tanks = 气体储罐
# Gas turbine cam
map-string-gas-turbine-cam = 气体涡轮摄像头
# Gas turbine north
map-string-gas-turbine-north = 气体涡轮北
# Gas turbine south
map-string-gas-turbine-south = 气体涡轮南
# Gas turbine west
map-string-gas-turbine-west = 气体涡轮西
# Gen Pop
map-string-gen-pop = 发电机 Pop
# Gen Pop air alarm
map-string-gen-pop-air-alarm = 发电机 Pop 空气警报器
# general artifact chamber air alarm
map-string-general-artifact-chamber-air-alarm = 综合神器舱室空气警报器
# general artifact testing area
map-string-general-artifact-testing-area = 综合神器测试区
# general artifact testing chamber
map-string-general-artifact-testing-chamber = 综合神器测试舱室
# General [HOP counter]
map-string-general-hop-counter = 综合人事主管柜台
# General Lounge
map-string-general-lounge = 综合休息室
# General [Science counter]
map-string-general-science-counter = 综合科研柜台
# General Storage APC
map-string-general-storage-apc = 综合储藏 APC
# General substation
map-string-general-substation = 综合变电站
# Genetics
map-string-genetics = 基因学
# Genetics APC
map-string-genetics-apc = 基因学 APC
# GenPop Air Alarm
map-string-genpop-air-alarm = 普通监区空气警报器
# Genpop APC
map-string-genpop-apc = 普通监区 APC
# Genpop Bar
map-string-genpop-bar = 普通监区酒吧
# Genpop Beach
map-string-genpop-beach = 普通监区沙滩
# Genpop Blue
map-string-genpop-blue = 普通监区蓝
# GenPop - Botany
map-string-genpop-botany = 普通监区植物学
# genpop cell
map-string-genpop-cell = 普通监区牢房
# Genpop Cell One
map-string-genpop-cell-one = 普通监区牢房一
# Genpop Cell Two
map-string-genpop-cell-two = 普通监区牢房二
# Genpop Closet
map-string-genpop-closet = 普通监区储物间
# GenPop - Dining
map-string-genpop-dining = 普通监区餐饮
# Genpop Dorms Air Alarm
map-string-genpop-dorms-air-alarm = 普通监区宿舍空气警报器
# Genpop Dorms Hall
map-string-genpop-dorms-hall = 普通监区宿舍厅
# Genpop East
map-string-genpop-east = 普通监区东
# GenPop - Entrance
map-string-genpop-entrance = 普通监区入口
# Genpop Entrance Hall
map-string-genpop-entrance-hall = 普通监区入口厅
# Genpop Front
map-string-genpop-front = 普通监区前
# Genpop hall
map-string-genpop-hall = 普通监区厅
# Genpop Hallway
map-string-genpop-hallway = 普通监区走廊
# Genpop Hydroponics
map-string-genpop-hydroponics = 普通监区水培
# Genpop Janitorial Closet
map-string-genpop-janitorial-closet = 普通监区清洁储物间
# GenPop - Kitchen
map-string-genpop-kitchen = 普通监区厨房
# GenPop Kitchen Air Alarm
map-string-genpop-kitchen-air-alarm = 普通监区厨房空气警报器
# Genpop Kitchen/Hydro
map-string-genpop-kitchen-hydro = 普通监区厨房水培
# GenPop - Library
map-string-genpop-library = 普通监区图书馆
# Genpop Locker Room
map-string-genpop-locker-room = 普通监区更衣室
# Genpop Lounge
map-string-genpop-lounge = 普通监区休息室
# Genpop Main
map-string-genpop-main = 普通监区主
# Genpop Main Hall
map-string-genpop-main-hall = 普通监区主厅
# Genpop Mine
map-string-genpop-mine = 普通监区矿场
# Genpop Mine Staging Area
map-string-genpop-mine-staging-area = 普通监区矿场集结区
# Genpop (N)
map-string-genpop-n = N 普通监区
# Genpop North
map-string-genpop-north = 普通监区北
# GenPop North APC
map-string-genpop-north-apc = 普通监区北 APC
# GenPop - North Hall
map-string-genpop-north-hall = 普通监区北厅
# Genpop Northeast
map-string-genpop-northeast = 普通监区东北
# Genpop Orange
map-string-genpop-orange = 普通监区橙
# Genpop Processing
map-string-genpop-processing = 普通监区处理
# Genpop Purple
map-string-genpop-purple = 普通监区紫
# Genpop Sink Room
map-string-genpop-sink-room = 普通监区水槽室
# GenPop South
map-string-genpop-south = 普通监区南
# GenPop South APC
map-string-genpop-south-apc = 普通监区南 APC
# GenPop Substation
map-string-genpop-substation = 普通监区变电站
# Genpop Toilets
map-string-genpop-toilets = 普通监区厕所
# Genpop Visitation
map-string-genpop-visitation = 普通监区探视
# Genpop Visitations
map-string-genpop-visitations = 普通监区探视
# Genpop Visitations Air Alarm
map-string-genpop-visitations-air-alarm = 普通监区探视空气警报器
# Genpop Visitors
map-string-genpop-visitors = 普通监区访客
# Ghetto Morgue APC
map-string-ghetto-morgue-apc = Ghetto 停尸房 APC
# Gorilla and penguin enclosures
map-string-gorilla-and-penguin-enclosures = 大猩猩企鹅围栏
# Gorilla zoo
map-string-gorilla-zoo = 大猩猩动物园
# Gorlex barracks
map-string-gorlex-barracks = 戈莱克斯兵营
# Gorlex breakroom
map-string-gorlex-breakroom = 戈莱克斯休息室
# Gorlex command
map-string-gorlex-command = 戈莱克斯指挥部
# Gorlex entrance
map-string-gorlex-entrance = 戈莱克斯入口
# Gorlex foyer
map-string-gorlex-foyer = 戈莱克斯门厅
# Gorlex main
map-string-gorlex-main = 戈莱克斯主
# Gorlex office
map-string-gorlex-office = 戈莱克斯办公室
# Gorlex - processing
map-string-gorlex-processing = 戈莱克斯处理
# grav
map-string-grav = 重力
# Grav Anchor APC
map-string-grav-anchor-apc = 重力锚定器 APC
# Grav/Anchor/Comms
map-string-grav-anchor-comms = 重力锚定器通讯
# Grav Anchor Substation
map-string-grav-anchor-substation = 重力锚定器变电站
# Grav Gen
map-string-grav-gen = 重力发电机
# Grav Gen APC
map-string-grav-gen-apc = 重力发电机 APC
# Grav Gen SMES
map-string-grav-gen-smes = 重力发电机 SMES
# Grav Gen Sub
map-string-grav-gen-sub = 重力发电机 Sub
# Grav SMES
map-string-grav-smes = 重力 SMES
# Grav Substation
map-string-grav-substation = 重力变电站
# Graveyard
map-string-graveyard = 墓地
# graveyard hallway air alarm
map-string-graveyard-hallway-air-alarm = 墓地走廊空气警报器
# Gravgen/anchor apc
map-string-gravgen-anchor-apc = Gravgen 锚定器 APC
# Gravgen/anchor substation
map-string-gravgen-anchor-substation = Gravgen 锚定器变电站
# Gravity air alarm
map-string-gravity-air-alarm = 重力空气警报器
# gravity/anchor
map-string-gravity-anchor = 重力锚定器
# Gravity and Anchor
map-string-gravity-and-anchor = 重力锚定器
# Gravity and Anchor Room
map-string-gravity-and-anchor-room = 重力锚定器室
# Gravity APC
map-string-gravity-apc = 重力 APC
# Gravity/Bridge SMES
map-string-gravity-bridge-smes = 重力舰桥 SMES
# Gravity/Bridge Substation
map-string-gravity-bridge-substation = 重力舰桥变电站
# Gravity Gen
map-string-gravity-gen = 重力发电机
# Gravity Gen APC
map-string-gravity-gen-apc = 重力发电机 APC
# Gravity Gen/Station Anchor Substation
map-string-gravity-gen-station-anchor-substation = 重力发电机空间站锚定器变电站
# Gravity Generator Air Alarm
map-string-gravity-generator-air-alarm = 重力发生器空气警报器
# Gravity Generator and Anchor
map-string-gravity-generator-and-anchor = 重力发生器锚定器
# Gravity Generator APC
map-string-gravity-generator-apc = 重力发生器 APC
# gravity generator corridor
map-string-gravity-generator-corridor = 重力发生器走廊
# Gravity Generator SMES
map-string-gravity-generator-smes = 重力发生器 SMES
# Gravity Generator Substation
map-string-gravity-generator-substation = 重力发生器变电站
# Gravity SMES
map-string-gravity-smes = 重力 SMES
# Gravity substation
map-string-gravity-substation = 重力变电站
# Greasy Passenger Kitchen
map-string-greasy-passenger-kitchen = Greasy 乘客厨房
# Greenway Outside HOP
map-string-greenway-outside-hop = 绿道外部人事主管
# Gunnery Port APC
map-string-gunnery-port-apc = Gunnery 左舷 APC
# Hall Arcade
map-string-hall-arcade = 厅街机厅
# Hall Cargo
map-string-hall-cargo = 厅货运
# Hall center
map-string-hall-center = 厅中心
# Hall Chemistry
map-string-hall-chemistry = 厅化学
# Hall Court
map-string-hall-court = 厅法庭
# Hall - East
map-string-hall-east = 厅东
# Hall EVA
map-string-hall-eva = 厅 EVA
# Hall Garden
map-string-hall-garden = 厅花园
# Hall Genpop
map-string-hall-genpop = 厅普通监区
# Hall Janitor
map-string-hall-janitor = 厅清洁工
# Hall Law
map-string-hall-law = 厅律政
# Hall Medical
map-string-hall-medical = 厅医疗
# Hall - North
map-string-hall-north = 厅北
# Hall North Bar
map-string-hall-north-bar = 厅北酒吧
# Hall North-East
map-string-hall-north-east = 厅东北
# Hall North Kitchen
map-string-hall-north-kitchen = 厅北厨房
# Hall North-West
map-string-hall-north-west = 厅西北
# Hall - Outside Armory
map-string-hall-outside-armory = 厅外部军械库
# Hall - Outside Courtroom
map-string-hall-outside-courtroom = 厅外部法庭
# Hall Security
map-string-hall-security = 厅安保
# Hall South
map-string-hall-south = 厅南
# Hall South Bar
map-string-hall-south-bar = 厅南酒吧
# Hall South-East
map-string-hall-south-east = 厅东南
# Hall South Kitchen
map-string-hall-south-kitchen = 厅南厨房
# Hall Surgery
map-string-hall-surgery = 厅手术室
# Hall Theater Rooms
map-string-hall-theater-rooms = 厅剧院室
# Hall - West
map-string-hall-west = 厅西
# hall west med
map-string-hall-west-med = 厅西医疗
# hall west morgue
map-string-hall-west-morgue = 厅西停尸房
# Hallway APC
map-string-hallway-apc = 走廊 APC
# Hallway [Central]
map-string-hallway-central = 走廊中央
# Hallway Centre
map-string-hallway-centre = 走廊中心
# Hallway East
map-string-hallway-east = 走廊东
# Hallway East APC
map-string-hallway-east-apc = 走廊东 APC
# Hallway [North]
map-string-hallway-north = 走廊北
# Hallway north A
map-string-hallway-north-a = 走廊北 A
# Hallway North APC
map-string-hallway-north-apc = 走廊北 APC
# Hallway north B
map-string-hallway-north-b = 走廊北 B
# Hallway North West APC
map-string-hallway-north-west-apc = 走廊西北 APC
# Hallway Northeast
map-string-hallway-northeast = 走廊东北
# Hallway northwest A
map-string-hallway-northwest-a = 走廊西北 A
# Hallway northwest B
map-string-hallway-northwest-b = 走廊西北 B
# Hallway of Representatives
map-string-hallway-of-representatives = 走廊代表
# Hallway South APC
map-string-hallway-south-apc = 走廊南 APC
# Hallway South East APC
map-string-hallway-south-east-apc = 走廊东南 APC
# Hallway South West APC
map-string-hallway-south-west-apc = 走廊西南 APC
# Hallway southeast
map-string-hallway-southeast = 走廊东南
# Hallway [Southwest]
map-string-hallway-southwest = 走廊西南
# Hallway to Evac
map-string-hallway-to-evac = 走廊撤离
# Hallway West
map-string-hallway-west = 走廊西
# Hallway West APC
map-string-hallway-west-apc = 走廊西 APC
# Hallway west B
map-string-hallway-west-b = 走廊西 B
# hardsuit room
map-string-hardsuit-room = 硬质宇航服室
# hazardous artifact room air alarm
map-string-hazardous-artifact-room-air-alarm = 危险品神器室空气警报器
# hazardous artifact storage room
map-string-hazardous-artifact-storage-room = 危险品神器储藏室
# hazardous artifact testing area
map-string-hazardous-artifact-testing-area = 危险品神器测试区
# Head of Personnel
map-string-head-of-personnel = 人事主管
# Head of Personnel Line
map-string-head-of-personnel-line = 人事主管通道
# Head of Personnel's Bedroom
map-string-head-of-personnel-s-bedroom = 人事主管卧室
# Head of Personnel's Office
map-string-head-of-personnel-s-office = 人事主管办公室
# head of security
map-string-head-of-security = 安保主管
# Head of Security Office
map-string-head-of-security-office = 安保主管办公室
# Head of Security's Bedroom
map-string-head-of-security-s-bedroom = 安保主管卧室
# Heart East
map-string-heart-east = 核心东
# Heart West
map-string-heart-west = 核心西
# Hells Kitchen
map-string-hells-kitchen = Hells 厨房
# Helm
map-string-helm = 舵位
# High Sec Circuitry
map-string-high-sec-circuitry = 高安保电路
# High-Security Telecoms
map-string-high-security-telecoms = 高安保通讯
# Higher Armory
map-string-higher-armory = 上层军械库
# Holodeck E
map-string-holodeck-e = 全息甲板 E
# Holodeck W
map-string-holodeck-w = 全息甲板 W
# HONK :o)
map-string-honk-o = 蜂鸣
# HONKHONKHONKHONKHONKHONK
map-string-honkhonkhonkhonkhonkhonk = 蜂鸣蜂鸣蜂鸣
# HOP
map-string-hop = 人事主管
# HOP air alarm
map-string-hop-air-alarm = 人事主管空气警报器
# HoP and Botany Front
map-string-hop-and-botany-front = 人事主管植物学前
# HOP APC
map-string-hop-apc = 人事主管 APC
# HOP Bathroom
map-string-hop-bathroom = 人事主管盥洗室
# HoP Bedroom Air Alarm
map-string-hop-bedroom-air-alarm = 人事主管卧室空气警报器
# HoP Chamber
map-string-hop-chamber = 人事主管舱室
# HoP Corridor
map-string-hop-corridor = 人事主管走廊
# HOP fire alarm
map-string-hop-fire-alarm = 人事主管火警警报器
# hop front
map-string-hop-front = 人事主管前
# HOP front desk
map-string-hop-front-desk = 人事主管前台
# HOP Hall
map-string-hop-hall = 人事主管厅
# HoP Line
map-string-hop-line = 人事主管通道
# HoP Office Air Alarm
map-string-hop-office-air-alarm = 人事主管办公室空气警报器
# HoP Office APC
map-string-hop-office-apc = 人事主管办公室 APC
# HoP Office Backroom
map-string-hop-office-backroom = 人事主管办公室后间
# HoP Office Line
map-string-hop-office-line = 人事主管办公室通道
# hop's area air alarm
map-string-hop-s-area-air-alarm = 人事主管区空气警报器
# HoP's Bedroom
map-string-hop-s-bedroom = 人事主管卧室
# hop's corridor
map-string-hop-s-corridor = 人事主管走廊
# hop's  corridor air alarm
map-string-hop-s-corridor-air-alarm = 人事主管走廊空气警报器
# hop's line
map-string-hop-s-line = 人事主管通道
# HoP's Office APC
map-string-hop-s-office-apc = 人事主管办公室 APC
# HOP's Room
map-string-hop-s-room = 人事主管室
# hop's storage room
map-string-hop-s-storage-room = 人事主管储藏室
# HOP Substation
map-string-hop-substation = 人事主管变电站
# HoP Waiting Area
map-string-hop-waiting-area = 人事主管等候区
# HOS air alarm
map-string-hos-air-alarm = 安保主管空气警报器
# HoS APC
map-string-hos-apc = 安保主管 APC
# HOS Bedroom
map-string-hos-bedroom = 安保主管卧室
# HoS Bedroom Air Alarm
map-string-hos-bedroom-air-alarm = 安保主管卧室空气警报器
# HoS Office Air Alarm
map-string-hos-office-air-alarm = 安保主管办公室空气警报器
# HoS Office APC
map-string-hos-office-apc = 安保主管办公室 APC
# HOS Room APC
map-string-hos-room-apc = 安保主管室 APC
# HoS's
map-string-hos-s = 安保主管
# HoS's Bedroom
map-string-hos-s-bedroom = 安保主管卧室
# HoS's Office
map-string-hos-s-office = 安保主管办公室
# HoS's Room
map-string-hos-s-room = 安保主管室
# husbandry
map-string-husbandry = 饲养
# Hydraulic Press Channel
map-string-hydraulic-press-channel = 液压新闻频道
# Hydroponics air alarm
map-string-hydroponics-air-alarm = 水培空气警报器
# Hydroponics APC
map-string-hydroponics-apc = 水培 APC
# Hydroponics Backroom
map-string-hydroponics-backroom = 水培后间
# Hydroponics Bar
map-string-hydroponics-bar = 水培酒吧
# hydroponics bay
map-string-hydroponics-bay = 水培舱
# hydroponics breakroom
map-string-hydroponics-breakroom = 水培休息室
# Hydroponics Corridor
map-string-hydroponics-corridor = 水培走廊
# Hydroponics East
map-string-hydroponics-east = 水培东
# Hydroponics fire alarm
map-string-hydroponics-fire-alarm = 水培火警警报器
# Hydroponics front
map-string-hydroponics-front = 水培前
# Hydroponics Grow Room
map-string-hydroponics-grow-room = 水培种植室
# Hydroponics Hallway
map-string-hydroponics-hallway = 水培走廊
# Hydroponics - Husbandry
map-string-hydroponics-husbandry = 水培饲养
# Hydroponics locker room
map-string-hydroponics-locker-room = 水培更衣室
# Hydroponics Lockers and Husbandry
map-string-hydroponics-lockers-and-husbandry = 水培储物柜饲养
# Hydroponics - Trays
map-string-hydroponics-trays = 水培 Trays
# Hydroponics West
map-string-hydroponics-west = 水培西
# Hyper Capacity APC
map-string-hyper-capacity-apc = 超大容量 APC
# IAA/Lawyer
map-string-iaa-lawyer = 内务调查员律师
# IAA office
map-string-iaa-office = 内务调查员办公室
# IAA One
map-string-iaa-one = 内务调查员一
# IAA Rooms
map-string-iaa-rooms = 内务调查员室
# IAA Two
map-string-iaa-two = 内务调查员二
# Ian Bedroom
map-string-ian-bedroom = Ian 卧室
# IanCam
map-string-iancam = 伊恩摄像头
# Inner AI Core APC
map-string-inner-ai-core-apc = 内 AI 核心 APC
# inner vault
map-string-inner-vault = 内金库
# Inpatient Ward
map-string-inpatient-ward = 住院病房
# Instrument Construction
map-string-instrument-construction = 乐器建造
# Interdyne breakroom
map-string-interdyne-breakroom = 因特代恩休息室
# Interdyne clinic
map-string-interdyne-clinic = 因特代恩诊所
# Interdyne front
map-string-interdyne-front = 因特代恩前
# Interdyne hall east
map-string-interdyne-hall-east = 因特代恩厅东
# Interdyne locker room
map-string-interdyne-locker-room = 因特代恩更衣室
# Interdyne north hall
map-string-interdyne-north-hall = 因特代恩北厅
# Interdyne south hall
map-string-interdyne-south-hall = 因特代恩南厅
# Interdyne supply room
map-string-interdyne-supply-room = 因特代恩补给室
# Interdyne triage
map-string-interdyne-triage = 因特代恩分诊
# Interdyne west hall - entrance
map-string-interdyne-west-hall-entrance = 因特代恩西厅入口
# Internal Affairs
map-string-internal-affairs = 内部事务
# Interogation
map-string-interogation = 审讯室
# Interogation Air Alarm
map-string-interogation-air-alarm = 审讯室空气警报器
# Interrogation air alarm
map-string-interrogation-air-alarm = 审讯室空气警报器
# Interrogation Room
map-string-interrogation-room = 审讯室室
# Interrorgation
map-string-interrorgation = 审讯室
# Interview
map-string-interview = 审讯室
# Interview APC
map-string-interview-apc = 审讯室 APC
# Interyne - Paramedics
map-string-interyne-paramedics = 因特代恩急救员
# Ipc recharge station
map-string-ipc-recharge-station = Ipc recharge 空间站
# Isolated Treatment and Shower
map-string-isolated-treatment-and-shower = 隔离治疗淋浴
# Jani
map-string-jani = 清洁工
# Jani Closet
map-string-jani-closet = 清洁工储物间
# Janitor air alarm
map-string-janitor-air-alarm = 清洁工空气警报器
# Janitor APC
map-string-janitor-apc = 清洁工 APC
# Janitor Closet APC
map-string-janitor-closet-apc = 清洁工储物间 APC
# Janitor's Closet
map-string-janitor-s-closet = 清洁工储物间
# Janitor's Closet APC
map-string-janitor-s-closet-apc = 清洁工储物间 APC
# Janitor's Office
map-string-janitor-s-office = 清洁工办公室
# Janitoral closet
map-string-janitoral-closet = 清洁储物间
# Janitorial
map-string-janitorial = 清洁
# Janitorial APC
map-string-janitorial-apc = 清洁 APC
# Janitorial - Closet
map-string-janitorial-closet = 清洁储物间
# Janitorial - Front
map-string-janitorial-front = 清洁前
# Janitorial Hallway
map-string-janitorial-hallway = 清洁走廊
# Janitors Closet
map-string-janitors-closet = 清洁工储物间
# Janitors Closet APC
map-string-janitors-closet-apc = 清洁工储物间 APC
# judge's corridor
map-string-judge-s-corridor = 法官走廊
# Jukebox
map-string-jukebox = 点唱机
# Kitchen air alarm
map-string-kitchen-air-alarm = 厨房空气警报器
# Kitchen APC
map-string-kitchen-apc = 厨房 APC
# kitchen area air alarm
map-string-kitchen-area-air-alarm = 厨房区空气警报器
# Kitchen Back
map-string-kitchen-back = 厨房后
# Kitchen Back Area
map-string-kitchen-back-area = 厨房后区
# Kitchen/Bar
map-string-kitchen-bar = 厨房酒吧
# kitchen/botany
map-string-kitchen-botany = 厨房植物学
# kitchen east
map-string-kitchen-east = 厨房东
# Kitchen Exterior
map-string-kitchen-exterior = 厨房外围
# Kitchen fire alarm
map-string-kitchen-fire-alarm = 厨房火警警报器
# Kitchen Freezer
map-string-kitchen-freezer = 厨房冷库
# kitchen freezer air alarm
map-string-kitchen-freezer-air-alarm = 厨房冷库空气警报器
# Kitchen Front
map-string-kitchen-front = 厨房前
# Kitchen - Main
map-string-kitchen-main = 厨房主
# Kitchen [North]
map-string-kitchen-north = 厨房北
# kitchen service area
map-string-kitchen-service-area = 厨房服务区
# Kitchen [South]
map-string-kitchen-south = 厨房南
# kitchen west
map-string-kitchen-west = 厨房西
# Kitty Cam
map-string-kitty-cam = 猫咪摄像头
# Laundry Room
map-string-laundry-room = 洗衣房室
# law
map-string-law = 律政
# law area air alarm
map-string-law-area-air-alarm = 律政区空气警报器
# law & chapel substaion
map-string-law-chapel-substaion = 律政教堂变电站
# Law Collective Area
map-string-law-collective-area = 律政公共区
# Law Corridor
map-string-law-corridor = 律政走廊
# Law - Courtroom
map-string-law-courtroom = 律政法庭
# Law + Detective Office Hall
map-string-law-detective-office-hall = 律政侦探办公室厅
# Law Hallway
map-string-law-hallway = 律政走廊
# Law Office APC
map-string-law-office-apc = 律政办公室 APC
# law office east
map-string-law-office-east = 律政办公室东
# Law office exterior
map-string-law-office-exterior = 律政办公室外围
# law office west
map-string-law-office-west = 律政办公室西
# Law - Offices
map-string-law-offices = 律政办公区
# Law Storage
map-string-law-storage = 律政储藏
# Law Storage Room
map-string-law-storage-room = 律政储藏室
# Law Upload
map-string-law-upload = 律政上传室
# Lawer
map-string-lawer = 律师
# Lawyer
map-string-lawyer = 律师
# Lawyer Air Alarm
map-string-lawyer-air-alarm = 律师空气警报器
# Lawyer APC
map-string-lawyer-apc = 律师 APC
# Lawyer + Detective Hall
map-string-lawyer-detective-hall = 律师侦探厅
# Lawyer's office
map-string-lawyer-s-office = 律师办公室
# Lawyers Office
map-string-lawyers-office = 律师办公室
# Lawyers Office Air Alarm
map-string-lawyers-office-air-alarm = 律师办公室空气警报器
# Legal Office
map-string-legal-office = 法务办公室
# Librarian
map-string-librarian = 图书管理员
# Librarian Room
map-string-librarian-room = 图书管理员室
# Librarian Room air alarm
map-string-librarian-room-air-alarm = 图书管理员室空气警报器
# Librarian's Bedroom
map-string-librarian-s-bedroom = 图书管理员卧室
# Librarian's Desk
map-string-librarian-s-desk = 图书管理员台席
# Librarian's Office
map-string-librarian-s-office = 图书管理员办公室
# Librarian's Room
map-string-librarian-s-room = 图书管理员室
# Librarians Quarters APC
map-string-librarians-quarters-apc = Librarians 住舱 APC
# Library air alarm
map-string-library-air-alarm = 图书馆空气警报器
# Library APC
map-string-library-apc = 图书馆 APC
# Library Backroom Air Alarm
map-string-library-backroom-air-alarm = 图书馆后间空气警报器
# Library Central
map-string-library-central = 图书馆中央
# Library/Chapel Substation
map-string-library-chapel-substation = 图书馆教堂变电站
# Library E
map-string-library-e = 图书馆 E
# Library East
map-string-library-east = 图书馆东
# Library fire alarm
map-string-library-fire-alarm = 图书馆火警警报器
# Library - Games Room
map-string-library-games-room = 图书馆游戏室
# Library Gaming
map-string-library-gaming = 图书馆游戏
# Library Hall
map-string-library-hall = 图书馆厅
# Library Hall APC
map-string-library-hall-apc = 图书馆厅 APC
# Library Hallway
map-string-library-hallway = 图书馆走廊
# Library - Main
map-string-library-main = 图书馆主
# Library south hall
map-string-library-south-hall = 图书馆南厅
# Library Substation
map-string-library-substation = 图书馆变电站
# Library W
map-string-library-w = 图书馆 W
# Library West
map-string-library-west = 图书馆西
# Library West Hallway
map-string-library-west-hallway = 图书馆西走廊
# LiveLeak
map-string-liveleak = 直播
# Lizard zoo
map-string-lizard-zoo = 蜥蜴动物园
# Lobby NE
map-string-lobby-ne = 大厅东北
# Lobby NW
map-string-lobby-nw = 大厅西北
# Lobby SE
map-string-lobby-se = 大厅东南
# LOBSTER?!!! It's Just Crabs...
map-string-lobster-it-s-just-crabs = 龙虾螃蟹
# Locker Room - North
map-string-locker-room-north = 更衣室北
# Locker Room - South
map-string-locker-room-south = 更衣室南
# Lockeroom
map-string-lockeroom = 更衣室
# Lockers / Armory
map-string-lockers-armory = 储物柜军械库
# Lounge
map-string-lounge = 休息室
# lounge south
map-string-lounge-south = 休息室南
# Lower Armory
map-string-lower-armory = 下层军械库
# M01 - Medbay Entrance
map-string-m01-medbay-entrance = M01 医疗部入口
# M02 - Medbay
map-string-m02-medbay = M02 医疗部
# M03 - Surgery
map-string-m03-surgery = M03 手术室
# M04 - Medbay Hall South
map-string-m04-medbay-hall-south = M04 医疗部厅南
# M05 - Medbay Hall North
map-string-m05-medbay-hall-north = M05 医疗部厅北
# M06 - Locker Room
map-string-m06-locker-room = M06 更衣室
# M07 - Morgue
map-string-m07-morgue = M07 停尸房
# M08 - Cryogenics
map-string-m08-cryogenics = M08 低温科
# M09 - Chemistry
map-string-m09-chemistry = M09 化学
# M10 - Paramedic's Office
map-string-m10-paramedic-s-office = M10 急救员办公室
# M11 - Virology Entrance
map-string-m11-virology-entrance = M11 病毒学入口
# M12 - Virology
map-string-m12-virology = M12 病毒学
# M13 - Quarantine
map-string-m13-quarantine = M13 隔离区
# M14 - Psychologist's Office
map-string-m14-psychologist-s-office = M14 心理师办公室
# M15 - Stasis Bed
map-string-m15-stasis-bed = M15 静滞床位
# Magistrate Air Alarm
map-string-magistrate-air-alarm = 治安官空气警报器
# Magistrate APC
map-string-magistrate-apc = 治安官 APC
# Magistrate's Room
map-string-magistrate-s-room = 治安官室
# Mail Room air alarm
map-string-mail-room-air-alarm = 邮件室空气警报器
# Mail Room APC
map-string-mail-room-apc = 邮件室 APC
# Mail Room fire alarm
map-string-mail-room-fire-alarm = 邮件室火警警报器
# Mailroom
map-string-mailroom = 邮件室
# Main
map-string-main = 主
# Main Area
map-string-main-area = 主区
# main area south
map-string-main-area-south = 主区南
# main area west
map-string-main-area-west = 主区西
# Main Bay
map-string-main-bay = 主舱
# Main Docks
map-string-main-docks = 主船坞
# Main engine east
map-string-main-engine-east = 主引擎东
# Main Engine Northeast
map-string-main-engine-northeast = 主引擎东北
# Main Engine Northwest
map-string-main-engine-northwest = 主引擎西北
# Main Engine Southeast
map-string-main-engine-southeast = 主引擎东南
# Main Engine Southwest
map-string-main-engine-southwest = 主引擎西南
# Main engine west
map-string-main-engine-west = 主引擎西
# Main Foyer APC
map-string-main-foyer-apc = 主门厅 APC
# Main Greenway North
map-string-main-greenway-north = 主绿道北
# Main Greenway South
map-string-main-greenway-south = 主绿道南
# Main Hall
map-string-main-hall = 主厅
# Main Hall AI 
map-string-main-hall-ai = 主厅 AI
# Main Hall Arrivals
map-string-main-hall-arrivals = 主厅到站厅
# Main Hall Bar South
map-string-main-hall-bar-south = 主厅酒吧南
# Main Hall Botany
map-string-main-hall-botany = 主厅植物学
# Main Hall Bridge
map-string-main-hall-bridge = 主厅舰桥
# Main Hall Bridge E
map-string-main-hall-bridge-e = 主厅舰桥 E
# Main Hall Cargo
map-string-main-hall-cargo = 主厅货运
# Main Hall Cargo/Sci
map-string-main-hall-cargo-sci = 主厅货运科研
# Main Hall Central APC
map-string-main-hall-central-apc = 主厅中央 APC
# Main Hall Central Intersection
map-string-main-hall-central-intersection = 主厅中央路口
# Main Hall Chapel
map-string-main-hall-chapel = 主厅教堂
# Main Hall Closet
map-string-main-hall-closet = 主厅储物间
# Main Hall Court
map-string-main-hall-court = 主厅法庭
# Main Hall Dorms
map-string-main-hall-dorms = 主厅宿舍
# Main Hall East
map-string-main-hall-east = 主厅东
# Main Hall East APC
map-string-main-hall-east-apc = 主厅东 APC
# Main Hall Engi
map-string-main-hall-engi = 主厅工程
# Main Hall Engineering
map-string-main-hall-engineering = 主厅工程
# Main Hall Eva
map-string-main-hall-eva = 主厅 EVA
# Main Hall Evac
map-string-main-hall-evac = 主厅撤离
# Main Hall Library
map-string-main-hall-library = 主厅图书馆
# Main Hall Mailroom
map-string-main-hall-mailroom = 主厅邮件室
# Main Hall Medical
map-string-main-hall-medical = 主厅医疗
# Main Hall Morgue
map-string-main-hall-morgue = 主厅停尸房
# Main Hall North
map-string-main-hall-north = 主厅北
# Main Hall North Airlock
map-string-main-hall-north-airlock = 主厅北气闸门
# Main Hall North Departures APC
map-string-main-hall-north-departures-apc = 主厅北离站 APC
# Main Hall North East APC
map-string-main-hall-north-east-apc = 主厅东北 APC
# Main Hall Sci
map-string-main-hall-sci = 主厅科研
# Main Hall Science
map-string-main-hall-science = 主厅科研
# Main Hall Sec/Dorms
map-string-main-hall-sec-dorms = 主厅安保宿舍
# Main Hall Sec/Med
map-string-main-hall-sec-med = 主厅安保医疗
# Main Hall South
map-string-main-hall-south = 主厅南
# Main Hall South APC
map-string-main-hall-south-apc = 主厅南 APC
# Main Hall South Security APC
map-string-main-hall-south-security-apc = 主厅南安保 APC
# Main Hall Tool Room
map-string-main-hall-tool-room = 主厅工具室
# Main Hall Toolroom
map-string-main-hall-toolroom = 主厅工具间
# Main Hall Vault
map-string-main-hall-vault = 主厅金库
# Main Hallway Cargo
map-string-main-hallway-cargo = 主走廊货运
# Main Hallway South East
map-string-main-hallway-south-east = 主走廊东南
# Main Medical
map-string-main-medical = 主医疗
# Main Power Engine NE
map-string-main-power-engine-ne = 主电力引擎东北
# Main Power Engine NW
map-string-main-power-engine-nw = 主电力引擎西北
# Main Power Engine SE
map-string-main-power-engine-se = 主电力引擎东南
# Main Power Engine SW
map-string-main-power-engine-sw = 主电力引擎西南
# main substation
map-string-main-substation = 主变电站
# Main (W)
map-string-main-w = W 主
# Maint Arrivals APC
map-string-maint-arrivals-apc = 维护通道到站厅 APC
# Maint Bar APC
map-string-maint-bar-apc = 维护通道酒吧 APC
# Maint Dock APC
map-string-maint-dock-apc = 维护通道船坞 APC
# Maint North West APC
map-string-maint-north-west-apc = 维护通道西北 APC
# Maint South A APC
map-string-maint-south-a-apc = 维护通道南 A APC
# Maint South East APC
map-string-maint-south-east-apc = 维护通道东南 APC
# Maint South West APC
map-string-maint-south-west-apc = 维护通道西南 APC
# Maint West APC
map-string-maint-west-apc = 维护通道西 APC
# Maint West South APC
map-string-maint-west-south-apc = 维护通道西南 APC
# Maints air alarm
map-string-maints-air-alarm = 维护通道空气警报器
# Maints East APC
map-string-maints-east-apc = 维护通道东 APC
# Maints North APC
map-string-maints-north-apc = 维护通道北 APC
# Maints North East APC
map-string-maints-north-east-apc = 维护通道东北 APC
# Maints South APC
map-string-maints-south-apc = 维护通道南 APC
# Maints South East APC
map-string-maints-south-east-apc = 维护通道东南 APC
# Maints South West APC
map-string-maints-south-west-apc = 维护通道西南 APC
# Maints West APC
map-string-maints-west-apc = 维护通道西 APC
# Material Storage
map-string-material-storage = 材料储藏
# Materials air alarm
map-string-materials-air-alarm = 材料空气警报器
# Materials Vault East
map-string-materials-vault-east = 材料金库东
# materials vault hallway
map-string-materials-vault-hallway = 材料金库走廊
# Materials Vault West
map-string-materials-vault-west = 材料金库西
# Mech Drydock
map-string-mech-drydock = 机甲干船坞
# Med Checkpoint
map-string-med-checkpoint = 医疗检查站
# Med Front
map-string-med-front = 医疗前
# Med Hall
map-string-med-hall = 医疗厅
# med hallway north
map-string-med-hallway-north = 医疗走廊北
# med hallway south
map-string-med-hallway-south = 医疗走廊南
# med lockers
map-string-med-lockers = 医疗储物柜
# Med Maints APC
map-string-med-maints-apc = 医疗维护通道 APC
# Med Storage
map-string-med-storage = 医疗储藏
# Medbay Air Alarm
map-string-medbay-air-alarm = 医疗部空气警报器
# Medbay APC
map-string-medbay-apc = 医疗部 APC
# Medbay East
map-string-medbay-east = 医疗部东
# Medbay fire alarm
map-string-medbay-fire-alarm = 医疗部火警警报器
# Medbay Front
map-string-medbay-front = 医疗部前
# Medbay Hallway Air Alarm
map-string-medbay-hallway-air-alarm = 医疗部走廊空气警报器
# Medbay Labs
map-string-medbay-labs = 医疗部实验室
# Medbay Lobby
map-string-medbay-lobby = 医疗部大厅
# Medbay Main
map-string-medbay-main = 医疗部主
# Medbay [Reception]
map-string-medbay-reception = 医疗部接待处
# Medbay [Rest room]
map-string-medbay-rest-room = 医疗部休息室
# Medbay Storage
map-string-medbay-storage = 医疗部储藏
# Medbay Substation
map-string-medbay-substation = 医疗部变电站
# Medbay Triage
map-string-medbay-triage = 医疗部分诊
# Medbay West
map-string-medbay-west = 医疗部西
# Medcal South APC
map-string-medcal-south-apc = Medcal 南 APC
# Medical Admin Hall
map-string-medical-admin-hall = 医疗管理厅
# Medical APC
map-string-medical-apc = 医疗 APC
# Medical Back Hall
map-string-medical-back-hall = 医疗后厅
# Medical Backroom
map-string-medical-backroom = 医疗后间
# Medical Backroom East
map-string-medical-backroom-east = 医疗后间东
# Medical Backrooms
map-string-medical-backrooms = 医疗后间
# Medical Backrooms West
map-string-medical-backrooms-west = 医疗后间西
# Medical Breakroom
map-string-medical-breakroom = 医疗休息室
# Medical Breakroom Air Alarm
map-string-medical-breakroom-air-alarm = 医疗休息室空气警报器
# Medical Breakroom APC
map-string-medical-breakroom-apc = 医疗休息室 APC
# medical breakroom corridor air alarm
map-string-medical-breakroom-corridor-air-alarm = 医疗休息室走廊空气警报器
# Medical Checkpoint
map-string-medical-checkpoint = 医疗检查站
# Medical Corridor
map-string-medical-corridor = 医疗走廊
# Medical Cryo APC
map-string-medical-cryo-apc = 医疗冷冻 APC
# Medical Desk
map-string-medical-desk = 医疗台席
# Medical Desk Air Alarm
map-string-medical-desk-air-alarm = 医疗台席空气警报器
# Medical-engineering hallway
map-string-medical-engineering-hallway = 医疗工程走廊
# Medical Enterance
map-string-medical-enterance = 医疗入口
# Medical Enterance East
map-string-medical-enterance-east = 医疗入口东
# Medical Enterance West
map-string-medical-enterance-west = 医疗入口西
# Medical Entrance Air Alarm
map-string-medical-entrance-air-alarm = 医疗入口空气警报器
# Medical Entrance APC
map-string-medical-entrance-apc = 医疗入口 APC
# Medical Foyer
map-string-medical-foyer = 医疗门厅
# Medical Front Desk
map-string-medical-front-desk = 医疗前台
# Medical Hall
map-string-medical-hall = 医疗厅
# Medical Hall N
map-string-medical-hall-n = 医疗厅 N
# Medical Hall W
map-string-medical-hall-w = 医疗厅 W
# medical hallway air alarm
map-string-medical-hallway-air-alarm = 医疗走廊空气警报器
# Medical hallway north
map-string-medical-hallway-north = 医疗走廊北
# Medical hallway south
map-string-medical-hallway-south = 医疗走廊南
# Medical Lobby APC
map-string-medical-lobby-apc = 医疗大厅 APC
# medical locker room
map-string-medical-locker-room = 医疗更衣室
# Medical Locker Room APC
map-string-medical-locker-room-apc = 医疗更衣室 APC
# medical main area air alarm
map-string-medical-main-area-air-alarm = 医疗主区空气警报器
# Medical Main Hallway
map-string-medical-main-hallway = 医疗主走廊
# Medical Maint APC
map-string-medical-maint-apc = 医疗维护通道 APC
# Medical Morgue
map-string-medical-morgue = 医疗停尸房
# Medical North
map-string-medical-north = 医疗北
# Medical North APC
map-string-medical-north-apc = 医疗北 APC
# Medical North Hallway
map-string-medical-north-hallway = 医疗北走廊
# Medical Reception
map-string-medical-reception = 医疗接待处
# Medical S Hallway
map-string-medical-s-hallway = 医疗 S 走廊
# Medical Security Post
map-string-medical-security-post = 医疗安保岗
# Medical South
map-string-medical-south = 医疗南
# Medical South APC
map-string-medical-south-apc = 医疗南 APC
# Medical South East APC
map-string-medical-south-east-apc = 医疗东南 APC
# Medical South Hallway
map-string-medical-south-hallway = 医疗南走廊
# Medical Staff Area
map-string-medical-staff-area = 医疗员工区
# Medical Staff Hallway Air Alarm
map-string-medical-staff-hallway-air-alarm = 医疗员工走廊空气警报器
# Medical Storage Air Alarm
map-string-medical-storage-air-alarm = 医疗储藏空气警报器
# Medical Storage APC
map-string-medical-storage-apc = 医疗储藏 APC
# Medical Storage Backroom
map-string-medical-storage-backroom = 医疗储藏后间
# Medical Substation
map-string-medical-substation = 医疗变电站
# medical supply closet
map-string-medical-supply-closet = 医疗补给储物间
# Medical Virology APC
map-string-medical-virology-apc = 医疗病毒学 APC
# medical waiting area
map-string-medical-waiting-area = 医疗等候区
# Medical West Room
map-string-medical-west-room = 医疗西室
# Mess Hall APC
map-string-mess-hall-apc = Mess 厅 APC
# Middle Deck APC
map-string-middle-deck-apc = 中部甲板 APC
# Mime APC
map-string-mime-apc = 默剧演员 APC
# Mime Bedroom
map-string-mime-bedroom = 默剧演员卧室
# Mime's Bedroom
map-string-mime-s-bedroom = 默剧演员卧室
# Mime's Room
map-string-mime-s-room = 默剧演员室
# Mini-Morgue
map-string-mini-morgue = 小停尸房
# Mining Bay
map-string-mining-bay = 采矿舱
# Mining Dock
map-string-mining-dock = 采矿船坞
# Mining External
map-string-mining-external = 采矿外部
# Mining/Salvage
map-string-mining-salvage = 采矿打捞
# Monkey zoo
map-string-monkey-zoo = 猴子动物园
# Monkeys and Snakies
map-string-monkeys-and-snakies = 猴子小蛇
# Morgue air alarm
map-string-morgue-air-alarm = 停尸房空气警报器
# Morgue and Surgery entrance
map-string-morgue-and-surgery-entrance = 停尸房手术室入口
# Morgue APC
map-string-morgue-apc = 停尸房 APC
# Morgue fire alarm
map-string-morgue-fire-alarm = 停尸房火警警报器
# mortuary
map-string-mortuary = 停尸房
# Mr. Chang's Takeout Front
map-string-mr-chang-s-takeout-front = 先生张先生外卖前
# Mr. Chang's Takeout Kitchen
map-string-mr-chang-s-takeout-kitchen = 先生张先生外卖厨房
# Museum North
map-string-museum-north = 博物馆北
# Museum South
map-string-museum-south = 博物馆南
# Music Room
map-string-music-room = 音乐室
# Musician APC
map-string-musician-apc = 乐师 APC
# Musician Bedroom
map-string-musician-bedroom = 乐师卧室
# Musician's Bedroom
map-string-musician-s-bedroom = 乐师卧室
# Musician's Office
map-string-musician-s-office = 乐师办公室
# Musician's Room
map-string-musician-s-room = 乐师室
# Musician's Stage
map-string-musician-s-stage = 乐师舞台
# N01 - Science Entrance
map-string-n01-science-entrance = N01 科研入口
# N02 - Science
map-string-n02-science = N02 科研
# N03 - Science Front
map-string-n03-science-front = N03 科研前
# N05 - Robotics
map-string-n05-robotics = N05 机器人学
# N06 - Surgery
map-string-n06-surgery = N06 手术室
# N07 - Xenoarchaeology
map-string-n07-xenoarchaeology = N07 异种考古学
# N08 - Anomaly Lab
map-string-n08-anomaly-lab = N08 异常实验室
# nanotrasen career office
map-string-nanotrasen-career-office = 纳米传讯职业办公室
# nanotrasen career training office
map-string-nanotrasen-career-training-office = 纳米传讯职业训练办公室
# NCT air alarm
map-string-nct-air-alarm = NCT 空气警报器
# NCT Office Air Alarm
map-string-nct-office-air-alarm = NCT 办公室空气警报器
# NCT Office APC
map-string-nct-office-apc = NCT 办公室 APC
# NCT's Office
map-string-nct-s-office = NCT 办公室
# NCT's Room
map-string-nct-s-room = NCT 室
# NE. Dining Area
map-string-ne-dining-area = 东北餐饮区
# News
map-string-news = 新闻
# News at
map-string-news-at = 新闻
# news/clown hall
map-string-news-clown-hall = 新闻小丑厅
# News Interviews
map-string-news-interviews = 新闻审讯室
# News Office
map-string-news-office = 新闻办公室
# Newsroom Air Alarm
map-string-newsroom-air-alarm = 新闻编辑室空气警报器
# Newsroom APC
map-string-newsroom-apc = 新闻编辑室 APC
# North Air Alarm
map-string-north-air-alarm = 北空气警报器
# North Arrivals Substation
map-string-north-arrivals-substation = 北到站厅变电站
# North Atmos
map-string-north-atmos = 北大气
# North Bar Exterior air alarm
map-string-north-bar-exterior-air-alarm = 北酒吧外围空气警报器
# North Bar Exterior fire alarm
map-string-north-bar-exterior-fire-alarm = 北酒吧外围火警警报器
# North Bar Room
map-string-north-bar-room = 北酒吧室
# North Bar Substation
map-string-north-bar-substation = 北酒吧变电站
# North Disposals Sub
map-string-north-disposals-sub = 北垃圾处理 Sub
# North docking arm
map-string-north-docking-arm = 北对接臂
# north east hallway
map-string-north-east-hallway = 东北走廊
# North Engi Sub
map-string-north-engi-sub = 北工程 Sub
# North Entrance
map-string-north-entrance = 北入口
# North Hall A
map-string-north-hall-a = 北厅 A
# North Hall B
map-string-north-hall-b = 北厅 B
# North Hall C
map-string-north-hall-c = 北厅 C
# North Hallway
map-string-north-hallway = 北走廊
# North Maints APC
map-string-north-maints-apc = 北维护通道 APC
# North Med Hall
map-string-north-med-hall = 北医疗厅
# North Med Lobby
map-string-north-med-lobby = 北医疗大厅
# North medical substation
map-string-north-medical-substation = 北医疗变电站
# North reception
map-string-north-reception = 北接待处
# North Sci Substation
map-string-north-sci-substation = 北科研变电站
# North Science APC
map-string-north-science-apc = 北科研 APC
# North Service Substation
map-string-north-service-substation = 北服务变电站
# North Solar SMES
map-string-north-solar-smes = 北太阳能 SMES
# North Solar Sub
map-string-north-solar-sub = 北太阳能 Sub
# North Solars
map-string-north-solars = 北太阳能板
# North Solars APC
map-string-north-solars-apc = 北太阳能板 APC
# North Solars SMES
map-string-north-solars-smes = 北太阳能板 SMES
# North Solars substation
map-string-north-solars-substation = 北太阳能板变电站
# north west hallway
map-string-north-west-hallway = 西北走廊
# Northeast Airlock Entrance
map-string-northeast-airlock-entrance = 东北气闸门入口
# Northeast airlock exterior
map-string-northeast-airlock-exterior = 东北气闸门外围
# Northeast evac pod
map-string-northeast-evac-pod = 东北撤离舱
# Northeast Maintenance APC
map-string-northeast-maintenance-apc = 东北维护通道 APC
# Northeast Maintenance Substation
map-string-northeast-maintenance-substation = 东北维护通道变电站
# Northeast Maints Substation
map-string-northeast-maints-substation = 东北维护通道变电站
# Northwest Airlock Entrance
map-string-northwest-airlock-entrance = 西北气闸门入口
# Northwest Hallway
map-string-northwest-hallway = 西北走廊
# northwest junction
map-string-northwest-junction = 西北交汇处
# Northwest Maintenance APC
map-string-northwest-maintenance-apc = 西北维护通道 APC
# Northwest solars
map-string-northwest-solars = 西北太阳能板
# NT Career Office
map-string-nt-career-office = NT 职业办公室
# NT Rep Bedroom
map-string-nt-rep-bedroom = NT 代表卧室
# NT Rep Desk
map-string-nt-rep-desk = NT 代表台席
# NT Rep Office
map-string-nt-rep-office = NT 代表办公室
# NTR - Bedroom
map-string-ntr-bedroom = NTR 卧室
# NTR/BSO room
map-string-ntr-bso-room = NTR BSO 室
# NTR's Area
map-string-ntr-s-area = NTR 区
# NTR's Office
map-string-ntr-s-office = NTR 办公室
# NTR's Room
map-string-ntr-s-room = NTR 室
# NTRep's Bedroom
map-string-ntrep-s-bedroom = NT代表卧室
# NTRep's Office
map-string-ntrep-s-office = NT代表办公室
# Nuclear Chamber East
map-string-nuclear-chamber-east = 核舱室东
# Nuclear Chamber North
map-string-nuclear-chamber-north = 核舱室北
# Nuclear Control Room
map-string-nuclear-control-room = 核控制室
# Nuclear reactor control office
map-string-nuclear-reactor-control-office = 核反应堆控制办公室
# Nuclear reactor south
map-string-nuclear-reactor-south = 核反应堆南
# Nuclear reactor washroom
map-string-nuclear-reactor-washroom = 核反应堆盥洗室
# Nuclear reactor west
map-string-nuclear-reactor-west = 核反应堆西
# Nuclear turbine
map-string-nuclear-turbine = 核涡轮
# Nuke Vault
map-string-nuke-vault = 核弹金库
# NW. Dining Area
map-string-nw-dining-area = 西北餐饮区
# Observitory
map-string-observitory = 观星台
# Old Cargo APC
map-string-old-cargo-apc = 旧货运 APC
# Old Dock APC
map-string-old-dock-apc = 旧船坞 APC
# Old Engineering APC
map-string-old-engineering-apc = 旧工程 APC
# Old Salvage Dock
map-string-old-salvage-dock = 旧打捞船坞
# Operating Theatre - East
map-string-operating-theatre-east = 手术剧院东
# Operating Theatre - West
map-string-operating-theatre-west = 手术剧院西
# Opticians
map-string-opticians = 眼镜店
# OR II
map-string-or-ii = 二
# Order & Law
map-string-order-law = 订单律政
# Outer Debrief
map-string-outer-debrief = 外归询
# outer vault
map-string-outer-vault = 外金库
# Outside EVA
map-string-outside-eva = 外部 EVA
# Outside Janitor
map-string-outside-janitor = 外部清洁工
# Outside Lawyer & NCT
map-string-outside-lawyer-nct = 外部律师 NCT
# Outside RD Office
map-string-outside-rd-office = 外部研究主管办公室
# Outside Sec Entrance Air Alarm
map-string-outside-sec-entrance-air-alarm = 外部安保入口空气警报器
# Outside Sec Hall APC
map-string-outside-sec-hall-apc = 外部安保厅 APC
# Outside Sec South Hall
map-string-outside-sec-south-hall = 外部安保南厅
# Outside Telecoms
map-string-outside-telecoms = 外部通讯
# PA advanced SMES
map-string-pa-advanced-smes = 粒子加速器先进 SMES
# PA Air Alarm
map-string-pa-air-alarm = 粒子加速器空气警报器
# PA Airlock East
map-string-pa-airlock-east = 粒子加速器气闸门东
# PA Airlock West
map-string-pa-airlock-west = 粒子加速器气闸门西
# pa area air alarm
map-string-pa-area-air-alarm = 粒子加速器区空气警报器
# PA Control APC
map-string-pa-control-apc = 粒子加速器控制 APC
# PA Control Room
map-string-pa-control-room = 粒子加速器控制室
# PA Control SMES
map-string-pa-control-smes = 粒子加速器控制 SMES
# PA Control Substation
map-string-pa-control-substation = 粒子加速器控制变电站
# PA East Air Alarm
map-string-pa-east-air-alarm = 粒子加速器东空气警报器
# PA Hall
map-string-pa-hall = 粒子加速器厅
# pa main
map-string-pa-main = 粒子加速器主
# PA North
map-string-pa-north = 粒子加速器北
# PA room east
map-string-pa-room-east = 粒子加速器室东
# PA South
map-string-pa-south = 粒子加速器南
# PA Substation
map-string-pa-substation = 粒子加速器变电站
# PA West Air Alarm
map-string-pa-west-air-alarm = 粒子加速器西空气警报器
# Panic Bunker
map-string-panic-bunker = 紧急地堡
# Panopticon
map-string-panopticon = 圆形监狱
# Panopticon Entrance
map-string-panopticon-entrance = 圆形监狱入口
# Paramedic Air Alarm
map-string-paramedic-air-alarm = 急救员空气警报器
# Paramedic APC
map-string-paramedic-apc = 急救员 APC
# Paramedic dispatch
map-string-paramedic-dispatch = 急救员调度
# paramedic hallway
map-string-paramedic-hallway = 急救员走廊
# Paramedic Room
map-string-paramedic-room = 急救员室
# Paramedic Room APC
map-string-paramedic-room-apc = 急救员室 APC
# Paramedic's
map-string-paramedic-s = 急救员
# paramedic's area
map-string-paramedic-s-area = 急救员区
# Paramedic's Room
map-string-paramedic-s-room = 急救员室
# Paramedic Storage
map-string-paramedic-storage = 急救员储藏
# Parkway E
map-string-parkway-e = 主道 E
# Parkway N
map-string-parkway-n = 主道 N
# Parrot zoo
map-string-parrot-zoo = 鹦鹉动物园
# Particle Accelerator North
map-string-particle-accelerator-north = 粒子加速器北
# Particle Accelerator South
map-string-particle-accelerator-south = 粒子加速器南
# Particle Accelerator South West
map-string-particle-accelerator-south-west = 粒子加速器西南
# Party Room A
map-string-party-room-a = 派对室 A
# Party Room B
map-string-party-room-b = 派对室 B
# perma air alarm
map-string-perma-air-alarm = 永久监区空气警报器
# Perma Atmos
map-string-perma-atmos = 永久监区大气
# perma cell
map-string-perma-cell = 永久监区牢房
# Perma East Arm
map-string-perma-east-arm = 永久监区东臂
# Perma Hall
map-string-perma-hall = 永久监区厅
# Perma Observatory
map-string-perma-observatory = 永久监区观星台
# Perma SMES
map-string-perma-smes = 永久监区 SMES
# perma staging area
map-string-perma-staging-area = 永久监区集结区
# perma viewing area
map-string-perma-viewing-area = 永久监区观景区
# Permabrig
map-string-permabrig = 永久监区
# Pirate Cove
map-string-pirate-cove = 海盗湾
# Plasma Pit #
map-string-plasma-pit = 等离子坑
# Plasma Pit #045 APC
map-string-plasma-pit-045-apc = 等离子坑 045 APC
# Plasma Pit #046 APC
map-string-plasma-pit-046-apc = 等离子坑 046 APC
# Plasma Storage
map-string-plasma-storage = 等离子储藏
# Plasma Storage Air Alarm
map-string-plasma-storage-air-alarm = 等离子储藏空气警报器
# PlasmaFire TV
map-string-plasmafire-tv = 等离子燃烧电视
# Plaza Centre
map-string-plaza-centre = 广场中心
# plaza east
map-string-plaza-east = 广场东
# plaza south
map-string-plaza-south = 广场南
# plaza west
map-string-plaza-west = 广场西
# Podcast Station
map-string-podcast-station = 播客空间站
# Pool Air Alarm
map-string-pool-air-alarm = 泳池空气警报器
# Pool East
map-string-pool-east = 泳池东
# Pool south
map-string-pool-south = 泳池南
# port
map-string-port = 左舷
# Port Bow Service Substation
map-string-port-bow-service-substation = 左舷艏服务变电站
# Port Bow Substation
map-string-port-bow-substation = 左舷艏变电站
# port nacelle
map-string-port-nacelle = 左舷舱体
# Port Quarter Maintenance APC
map-string-port-quarter-maintenance-apc = 左舷舷段维护通道 APC
# Port Quarter Maintenance Substation
map-string-port-quarter-maintenance-substation = 左舷舷段维护通道变电站
# Port Stern Substation
map-string-port-stern-substation = 左舷艉变电站
# Port Thruster APC
map-string-port-thruster-apc = 左舷 Thruster APC
# Post Op
map-string-post-op = 岗 Op
# Power
map-string-power = 电力
# Power Bank 1
map-string-power-bank-1 = 电力银行 1
# Power Bank 2
map-string-power-bank-2 = 电力银行 2
# Power Bank 3
map-string-power-bank-3 = 电力银行 3
# Power Bank APC
map-string-power-bank-apc = 电力银行 APC
# Power Bank Substation
map-string-power-bank-substation = 电力银行变电站
# Power Cage Backup Cam
map-string-power-cage-backup-cam = 电力笼舍备用摄像头
# Power Cage North-East
map-string-power-cage-north-east = 电力笼舍东北
# Power Cage North-West
map-string-power-cage-north-west = 电力笼舍西北
# Power Cage South-East
map-string-power-cage-south-east = 电力笼舍东南
# Power Cage South-West
map-string-power-cage-south-west = 电力笼舍西南
# Power Room
map-string-power-room = 电力室
# Power Storage
map-string-power-storage = 电力储藏
# Preparation
map-string-preparation = 准备
# Pressure Bank
map-string-pressure-bank = 压力银行
# Primary Tool Storage APC
map-string-primary-tool-storage-apc = 主工具储藏室 APC
# prison barracks
map-string-prison-barracks = 监区兵营
# Prison Hydroponics
map-string-prison-hydroponics = 监区水培
# Prison Kitchen
map-string-prison-kitchen = 监区厨房
# Prison lockers
map-string-prison-lockers = 监区储物柜
# prison north
map-string-prison-north = 监区北
# prison south
map-string-prison-south = 监区南
# Prisoner Booking
map-string-prisoner-booking = 囚犯登记
# Prisoner EVA
map-string-prisoner-eva = 囚犯 EVA
# Private Exam
map-string-private-exam = 私人诊查
# Private Practice
map-string-private-practice = 私人训练
# Prize Corner
map-string-prize-corner = 奖品角
# Processing east
map-string-processing-east = 处理东
# Production
map-string-production = 生产
# Psych APC
map-string-psych-apc = 心理科 APC
# Psych Lobby
map-string-psych-lobby = 心理科大厅
# Psych N
map-string-psych-n = 心理科 N
# Psych office
map-string-psych-office = 心理科办公室
# Psych S
map-string-psych-s = 心理科 S
# psychologist
map-string-psychologist = 心理师
# Psychologist's
map-string-psychologist-s = 心理师
# Psychologist's Office
map-string-psychologist-s-office = 心理师办公室
# Psychologists Office
map-string-psychologists-office = 心理师办公室
# Psychology Air Alarm
map-string-psychology-air-alarm = 心理科空气警报器
# Public Garden
map-string-public-garden = 公共花园
# Pun Pun's Office
map-string-pun-pun-s-office = Pun Pun's 办公室
# QM air alarm
map-string-qm-air-alarm = 军需官空气警报器
# QM APC
map-string-qm-apc = 军需官 APC
# QM: Love at First Crate
map-string-qm-love-at-first-crate = 军需官 Love 一板条箱
# QM Office Air Alarm
map-string-qm-office-air-alarm = 军需官办公室空气警报器
# QM Office APC
map-string-qm-office-apc = 军需官办公室 APC
# QM's
map-string-qm-s = 军需官
# QM's Office APC
map-string-qm-s-office-apc = 军需官办公室 APC
# qm's room air alarm
map-string-qm-s-room-air-alarm = 军需官室空气警报器
# QMs Bedroom APC
map-string-qms-bedroom-apc = QMs 卧室 APC
# QMs Office APC
map-string-qms-office-apc = QMs 办公室 APC
# Quartermaster APC
map-string-quartermaster-apc = 军需官 APC
# Quartermaster Room
map-string-quartermaster-room = 军需官室
# Quartermaster's Bedroom
map-string-quartermaster-s-bedroom = 军需官卧室
# R&D Air Alarm
map-string-r-d-air-alarm = R D 空气警报器
# R&D data servers
map-string-r-d-data-servers = R D 数据服务器
# r&d room air alarm
map-string-r-d-room-air-alarm = R D 室空气警报器
# Radiation Suits
map-string-radiation-suits = 辐射宇航服
# RAGE CAGE APC
map-string-rage-cage-apc = RAGE 笼舍 APC
# RAGE CAGE Substation
map-string-rage-cage-substation = RAGE 笼舍变电站
# Range
map-string-range = 靶场
# RD
map-string-rd = 研究主管
# RD air alarm
map-string-rd-air-alarm = 研究主管空气警报器
# RD APC
map-string-rd-apc = 研究主管 APC
# RD Office Air Alarm
map-string-rd-office-air-alarm = 研究主管办公室空气警报器
# RD Office APC
map-string-rd-office-apc = 研究主管办公室 APC
# RD Reception
map-string-rd-reception = 研究主管接待处
# RD Room
map-string-rd-room = 研究主管室
# RD's Bedroom
map-string-rd-s-bedroom = 研究主管卧室
# RD's Office APC
map-string-rd-s-office-apc = 研究主管办公室 APC
# rd's room air alarm
map-string-rd-s-room-air-alarm = 研究主管室空气警报器
# RD server room
map-string-rd-server-room = 研究主管服务器机房
# Reactor dressing room
map-string-reactor-dressing-room = 反应堆更衣室
# Reactor east
map-string-reactor-east = 反应堆东
# Reactor north
map-string-reactor-north = 反应堆北
# Reactor south
map-string-reactor-south = 反应堆南
# Reactor suit up room
map-string-reactor-suit-up-room = 反应堆宇航服 up 室
# reading room
map-string-reading-room = 阅览室
# Ready Room
map-string-ready-room = 待命室
# Rear Airlock
map-string-rear-airlock = 后气闸门
# Reception Area
map-string-reception-area = 接待处区
# Reception / Warden
map-string-reception-warden = 接待处典狱长
# Red Armory Air Alarm
map-string-red-armory-air-alarm = 红军械库空气警报器
# Reporter APC
map-string-reporter-apc = 记者 APC
# Reporter East APC
map-string-reporter-east-apc = 记者东 APC
# Reporter's Field Camera
map-string-reporter-s-field-camera = 记者力场摄像头
# Reporter's Office
map-string-reporter-s-office = 记者办公室
# Reporter's room
map-string-reporter-s-room = 记者室
# Reporter's Studio Camera
map-string-reporter-s-studio-camera = 记者演播室摄像头
# representative's rooms air alarm
map-string-representative-s-rooms-air-alarm = 代表室空气警报器
# research and development
map-string-research-and-development = 研发部
# Research APC
map-string-research-apc = 研究 APC
# research & development
map-string-research-development = 研究研发
# Research Director's Bedroom
map-string-research-director-s-bedroom = 研究主管卧室
# Research Director's Office
map-string-research-director-s-office = 研究主管办公室
# Research Server
map-string-research-server = 研究服务器
# Resource Heap
map-string-resource-heap = 物资堆场
# Restricted Medical Wing
map-string-restricted-medical-wing = 禁入医疗区
# Restroom
map-string-restroom = 盥洗室
# Restroom APC
map-string-restroom-apc = 盥洗室 APC
# Restroom North
map-string-restroom-north = 盥洗室北
# Restroom North Hall
map-string-restroom-north-hall = 盥洗室北厅
# Restroom South
map-string-restroom-south = 盥洗室南
# Restrooms
map-string-restrooms = 盥洗室
# Ripley Bay
map-string-ripley-bay = 雷普利舱
# RND APC
map-string-rnd-apc = 研发 APC
# Robo Bay
map-string-robo-bay = 机器人舱
# Roboticist Locker Room
map-string-roboticist-locker-room = 机器人专家更衣室
# Roboticist Substation.
map-string-roboticist-substation = 机器人专家变电站
# Robotics Air Alarm
map-string-robotics-air-alarm = 机器人学空气警报器
# Robotics APC
map-string-robotics-apc = 机器人学 APC
# Robotics Backroom
map-string-robotics-backroom = 机器人学后间
# Robotics Bay APC
map-string-robotics-bay-apc = 机器人学舱 APC
# Robotics East
map-string-robotics-east = 机器人学东
# Robotics fire alarm
map-string-robotics-fire-alarm = 机器人学火警警报器
# Robotics Front
map-string-robotics-front = 机器人学前
# Robotics Hall
map-string-robotics-hall = 机器人学厅
# Robotics Hallway
map-string-robotics-hallway = 机器人学走廊
# Robotics Lab
map-string-robotics-lab = 机器人学实验室
# robotics lab air alarm
map-string-robotics-lab-air-alarm = 机器人学实验室空气警报器
# Robotics Locker Room
map-string-robotics-locker-room = 机器人学更衣室
# Robotics Lockers
map-string-robotics-lockers = 机器人学储物柜
# Robotics - Main
map-string-robotics-main = 机器人学主
# Robotics Room
map-string-robotics-room = 机器人学室
# Robotics substation
map-string-robotics-substation = 机器人学变电站
# Robotics Surgery
map-string-robotics-surgery = 机器人学手术室
# Robotics Surgical Room
map-string-robotics-surgical-room = 机器人学手术室
# Robotics West
map-string-robotics-west = 机器人学西
# Rock Dock
map-string-rock-dock = 岩层船坞
# Rock Dock Hall
map-string-rock-dock-hall = 岩层船坞厅
# Rock Dock Substation
map-string-rock-dock-substation = 岩层船坞变电站
# Rock Dock Supply Room
map-string-rock-dock-supply-room = 岩层船坞补给室
# Rod chamber cam
map-string-rod-chamber-cam = Rod 舱室摄像头
# Rotunda East
map-string-rotunda-east = 圆厅东
# Rotunda West
map-string-rotunda-west = 圆厅西
# S Service APC
map-string-s-service-apc = S 服务 APC
# S01 - Security Entrance
map-string-s01-security-entrance = S01 安保入口
# S02 - Security Front
map-string-s02-security-front = S02 安保前
# S03 - Security Breakroom
map-string-s03-security-breakroom = S03 安保休息室
# S04 - Security
map-string-s04-security = S04 安保
# S05 - Detective's Office
map-string-s05-detective-s-office = S05 侦探办公室
# S06 - Warden's Office
map-string-s06-warden-s-office = S06 典狱长办公室
# S07 - Armoury
map-string-s07-armoury = S07 军械库
# S08 - Interrogation
map-string-s08-interrogation = S08 审讯室
# S09 - Brig
map-string-s09-brig = S09 禁闭室
# S10 - Solitary Confinement
map-string-s10-solitary-confinement = S10 单人禁闭封闭
# S11 - Genpop Locker Room
map-string-s11-genpop-locker-room = S11 普通监区更衣室
# S12 - Genpop North
map-string-s12-genpop-north = S12 普通监区北
# S13 - Genpop South
map-string-s13-genpop-south = S13 普通监区南
# S14 - Genpop Dorm
map-string-s14-genpop-dorm = S14 普通监区宿舍
# S15 - Evac Checkpoint
map-string-s15-evac-checkpoint = S15 撤离检查站
# S16 - Arrivals Checkpoint
map-string-s16-arrivals-checkpoint = S16 到站厅检查站
# S17 - NCT Office
map-string-s17-nct-office = S17 NCT 办公室
# Salv Locker Room
map-string-salv-locker-room = 打捞更衣室
# Salvage Air Alarm
map-string-salvage-air-alarm = 打捞空气警报器
# Salvage Airlock
map-string-salvage-airlock = 打捞气闸门
# Salvage APC
map-string-salvage-apc = 打捞 APC
# Salvage Arm
map-string-salvage-arm = 打捞臂
# salvage arm base
map-string-salvage-arm-base = 打捞臂基地
# Salvage Bay air alarm
map-string-salvage-bay-air-alarm = 打捞舱空气警报器
# Salvage Bay Airlock
map-string-salvage-bay-airlock = 打捞舱气闸门
# Salvage Bay APC
map-string-salvage-bay-apc = 打捞舱 APC
# Salvage Bay fire alarm
map-string-salvage-bay-fire-alarm = 打捞舱火警警报器
# Salvage bay substation
map-string-salvage-bay-substation = 打捞舱变电站
# Salvage Breakroom
map-string-salvage-breakroom = 打捞休息室
# Salvage Breakroom Air Alarm
map-string-salvage-breakroom-air-alarm = 打捞休息室空气警报器
# Salvage Conveyor
map-string-salvage-conveyor = 打捞传送带
# salvage corridor
map-string-salvage-corridor = 打捞走廊
# Salvage Dock APC
map-string-salvage-dock-apc = 打捞船坞 APC
# Salvage Docking Area
map-string-salvage-docking-area = 打捞对接区
# Salvage Docking Arm
map-string-salvage-docking-arm = 打捞对接臂
# Salvage Docks
map-string-salvage-docks = 打捞船坞
# Salvage East
map-string-salvage-east = 打捞东
# Salvage Ext
map-string-salvage-ext = 打捞外部
# Salvage locker room
map-string-salvage-locker-room = 打捞更衣室
# Salvage Lockers
map-string-salvage-lockers = 打捞储物柜
# Salvage Magnet
map-string-salvage-magnet = 打捞磁体
# salvage main air alarm
map-string-salvage-main-air-alarm = 打捞主空气警报器
# Salvage/Mining Platform
map-string-salvage-mining-platform = 打捞采矿平台
# Salvage North
map-string-salvage-north = 打捞北
# Salvage rig dock
map-string-salvage-rig-dock = 打捞装置船坞
# Salvage South
map-string-salvage-south = 打捞南
# Salvage Staging Area
map-string-salvage-staging-area = 打捞集结区
# salvage substation
map-string-salvage-substation = 打捞变电站
# Salvage West
map-string-salvage-west = 打捞西
# Salvaging platform
map-string-salvaging-platform = 打捞平台
# sauna change room
map-string-sauna-change-room = 桑拿房更衣室
# Sauna Changing Room
map-string-sauna-changing-room = 桑拿房更衣室
# Sci Entrance
map-string-sci-entrance = 科研入口
# Sci Entrance Room
map-string-sci-entrance-room = 科研入口室
# Sci Firing Range APC
map-string-sci-firing-range-apc = 科研射击靶场 APC
# sci front
map-string-sci-front = 科研前
# sci front bridge
map-string-sci-front-bridge = 科研前舰桥
# Sci Hall
map-string-sci-hall = 科研厅
# Sci Hall E
map-string-sci-hall-e = 科研厅 E
# Sci Hall S
map-string-sci-hall-s = 科研厅 S
# Sci Inside
map-string-sci-inside = 科研内部
# Sci Lobby
map-string-sci-lobby = 科研大厅
# Sci Locker Room
map-string-sci-locker-room = 科研更衣室
# sci lockers
map-string-sci-lockers = 科研储物柜
# Sci - North Hall Air Alarm
map-string-sci-north-hall-air-alarm = 科研北厅空气警报器
# Sci RND Hall
map-string-sci-rnd-hall = 科研研发厅
# Sci Server Room
map-string-sci-server-room = 科研服务器机房
# Sci Server Room APC
map-string-sci-server-room-apc = 科研服务器机房 APC
# Sci - South Hall Air Alarm
map-string-sci-south-hall-air-alarm = 科研南厅空气警报器
# Sci Substation 1
map-string-sci-substation-1 = 科研变电站 1
# Sci Substation 2
map-string-sci-substation-2 = 科研变电站 2
# Science Airlock
map-string-science-airlock = 科研气闸门
# Science Anom Lab
map-string-science-anom-lab = 科研异常实验室
# Science - Anomaly
map-string-science-anomaly = 科研异常
# Science APC
map-string-science-apc = 科研 APC
# Science Arti Lab
map-string-science-arti-lab = 科研神器实验室
# Science Artifact Containers
map-string-science-artifact-containers = 科研神器容器
# Science Atmospherics
map-string-science-atmospherics = 科研大气
# Science Breakroom
map-string-science-breakroom = 科研休息室
# Science Breakroom Air Alarm
map-string-science-breakroom-air-alarm = 科研休息室空气警报器
# Science Breakroom APC
map-string-science-breakroom-apc = 科研休息室 APC
# Science Breakroom Hall
map-string-science-breakroom-hall = 科研休息室厅
# science canister room
map-string-science-canister-room = 科研气罐室
# Science Canister Storage
map-string-science-canister-storage = 科研气罐储藏
# Science Canisters
map-string-science-canisters = 科研气罐
# Science Cargo Bay Air Alarm
map-string-science-cargo-bay-air-alarm = 科研货运舱空气警报器
# science corridor air alarm
map-string-science-corridor-air-alarm = 科研走廊空气警报器
# Science Corridor North
map-string-science-corridor-north = 科研走廊北
# Science Data Servers
map-string-science-data-servers = 科研数据服务器
# Science Desk
map-string-science-desk = 科研台席
# Science Dock APC
map-string-science-dock-apc = 科研船坞 APC
# science docking area
map-string-science-docking-area = 科研对接区
# science docking bay air alarm
map-string-science-docking-bay-air-alarm = 科研对接舱空气警报器
# Science entrance and robotics
map-string-science-entrance-and-robotics = 科研入口机器人学
# Science Entry
map-string-science-entry = 科研入口
# Science Foyer
map-string-science-foyer = 科研门厅
# Science Foyer Air Alarm
map-string-science-foyer-air-alarm = 科研门厅空气警报器
# Science Foyer APC
map-string-science-foyer-apc = 科研门厅 APC
# Science Front air alarm
map-string-science-front-air-alarm = 科研前空气警报器
# Science Front Area
map-string-science-front-area = 科研前区
# Science Front fire alarm
map-string-science-front-fire-alarm = 科研前火警警报器
# Science Front Hall
map-string-science-front-hall = 科研前厅
# Science front north hall
map-string-science-front-north-hall = 科研前北厅
# Science Hall
map-string-science-hall = 科研厅
# Science Hall Entrance
map-string-science-hall-entrance = 科研厅入口
# science hallway air alarm
map-string-science-hallway-air-alarm = 科研走廊空气警报器
# Science hallway north
map-string-science-hallway-north = 科研走廊北
# Science hallway south
map-string-science-hallway-south = 科研走廊南
# Science Lathe Room
map-string-science-lathe-room = 科研车床室
# Science Lobby
map-string-science-lobby = 科研大厅
# Science Lobby air alarm
map-string-science-lobby-air-alarm = 科研大厅空气警报器
# Science Lobby APC
map-string-science-lobby-apc = 科研大厅 APC
# Science Lobby fire alarm
map-string-science-lobby-fire-alarm = 科研大厅火警警报器
# Science Lockers
map-string-science-lockers = 科研储物柜
# Science Long-ass Corridor East
map-string-science-long-ass-corridor-east = 科研长 ass 走廊东
# Science Long-ass Corridor Northeast
map-string-science-long-ass-corridor-northeast = 科研长 ass 走廊东北
# Science Long-ass Corridor West
map-string-science-long-ass-corridor-west = 科研长 ass 走廊西
# science main corridor
map-string-science-main-corridor = 科研主走廊
# Science Maint Hallway 2 APC
map-string-science-maint-hallway-2-apc = 科研维护通道走廊 2 APC
# Science Maintenance APC
map-string-science-maintenance-apc = 科研维护通道 APC
# Science Maintenance Hallway APC
map-string-science-maintenance-hallway-apc = 科研维护通道走廊 APC
# Science Mine Airlock
map-string-science-mine-airlock = 科研矿场气闸门
# science offices
map-string-science-offices = 科研办公区
# Science R&D
map-string-science-r-d = 科研 R D
# Science - RD Office
map-string-science-rd-office = 科研研究主管办公室
# Science [RD's office]
map-string-science-rd-s-office = 科研研究主管办公室
# Science Reception
map-string-science-reception = 科研接待处
# Science Reception air alarm
map-string-science-reception-air-alarm = 科研接待处空气警报器
# Science - Research & Development
map-string-science-research-development = 科研研究研发
# Science - Robotics
map-string-science-robotics = 科研机器人学
# Science Security Checkpoint
map-string-science-security-checkpoint = 科研安保检查站
# Science Server Room
map-string-science-server-room = 科研服务器机房
# Science South APC
map-string-science-south-apc = 科研南 APC
# Science - South Hall
map-string-science-south-hall = 科研南厅
# Science Storage air alarm
map-string-science-storage-air-alarm = 科研储藏空气警报器
# Science Storage fire alarm
map-string-science-storage-fire-alarm = 科研储藏火警警报器
# Science Substation
map-string-science-substation = 科研变电站
# Science Utility APC
map-string-science-utility-apc = 科研辅助 APC
# Science [Workshop]
map-string-science-workshop = 科研工坊
# Science Workshop Air Alarm
map-string-science-workshop-air-alarm = 科研工坊空气警报器
# Science Workshop APC
map-string-science-workshop-apc = 科研工坊 APC
# Science - Xenoarcheology
map-string-science-xenoarcheology = 科研异种考古学
# SE. Dining Area
map-string-se-dining-area = 东南餐饮区
# SE Solars
map-string-se-solars = 东南太阳能板
# Seating
map-string-seating = 座位区
# Seating Lounge
map-string-seating-lounge = 座位区休息室
# Sec Break Room Air Alarm
map-string-sec-break-room-air-alarm = 安保休息室空气警报器
# Sec Breakroom APC
map-string-sec-breakroom-apc = 安保休息室 APC
# SEC checkpoint
map-string-sec-checkpoint = 安保检查站
# Sec Checkpoint Evac
map-string-sec-checkpoint-evac = 安保检查站撤离
# Sec Engineering Post
map-string-sec-engineering-post = 安保工程岗
# Sec Entrance APC
map-string-sec-entrance-apc = 安保入口 APC
# SEC front
map-string-sec-front = 安保前
# Sec Locker Room Air Alarm
map-string-sec-locker-room-air-alarm = 安保更衣室空气警报器
# Sec Locker Room APC
map-string-sec-locker-room-apc = 安保更衣室 APC
# SEC Locker Room fire alarm
map-string-sec-locker-room-fire-alarm = 安保更衣室火警警报器
# SEC Maintenace APC
map-string-sec-maintenace-apc = 安保 Maintenace APC
# Sec North APC
map-string-sec-north-apc = 安保北 APC
# Sec North Hall Air Alarm
map-string-sec-north-hall-air-alarm = 安保北厅空气警报器
# Sec South Hall Air Alarm
map-string-sec-south-hall-air-alarm = 安保南厅空气警报器
# SECS
map-string-secs = 安保
# Secure Storage
map-string-secure-storage = 保密储藏
# Secure Storage APC
map-string-secure-storage-apc = 保密储藏 APC
# Secure Storage Boards
map-string-secure-storage-boards = 保密储藏主板
# Secure Tech Storage
map-string-secure-tech-storage = 保密技术储藏
# Security APC
map-string-security-apc = 安保 APC
# Security - Armory Blue
map-string-security-armory-blue = 安保军械库蓝
# Security - Armory Red
map-string-security-armory-red = 安保军械库红
# Security Arrivals APC
map-string-security-arrivals-apc = 安保到站厅 APC
# security break room
map-string-security-break-room = 安保休息室
# Security Cargo Checkpoint
map-string-security-cargo-checkpoint = 安保货运检查站
# Security Checkpoint
map-string-security-checkpoint = 安保检查站
# Security Checkpoint APC
map-string-security-checkpoint-apc = 安保检查站 APC
# security checkpoint north
map-string-security-checkpoint-north = 安保检查站北
# Security Desk
map-string-security-desk = 安保台席
# Security - Detective Office
map-string-security-detective-office = 安保侦探办公室
# Security Deterance SMES
map-string-security-deterance-smes = 安保 Deterance SMES
# security dock
map-string-security-dock = 安保船坞
# security dock east
map-string-security-dock-east = 安保船坞东
# security dock north
map-string-security-dock-north = 安保船坞北
# security dock west
map-string-security-dock-west = 安保船坞西
# Security Docking
map-string-security-docking = 安保对接
# Security East APC
map-string-security-east-apc = 安保东 APC
# Security East Entrance
map-string-security-east-entrance = 安保东入口
# Security East Entrance APC
map-string-security-east-entrance-apc = 安保东入口 APC
# Security - East Hall
map-string-security-east-hall = 安保东厅
# Security Engineering Office APC
map-string-security-engineering-office-apc = 安保工程办公室 APC
# Security Enterance North
map-string-security-enterance-north = 安保入口北
# Security Enterance South
map-string-security-enterance-south = 安保入口南
# Security Entrance Air Alarm
map-string-security-entrance-air-alarm = 安保入口空气警报器
# Security Equipment
map-string-security-equipment = 安保装备
# Security EVA
map-string-security-eva = 安保 EVA
# Security Evac Checkpoint
map-string-security-evac-checkpoint = 安保撤离检查站
# Security evac pod and airlock
map-string-security-evac-pod-and-airlock = 安保撤离舱气闸门
# Security Foyer
map-string-security-foyer = 安保门厅
# security front area air alarm
map-string-security-front-area-air-alarm = 安保前区空气警报器
# Security Front Desk
map-string-security-front-desk = 安保前台
# Security Hall
map-string-security-hall = 安保厅
# Security Hallway
map-string-security-hallway = 安保走廊
# Security Hallway air alarm
map-string-security-hallway-air-alarm = 安保走廊空气警报器
# Security Hallway East
map-string-security-hallway-east = 安保走廊东
# Security Hallway fire alarm
map-string-security-hallway-fire-alarm = 安保走廊火警警报器
# Security hallway south
map-string-security-hallway-south = 安保走廊南
# Security Hallway West
map-string-security-hallway-west = 安保走廊西
# Security lobby
map-string-security-lobby = 安保大厅
# Security Locker Room Air Alarm
map-string-security-locker-room-air-alarm = 安保更衣室空气警报器
# Security Locker Room APC
map-string-security-locker-room-apc = 安保更衣室 APC
# Security Lockers
map-string-security-lockers = 安保储物柜
# Security Lockers APC
map-string-security-lockers-apc = 安保储物柜 APC
# Security Main
map-string-security-main = 安保主
# Security Main Air Alarm
map-string-security-main-air-alarm = 安保主空气警报器
# Security Main Hall
map-string-security-main-hall = 安保主厅
# Security Main North
map-string-security-main-north = 安保主北
# Security Main South
map-string-security-main-south = 安保主南
# Security north
map-string-security-north = 安保北
# Security North APC
map-string-security-north-apc = 安保北 APC
# Security north hall
map-string-security-north-hall = 安保北厅
# Security Office
map-string-security-office = 安保办公室
# Security - Office HOS
map-string-security-office-hos = 安保办公室安保主管
# Security Offices APC
map-string-security-offices-apc = 安保办公区 APC
# Security 'Re-education' Room
map-string-security-re-education-room = 安保 Re 教育室
# Security Shuttle Hut
map-string-security-shuttle-hut = 安保穿梭机小屋
# Security SMES
map-string-security-smes = 安保 SMES
# Security South
map-string-security-south = 安保南
# Security South APC
map-string-security-south-apc = 安保南 APC
# Security South East APC
map-string-security-south-east-apc = 安保东南 APC
# Security south hall
map-string-security-south-hall = 安保南厅
# Security southwest hall
map-string-security-southwest-hall = 安保西南厅
# Security Storage APC
map-string-security-storage-apc = 安保储藏 APC
# Security Substation
map-string-security-substation = 安保变电站
# Security Substation APC
map-string-security-substation-apc = 安保变电站 APC
# Security Waiting Area
map-string-security-waiting-area = 安保等候区
# Security - Warden
map-string-security-warden = 安保典狱长
# Security West APC
map-string-security-west-apc = 安保西 APC
# Security west hall
map-string-security-west-hall = 安保西厅
# Server Room APC
map-string-server-room-apc = 服务器机房 APC
# Servers Hallway
map-string-servers-hallway = 服务器走廊
# Service Animal Pen
map-string-service-animal-pen = 服务动物围栏
# Service animal pens
map-string-service-animal-pens = 服务动物围栏
# Service Back Hall
map-string-service-back-hall = 服务后厅
# Service backroom
map-string-service-backroom = 服务后间
# Service [Bar-restaurant]
map-string-service-bar-restaurant = 服务酒吧餐厅
# Service Bathroom
map-string-service-bathroom = 服务盥洗室
# Service Break Area
map-string-service-break-area = 服务休息区
# Service Break Hallway
map-string-service-break-hallway = 服务休息走廊
# Service Breakroom
map-string-service-breakroom = 服务休息室
# Service/Chem Maint APC
map-string-service-chem-maint-apc = 服务化学维护通道 APC
# Service [Common workshop]
map-string-service-common-workshop = 服务公共工坊
# Service Corridor North
map-string-service-corridor-north = 服务走廊北
# Service Corridor South
map-string-service-corridor-south = 服务走廊南
# Service Corridor West
map-string-service-corridor-west = 服务走廊西
# service east air alarm
map-string-service-east-air-alarm = 服务东空气警报器
# Service East Substation
map-string-service-east-substation = 服务东变电站
# Service Hall
map-string-service-hall = 服务厅
# Service Hall APC
map-string-service-hall-apc = 服务厅 APC
# service hall north
map-string-service-hall-north = 服务厅北
# service hall south
map-string-service-hall-south = 服务厅南
# service hallway
map-string-service-hallway = 服务走廊
# Service hub north east
map-string-service-hub-north-east = 服务枢纽东北
# Service hub north west
map-string-service-hub-north-west = 服务枢纽西北
# Service hub south east
map-string-service-hub-south-east = 服务枢纽东南
# Service hub south west
map-string-service-hub-south-west = 服务枢纽西南
# Service [Janitor's office]
map-string-service-janitor-s-office = 服务清洁工办公室
# Service Plaza Air Alarm
map-string-service-plaza-air-alarm = 服务广场空气警报器
# Service Plaza APC
map-string-service-plaza-apc = 服务广场 APC
# Service Plaza North
map-string-service-plaza-north = 服务广场北
# Service room
map-string-service-room = 服务室
# Service Substation
map-string-service-substation = 服务变电站
# service west hallway air alarm
map-string-service-west-hallway-air-alarm = 服务西走廊空气警报器
# Service West Substation
map-string-service-west-substation = 服务西变电站
# Ship construction tool room
map-string-ship-construction-tool-room = 飞船建造工具室
# Ship Equipment
map-string-ship-equipment = 飞船装备
# Shipyard APC
map-string-shipyard-apc = 船坞 APC
# shipyard north
map-string-shipyard-north = 船坞北
# Shipyard North APC
map-string-shipyard-north-apc = 船坞北 APC
# shipyard south
map-string-shipyard-south = 船坞南
# shipyard storage
map-string-shipyard-storage = 船坞储藏
# Shooting Range air alarm
map-string-shooting-range-air-alarm = 射击靶场空气警报器
# Shooting Range fire alarm
map-string-shooting-range-fire-alarm = 射击靶场火警警报器
# Shop
map-string-shop = 商店
# Shop 1 APC
map-string-shop-1-apc = 商店 1 APC
# Shop 2 APC
map-string-shop-2-apc = 商店 2 APC
# Shop Two
map-string-shop-two = 商店二
# Show Room
map-string-show-room = 展示室
# Show Stage
map-string-show-stage = 展示舞台
# Showcase Room
map-string-showcase-room = 展台室
# Showroom Air Alarm
map-string-showroom-air-alarm = 展厅空气警报器
# Showroom APC
map-string-showroom-apc = 展厅 APC
# Showroom East
map-string-showroom-east = 展厅东
# Showroom Exterior
map-string-showroom-exterior = 展厅外围
# Showroom Fire Alarm
map-string-showroom-fire-alarm = 展厅火警警报器
# Showroom West
map-string-showroom-west = 展厅西
# Shrine
map-string-shrine = 神龛
# Shrine APC
map-string-shrine-apc = 神龛 APC
# Shuttle Bay
map-string-shuttle-bay = 穿梭机舱
# Shuttle Construction Room
map-string-shuttle-construction-room = 穿梭机建造室
# Shuttle constuction dock
map-string-shuttle-constuction-dock = 穿梭机建造船坞
# Shuttle Hut
map-string-shuttle-hut = 穿梭机小屋
# Shuttle Unloading
map-string-shuttle-unloading = 穿梭机卸货
# Side Equipment Room
map-string-side-equipment-room = 侧装备室
# Singularity Chamber Northeast
map-string-singularity-chamber-northeast = 奇点舱室东北
# Singularity Chamber Northwest
map-string-singularity-chamber-northwest = 奇点舱室西北
# Singularity Chamber Southwest
map-string-singularity-chamber-southwest = 奇点舱室西南
# Singularity Chamber West
map-string-singularity-chamber-west = 奇点舱室西
# singularity engine east
map-string-singularity-engine-east = 奇点引擎东
# Singularity Engine North
map-string-singularity-engine-north = 奇点引擎北
# Singularity Engine South
map-string-singularity-engine-south = 奇点引擎南
# Singularity storage
map-string-singularity-storage = 奇点储藏
# Singulo
map-string-singulo = 奇点
# Singulo APC
map-string-singulo-apc = 奇点 APC
# Singulo Cage
map-string-singulo-cage = 奇点笼舍
# Singulo Cage Airlock
map-string-singulo-cage-airlock = 奇点笼舍气闸门
# Singulo Cage Southwest
map-string-singulo-cage-southwest = 奇点笼舍西南
# Singulo Chamber East
map-string-singulo-chamber-east = 奇点舱室东
# Singulo East
map-string-singulo-east = 奇点东
# Singulo Power
map-string-singulo-power = 奇点电力
# Singulo SMES
map-string-singulo-smes = 奇点 SMES
# Singulo South
map-string-singulo-south = 奇点南
# Singulo Sub
map-string-singulo-sub = 奇点 Sub
# Singulo Substation
map-string-singulo-substation = 奇点变电站
# Singulo Supply
map-string-singulo-supply = 奇点补给
# Singulo West
map-string-singulo-west = 奇点西
# Sinks
map-string-sinks = 水槽
# Sitting room
map-string-sitting-room = 起居室
# Skub Room APC
map-string-skub-room-apc = Skub 室 APC
# skybridge centre air alarm
map-string-skybridge-centre-air-alarm = skybridge 中心空气警报器
# skybridge east air alarm
map-string-skybridge-east-air-alarm = skybridge 东空气警报器
# skybridge west air alarm
map-string-skybridge-west-air-alarm = skybridge 西空气警报器
# SM Battery
map-string-sm-battery = 超物质蓄电池
# SM Main
map-string-sm-main = 超物质主
# SMES (AI Core)
map-string-smes-ai-core = AI 核心 SMES
# SMES Array
map-string-smes-array = SMES 阵列
# SMES Array air alarm
map-string-smes-array-air-alarm = SMES 阵列空气警报器
# SMES Array fire alarm
map-string-smes-array-fire-alarm = SMES 阵列火警警报器
# SMES Bank 1
map-string-smes-bank-1 = SMES 银行 1
# SMES Bank 2
map-string-smes-bank-2 = SMES 银行 2
# SMES Bank 3
map-string-smes-bank-3 = SMES 银行 3
# SMES Bank 4
map-string-smes-bank-4 = SMES 银行 4
# SMES Bank 5
map-string-smes-bank-5 = SMES 银行 5
# SMES Bank 6
map-string-smes-bank-6 = SMES 银行 6
# SMES Bank Air Alarm
map-string-smes-bank-air-alarm = SMES 银行空气警报器
# SMES Bank / AME
map-string-smes-bank-ame = SMES 银行 AME
# SMES Bank APC
map-string-smes-bank-apc = SMES 银行 APC
# SMES (bridge)
map-string-smes-bridge = 舰桥 SMES
# SMES (Cargo Shuttle)
map-string-smes-cargo-shuttle = 货运穿梭机 SMES
# SMES (Command)
map-string-smes-command = 指挥部 SMES
# SMES (East Solars)
map-string-smes-east-solars = 东太阳能板 SMES
# SMES (Grav/Anchor)
map-string-smes-grav-anchor = 重力锚定器 SMES
# SMES (Gravity Generator)
map-string-smes-gravity-generator = 重力发生器 SMES
# SMES Hall
map-string-smes-hall = SMES 厅
# SMES Hallway
map-string-smes-hallway = SMES 走廊
# SMES (North Solar)
map-string-smes-north-solar = 北太阳能 SMES
# SMES (north solars)
map-string-smes-north-solars = 北太阳能板 SMES
# SMES (PA)
map-string-smes-pa = 粒子加速器 SMES
# SMES (Particle Accelerator)
map-string-smes-particle-accelerator = 粒子加速器 SMES
# SMES Power Bank North
map-string-smes-power-bank-north = SMES 电力银行北
# SMES Power Bank South
map-string-smes-power-bank-south = SMES 电力银行南
# SMES Room
map-string-smes-room = SMES 室
# SMES (Security)
map-string-smes-security = 安保 SMES
# SMES (Solars North East)
map-string-smes-solars-north-east = 太阳能板东北 SMES
# SMES (Solars, SE)
map-string-smes-solars-se = 太阳能板东南 SMES
# SMES (Solars South East)
map-string-smes-solars-south-east = 太阳能板东南 SMES
# SMES (Solars South West)
map-string-smes-solars-south-west = 太阳能板西南 SMES
# SMES (South Solar)
map-string-smes-south-solar = 南太阳能 SMES
# SMES (Station Anchor)
map-string-smes-station-anchor = 空间站锚定器 SMES
# SMES (Supermatter)
map-string-smes-supermatter = 超物质 SMES
# SMES (Telecomms)
map-string-smes-telecomms = 通讯 SMES
# SMES (Tesla)
map-string-smes-tesla = 特斯拉 SMES
# SMES (West Solar)
map-string-smes-west-solar = 西太阳能 SMES
# SMES (west solars)
map-string-smes-west-solars = 西太阳能板 SMES
# Smoking Area
map-string-smoking-area = 吸烟区
# Smoking Lounge
map-string-smoking-lounge = 吸烟休息室
# Soft Play Area
map-string-soft-play-area = Soft 游乐区
# Solar South East APC
map-string-solar-south-east-apc = 太阳能东南 APC
# Solar South West
map-string-solar-south-west = 太阳能西南
# Solar South West APC
map-string-solar-south-west-apc = 太阳能西南 APC
# Solar West APC
map-string-solar-west-apc = 太阳能西 APC
# Solars APC
map-string-solars-apc = 太阳能板 APC
# solars arm a
map-string-solars-arm-a = 太阳能板臂 A
# solars arm b
map-string-solars-arm-b = 太阳能板臂 B
# Solars E
map-string-solars-e = 太阳能板 E
# Solars NE Door
map-string-solars-ne-door = 太阳能板东北门
# Solars North 
map-string-solars-north = 太阳能板北
# Solars North Airlock 
map-string-solars-north-airlock = 太阳能板北气闸门
# Solars North APC
map-string-solars-north-apc = 太阳能板北 APC
# Solars North East APC
map-string-solars-north-east-apc = 太阳能板东北 APC
# Solars North East SMES
map-string-solars-north-east-smes = 太阳能板东北 SMES
# Solars North East Substation
map-string-solars-north-east-substation = 太阳能板东北变电站
# Solars North-West
map-string-solars-north-west = 太阳能板西北
# Solars North West APC
map-string-solars-north-west-apc = 太阳能板西北 APC
# Solars North West SMES
map-string-solars-north-west-smes = 太阳能板西北 SMES
# Solars NW 
map-string-solars-nw = 太阳能板西北
# Solars NW Door
map-string-solars-nw-door = 太阳能板西北门
# Solars SE Door
map-string-solars-se-door = 太阳能板东南门
# Solars SMES
map-string-solars-smes = 太阳能板 SMES
# Solars South
map-string-solars-south = 太阳能板南
# Solars South Airlock
map-string-solars-south-airlock = 太阳能板南气闸门
# Solars South APC
map-string-solars-south-apc = 太阳能板南 APC
# Solars South East
map-string-solars-south-east = 太阳能板东南
# Solars South East Airlock
map-string-solars-south-east-airlock = 太阳能板东南气闸门
# Solars South East APC
map-string-solars-south-east-apc = 太阳能板东南 APC
# Solars South East SMES
map-string-solars-south-east-smes = 太阳能板东南 SMES
# Solars South-West
map-string-solars-south-west = 太阳能板西南
# Solars South West Airlock
map-string-solars-south-west-airlock = 太阳能板西南气闸门
# Solars South West APC
map-string-solars-south-west-apc = 太阳能板西南 APC
# Solars South West SMES
map-string-solars-south-west-smes = 太阳能板西南 SMES
# Solars South West Substation
map-string-solars-south-west-substation = 太阳能板西南变电站
# Solars Southwest 
map-string-solars-southwest = 太阳能板西南
# Solars Southwest Door
map-string-solars-southwest-door = 太阳能板西南门
# solars substation
map-string-solars-substation = 太阳能板变电站
# Solars SW 
map-string-solars-sw = 太阳能板西南
# Solars SW Door
map-string-solars-sw-door = 太阳能板西南门
# Solars W
map-string-solars-w = 太阳能板 W
# Solitary Exterior
map-string-solitary-exterior = 单人禁闭外围
# South
map-string-south = 南
# South ai solars.
map-string-south-ai-solars = 南 AI 太阳能板
# South Air Alarm
map-string-south-air-alarm = 南空气警报器
# South Arrivals Dock
map-string-south-arrivals-dock = 南到站厅船坞
# South Cargo Substation
map-string-south-cargo-substation = 南货运变电站
# South Chem Sub
map-string-south-chem-sub = 南化学 Sub
# South East
map-string-south-east = 东南
# South East Atmos Sub
map-string-south-east-atmos-sub = 东南大气 Sub
# South East Solar SMES
map-string-south-east-solar-smes = 东南太阳能 SMES
# South East Solar Substation
map-string-south-east-solar-substation = 东南太阳能变电站
# South Engineering APC
map-string-south-engineering-apc = 南工程 APC
# South evac A
map-string-south-evac-a = 南撤离 A
# South Evac B
map-string-south-evac-b = 南撤离 B
# South Hall A
map-string-south-hall-a = 南厅 A
# South Hall B
map-string-south-hall-b = 南厅 B
# South Hall Evac Pod
map-string-south-hall-evac-pod = 南厅撤离舱
# South Hallway air alarm
map-string-south-hallway-air-alarm = 南走廊空气警报器
# South Hallway APC
map-string-south-hallway-apc = 南走廊 APC
# South Hallway fire alarm
map-string-south-hallway-fire-alarm = 南走廊火警警报器
# south junction
map-string-south-junction = 南交汇处
# South Maint APC
map-string-south-maint-apc = 南维护通道 APC
# South Maints APC
map-string-south-maints-apc = 南维护通道 APC
# South medical/evac substation
map-string-south-medical-evac-substation = 南医疗撤离变电站
# South of Hydroponics
map-string-south-of-hydroponics = 南水培
# South Sci Sub
map-string-south-sci-sub = 南科研 Sub
# South security
map-string-south-security = 南安保
# South Service Sub
map-string-south-service-sub = 南服务 Sub
# South Solar SMES
map-string-south-solar-smes = 南太阳能 SMES
# South Solar Sub
map-string-south-solar-sub = 南太阳能 Sub
# south solars air alarm
map-string-south-solars-air-alarm = 南太阳能板空气警报器
# South Solars APC
map-string-south-solars-apc = 南太阳能板 APC
# South Solars SMES
map-string-south-solars-smes = 南太阳能板 SMES
# South Solars substation
map-string-south-solars-substation = 南太阳能板变电站
# South West
map-string-south-west = 西南
# South-West Solars
map-string-south-west-solars = 西南太阳能板
# Southeast
map-string-southeast = 东南
# Southeast dock
map-string-southeast-dock = 东南船坞
# southeast hallway
map-string-southeast-hallway = 东南走廊
# Southeast Maintenance APC
map-string-southeast-maintenance-apc = 东南维护通道 APC
# southeast maintenance substation
map-string-southeast-maintenance-substation = 东南维护通道变电站
# Southeast solars
map-string-southeast-solars = 东南太阳能板
# Southeast Solars SMES
map-string-southeast-solars-smes = 东南太阳能板 SMES
# Southwest Hallway
map-string-southwest-hallway = 西南走廊
# Southwest Solars
map-string-southwest-solars = 西南太阳能板
# Southwest Solars APC
map-string-southwest-solars-apc = 西南太阳能板 APC
# southwest solars SMES
map-string-southwest-solars-smes = 西南太阳能板 SMES
# southwest solars substation
map-string-southwest-solars-substation = 西南太阳能板变电站
# Space Bar APC
map-string-space-bar-apc = 太空酒吧 APC
# Space Bar SMES
map-string-space-bar-smes = 太空酒吧 SMES
# Space Bar substation
map-string-space-bar-substation = 太空酒吧变电站
# Space Bridge
map-string-space-bridge = 太空舰桥
# Spare Substation
map-string-spare-substation = 备用变电站
# stage hall air alarm
map-string-stage-hall-air-alarm = 舞台厅空气警报器
# starboard
map-string-starboard = 右舷
# Starboard Bow Service Substation
map-string-starboard-bow-service-substation = 右舷艏服务变电站
# Starboard Bow Substation
map-string-starboard-bow-substation = 右舷艏变电站
# Starboard Gunnery APC
map-string-starboard-gunnery-apc = 右舷 Gunnery APC
# starboard nacelle
map-string-starboard-nacelle = 右舷舱体
# Starboard Thruster APC
map-string-starboard-thruster-apc = 右舷 Thruster APC
# Station Anchor APC
map-string-station-anchor-apc = 空间站锚定器 APC
# station anchor hallway
map-string-station-anchor-hallway = 空间站锚定器走廊
# stern
map-string-stern = 艉
# Stern Thruster APC
map-string-stern-thruster-apc = 艉 Thruster APC
# Store Area
map-string-store-area = 商店区
# studio
map-string-studio = 演播室
# studio audience
map-string-studio-audience = 演播室观众席
# Substation
map-string-substation = 变电站
# substation (AI)
map-string-substation-ai = AI 变电站
# substation (AI Core)
map-string-substation-ai-core = AI 核心变电站
# substation (AI Core Main)
map-string-substation-ai-core-main = AI 核心主变电站
# substation (AI Upload)
map-string-substation-ai-upload = AI 上传室变电站
# substation (AME)
map-string-substation-ame = AME 变电站
# substation (Anchor / Gravity)
map-string-substation-anchor-gravity = 锚定器重力变电站
# Substation APC
map-string-substation-apc = 变电站 APC
# substation (Armory / Genpop / Warden)
map-string-substation-armory-genpop-warden = 军械库普通监区典狱长变电站
# substation (Arrivals)
map-string-substation-arrivals = 到站厅变电站
# substation (Arrivals Docks East)
map-string-substation-arrivals-docks-east = 到站厅船坞东变电站
# substation (Arrivals Docks West)
map-string-substation-arrivals-docks-west = 到站厅船坞西变电站
# substation (Atmos)
map-string-substation-atmos = 大气变电站
# substation (atmospherics)
map-string-substation-atmospherics = 大气变电站
# substation (Bar / Clothes)
map-string-substation-bar-clothes = 酒吧 Clothes 变电站
# substation (Botany/Central Dorms)
map-string-substation-botany-central-dorms = 植物学中央宿舍变电站
# substation (Boxing)
map-string-substation-boxing = 拳击变电站
# substation (Boxing/Jani)
map-string-substation-boxing-jani = 拳击清洁工变电站
# substation (Bridge)
map-string-substation-bridge = 舰桥变电站
# substation (Bridge E)
map-string-substation-bridge-e = 舰桥 E 变电站
# substation (Bridge One)
map-string-substation-bridge-one = 舰桥一变电站
# substation (Bridge Two)
map-string-substation-bridge-two = 舰桥二变电站
# substation (Bridge W)
map-string-substation-bridge-w = 舰桥 W 变电站
# substation (Cannon W)
map-string-substation-cannon-w = Cannon W 变电站
# substation (Captain)
map-string-substation-captain = 舰长变电站
# substation (Cargo)
map-string-substation-cargo = 货运变电站
# substation (Central Service)
map-string-substation-central-service = 中央服务变电站
# substation (Chapel / East Docks)
map-string-substation-chapel-east-docks = 教堂东船坞变电站
# substation (Chapel/Law)
map-string-substation-chapel-law = 教堂律政变电站
# substation (Chapel/Telecomms)
map-string-substation-chapel-telecomms = 教堂通讯变电站
# substation (Command)
map-string-substation-command = 指挥部变电站
# substation (Docking Arm)
map-string-substation-docking-arm = 对接臂变电站
# substation (Docks West)
map-string-substation-docks-west = 船坞西变电站
# substation (Dormitories)
map-string-substation-dormitories = 宿舍变电站
# substation (Dorms)
map-string-substation-dorms = 宿舍变电站
# substation (East Solars)
map-string-substation-east-solars = 东太阳能板变电站
# substation (Engie Ichi)
map-string-substation-engie-ichi = 工程 Ichi 变电站
# substation (Engie Ni)
map-string-substation-engie-ni = 工程 Ni 变电站
# substation (Engine)
map-string-substation-engine = 引擎变电站
# substation (Engine E)
map-string-substation-engine-e = 引擎 E 变电站
# substation (Engine S/Atmos)
map-string-substation-engine-s-atmos = 引擎 S 大气变电站
# substation (Engine W/Chapel)
map-string-substation-engine-w-chapel = 引擎 W 教堂变电站
# substation (Engineering)
map-string-substation-engineering = 工程变电站
# substation (Entertainer Rooms)
map-string-substation-entertainer-rooms = Entertainer 室变电站
# substation (EVA / Botany)
map-string-substation-eva-botany = EVA 植物学变电站
# substation (Evac)
map-string-substation-evac = 撤离变电站
# substation (General Center)
map-string-substation-general-center = 综合中心变电站
# substation (General East)
map-string-substation-general-east = 综合东变电站
# substation (General West)
map-string-substation-general-west = 综合西变电站
# substation (Grav/Anchor)
map-string-substation-grav-anchor = 重力锚定器变电站
# substation (gravity)
map-string-substation-gravity = 重力变电站
# substation (Gravity Generator)
map-string-substation-gravity-generator = 重力发生器变电站
# substation (Gravity, Station Anchor)
map-string-substation-gravity-station-anchor = 重力空间站锚定器变电站
# substation (HoP, General)
map-string-substation-hop-general = 人事主管综合变电站
# substation (HOP / Kitchen)
map-string-substation-hop-kitchen = 人事主管厨房变电站
# substation (Internal Affairs)
map-string-substation-internal-affairs = 内部事务变电站
# substation (Janitorial)
map-string-substation-janitorial = 清洁变电站
# substation (Law)
map-string-substation-law = 律政变电站
# substation (Law / Vault)
map-string-substation-law-vault = 律政金库变电站
# substation (Medical)
map-string-substation-medical = 医疗变电站
# substation (Medical East)
map-string-substation-medical-east = 医疗东变电站
# substation (Medical West)
map-string-substation-medical-west = 医疗西变电站
# substation (North Solar)
map-string-substation-north-solar = 北太阳能变电站
# substation (north solars)
map-string-substation-north-solars = 北太阳能板变电站
# substation (PA)
map-string-substation-pa = 粒子加速器变电站
# substation (Particle Accelerator)
map-string-substation-particle-accelerator = 粒子加速器变电站
# substation (Robotics)
map-string-substation-robotics = 机器人学变电站
# substation (Sci)
map-string-substation-sci = 科研变电站
# substation (Science)
map-string-substation-science = 科研变电站
# substation (Science East)
map-string-substation-science-east = 科研东变电站
# substation (Science North)
map-string-substation-science-north = 科研北变电站
# substation (Science South)
map-string-substation-science-south = 科研南变电站
# substation (Science West)
map-string-substation-science-west = 科研西变电站
# substation (Sec)
map-string-substation-sec = 安保变电站
# substation (Security)
map-string-substation-security = 安保变电站
# substation (Security / EVAC)
map-string-substation-security-evac = 安保撤离变电站
# substation (Service)
map-string-substation-service = 服务变电站
# substation (Service East)
map-string-substation-service-east = 服务东变电站
# substation (service hub)
map-string-substation-service-hub = 服务枢纽变电站
# substation (service north)
map-string-substation-service-north = 服务北变电站
# substation (Service South)
map-string-substation-service-south = 服务南变电站
# substation (Service South West)
map-string-substation-service-south-west = 服务西南变电站
# substation (Service West)
map-string-substation-service-west = 服务西变电站
# substation (Singulo)
map-string-substation-singulo = 奇点变电站
# substation (SM/TEG)
map-string-substation-sm-teg = 超物质 TEG 变电站
# substation (Solars North East)
map-string-substation-solars-north-east = 太阳能板东北变电站
# substation (Solars, SE)
map-string-substation-solars-se = 太阳能板东南变电站
# substation (Solars South East)
map-string-substation-solars-south-east = 太阳能板东南变电站
# substation (Solars South West)
map-string-substation-solars-south-west = 太阳能板西南变电站
# substation (South Hall)
map-string-substation-south-hall = 南厅变电站
# substation (South Security)
map-string-substation-south-security = 南安保变电站
# substation (South Service)
map-string-substation-south-service = 南服务变电站
# substation (South Solar)
map-string-substation-south-solar = 南太阳能变电站
# substation (Station Anchor)
map-string-substation-station-anchor = 空间站锚定器变电站
# substation (Substation (Deathsquad Dock))
map-string-substation-substation-deathsquad-dock = 变电站变电站 Deathsquad 船坞
# substation (Substation (Engineering))
map-string-substation-substation-engineering = 变电站变电站工程
# substation (Substation (ERT Dock))
map-string-substation-substation-ert-dock = 变电站变电站 ERT 船坞
# substation (Substation (Grav/Anchor))
map-string-substation-substation-grav-anchor = 变电站变电站重力锚定器
# substation (Substation (North-West/Solars))
map-string-substation-substation-north-west-solars = 变电站变电站西北太阳能板
# substation (Substation (South-East))
map-string-substation-substation-south-east = 变电站变电站东南
# substation (Substation (South-West))
map-string-substation-substation-south-west = 变电站变电站西南
# substation (Supermatter/Atmos)
map-string-substation-supermatter-atmos = 超物质大气变电站
# substation (Telecomms)
map-string-substation-telecomms = 通讯变电站
# substation (Tesla)
map-string-substation-tesla = 特斯拉变电站
# substation (unknown)
map-string-substation-unknown = unknown 变电站
# substation (Vault)
map-string-substation-vault = 金库变电站
# substation (West Security)
map-string-substation-west-security = 西安保变电站
# substation (West Solar)
map-string-substation-west-solar = 西太阳能变电站
# substation (west solars)
map-string-substation-west-solars = 西太阳能板变电站
# substation (zoo)
map-string-substation-zoo = 动物园变电站
# Suit Locker Room
map-string-suit-locker-room = 宇航服更衣室
# Super Matter Containment
map-string-super-matter-containment = Super 物质封闭
# Supermatter Entry
map-string-supermatter-entry = 超物质入口
# Supermatter Piping
map-string-supermatter-piping = 超物质管路
# Supermatter SMES
map-string-supermatter-smes = 超物质 SMES
# supply
map-string-supply = 补给
# Supply Breakroom
map-string-supply-breakroom = 补给休息室
# Supply Checkpoint
map-string-supply-checkpoint = 补给检查站
# Supply Closet
map-string-supply-closet = 补给储物间
# Supply Room
map-string-supply-room = 补给室
# Supply Storage
map-string-supply-storage = 补给储藏
# Supply Substation
map-string-supply-substation = 补给变电站
# Surgery Air Alarm
map-string-surgery-air-alarm = 手术室空气警报器
# Surgery APC
map-string-surgery-apc = 手术室 APC
# Surgery bay
map-string-surgery-bay = 手术室舱
# Surgery Hallway North
map-string-surgery-hallway-north = 手术室走廊北
# Surgery North
map-string-surgery-north = 手术室北
# Surgery Observation
map-string-surgery-observation = 手术室观测
# Surgery Observation Air Alarm
map-string-surgery-observation-air-alarm = 手术室观测空气警报器
# Surgery prep
map-string-surgery-prep = 手术室准备
# Surgery Recovery
map-string-surgery-recovery = 手术室恢复室
# Surgery Secondary
map-string-surgery-secondary = 手术室次
# Surgery South
map-string-surgery-south = 手术室南
# Surgery Staging
map-string-surgery-staging = 手术室集结
# surgery staging area
map-string-surgery-staging-area = 手术室集结区
# Surgery Viewing
map-string-surgery-viewing = 手术室观景
# Surgery Ward
map-string-surgery-ward = 手术室病房
# Surgical Hallway South
map-string-surgical-hallway-south = 手术走廊南
# Surgical Theatre
map-string-surgical-theatre = 手术剧院
# Surgical Theatre South
map-string-surgical-theatre-south = 手术剧院南
# Surgical Wing
map-string-surgical-wing = 手术区
# Surveillance Shack
map-string-surveillance-shack = 监控棚屋
# SW. Dining Area
map-string-sw-dining-area = 西南餐饮区
# SW Solars
map-string-sw-solars = 西南太阳能板
# Swimming Pool
map-string-swimming-pool = 游泳泳池
# Swimming Pool APC
map-string-swimming-pool-apc = 游泳泳池 APC
# Syndicate SMES
map-string-syndicate-smes = 辛迪加 SMES
# Syndicate Substation
map-string-syndicate-substation = 辛迪加变电站
# Tech Storage Air Alarm
map-string-tech-storage-air-alarm = 技术储藏空气警报器
# Tech Storage APC
map-string-tech-storage-apc = 技术储藏 APC
# Tech Storage Substation
map-string-tech-storage-substation = 技术储藏变电站
# Tech Vault air alarm
map-string-tech-vault-air-alarm = 技术金库空气警报器
# Tech Vault APC
map-string-tech-vault-apc = 技术金库 APC
# Tech Vault Boards
map-string-tech-vault-boards = 技术金库主板
# tech vault inner
map-string-tech-vault-inner = 技术金库内
# tech vault outer
map-string-tech-vault-outer = 技术金库外
# Tech Vault Secure Storage
map-string-tech-vault-secure-storage = 技术金库保密储藏
# Technical Storage
map-string-technical-storage = 技术储藏
# Technical Storage APC
map-string-technical-storage-apc = 技术储藏 APC
# TEG Air Alarm
map-string-teg-air-alarm = TEG 空气警报器
# TEG Airlock
map-string-teg-airlock = TEG 气闸门
# TEG - Burn Chamber
map-string-teg-burn-chamber = TEG 烧伤舱室
# TEG Burn Chamber Air Alarm
map-string-teg-burn-chamber-air-alarm = TEG 烧伤舱室空气警报器
# TEG center
map-string-teg-center = TEG 中心
# TEG Chamber air alarm
map-string-teg-chamber-air-alarm = TEG 舱室空气警报器
# TEG Control Air Alarm
map-string-teg-control-air-alarm = TEG 控制空气警报器
# TEG Control Fire Alarm
map-string-teg-control-fire-alarm = TEG 控制火警警报器
# TEG Cool Loop
map-string-teg-cool-loop = TEG 冷却环道
# TEG east
map-string-teg-east = TEG 东
# Teg Entrance
map-string-teg-entrance = TEG 入口
# TEG Entrance Fire Alarm
map-string-teg-entrance-fire-alarm = TEG 入口火警警报器
# TEG exterior
map-string-teg-exterior = TEG 外围
# TEG Fire Alarm
map-string-teg-fire-alarm = TEG 火警警报器
# TEG hallway
map-string-teg-hallway = TEG 走廊
# TEG Radiator
map-string-teg-radiator = TEG 散热器
# TEG Room
map-string-teg-room = TEG 室
# TEG Room Air Alarm
map-string-teg-room-air-alarm = TEG 室空气警报器
# TEG SMES Bank
map-string-teg-smes-bank = TEG SMES 银行
# TEG - South
map-string-teg-south = TEG 南
# TEG vent
map-string-teg-vent = TEG 通风
# TEG west
map-string-teg-west = TEG 西
# Telecomms air alarm
map-string-telecomms-air-alarm = 通讯空气警报器
# Telecomms Air Monitor
map-string-telecomms-air-monitor = 通讯空气监视器
# Telecomms and Routers
map-string-telecomms-and-routers = 通讯路由器
# Telecomms APC
map-string-telecomms-apc = 通讯 APC
# Telecomms East
map-string-telecomms-east = 通讯东
# Telecomms Interior
map-string-telecomms-interior = 通讯内部
# Telecomms North APC
map-string-telecomms-north-apc = 通讯北 APC
# Telecomms Servers East APC
map-string-telecomms-servers-east-apc = 通讯服务器东 APC
# Telecomms Servers West APC
map-string-telecomms-servers-west-apc = 通讯服务器西 APC
# Telecomms SMES
map-string-telecomms-smes = 通讯 SMES
# Telecomms South APC
map-string-telecomms-south-apc = 通讯南 APC
# Telecomms Storage
map-string-telecomms-storage = 通讯储藏
# Telecomms Sub
map-string-telecomms-sub = 通讯 Sub
# Telecomms Substation
map-string-telecomms-substation = 通讯变电站
# Telecommunications
map-string-telecommunications = 通讯
# Telecommunications Air Alarm
map-string-telecommunications-air-alarm = 通讯空气警报器
# Telecommunications Inner APC
map-string-telecommunications-inner-apc = 通讯内 APC
# Telecommunications Outer APC
map-string-telecommunications-outer-apc = 通讯外 APC
# Telecommunications SMES
map-string-telecommunications-smes = 通讯 SMES
# Telecommunications Substation
map-string-telecommunications-substation = 通讯变电站
# Telecoms
map-string-telecoms = 通讯
# Telecoms APC
map-string-telecoms-apc = 通讯 APC
# Telecoms Front APC
map-string-telecoms-front-apc = 通讯前 APC
# Telecoms North APC
map-string-telecoms-north-apc = 通讯北 APC
# Telecoms SMES
map-string-telecoms-smes = 通讯 SMES
# Telecoms South APC
map-string-telecoms-south-apc = 通讯南 APC
# Telecoms Substation
map-string-telecoms-substation = 通讯变电站
# teleportation room substation
map-string-teleportation-room-substation = teleportation 室变电站
# Temporary Law APC
map-string-temporary-law-apc = Temporary 律政 APC
# Tesla air alarm
map-string-tesla-air-alarm = 特斯拉空气警报器
# Tesla APC
map-string-tesla-apc = 特斯拉 APC
# Tesla Chamber
map-string-tesla-chamber = 特斯拉舱室
# Tesla control
map-string-tesla-control = 特斯拉控制
# tesla enterance
map-string-tesla-enterance = 特斯拉入口
# Tesla North
map-string-tesla-north = 特斯拉北
# Tesla SMES
map-string-tesla-smes = 特斯拉 SMES
# tesla storage
map-string-tesla-storage = 特斯拉储藏
# Tesla substation
map-string-tesla-substation = 特斯拉变电站
# Test Chamber North
map-string-test-chamber-north = 测试舱室北
# Test Chamber North air alarm
map-string-test-chamber-north-air-alarm = 测试舱室北空气警报器
# Test Chamber South
map-string-test-chamber-south = 测试舱室南
# Test Chamber South air alarm
map-string-test-chamber-south-air-alarm = 测试舱室南空气警报器
# The Bar Channel
map-string-the-bar-channel = 酒吧频道
# THE Burn Chamber
map-string-the-burn-chamber = 烧伤舱室
# The Engine Change
map-string-the-engine-change = 引擎更衣
# The Entertainment Channel
map-string-the-entertainment-channel = 娱乐频道
# The House of God
map-string-the-house-of-god = 住所 God
# The Nature(?) Channel
map-string-the-nature-channel = 自然频道
# Theater APC
map-string-theater-apc = 剧院 APC
# Theater Hallway
map-string-theater-hallway = 剧院走廊
# Theater Room
map-string-theater-room = 剧院室
# theater seating
map-string-theater-seating = 剧院座位区
# Theatre Air Alarm
map-string-theatre-air-alarm = 剧院空气警报器
# Theatre APC
map-string-theatre-apc = 剧院 APC
# Theatre Backroom
map-string-theatre-backroom = 剧院后间
# Theatre - Clown's Room
map-string-theatre-clown-s-room = 剧院小丑室
# Theatre Front
map-string-theatre-front = 剧院前
# Theatre Hallway air alarm
map-string-theatre-hallway-air-alarm = 剧院走廊空气警报器
# Theatre Hallway fire alarm
map-string-theatre-hallway-fire-alarm = 剧院走廊火警警报器
# Theatre - Mime's Room
map-string-theatre-mime-s-room = 剧院默剧演员室
# Theatre - Musician's Room
map-string-theatre-musician-s-room = 剧院乐师室
# Theatre Room
map-string-theatre-room = 剧院室
# Theatre Room air alarm
map-string-theatre-room-air-alarm = 剧院室空气警报器
# Thrusters (E)
map-string-thrusters-e = E 推进器
# Thrusters (E) External
map-string-thrusters-e-external = 推进器 E 外部
# Thrusters (S)
map-string-thrusters-s = S 推进器
# Thrusters (S) External
map-string-thrusters-s-external = 推进器 S 外部
# Thrusters (W)
map-string-thrusters-w = W 推进器
# Toe Room Entrance
map-string-toe-room-entrance = Toe 室入口
# Tool Hall
map-string-tool-hall = 工具厅
# Tool Room APC
map-string-tool-room-apc = 工具室 APC
# tool room hallway north
map-string-tool-room-hallway-north = 工具室走廊北
# Tool Storage Air Alarm
map-string-tool-storage-air-alarm = 工具储藏室空气警报器
# Toolroom
map-string-toolroom = 工具间
# Toolroom APC
map-string-toolroom-apc = 工具间 APC
# Toolroom O' Tide
map-string-toolroom-o-tide = 工具间 Tide
# Toolroom Substation
map-string-toolroom-substation = 工具间变电站
# Tools APC
map-string-tools-apc = 工具 APC
# tools hallway
map-string-tools-hallway = 工具走廊
# Tools Room
map-string-tools-room = 工具室
# Tools Room air alarm
map-string-tools-room-air-alarm = 工具室空气警报器
# Tools Room Hallway
map-string-tools-room-hallway = 工具室走廊
# Toolshed
map-string-toolshed = 工具棚
# Toxin Chamber APC
map-string-toxin-chamber-apc = Toxin 舱室 APC
# Toxin Storage APC
map-string-toxin-storage-apc = Toxin 储藏 APC
# Toxins
map-string-toxins = 毒理学
# Toxins Lab APC
map-string-toxins-lab-apc = 毒理学实验室 APC
# Toxins Room Air Alarm
map-string-toxins-room-air-alarm = 毒理学室空气警报器
# Toxins Storage
map-string-toxins-storage = 毒理学储藏
# Toxins Storage Cans
map-string-toxins-storage-cans = 毒理学储藏气罐
# Toy Closet
map-string-toy-closet = 玩具储物间
# Training Chute
map-string-training-chute = 训练滑槽
# Training Exterior
map-string-training-exterior = 训练外围
# Treatment
map-string-treatment = 治疗
# Tri-department hallway
map-string-tri-department-hallway = 三部走廊
# Triage
map-string-triage = 分诊
# Triage Air Alarm
map-string-triage-air-alarm = 分诊空气警报器
# Triage East
map-string-triage-east = 分诊东
# Triage Main
map-string-triage-main = 分诊主
# Triage West
map-string-triage-west = 分诊西
# U01 - Cargo Entrance
map-string-u01-cargo-entrance = U01 货运入口
# U02 - Cargo Reception
map-string-u02-cargo-reception = U02 货运接待处
# U03 - Cargo Bay West
map-string-u03-cargo-bay-west = U03 货运舱西
# U04 - Cargo Bay East
map-string-u04-cargo-bay-east = U04 货运舱东
# U05 - Salvage
map-string-u05-salvage = U05 打捞
# U06 - Mailroom
map-string-u06-mailroom = U06 邮件室
# Unrestricted Medical
map-string-unrestricted-medical = 开放医疗
# upper armory
map-string-upper-armory = 上层军械库
# Upper Dorms
map-string-upper-dorms = 上层宿舍
# Utilities
map-string-utilities = 公用设施
# Utility Room
map-string-utility-room = 辅助室
# V01 - Lounge West
map-string-v01-lounge-west = V01 休息室西
# V02 - Lounge East
map-string-v02-lounge-east = V02 休息室东
# V03 - Bar
map-string-v03-bar = V03 酒吧
# V04 - Kitchen
map-string-v04-kitchen = V04 厨房
# V05 - Stage
map-string-v05-stage = V05 舞台
# V06 - Theatre
map-string-v06-theatre = V06 剧院
# V07 - Janitor's Closet
map-string-v07-janitor-s-closet = V07 清洁工储物间
# V08 - Freezer
map-string-v08-freezer = V08 冷库
# V09 - Botany
map-string-v09-botany = V09 植物学
# V10 - Spacebucks
map-string-v10-spacebucks = V10 太空币
# V11 - Library
map-string-v11-library = V11 图书馆
# V12 - Law Office
map-string-v12-law-office = V12 律政办公室
# V13 - Newsroom
map-string-v13-newsroom = V13 新闻编辑室
# V14 - Courtroom
map-string-v14-courtroom = V14 法庭
# V15 - Chapel
map-string-v15-chapel = V15 教堂
# Vacant Office APC
map-string-vacant-office-apc = Vacant 办公室 APC
# Vacant Room APC
map-string-vacant-room-apc = Vacant 室 APC
# Vault air alarm
map-string-vault-air-alarm = 金库空气警报器
# Vault APC
map-string-vault-apc = 金库 APC
# Vault entrance
map-string-vault-entrance = 金库入口
# Vault Exterior North
map-string-vault-exterior-north = 金库外围北
# Vault Exterior South
map-string-vault-exterior-south = 金库外围南
# Vault Front
map-string-vault-front = 金库前
# Vault Hallway
map-string-vault-hallway = 金库走廊
# Vault North-East
map-string-vault-north-east = 金库东北
# Vault South-West
map-string-vault-south-west = 金库西南
# Vault Sub
map-string-vault-sub = 金库 Sub
# Vault Substation
map-string-vault-substation = 金库变电站
# Vending machine room
map-string-vending-machine-room = 自动售货机房
# viewscreen
map-string-viewscreen = 观察屏
# VIP
map-string-vip = 贵宾
# Viro Entrance
map-string-viro-entrance = 病毒学入口
# Virology air alarm
map-string-virology-air-alarm = 病毒学空气警报器
# Virology Airlock
map-string-virology-airlock = 病毒学气闸门
# Virology APC
map-string-virology-apc = 病毒学 APC
# Virology Breakroom
map-string-virology-breakroom = 病毒学休息室
# Virology Detox 
map-string-virology-detox = 病毒学戒断
# Virology E
map-string-virology-e = 病毒学 E
# Virology Entrance
map-string-virology-entrance = 病毒学入口
# Virology Front
map-string-virology-front = 病毒学前
# Virology Hallway
map-string-virology-hallway = 病毒学走廊
# Virology Isolation
map-string-virology-isolation = 病毒学隔离
# virology lab
map-string-virology-lab = 病毒学实验室
# Virology Quarantine
map-string-virology-quarantine = 病毒学隔离区
# Virology W
map-string-virology-w = 病毒学 W
# Visitation Air Alarm
map-string-visitation-air-alarm = 探视空气警报器
# Visitation Entrance
map-string-visitation-entrance = 探视入口
# Visitation Inside
map-string-visitation-inside = 探视内部
# Visitation Outside
map-string-visitation-outside = 探视外部
# Visitor Dock APC
map-string-visitor-dock-apc = Visitor 船坞 APC
# Vox News
map-string-vox-news = 沃克斯新闻
# Vox News ground crew
map-string-vox-news-ground-crew = 沃克斯新闻地面船员
# Waiting Area
map-string-waiting-area = 等候区
# waiting backroom
map-string-waiting-backroom = 等候后间
# Waiting Room
map-string-waiting-room = 等候室
# wallmount substation (Bridge)
map-string-wallmount-substation-bridge = 舰桥壁挂变电站
# wallmount substation (Cargo Shuttle)
map-string-wallmount-substation-cargo-shuttle = 货运穿梭机壁挂变电站
# wallmount substation (Kitchen)
map-string-wallmount-substation-kitchen = 厨房壁挂变电站
# Ward
map-string-ward = 病房
# Warden Air Alarm
map-string-warden-air-alarm = 典狱长空气警报器
# Warden APC
map-string-warden-apc = 典狱长 APC
# Warden Office
map-string-warden-office = 典狱长办公室
# Warden Office Air Alarm
map-string-warden-office-air-alarm = 典狱长办公室空气警报器
# Warden Office APC
map-string-warden-office-apc = 典狱长办公室 APC
# Warden's APC
map-string-warden-s-apc = 典狱长 APC
# Warden's Room
map-string-warden-s-room = 典狱长室
# Wardnerds
map-string-wardnerds = 典狱长
# Washroom
map-string-washroom = 盥洗室
# Washroom air alarm
map-string-washroom-air-alarm = 盥洗室空气警报器
# Washroom APC
map-string-washroom-apc = 盥洗室 APC
# Washrooms fire alarm
map-string-washrooms-fire-alarm = 盥洗室火警警报器
# West Air Alarm
map-string-west-air-alarm = 西空气警报器
# west APC
map-string-west-apc = 西 APC
# West Arrivals Substation
map-string-west-arrivals-substation = 西到站厅变电站
# West Bar Exterior air alarm
map-string-west-bar-exterior-air-alarm = 西酒吧外围空气警报器
# West Bar Exterior fire alarm
map-string-west-bar-exterior-fire-alarm = 西酒吧外围火警警报器
# West Bar Substation
map-string-west-bar-substation = 西酒吧变电站
# West Boxing Ring
map-string-west-boxing-ring = 西拳击环
# West Bridge Sub
map-string-west-bridge-sub = 西舰桥 Sub
# West Bridgehead
map-string-west-bridgehead = 西舰桥前区
# West Broadside Loading Zone
map-string-west-broadside-loading-zone = 西舷侧装卸区
# West Cargo Substation
map-string-west-cargo-substation = 西货运变电站
# West Engi Sub
map-string-west-engi-sub = 西工程 Sub
# West Entrance Corridor
map-string-west-entrance-corridor = 西入口走廊
# west hall
map-string-west-hall = 西厅
# West Hall A
map-string-west-hall-a = 西厅 A
# west hall air alarm
map-string-west-hall-air-alarm = 西厅空气警报器
# West Hall B
map-string-west-hall-b = 西厅 B
# West Hall C
map-string-west-hall-c = 西厅 C
# West hallway 2.
map-string-west-hallway-2 = 西走廊 2
# West Hallway air alarm
map-string-west-hallway-air-alarm = 西走廊空气警报器
# West Hallway APC
map-string-west-hallway-apc = 西走廊 APC
# West Hallway fire alarm
map-string-west-hallway-fire-alarm = 西走廊火警警报器
# West Laser Rack
map-string-west-laser-rack = 西激光架
# West Maint Crossover
map-string-west-maint-crossover = 西维护通道交叉通道
# West Med Sub
map-string-west-med-sub = 西医疗 Sub
# West Sci Sub
map-string-west-sci-sub = 西科研 Sub
# west service substation
map-string-west-service-substation = 西服务变电站
# West Side
map-string-west-side = 西侧
# West Solar SMES
map-string-west-solar-smes = 西太阳能 SMES
# West Solar Sub
map-string-west-solar-sub = 西太阳能 Sub
# west solars
map-string-west-solars = 西太阳能板
# West Solars SMES
map-string-west-solars-smes = 西太阳能板 SMES
# west surgery
map-string-west-surgery = 西手术室
# West Unrestricted Medical Hall
map-string-west-unrestricted-medical-hall = 西开放医疗厅
# Western Lobby
map-string-western-lobby = 西大厅
# Wing Connection (E)
map-string-wing-connection-e = E 区连接段
# Wing Connection (W)
map-string-wing-connection-w = W 区连接段
# Wing East
map-string-wing-east = 区东
# Wing Hallway (E)
map-string-wing-hallway-e = E 区走廊
# Wing Hallway (NW)
map-string-wing-hallway-nw = 西北区走廊
# Wing West
map-string-wing-west = 区西
# Wizard APC
map-string-wizard-apc = 巫师 APC
# Workshop
map-string-workshop = 工坊
# Xeno Arch APC
map-string-xeno-arch-apc = 异种 Arch APC
# #?XeNo@!biO+=
map-string-xeno-bio = 异种生物
# Xeno Lab N
map-string-xeno-lab-n = 异种实验室 N
# Xeno Lab S
map-string-xeno-lab-s = 异种实验室 S
# Xenoarch
map-string-xenoarch = 异种考古学
# Xenoarch APC
map-string-xenoarch-apc = 异种考古学 APC
# Xenoarch East APC
map-string-xenoarch-east-apc = 异种考古学东 APC
# Xenoarch West APC
map-string-xenoarch-west-apc = 异种考古学西 APC
# Xenoarchelogy air alarm
map-string-xenoarchelogy-air-alarm = Xenoarchelogy 空气警报器
# Xenoarcheology
map-string-xenoarcheology = 异种考古学
# Xenoarcheology Corner
map-string-xenoarcheology-corner = 异种考古学角
# Xenoarcheology Hallway
map-string-xenoarcheology-hallway = 异种考古学走廊
# Xenoarcheology North APC
map-string-xenoarcheology-north-apc = 异种考古学北 APC
# Xenoarcheology North Chamber
map-string-xenoarcheology-north-chamber = 异种考古学北舱室
# Xenoarcheology South APC
map-string-xenoarcheology-south-apc = 异种考古学南 APC
# Xenoarcheology South Chamber
map-string-xenoarcheology-south-chamber = 异种考古学南舱室
# Xenoarcheology Storage
map-string-xenoarcheology-storage = 异种考古学储藏
# Xenobio air alarm
map-string-xenobio-air-alarm = 异种生物学空气警报器
# Xenobio APC
map-string-xenobio-apc = 异种生物学 APC
# Xenobio Bottom
map-string-xenobio-bottom = 异种生物学底层
# Xenobio Large
map-string-xenobio-large = 异种生物学大
# Xenobio Middle
map-string-xenobio-middle = 异种生物学中部
# Xenobio NE
map-string-xenobio-ne = 异种生物学东北
# xenobio north
map-string-xenobio-north = 异种生物学北
# Xenobio NW
map-string-xenobio-nw = 异种生物学西北
# Xenobio SE
map-string-xenobio-se = 异种生物学东南
# Xenobio SW
map-string-xenobio-sw = 异种生物学西南
# Xenobio Top
map-string-xenobio-top = 异种生物学顶层
# xenobio west
map-string-xenobio-west = 异种生物学西
# Xenobiology Air Alarm
map-string-xenobiology-air-alarm = 异种生物学空气警报器
# Xenobiology APC
map-string-xenobiology-apc = 异种生物学 APC
# Xenobiology Chamber Airlock
map-string-xenobiology-chamber-airlock = 异种生物学舱室气闸门
# Xenobiology Chambers Air Alarm
map-string-xenobiology-chambers-air-alarm = 异种生物学舱室空气警报器
# Xenobiology Enterance APC
map-string-xenobiology-enterance-apc = 异种生物学入口 APC
# Xenobiology Entrance Air Alarm
map-string-xenobiology-entrance-air-alarm = 异种生物学入口空气警报器
# Xenobiology Lab
map-string-xenobiology-lab = 异种生物学实验室
# Xenobiology Lab North
map-string-xenobiology-lab-north = 异种生物学实验室北
# Xenobiology Lab South
map-string-xenobiology-lab-south = 异种生物学实验室南
# Zoo - Beach
map-string-zoo-beach = 动物园沙滩
# Zoo Center
map-string-zoo-center = 动物园中心
# Zoo - Detached Beach
map-string-zoo-detached-beach = 动物园独立沙滩
# Zoo - Detatched Monkeys
map-string-zoo-detatched-monkeys = 动物园独立猴子
# Zoo - Detatched Penguins
map-string-zoo-detatched-penguins = 动物园独立企鹅
# Zoo E
map-string-zoo-e = 动物园 E
# Zoo - Keeper's Room
map-string-zoo-keeper-s-room = 动物园饲养员室
# Zoo N
map-string-zoo-n = 动物园 N
# Zoo - Penguins
map-string-zoo-penguins = 动物园企鹅
# Zoo S
map-string-zoo-s = 动物园 S
# Zoo - Sands East
map-string-zoo-sands-east = 动物园沙地东
# Zoo - Sands West
map-string-zoo-sands-west = 动物园沙地西
# Zoo Serpents
map-string-zoo-serpents = 动物园蛇
# Zoo W
map-string-zoo-w = 动物园 W
# Zookeeper
map-string-zookeeper = 饲养员
# Zookeeper's
map-string-zookeeper-s = 饲养员
# Zookeeper's Office
map-string-zookeeper-s-office = 饲养员办公室
# Zookeeper's room
map-string-zookeeper-s-room = 饲养员室

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
# Aft-Port
map-string-aft-port = 艉左舷
# Aft-Starboard
map-string-aft-starboard = 艉右舷
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
# AI Core Airlock Door
map-string-ai-core-airlock-door = AI 核心气闸门门
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
# ai core solar array
map-string-ai-core-solar-array = AI 核心太阳能阵列
# AI Core Space Access
map-string-ai-core-space-access = AI 核心太空通路
# ai core stage
map-string-ai-core-stage = AI 核心舞台
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
# AI rechargers
map-string-ai-rechargers = AI 充电器
# AI Sat Entrance
map-string-ai-sat-entrance = AI 卫星入口
# AI Sat Tunnel
map-string-ai-sat-tunnel = AI 卫星通道
# AI Satelite Hallway
map-string-ai-satelite-hallway = AI 卫星走廊
# AI Satelite Northeast
map-string-ai-satelite-northeast = AI 卫星东北
# AI Satelite Northwest
map-string-ai-satelite-northwest = AI 卫星西北
# AI Satelite South
map-string-ai-satelite-south = AI 卫星南
# AI Satelite Southeast
map-string-ai-satelite-southeast = AI 卫星东南
# AI Satelite Southwest
map-string-ai-satelite-southwest = AI 卫星西南
# ai satellite
map-string-ai-satellite = AI 卫星
# AI Satellite Enterance
map-string-ai-satellite-enterance = AI 卫星入口
# ai satellite entry room
map-string-ai-satellite-entry-room = AI 卫星入口室
# AI south
map-string-ai-south = AI 南
# AI South-East
map-string-ai-south-east = AI 东南
# AI South-West
map-string-ai-south-west = AI 西南
# AI storeroom
map-string-ai-storeroom = AI 储藏室
# AI Upload Backup Power
map-string-ai-upload-backup-power = AI 上传室备用电力
# AI Utility Room
map-string-ai-utility-room = AI 辅助室
# AI West
map-string-ai-west = AI 西
# Airlock
map-string-airlock = 气闸门
# airlock at containment
map-string-airlock-at-containment = 气闸门封闭
# Airlock (N)
map-string-airlock-n = 气闸门 N
# airlock to containment
map-string-airlock-to-containment = 气闸门封闭
# Also Bar
map-string-also-bar = 酒吧
# AME chamber
map-string-ame-chamber = AME 舱室
# AME Entrance
map-string-ame-entrance = AME 入口
# AME hallway
map-string-ame-hallway = AME 走廊
# AME South
map-string-ame-south = AME 南
# amenities substation
map-string-amenities-substation = 生活设施变电站
# Anchor/Grav/Comms
map-string-anchor-grav-comms = 锚定器重力通讯
# Anchor/Gravity
map-string-anchor-gravity = 锚定器重力
# Anchor Room
map-string-anchor-room = 锚定器室
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
# anomalous lab
map-string-anomalous-lab = 异常实验室
# anomalous lab corridor
map-string-anomalous-lab-corridor = 异常实验室走廊
# Anomaly Generator Room
map-string-anomaly-generator-room = 异常发电机室
# Arboretum
map-string-arboretum = 植物园
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
map-string-armory-n = 军械库 N
# Armory North
map-string-armory-north = 军械库北
# Armory Red
map-string-armory-red = 军械库红
# Armory (S)
map-string-armory-s = 军械库 S
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
# Arrivals Airlock Ext
map-string-arrivals-airlock-ext = 到站厅气闸门外部
# Arrivals by EVA Storage
map-string-arrivals-by-eva-storage = 到站厅 EVA 储藏
# Arrivals Cafe
map-string-arrivals-cafe = 到站厅咖啡厅
# Arrivals Checkpoint Exterior
map-string-arrivals-checkpoint-exterior = 到站厅检查站外围
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
# Arrivals east dock
map-string-arrivals-east-dock = 到站厅东船坞
# Arrivals East Hall
map-string-arrivals-east-hall = 到站厅东厅
# Arrivals Entrance
map-string-arrivals-entrance = 到站厅入口
# arrivals exit
map-string-arrivals-exit = 到站厅出口
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
# Arrivals Smoke Room
map-string-arrivals-smoke-room = 到站厅吸烟室
# Arrivals South East
map-string-arrivals-south-east = 到站厅东南
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
# Arrivals W
map-string-arrivals-w = 到站厅 W
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
# Artifact Chamber Airlock
map-string-artifact-chamber-airlock = 神器舱室气闸门
# Artifact Chamber Gasworks North
map-string-artifact-chamber-gasworks-north = 神器舱室气体处理北
# Artifact Chamber Gasworks South
map-string-artifact-chamber-gasworks-south = 神器舱室气体处理南
# Artifact Chamber One
map-string-artifact-chamber-one = 神器舱室一
# Artifact Chamber Two
map-string-artifact-chamber-two = 神器舱室二
# Artifact Console Room
map-string-artifact-console-room = 神器控制台室
# artifact delivery area
map-string-artifact-delivery-area = 神器投递区
# Artifact East
map-string-artifact-east = 神器东
# Artifact Lab Chamber
map-string-artifact-lab-chamber = 神器实验室舱室
# artifact reseach east
map-string-artifact-reseach-east = 神器研究东
# Artifact Research Lab
map-string-artifact-research-lab = 神器研究实验室
# Artifact room south
map-string-artifact-room-south = 神器室南
# Artifact South
map-string-artifact-south = 神器南
# Artifact Test Lab
map-string-artifact-test-lab = 神器测试实验室
# Artifact Testing
map-string-artifact-testing = 神器测试
# Artifact - West
map-string-artifact-west = 神器西
# artifacts
map-string-artifacts = 神器
# Artifacts (N)
map-string-artifacts-n = 神器 N
# Artifacts (S)
map-string-artifacts-s = 神器 S
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
map-string-atmos-air = 大气空气
# Atmos Airlock Ext
map-string-atmos-airlock-ext = 大气气闸门外部
# Atmos Airlocks
map-string-atmos-airlocks = 大气气闸门
# Atmos (Burn Chamber)
map-string-atmos-burn-chamber = 大气烧伤舱室
# Atmos Canister Storage
map-string-atmos-canister-storage = 大气气罐储藏
# Atmos Canisters
map-string-atmos-canisters = 大气气罐
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
# Atmos Lockeroom
map-string-atmos-lockeroom = 大气更衣室
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
# Atmos Storage
map-string-atmos-storage = 大气储藏
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
map-string-atmos-west-gas-storage = 大气西气体储藏
# Atmospherics Burn Chamber
map-string-atmospherics-burn-chamber = 大气烧伤舱室
# atmospherics canister room
map-string-atmospherics-canister-room = 大气气罐室
# Atmospherics East
map-string-atmospherics-east = 大气东
# Atmospherics Entrance
map-string-atmospherics-entrance = 大气入口
# Atmospherics Equipment
map-string-atmospherics-equipment = 大气装备
# Atmospherics Front
map-string-atmospherics-front = 大气前
# Atmospherics Front Desk
map-string-atmospherics-front-desk = 大气前台
# Atmospherics Lockers
map-string-atmospherics-lockers = 大气储物柜
# Atmospherics Main
map-string-atmospherics-main = 大气主
# Atmospherics NW
map-string-atmospherics-nw = 大气西北
# Atmospherics SE
map-string-atmospherics-se = 大气东南
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
# Bar - Bartender's Room
map-string-bar-bartender-s-room = 酒吧酒保室
# Bar Counter
map-string-bar-counter = 酒吧柜台
# Bar - East
map-string-bar-east = 酒吧东
# Bar East Hallway
map-string-bar-east-hallway = 酒吧东走廊
# Bar Exterior
map-string-bar-exterior = 酒吧外围
# Bar Front
map-string-bar-front = 酒吧前
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
# Bar - West
map-string-bar-west = 酒吧西
# Bar West Hallway
map-string-bar-west-hallway = 酒吧西走廊
# Bartender backroom
map-string-bartender-backroom = 酒保后间
# Bartender's Lounge
map-string-bartender-s-lounge = 酒保休息室
# basketball court north east
map-string-basketball-court-north-east = 篮球法庭东北
# basketball court north west
map-string-basketball-court-north-west = 篮球法庭西北
# basketball court south west
map-string-basketball-court-south-west = 篮球法庭西南
# Bathroom
map-string-bathroom = 盥洗室
# Bathroom Corridor
map-string-bathroom-corridor = 盥洗室走廊
# Bay [East]
map-string-bay-east = 舱东
# Bay [West]
map-string-bay-west = 舱西
# Bedroom
map-string-bedroom = 卧室
# Birdies
map-string-birdies = 鸟儿
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
# Bomb Training Area
map-string-bomb-training-area = 炸弹训练区
# Botanist's Lockers
map-string-botanist-s-lockers = 植物学家储物柜
# Botany Front
map-string-botany-front = 植物学前
# Botany Locker Room
map-string-botany-locker-room = 植物学更衣室
# Botany Lockers
map-string-botany-lockers = 植物学储物柜
# Botany north
map-string-botany-north = 植物学北
# Botany Outdoor
map-string-botany-outdoor = 植物学户外
# Botany South
map-string-botany-south = 植物学南
# Boxer's Dorms
map-string-boxer-s-dorms = 拳手宿舍
# Boxing
map-string-boxing = 拳击
# Boxing East
map-string-boxing-east = 拳击东
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
# bridge a
map-string-bridge-a = 舰桥 A
# Bridge AI Access
map-string-bridge-ai-access = 舰桥 AI 通路
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
# Bridge (E)
map-string-bridge-e = 舰桥 E
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
# Bridge hallway east
map-string-bridge-hallway-east = 舰桥走廊东
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
# Bridge [Storage]
map-string-bridge-storage = 舰桥储藏
# bridge substation
map-string-bridge-substation = 舰桥变电站
# Bridge Triage
map-string-bridge-triage = 舰桥分诊
# Bridge (W)
map-string-bridge-w = 舰桥 W
# bridge west hallway
map-string-bridge-west-hallway = 舰桥西走廊
# Briefing
map-string-briefing = 简报
# Brig Cell Auros
map-string-brig-cell-auros = 禁闭室牢房 Auros
# Brig Cell Boron
map-string-brig-cell-boron = 禁闭室牢房 Boron
# Brig Cell Chiron
map-string-brig-cell-chiron = 禁闭室牢房 Chiron
# Brig EVA
map-string-brig-eva = 禁闭室 EVA
# brig kitchen
map-string-brig-kitchen = 禁闭室厨房
# brig lobby
map-string-brig-lobby = 禁闭室大厅
# Brig Medical
map-string-brig-medical = 禁闭室医疗
# brig processing
map-string-brig-processing = 禁闭室处理
# brig visitation
map-string-brig-visitation = 禁闭室探视
# Brigmed / Detective
map-string-brigmed-detective = 狱医室侦探
# Brigmedical
map-string-brigmedical = 狱医室
# Brigmedical Bay
map-string-brigmedical-bay = 狱医室舱
# Brigmedical Morgue
map-string-brigmedical-morgue = 狱医室停尸房
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
# Burn Chambers
map-string-burn-chambers = 烧伤舱室
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
# Canisters
map-string-canisters = 气罐
# Captain
map-string-captain = 舰长
# Captain Bathroom
map-string-captain-bathroom = 舰长盥洗室
# Captain's Address
map-string-captain-s-address = 舰长地址
# Captain's Balcony
map-string-captain-s-balcony = 舰长露台
# Captain's Office North
map-string-captain-s-office-north = 舰长办公室北
# Captain's Office South
map-string-captain-s-office-south = 舰长办公室南
# Captains Room
map-string-captains-room = 舰长室
# Cargo Airlock
map-string-cargo-airlock = 货运气闸门
# cargo bay 1 a
map-string-cargo-bay-1-a = 货运舱 1 A
# cargo bay 1 b
map-string-cargo-bay-1-b = 货运舱 1 B
# Cargo Bay Closet
map-string-cargo-bay-closet = 货运舱储物间
# Cargo Bay Dock
map-string-cargo-bay-dock = 货运舱船坞
# Cargo Bay One
map-string-cargo-bay-one = 货运舱一
# Cargo Bay Two
map-string-cargo-bay-two = 货运舱二
# Cargo Bay West
map-string-cargo-bay-west = 货运舱西
# Cargo break room
map-string-cargo-break-room = 货运休息室
# Cargo checkpoint
map-string-cargo-checkpoint = 货运检查站
# Cargo Closet Entrance
map-string-cargo-closet-entrance = 货运储物间入口
# Cargo Connector
map-string-cargo-connector = 货运连接段
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
# cargo entry hallway
map-string-cargo-entry-hallway = 货运入口走廊
# Cargo Front Corridor
map-string-cargo-front-corridor = 货运前走廊
# Cargo Front Desk
map-string-cargo-front-desk = 货运前台
# cargo front hallway
map-string-cargo-front-hallway = 货运前走廊
# cargo hall
map-string-cargo-hall = 货运厅
# Cargo Hallway
map-string-cargo-hallway = 货运走廊
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
# Cargo Processing
map-string-cargo-processing = 货运处理
# Cargo Reception
map-string-cargo-reception = 货运接待处
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
# Cargo Storage Room
map-string-cargo-storage-room = 货运储藏室
# cargo substation
map-string-cargo-substation = 货运变电站
# Cargo Supply Room
map-string-cargo-supply-room = 货运补给室
# Cargo Tunnel
map-string-cargo-tunnel = 货运通道
# cargo waiting area
map-string-cargo-waiting-area = 货运等候区
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
# CE's
map-string-ce-s = 工程主管
# ce's corridor
map-string-ce-s-corridor = 工程主管走廊
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
# Central Hallway (E)
map-string-central-hallway-e = 中央走廊 E
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
# Chapel Altar
map-string-chapel-altar = 教堂祭坛
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
# Chapel Funeral Room
map-string-chapel-funeral-room = 教堂殡仪室
# Chapel Hallway
map-string-chapel-hallway = 教堂走廊
# Chapel - Main
map-string-chapel-main = 教堂主
# Chapel Morgue
map-string-chapel-morgue = 教堂停尸房
# Chapel (N)
map-string-chapel-n = 教堂 N
# Chapel North
map-string-chapel-north = 教堂北
# Chapel Priory
map-string-chapel-priory = 教堂修道院
# Chapel (S)
map-string-chapel-s = 教堂 S
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
# Chaplain's Bedroom
map-string-chaplain-s-bedroom = 牧师卧室
# Chaplains Back Area
map-string-chaplains-back-area = 牧师后区
# Charging Bay
map-string-charging-bay = 充电舱
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
# Chemical Wing A
map-string-chemical-wing-a = 化学区 A
# Chemical Wing B
map-string-chemical-wing-b = 化学区 B
# Chemist cam 1.
map-string-chemist-cam-1 = 化学师摄像头 1
# Chemist cam 2.
map-string-chemist-cam-2 = 化学师摄像头 2
# chemistry corridor
map-string-chemistry-corridor = 化学走廊
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
# civilian conference room north
map-string-civilian-conference-room-north = 平民会议室北
# CK News ground team
map-string-ck-news-ground-team = CK 新闻地面组
# Classics of Nanotrasen
map-string-classics-of-nanotrasen = 典藏纳米传讯
# Clean Room
map-string-clean-room = 净化室
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
# CMO Bedroom
map-string-cmo-bedroom = 医疗主管卧室
# CMO Exam Room
map-string-cmo-exam-room = 医疗主管诊查室
# CMO Private Clinic
map-string-cmo-private-clinic = 医疗主管私人诊所
# CMO Private Practice
map-string-cmo-private-practice = 医疗主管私人训练
# CMO's
map-string-cmo-s = 医疗主管
# CMO's Anatomy
map-string-cmo-s-anatomy = 医疗主管解剖
# CMO's Bedroom
map-string-cmo-s-bedroom = 医疗主管卧室
# coffee bar
map-string-coffee-bar = 咖啡酒吧
# Cold and hot chambers
map-string-cold-and-hot-chambers = 冷藏高温舱室
# Command
map-string-command = 指挥部
# Command Bar
map-string-command-bar = 指挥部酒吧
# Command - Bridge
map-string-command-bridge = 指挥部舰桥
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
# command hallway
map-string-command-hallway = 指挥部走廊
# command internal
map-string-command-internal = 指挥部内部
# command kitchen
map-string-command-kitchen = 指挥部厨房
# Command lounge
map-string-command-lounge = 指挥部休息室
# Command - Main
map-string-command-main = 指挥部主
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
# Command South Hallway
map-string-command-south-hallway = 指挥部南走廊
# Command Storage
map-string-command-storage = 指挥部储藏
# Command Substation
map-string-command-substation = 指挥部变电站
# Command West Hallway
map-string-command-west-hallway = 指挥部西走廊
# comms room
map-string-comms-room = 通讯室
# Conference Area
map-string-conference-area = 会议区
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
# Court Hallway
map-string-court-hallway = 法庭走廊
# Court House
map-string-court-house = 法庭住所
# Court Interior
map-string-court-interior = 法庭内部
# Court Room Public Seating
map-string-court-room-public-seating = 法庭室公共座位区
# Courthouse
map-string-courthouse = 法院
# Courthouse - North
map-string-courthouse-north = 法院北
# courtroom a
map-string-courtroom-a = 法庭 A
# courtroom b
map-string-courtroom-b = 法庭 B
# Courtroom Cam
map-string-courtroom-cam = 法庭摄像头
# Courtroom Camera
map-string-courtroom-camera = 法庭摄像头
# Courtroom Corridor
map-string-courtroom-corridor = 法庭走廊
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
# cryonics bay
map-string-cryonics-bay = 低温科舱
# Cryopods
map-string-cryopods = 冷冻舱
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
# Desk
map-string-desk = 台席
# Desks
map-string-desks = 台席
# Detective Room
map-string-detective-room = 侦探室
# Detective's Office
map-string-detective-s-office = 侦探办公室
# Detectives Bedroom
map-string-detectives-bedroom = 侦探卧室
# Detectives Office
map-string-detectives-office = 侦探办公室
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
# Disposals Atmos Closet
map-string-disposals-atmos-closet = 垃圾处理大气储物间
# Disposals Entrance
map-string-disposals-entrance = 垃圾处理入口
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
map-string-dock-ne = 船坞东北
# Dock / Salvage / Mining
map-string-dock-salvage-mining = 船坞打捞采矿
# Dock SE
map-string-dock-se = 船坞东南
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
# Docking Arm
map-string-docking-arm = 对接臂
# docking arm airlock
map-string-docking-arm-airlock = 对接臂气闸门
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
# Dorm Arcade
map-string-dorm-arcade = 宿舍街机厅
# Dorm Bathroom
map-string-dorm-bathroom = 宿舍盥洗室
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
# Dormitories
map-string-dormitories = 宿舍
# Dormitory
map-string-dormitory = 宿舍
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
# East Boxing Ring
map-string-east-boxing-ring = 东拳击环
# East Bridgehead
map-string-east-bridgehead = 东舰桥前区
# East Brig Hall
map-string-east-brig-hall = 东禁闭室厅
# East Broadside Loading Zone
map-string-east-broadside-loading-zone = 东舷侧装卸区
# East Entrance Corridor
map-string-east-entrance-corridor = 东入口走廊
# East Hall
map-string-east-hall = 东厅
# East Hall A
map-string-east-hall-a = 东厅 A
# East Hallway by Arrivals
map-string-east-hallway-by-arrivals = 东走廊到站厅
# East Hallway by Janitor
map-string-east-hallway-by-janitor = 东走廊清洁工
# East Laser Rack
map-string-east-laser-rack = 东激光架
# east security
map-string-east-security = 东安保
# East Side
map-string-east-side = 东侧
# east solars
map-string-east-solars = 东太阳能板
# east surgery
map-string-east-surgery = 东手术室
# Eastern Lobby
map-string-eastern-lobby = 东大厅
# Emergency Room
map-string-emergency-room = 应急室
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
# Engi Main Hall
map-string-engi-main-hall = 工程主厅
# Engi Maint Tunnel
map-string-engi-maint-tunnel = 工程维护通道通道
# engi storage
map-string-engi-storage = 工程储藏
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
# Engine SE
map-string-engine-se = 引擎东南
# Engine (SM - N)
map-string-engine-sm-n = 引擎超物质 N
# Engine (SM - S)
map-string-engine-sm-s = 引擎超物质 S
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
# Engineering Backrooms
map-string-engineering-backrooms = 工程后间
# engineering break room
map-string-engineering-break-room = 工程休息室
# Engineering Breakroom
map-string-engineering-breakroom = 工程休息室
# Engineering Central Airlock
map-string-engineering-central-airlock = 工程中央气闸门
# Engineering Checkpoint
map-string-engineering-checkpoint = 工程检查站
# Engineering Closet
map-string-engineering-closet = 工程储物间
# Engineering E
map-string-engineering-e = 工程 E
# Engineering East Hallway
map-string-engineering-east-hallway = 工程东走廊
# Engineering Entrance
map-string-engineering-entrance = 工程入口
# Engineering EVA
map-string-engineering-eva = 工程 EVA
# Engineering Exit Hallway
map-string-engineering-exit-hallway = 工程出口走廊
# Engineering Foyer
map-string-engineering-foyer = 工程门厅
# engineering front desk internal
map-string-engineering-front-desk-internal = 工程前台内部
# Engineering Hall
map-string-engineering-hall = 工程厅
# Engineering Hall A
map-string-engineering-hall-a = 工程厅 A
# Engineering Hall B
map-string-engineering-hall-b = 工程厅 B
# Engineering Hallway East
map-string-engineering-hallway-east = 工程走廊东
# Engineering Hallway North
map-string-engineering-hallway-north = 工程走廊北
# Engineering Hallway West
map-string-engineering-hallway-west = 工程走廊西
# engineering lockers
map-string-engineering-lockers = 工程储物柜
# Engineering Main
map-string-engineering-main = 工程主
# Engineering North Hallway
map-string-engineering-north-hallway = 工程北走廊
# Engineering Outdoor Area
map-string-engineering-outdoor-area = 工程户外区
# Engineering Outpost
map-string-engineering-outpost = 工程前哨
# Engineering Reception
map-string-engineering-reception = 工程接待处
# Engineering South Hallway
map-string-engineering-south-hallway = 工程南走廊
# Engineering [Storage]
map-string-engineering-storage = 工程储藏
# engineering supply vault
map-string-engineering-supply-vault = 工程补给金库
# Engineering W
map-string-engineering-w = 工程 W
# Engineering West Hallway
map-string-engineering-west-hallway = 工程西走廊
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
# EVA Front
map-string-eva-front = EVA 前
# EVA Main
map-string-eva-main = EVA 主
# eva room
map-string-eva-room = EVA 室
# EVA Surplus
map-string-eva-surplus = EVA 剩余物资
# evac airlock
map-string-evac-airlock = 撤离气闸门
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
# Evac Hallway
map-string-evac-hallway = 撤离走廊
# evac hallway south
map-string-evac-hallway-south = 撤离走廊南
# Evac Holding
map-string-evac-holding = 撤离拘留
# Evac Kitchen Storeroom
map-string-evac-kitchen-storeroom = 撤离厨房储藏室
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
# exam north
map-string-exam-north = 诊查北
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
# Firebreak
map-string-firebreak = 防火隔断
# Firing Range
map-string-firing-range = 射击靶场
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
# Front Area
map-string-front-area = 前区
# Front Room
map-string-front-room = 前室
# Funeral Parlor
map-string-funeral-parlor = 殡仪休息室
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
# Genetics
map-string-genetics = 基因学
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
map-string-genpop-n = 普通监区 N
# Genpop North
map-string-genpop-north = 普通监区北
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
# GenPop Substation
map-string-genpop-substation = 普通监区变电站
# Genpop Toilets
map-string-genpop-toilets = 普通监区厕所
# Genpop Visitation
map-string-genpop-visitation = 普通监区探视
# Genpop Visitations
map-string-genpop-visitations = 普通监区探视
# Genpop Visitors
map-string-genpop-visitors = 普通监区访客
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
# Grav/Anchor/Comms
map-string-grav-anchor-comms = 重力锚定器通讯
# Grav Gen
map-string-grav-gen = 重力发电机
# Graveyard
map-string-graveyard = 墓地
# gravity/anchor
map-string-gravity-anchor = 重力锚定器
# Gravity and Anchor
map-string-gravity-and-anchor = 重力锚定器
# Gravity and Anchor Room
map-string-gravity-and-anchor-room = 重力锚定器室
# Gravity Gen
map-string-gravity-gen = 重力发电机
# Gravity Generator and Anchor
map-string-gravity-generator-and-anchor = 重力发生器锚定器
# gravity generator corridor
map-string-gravity-generator-corridor = 重力发生器走廊
# Greasy Passenger Kitchen
map-string-greasy-passenger-kitchen = Greasy 乘客厨房
# Greenway Outside HOP
map-string-greenway-outside-hop = 绿道外部人事主管
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
# Hallway [Central]
map-string-hallway-central = 走廊中央
# Hallway Centre
map-string-hallway-centre = 走廊中心
# Hallway East
map-string-hallway-east = 走廊东
# Hallway [North]
map-string-hallway-north = 走廊北
# Hallway north A
map-string-hallway-north-a = 走廊北 A
# Hallway north B
map-string-hallway-north-b = 走廊北 B
# Hallway Northeast
map-string-hallway-northeast = 走廊东北
# Hallway northwest A
map-string-hallway-northwest-a = 走廊西北 A
# Hallway northwest B
map-string-hallway-northwest-b = 走廊西北 B
# Hallway of Representatives
map-string-hallway-of-representatives = 走廊代表
# Hallway southeast
map-string-hallway-southeast = 走廊东南
# Hallway [Southwest]
map-string-hallway-southwest = 走廊西南
# Hallway to Evac
map-string-hallway-to-evac = 走廊撤离
# Hallway West
map-string-hallway-west = 走廊西
# Hallway west B
map-string-hallway-west-b = 走廊西 B
# hardsuit room
map-string-hardsuit-room = 硬质宇航服室
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
# HoP and Botany Front
map-string-hop-and-botany-front = 人事主管植物学前
# HOP Bathroom
map-string-hop-bathroom = 人事主管盥洗室
# HoP Chamber
map-string-hop-chamber = 人事主管舱室
# HoP Corridor
map-string-hop-corridor = 人事主管走廊
# hop front
map-string-hop-front = 人事主管前
# HOP front desk
map-string-hop-front-desk = 人事主管前台
# HOP Hall
map-string-hop-hall = 人事主管厅
# HoP Line
map-string-hop-line = 人事主管通道
# HoP Office Backroom
map-string-hop-office-backroom = 人事主管办公室后间
# HoP Office Line
map-string-hop-office-line = 人事主管办公室通道
# HoP's Bedroom
map-string-hop-s-bedroom = 人事主管卧室
# hop's corridor
map-string-hop-s-corridor = 人事主管走廊
# hop's line
map-string-hop-s-line = 人事主管通道
# HOP's Room
map-string-hop-s-room = 人事主管室
# hop's storage room
map-string-hop-s-storage-room = 人事主管储藏室
# HoP Waiting Area
map-string-hop-waiting-area = 人事主管等候区
# HOS Bedroom
map-string-hos-bedroom = 安保主管卧室
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
# Interrogation Room
map-string-interrogation-room = 审讯室室
# Interrorgation
map-string-interrorgation = 审讯室
# Interview
map-string-interview = 审讯室
# Interyne - Paramedics
map-string-interyne-paramedics = 因特代恩急救员
# Isolated Treatment and Shower
map-string-isolated-treatment-and-shower = 隔离治疗淋浴
# Jani
map-string-jani = 清洁工
# Jani Closet
map-string-jani-closet = 清洁工储物间
# Janitor's Closet
map-string-janitor-s-closet = 清洁工储物间
# Janitor's Office
map-string-janitor-s-office = 清洁工办公室
# Janitoral closet
map-string-janitoral-closet = 清洁储物间
# Janitorial
map-string-janitorial = 清洁
# Janitorial - Closet
map-string-janitorial-closet = 清洁储物间
# Janitorial - Front
map-string-janitorial-front = 清洁前
# Janitorial Hallway
map-string-janitorial-hallway = 清洁走廊
# Janitors Closet
map-string-janitors-closet = 清洁工储物间
# judge's corridor
map-string-judge-s-corridor = 法官走廊
# Jukebox
map-string-jukebox = 点唱机
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
# Kitchen Freezer
map-string-kitchen-freezer = 厨房冷库
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
# law & chapel substaion
map-string-law-chapel-substaion = 律政教堂变电站
# Law Collective Area
map-string-law-collective-area = 律政公共区
# Law Corridor
map-string-law-corridor = 律政走廊
# Law - Courtroom
map-string-law-courtroom = 律政法庭
# Law Hallway
map-string-law-hallway = 律政走廊
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
# Lawyer + Detective Hall
map-string-lawyer-detective-hall = 律师侦探厅
# Lawyer's office
map-string-lawyer-s-office = 律师办公室
# Lawyers Office
map-string-lawyers-office = 律师办公室
# Legal Office
map-string-legal-office = 法务办公室
# Librarian
map-string-librarian = 图书管理员
# Librarian Room
map-string-librarian-room = 图书管理员室
# Librarian's Bedroom
map-string-librarian-s-bedroom = 图书管理员卧室
# Librarian's Desk
map-string-librarian-s-desk = 图书管理员台席
# Librarian's Office
map-string-librarian-s-office = 图书管理员办公室
# Librarian's Room
map-string-librarian-s-room = 图书管理员室
# Library Central
map-string-library-central = 图书馆中央
# Library E
map-string-library-e = 图书馆 E
# Library East
map-string-library-east = 图书馆东
# Library - Games Room
map-string-library-games-room = 图书馆游戏室
# Library Gaming
map-string-library-gaming = 图书馆游戏
# Library Hall
map-string-library-hall = 图书馆厅
# Library Hallway
map-string-library-hallway = 图书馆走廊
# Library - Main
map-string-library-main = 图书馆主
# Library south hall
map-string-library-south-hall = 图书馆南厅
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
# Magistrate's Room
map-string-magistrate-s-room = 治安官室
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
# Main (W)
map-string-main-w = 主 W
# Material Storage
map-string-material-storage = 材料储藏
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
# Med Storage
map-string-med-storage = 医疗储藏
# Medbay East
map-string-medbay-east = 医疗部东
# Medbay Front
map-string-medbay-front = 医疗部前
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
# Medbay Triage
map-string-medbay-triage = 医疗部分诊
# Medbay West
map-string-medbay-west = 医疗部西
# Medical Admin Hall
map-string-medical-admin-hall = 医疗管理厅
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
# Medical Checkpoint
map-string-medical-checkpoint = 医疗检查站
# Medical Corridor
map-string-medical-corridor = 医疗走廊
# Medical Desk
map-string-medical-desk = 医疗台席
# Medical-engineering hallway
map-string-medical-engineering-hallway = 医疗工程走廊
# Medical Enterance
map-string-medical-enterance = 医疗入口
# Medical Enterance East
map-string-medical-enterance-east = 医疗入口东
# Medical Enterance West
map-string-medical-enterance-west = 医疗入口西
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
# Medical hallway north
map-string-medical-hallway-north = 医疗走廊北
# Medical hallway south
map-string-medical-hallway-south = 医疗走廊南
# medical locker room
map-string-medical-locker-room = 医疗更衣室
# Medical Main Hallway
map-string-medical-main-hallway = 医疗主走廊
# Medical Morgue
map-string-medical-morgue = 医疗停尸房
# Medical North
map-string-medical-north = 医疗北
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
# Medical South Hallway
map-string-medical-south-hallway = 医疗南走廊
# Medical Staff Area
map-string-medical-staff-area = 医疗员工区
# Medical Storage Backroom
map-string-medical-storage-backroom = 医疗储藏后间
# medical substation
map-string-medical-substation = 医疗变电站
# medical supply closet
map-string-medical-supply-closet = 医疗补给储物间
# medical waiting area
map-string-medical-waiting-area = 医疗等候区
# Medical West Room
map-string-medical-west-room = 医疗西室
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
# Morgue and Surgery entrance
map-string-morgue-and-surgery-entrance = 停尸房手术室入口
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
# North Atmos
map-string-north-atmos = 北大气
# North Bar Room
map-string-north-bar-room = 北酒吧室
# North docking arm
map-string-north-docking-arm = 北对接臂
# north east hallway
map-string-north-east-hallway = 东北走廊
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
# North Med Hall
map-string-north-med-hall = 北医疗厅
# North Med Lobby
map-string-north-med-lobby = 北医疗大厅
# North reception
map-string-north-reception = 北接待处
# North Solars
map-string-north-solars = 北太阳能板
# north west hallway
map-string-north-west-hallway = 西北走廊
# Northeast Airlock Entrance
map-string-northeast-airlock-entrance = 东北气闸门入口
# Northeast airlock exterior
map-string-northeast-airlock-exterior = 东北气闸门外围
# Northeast evac pod
map-string-northeast-evac-pod = 东北撤离舱
# Northeast Maintenance Substation
map-string-northeast-maintenance-substation = 东北维护通道变电站
# Northwest Airlock Entrance
map-string-northwest-airlock-entrance = 西北气闸门入口
# Northwest Hallway
map-string-northwest-hallway = 西北走廊
# northwest junction
map-string-northwest-junction = 西北交汇处
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
# Outside Telecoms
map-string-outside-telecoms = 外部通讯
# PA Airlock East
map-string-pa-airlock-east = 粒子加速器气闸门东
# PA Airlock West
map-string-pa-airlock-west = 粒子加速器气闸门西
# PA Control Room
map-string-pa-control-room = 粒子加速器控制室
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
# Panic Bunker
map-string-panic-bunker = 紧急地堡
# Panopticon
map-string-panopticon = 圆形监狱
# Panopticon Entrance
map-string-panopticon-entrance = 圆形监狱入口
# Paramedic dispatch
map-string-paramedic-dispatch = 急救员调度
# paramedic hallway
map-string-paramedic-hallway = 急救员走廊
# Paramedic Room
map-string-paramedic-room = 急救员室
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
# Plasma Storage
map-string-plasma-storage = 等离子储藏
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
# Pool East
map-string-pool-east = 泳池东
# Pool south
map-string-pool-south = 泳池南
# port
map-string-port = 左舷
# port nacelle
map-string-port-nacelle = 左舷舱体
# Post Op
map-string-post-op = 岗 Op
# Power
map-string-power = 电力
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
# Public Garden
map-string-public-garden = 公共花园
# Pun Pun's Office
map-string-pun-pun-s-office = Pun Pun's 办公室
# QM: Love at First Crate
map-string-qm-love-at-first-crate = 军需官 Love 一板条箱
# QM's
map-string-qm-s = 军需官
# Quartermaster Room
map-string-quartermaster-room = 军需官室
# Quartermaster's Bedroom
map-string-quartermaster-s-bedroom = 军需官卧室
# R&D data servers
map-string-r-d-data-servers = R D 数据服务器
# Radiation Suits
map-string-radiation-suits = 辐射宇航服
# Range
map-string-range = 靶场
# RD
map-string-rd = 研究主管
# RD Reception
map-string-rd-reception = 研究主管接待处
# RD Room
map-string-rd-room = 研究主管室
# RD's Bedroom
map-string-rd-s-bedroom = 研究主管卧室
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
# Reporter's Field Camera
map-string-reporter-s-field-camera = 记者力场摄像头
# Reporter's Office
map-string-reporter-s-office = 记者办公室
# Reporter's room
map-string-reporter-s-room = 记者室
# Reporter's Studio Camera
map-string-reporter-s-studio-camera = 记者演播室摄像头
# research and development
map-string-research-and-development = 研发部
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
# Robo Bay
map-string-robo-bay = 机器人舱
# Roboticist Locker Room
map-string-roboticist-locker-room = 机器人专家更衣室
# Roboticist Substation.
map-string-roboticist-substation = 机器人专家变电站
# Robotics Backroom
map-string-robotics-backroom = 机器人学后间
# Robotics East
map-string-robotics-east = 机器人学东
# Robotics Front
map-string-robotics-front = 机器人学前
# Robotics Hall
map-string-robotics-hall = 机器人学厅
# Robotics Hallway
map-string-robotics-hallway = 机器人学走廊
# Robotics Lab
map-string-robotics-lab = 机器人学实验室
# Robotics Locker Room
map-string-robotics-locker-room = 机器人学更衣室
# Robotics Lockers
map-string-robotics-lockers = 机器人学储物柜
# Robotics - Main
map-string-robotics-main = 机器人学主
# Robotics Room
map-string-robotics-room = 机器人学室
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
# Rock Dock Supply Room
map-string-rock-dock-supply-room = 岩层船坞补给室
# Rod chamber cam
map-string-rod-chamber-cam = Rod 舱室摄像头
# Rotunda East
map-string-rotunda-east = 圆厅东
# Rotunda West
map-string-rotunda-west = 圆厅西
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
# Salvage Airlock
map-string-salvage-airlock = 打捞气闸门
# Salvage Arm
map-string-salvage-arm = 打捞臂
# salvage arm base
map-string-salvage-arm-base = 打捞臂基地
# Salvage Bay Airlock
map-string-salvage-bay-airlock = 打捞舱气闸门
# Salvage Breakroom
map-string-salvage-breakroom = 打捞休息室
# Salvage Conveyor
map-string-salvage-conveyor = 打捞传送带
# salvage corridor
map-string-salvage-corridor = 打捞走廊
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
# Sci RND Hall
map-string-sci-rnd-hall = 科研研发厅
# Sci Server Room
map-string-sci-server-room = 科研服务器机房
# Science Airlock
map-string-science-airlock = 科研气闸门
# Science Anom Lab
map-string-science-anom-lab = 科研异常实验室
# Science - Anomaly
map-string-science-anomaly = 科研异常
# Science Arti Lab
map-string-science-arti-lab = 科研神器实验室
# Science Artifact Containers
map-string-science-artifact-containers = 科研神器容器
# Science Atmospherics
map-string-science-atmospherics = 科研大气
# Science Breakroom
map-string-science-breakroom = 科研休息室
# Science Breakroom Hall
map-string-science-breakroom-hall = 科研休息室厅
# science canister room
map-string-science-canister-room = 科研气罐室
# Science Canister Storage
map-string-science-canister-storage = 科研气罐储藏
# Science Canisters
map-string-science-canisters = 科研气罐
# Science Corridor North
map-string-science-corridor-north = 科研走廊北
# Science Data Servers
map-string-science-data-servers = 科研数据服务器
# Science Desk
map-string-science-desk = 科研台席
# science docking area
map-string-science-docking-area = 科研对接区
# Science entrance and robotics
map-string-science-entrance-and-robotics = 科研入口机器人学
# Science Entry
map-string-science-entry = 科研入口
# Science Foyer
map-string-science-foyer = 科研门厅
# Science Front Area
map-string-science-front-area = 科研前区
# Science Front Hall
map-string-science-front-hall = 科研前厅
# Science front north hall
map-string-science-front-north-hall = 科研前北厅
# Science Hall
map-string-science-hall = 科研厅
# Science Hall Entrance
map-string-science-hall-entrance = 科研厅入口
# Science hallway north
map-string-science-hallway-north = 科研走廊北
# Science hallway south
map-string-science-hallway-south = 科研走廊南
# Science Lathe Room
map-string-science-lathe-room = 科研车床室
# Science Lobby
map-string-science-lobby = 科研大厅
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
# Science - Research & Development
map-string-science-research-development = 科研研究研发
# Science - Robotics
map-string-science-robotics = 科研机器人学
# Science Security Checkpoint
map-string-science-security-checkpoint = 科研安保检查站
# Science Server Room
map-string-science-server-room = 科研服务器机房
# Science - South Hall
map-string-science-south-hall = 科研南厅
# Science Substation
map-string-science-substation = 科研变电站
# Science [Workshop]
map-string-science-workshop = 科研工坊
# Science - Xenoarcheology
map-string-science-xenoarcheology = 科研异种考古学
# SE. Dining Area
map-string-se-dining-area = 东南餐饮区
# Seating
map-string-seating = 座位区
# Seating Lounge
map-string-seating-lounge = 座位区休息室
# SEC checkpoint
map-string-sec-checkpoint = 安保检查站
# Sec Checkpoint Evac
map-string-sec-checkpoint-evac = 安保检查站撤离
# Sec Engineering Post
map-string-sec-engineering-post = 安保工程岗
# SEC front
map-string-sec-front = 安保前
# SECS
map-string-secs = 安保
# Secure Storage
map-string-secure-storage = 保密储藏
# Secure Storage Boards
map-string-secure-storage-boards = 保密储藏主板
# Secure Tech Storage
map-string-secure-tech-storage = 保密技术储藏
# Security - Armory Blue
map-string-security-armory-blue = 安保军械库蓝
# Security - Armory Red
map-string-security-armory-red = 安保军械库红
# security break room
map-string-security-break-room = 安保休息室
# Security Cargo Checkpoint
map-string-security-cargo-checkpoint = 安保货运检查站
# Security Checkpoint
map-string-security-checkpoint = 安保检查站
# security checkpoint north
map-string-security-checkpoint-north = 安保检查站北
# Security Desk
map-string-security-desk = 安保台席
# Security - Detective Office
map-string-security-detective-office = 安保侦探办公室
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
# Security East Entrance
map-string-security-east-entrance = 安保东入口
# Security - East Hall
map-string-security-east-hall = 安保东厅
# Security Enterance North
map-string-security-enterance-north = 安保入口北
# Security Enterance South
map-string-security-enterance-south = 安保入口南
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
# Security Front Desk
map-string-security-front-desk = 安保前台
# Security Hall
map-string-security-hall = 安保厅
# Security Hallway
map-string-security-hallway = 安保走廊
# Security Hallway East
map-string-security-hallway-east = 安保走廊东
# Security hallway south
map-string-security-hallway-south = 安保走廊南
# Security Hallway West
map-string-security-hallway-west = 安保走廊西
# Security lobby
map-string-security-lobby = 安保大厅
# Security Lockers
map-string-security-lockers = 安保储物柜
# Security Main
map-string-security-main = 安保主
# Security Main Hall
map-string-security-main-hall = 安保主厅
# Security Main North
map-string-security-main-north = 安保主北
# Security Main South
map-string-security-main-south = 安保主南
# Security north
map-string-security-north = 安保北
# Security north hall
map-string-security-north-hall = 安保北厅
# Security Office
map-string-security-office = 安保办公室
# Security - Office HOS
map-string-security-office-hos = 安保办公室安保主管
# Security 'Re-education' Room
map-string-security-re-education-room = 安保 Re 教育室
# Security Shuttle Hut
map-string-security-shuttle-hut = 安保穿梭机小屋
# Security South
map-string-security-south = 安保南
# Security south hall
map-string-security-south-hall = 安保南厅
# Security southwest hall
map-string-security-southwest-hall = 安保西南厅
# Security Substation
map-string-security-substation = 安保变电站
# Security Waiting Area
map-string-security-waiting-area = 安保等候区
# Security - Warden
map-string-security-warden = 安保典狱长
# Security west hall
map-string-security-west-hall = 安保西厅
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
# Service [Common workshop]
map-string-service-common-workshop = 服务公共工坊
# Service Corridor North
map-string-service-corridor-north = 服务走廊北
# Service Corridor South
map-string-service-corridor-south = 服务走廊南
# Service Corridor West
map-string-service-corridor-west = 服务走廊西
# Service Hall
map-string-service-hall = 服务厅
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
# Service Plaza North
map-string-service-plaza-north = 服务广场北
# Service room
map-string-service-room = 服务室
# service substation
map-string-service-substation = 服务变电站
# Ship construction tool room
map-string-ship-construction-tool-room = 飞船建造工具室
# Ship Equipment
map-string-ship-equipment = 飞船装备
# shipyard north
map-string-shipyard-north = 船坞北
# shipyard south
map-string-shipyard-south = 船坞南
# shipyard storage
map-string-shipyard-storage = 船坞储藏
# Shop
map-string-shop = 商店
# Shop Two
map-string-shop-two = 商店二
# Show Room
map-string-show-room = 展示室
# Show Stage
map-string-show-stage = 展示舞台
# Showcase Room
map-string-showcase-room = 展台室
# Showroom East
map-string-showroom-east = 展厅东
# Showroom Exterior
map-string-showroom-exterior = 展厅外围
# Showroom West
map-string-showroom-west = 展厅西
# Shrine
map-string-shrine = 神龛
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
# Singulo South
map-string-singulo-south = 奇点南
# Singulo Supply
map-string-singulo-supply = 奇点补给
# Singulo West
map-string-singulo-west = 奇点西
# Sinks
map-string-sinks = 水槽
# Sitting room
map-string-sitting-room = 起居室
# SM Battery
map-string-sm-battery = 超物质蓄电池
# SM Main
map-string-sm-main = 超物质主
# SMES Array
map-string-smes-array = SMES 阵列
# SMES Bank / AME
map-string-smes-bank-ame = SMES 银行 AME
# SMES Hall
map-string-smes-hall = SMES 厅
# SMES Hallway
map-string-smes-hallway = SMES 走廊
# SMES Power Bank North
map-string-smes-power-bank-north = SMES 电力银行北
# SMES Power Bank South
map-string-smes-power-bank-south = SMES 电力银行南
# SMES Room
map-string-smes-room = SMES 室
# Smoking Area
map-string-smoking-area = 吸烟区
# Smoking Lounge
map-string-smoking-lounge = 吸烟休息室
# Soft Play Area
map-string-soft-play-area = Soft 游乐区
# Solar South West
map-string-solar-south-west = 太阳能西南
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
# Solars North-West
map-string-solars-north-west = 太阳能板西北
# Solars NW 
map-string-solars-nw = 太阳能板西北
# Solars NW Door
map-string-solars-nw-door = 太阳能板西北门
# Solars SE Door
map-string-solars-se-door = 太阳能板东南门
# Solars South
map-string-solars-south = 太阳能板南
# Solars South Airlock
map-string-solars-south-airlock = 太阳能板南气闸门
# Solars South East
map-string-solars-south-east = 太阳能板东南
# Solars South East Airlock
map-string-solars-south-east-airlock = 太阳能板东南气闸门
# Solars South-West
map-string-solars-south-west = 太阳能板西南
# Solars South West Airlock
map-string-solars-south-west-airlock = 太阳能板西南气闸门
# Solars Southwest 
map-string-solars-southwest = 太阳能板西南
# Solars Southwest Door
map-string-solars-southwest-door = 太阳能板西南门
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
# South Arrivals Dock
map-string-south-arrivals-dock = 南到站厅船坞
# South East
map-string-south-east = 东南
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
# south junction
map-string-south-junction = 南交汇处
# South of Hydroponics
map-string-south-of-hydroponics = 南水培
# South security
map-string-south-security = 南安保
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
# Southeast solars
map-string-southeast-solars = 东南太阳能板
# Southwest Hallway
map-string-southwest-hallway = 西南走廊
# Southwest Solars
map-string-southwest-solars = 西南太阳能板
# Space Bridge
map-string-space-bridge = 太空舰桥
# starboard
map-string-starboard = 右舷
# starboard nacelle
map-string-starboard-nacelle = 右舷舱体
# station anchor hallway
map-string-station-anchor-hallway = 空间站锚定器走廊
# stern
map-string-stern = 艉
# Store Area
map-string-store-area = 商店区
# studio
map-string-studio = 演播室
# studio audience
map-string-studio-audience = 演播室观众席
# Substation
map-string-substation = 变电站
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
# Surgery bay
map-string-surgery-bay = 手术室舱
# Surgery Hallway North
map-string-surgery-hallway-north = 手术室走廊北
# Surgery North
map-string-surgery-north = 手术室北
# Surgery Observation
map-string-surgery-observation = 手术室观测
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
# Swimming Pool
map-string-swimming-pool = 游泳泳池
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
# TEG Airlock
map-string-teg-airlock = TEG 气闸门
# TEG - Burn Chamber
map-string-teg-burn-chamber = TEG 烧伤舱室
# TEG center
map-string-teg-center = TEG 中心
# TEG Cool Loop
map-string-teg-cool-loop = TEG 冷却环道
# TEG east
map-string-teg-east = TEG 东
# Teg Entrance
map-string-teg-entrance = TEG 入口
# TEG exterior
map-string-teg-exterior = TEG 外围
# TEG hallway
map-string-teg-hallway = TEG 走廊
# TEG Radiator
map-string-teg-radiator = TEG 散热器
# TEG Room
map-string-teg-room = TEG 室
# TEG SMES Bank
map-string-teg-smes-bank = TEG SMES 银行
# TEG - South
map-string-teg-south = TEG 南
# TEG vent
map-string-teg-vent = TEG 通风
# TEG west
map-string-teg-west = TEG 西
# Telecomms and Routers
map-string-telecomms-and-routers = 通讯路由器
# Telecomms East
map-string-telecomms-east = 通讯东
# Telecomms Interior
map-string-telecomms-interior = 通讯内部
# Telecomms Storage
map-string-telecomms-storage = 通讯储藏
# Telecommunications
map-string-telecommunications = 通讯
# Telecoms
map-string-telecoms = 通讯
# Tesla Chamber
map-string-tesla-chamber = 特斯拉舱室
# Tesla control
map-string-tesla-control = 特斯拉控制
# tesla enterance
map-string-tesla-enterance = 特斯拉入口
# Tesla North
map-string-tesla-north = 特斯拉北
# tesla storage
map-string-tesla-storage = 特斯拉储藏
# Test Chamber North
map-string-test-chamber-north = 测试舱室北
# Test Chamber South
map-string-test-chamber-south = 测试舱室南
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
# Theater Hallway
map-string-theater-hallway = 剧院走廊
# Theater Room
map-string-theater-room = 剧院室
# theater seating
map-string-theater-seating = 剧院座位区
# Theatre Backroom
map-string-theatre-backroom = 剧院后间
# Theatre - Clown's Room
map-string-theatre-clown-s-room = 剧院小丑室
# Theatre Front
map-string-theatre-front = 剧院前
# Theatre - Mime's Room
map-string-theatre-mime-s-room = 剧院默剧演员室
# Theatre - Musician's Room
map-string-theatre-musician-s-room = 剧院乐师室
# Theatre Room
map-string-theatre-room = 剧院室
# Thrusters (E)
map-string-thrusters-e = 推进器 E
# Thrusters (E) External
map-string-thrusters-e-external = 推进器 E 外部
# Thrusters (S)
map-string-thrusters-s = 推进器 S
# Thrusters (S) External
map-string-thrusters-s-external = 推进器 S 外部
# Thrusters (W)
map-string-thrusters-w = 推进器 W
# Toe Room Entrance
map-string-toe-room-entrance = Toe 室入口
# Tool Hall
map-string-tool-hall = 工具厅
# tool room hallway north
map-string-tool-room-hallway-north = 工具室走廊北
# Toolroom
map-string-toolroom = 工具间
# Toolroom O' Tide
map-string-toolroom-o-tide = 工具间 Tide
# tools hallway
map-string-tools-hallway = 工具走廊
# Tools Room
map-string-tools-room = 工具室
# Tools Room Hallway
map-string-tools-room-hallway = 工具室走廊
# Toolshed
map-string-toolshed = 工具棚
# Toxins
map-string-toxins = 毒理学
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
# Vending machine room
map-string-vending-machine-room = 自动售货机房
# viewscreen
map-string-viewscreen = 观察屏
# VIP
map-string-vip = 贵宾
# Viro Entrance
map-string-viro-entrance = 病毒学入口
# Virology Airlock
map-string-virology-airlock = 病毒学气闸门
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
# Visitation Entrance
map-string-visitation-entrance = 探视入口
# Visitation Inside
map-string-visitation-inside = 探视内部
# Visitation Outside
map-string-visitation-outside = 探视外部
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
# Ward
map-string-ward = 病房
# Warden Office
map-string-warden-office = 典狱长办公室
# Warden's Room
map-string-warden-s-room = 典狱长室
# Wardnerds
map-string-wardnerds = 典狱长
# Washroom
map-string-washroom = 盥洗室
# West Boxing Ring
map-string-west-boxing-ring = 西拳击环
# West Bridgehead
map-string-west-bridgehead = 西舰桥前区
# West Broadside Loading Zone
map-string-west-broadside-loading-zone = 西舷侧装卸区
# West Entrance Corridor
map-string-west-entrance-corridor = 西入口走廊
# west hall
map-string-west-hall = 西厅
# West Hall A
map-string-west-hall-a = 西厅 A
# West Hall B
map-string-west-hall-b = 西厅 B
# West Hall C
map-string-west-hall-c = 西厅 C
# West hallway 2.
map-string-west-hallway-2 = 西走廊 2
# West Laser Rack
map-string-west-laser-rack = 西激光架
# West Maint Crossover
map-string-west-maint-crossover = 西维护通道交叉通道
# West Side
map-string-west-side = 西侧
# west solars
map-string-west-solars = 西太阳能板
# west surgery
map-string-west-surgery = 西手术室
# West Unrestricted Medical Hall
map-string-west-unrestricted-medical-hall = 西开放医疗厅
# Western Lobby
map-string-western-lobby = 西大厅
# Wing Connection (E)
map-string-wing-connection-e = 区连接段 E
# Wing Connection (W)
map-string-wing-connection-w = 区连接段 W
# Wing East
map-string-wing-east = 区东
# Wing Hallway (E)
map-string-wing-hallway-e = 区走廊 E
# Wing Hallway (NW)
map-string-wing-hallway-nw = 区走廊西北
# Wing West
map-string-wing-west = 区西
# Workshop
map-string-workshop = 工坊
# #?XeNo@!biO+=
map-string-xeno-bio = 异种生物
# Xeno Lab N
map-string-xeno-lab-n = 异种实验室 N
# Xeno Lab S
map-string-xeno-lab-s = 异种实验室 S
# Xenoarch
map-string-xenoarch = 异种考古学
# Xenoarcheology
map-string-xenoarcheology = 异种考古学
# Xenoarcheology Corner
map-string-xenoarcheology-corner = 异种考古学角
# Xenoarcheology Hallway
map-string-xenoarcheology-hallway = 异种考古学走廊
# Xenoarcheology North Chamber
map-string-xenoarcheology-north-chamber = 异种考古学北舱室
# Xenoarcheology South Chamber
map-string-xenoarcheology-south-chamber = 异种考古学南舱室
# Xenoarcheology Storage
map-string-xenoarcheology-storage = 异种考古学储藏
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
# Xenobiology Chamber Airlock
map-string-xenobiology-chamber-airlock = 异种生物学舱室气闸门
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

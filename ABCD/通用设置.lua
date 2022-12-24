
--所有通用设置 都在这里
--[[
---------------------------------------------不懂的一定要好好看这里的说明
--两个减号 -- 为注释符号 注释掉后相关的设置将不再起作用 
所用到的数据类型有以下几种 
1、逻辑型 有两种状态 true为真 false为假  大家看到带有false与true的数据 就知道他是逻辑型了
2、数值型 支持小数 负数 直接填写数字就是了 如：-1 100 0.123 这种都是数值型 不需要带引号 
3、字符串型 填写的时候前后都需要用半角引号包含起来 如："我是仓库号" 注意只有字符串型的才需要两边带引号
然后这三种类型的数据都能使用nil  nil是空值 表示忽略 ，表示什么都没有 两边不需要引号

设置中需要用到的数据 各种数据名字与类名都需要打开目录下的调试信息查看器，然后再游戏中按HOME键呼出调试窗口 
点击你要查看的数据的按钮，里面都能找到名字=name 类名=className 这里推荐大家要填写className 这样设置好的配置能够台 国 国际 三服通用
所有设置又分为两种 
1、变量型：设置项=数据 这种简单粗暴的都是变量型设置 直接改那个等于号后面的数据就是了
2、函数型：函数名(参数1,参数2) 这样的就是函数型 由函数名与若干个参数组成 参数被半角括号()套起来
]]
------------------基本设置
g_needMinimizeGame=false			--最小化遊戲窗口 true为最小化 false或nil为不最小化
g_imBoss=false					--如果是仓库号要为true 挂机号为false
g_attackDis=50					--攻击距离
g_yiJieTimeOut=15*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=25*60					--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_addTianFu=true				--自动按设定好的配置加天赋 true为加 nil或false为不加
g_shengJiBaoShi=true			--自动升级宝石 true为升级 nil或false为不升级
g_sellSkillGem=true				--自动卖超过40品质的技能宝石
g_notHuanYaoLv=82				--大于等于多少级只捡蓝色以上药 
g_needAutoChangeEquip=false		--开启自动换装 true为换 nil或false为不换
g_needAutoSetBaoShi=true		--开启自动换宝石 true为换 nil或false为不换
g_bossGiveZhuangBei=false		--交易时仓库号给予缺少的高级换装中的装备 true为给 false为不给 是对仓库号设置的
g_xiaoHaoGetZhuangBei=false		--挂机号向发装仓库号申请领高级换装中的装备 true为申请 false为不申请 

--SetZhuangBeiBoss(bossName,srvName)--设置发装仓库号 bossName=发装号名字 字符串型 srvName=服务器名字，如果多个区用同一份配置的话填上服务器名字可单独区分 如果不是可忽略 或填nil 
--SetZhuangBeiBoss("这里填上你自己的发装仓库号名字","区名字")--发装备的仓库号 如果不需要 就注释掉 只有挂机号跟仓库号都是 外挂账号 才有效

--SetNeedAddTianFu(tfStr)--设置异界天赋加点 
SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_path_11-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_drops_20-掉落複製地圖|atlas_map_drops_2-掉落複製地圖|atlas_map_drops_4-掉落複製地圖|atlas_map_drops_8-掉落複製地圖|atlas_path_92-掉落複製地圖|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_90-掉落複製地圖|atlas_keystone_smallnodes_1-流浪之路|atlas_path_22-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_drops_1-掉落複製地圖|atlas_map_drops_16-掉落複製地圖|atlas_map_drops_15-掉落複製地圖|atlas_map_drops_9-掉落複製地圖|atlas_path_95-掉落複製地圖|atlas_path_96-掉落複製地圖|atlas_path_94-掉落複製地圖|atlas_map_tier_5_1-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_5_2-高階地圖機率|atlas_map_tier_4_1-高階地圖機率|atlas_path_82-掉落複製地圖|atlas_map_drops_14-掉落複製地圖|atlas_path_85-掉落複製地圖|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_path_83-掉落複製地圖|atlas_map_drops_5-掉落複製地圖|atlas_path_84-掉落複製地圖|atlas_map_drops_3-掉落複製地圖|atlas_map_drops_17_-掉落複製地圖|atlas_path_3-相鄰地圖掉落機率|atlas_path_29-相鄰地圖掉落機率|atlas_path_89-掉落複製地圖|atlas_map_drops_18-掉落複製地圖|atlas_path_86-掉落複製地圖|atlas_map_drops_21-掉落複製地圖|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_drops_10-掉落複製地圖|atlas_map_drops_11-掉落複製地圖|atlas_path_4-相鄰地圖掉落機率|atlas_path_7-相鄰地圖掉落機率|atlas_path_88-掉落複製地圖|atlas_map_drops_12_-掉落複製地圖|atlas_path_87-掉落複製地圖|atlas_map_drops_13-掉落複製地圖|")


--添加在做到某个任务时购买技能宝石
--AddNeedBuySkillTime(city,task)-- city=城市索引数值型 1-11 task=任务类名 字符串型 任务类名可以在调试窗口中点击 所有任务 按钮查看到
----A1
AddNeedBuySkillTime(1,"a1q1")
AddNeedBuySkillTime(1,"a1q5")
AddNeedBuySkillTime(1,"a1q4")
AddNeedBuySkillTime(1,"a1q2")
AddNeedBuySkillTime(1,"a1q3")
AddNeedBuySkillTime(1,"a1q6")
AddNeedBuySkillTime(1,"a1q9")
AddNeedBuySkillTime(1,"a1q7")
----A2
AddNeedBuySkillTime(2,"a2q7")
AddNeedBuySkillTime(1,"a2q6")
AddNeedBuySkillTime(2,"a2q9")
AddNeedBuySkillTime(1,"a2q9")
AddNeedBuySkillTime(2,"a2q2")
AddNeedBuySkillTime(1,"a2q8")
AddNeedBuySkillTime(1,"a2q2")
-----A3
AddNeedBuySkillTime(2,"a3q1")
AddNeedBuySkillTime(2,"a3q11")
AddNeedBuySkillTime(1,"a3q3")
AddNeedBuySkillTime(1,"a3q4")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(3,"a3q10")
----A4
AddNeedBuySkillTime(3,"a4q2")
AddNeedBuySkillTime(2,"a4q2")
AddNeedBuySkillTime(1,"a4q2")
AddNeedBuySkillTime(3,"a4q6")
AddNeedBuySkillTime(3,"a4q3")
AddNeedBuySkillTime(3,"a4q4")
AddNeedBuySkillTime(4,"a4q5")
AddNeedBuySkillTime(3,"a4q1")
----A5
AddNeedBuySkillTime(3,"a5q3")
AddNeedBuySkillTime(2,"a5q3")
AddNeedBuySkillTime(1,"a5q3")
AddNeedBuySkillTime(4,"a5q5")

AddNeedBuySkillTime(6,"a6q1")	--在第6章的惊海之王时 检测购买一遍
AddNeedBuySkillTime(6,"a6q2")
AddNeedBuySkillTime(6,"a6q3")
AddNeedBuySkillTime(6,"a6q5")
AddNeedBuySkillTime(6,"a7q2")
AddNeedBuySkillTime(6,"a8q2")
AddNeedBuySkillTime(6,"a10q2")	--第10章的死亡和重生任务 检测购买一遍
AddNeedBuySkillTime(11,"a11q1")	--在拾取碎片 这个任务时检测购买一遍


--药瓶摆放
--SetNeedFlaskData(pos,flask)--设置药  pos=位置 1-5  flask=药 字符串型，支持以下 (生命药剂,魔力药剂,复合药剂,宝钻药剂,红玉药剂,蓝玉药剂,黄玉药剂,坚岩药剂,水银药剂,紫晶药剂,石英药剂,翠玉药剂,石化药剂,海蓝药剂,迷雾药剂,硫磺药剂,真银药剂,灰岩药剂)
SetNeedFlaskData(1,"生命药剂","熱情洋溢的,FlaskPartialInstantRecovery3|密封之,FlaskBleedCorruptingBloodImmunity1",90)
SetNeedFlaskData(2,"魔力药剂","耐久的,FlaskEffectNotRemovedOnFullMana1|法師之FlaskBuffReducedManaCostWhileHealing3",90)
SetNeedFlaskData(3,"宝钻药剂","nil")
SetNeedFlaskData(4,"紫晶药剂","nil")
SetNeedFlaskData(5,"水银药剂","nil")

--AddNotMakeTaskData(taskClassName)--添加不需要做的任务 taskClassName为任务类名
AddNotMakeTaskData("a2q5")--梦中圣地
AddNotMakeTaskData("a2q10")--白色巨兽
AddNotMakeTaskData("a3q13")--重生的渴望
--AddNotMakeTaskData("a3q12")--命运之语
AddNotMakeTaskData("a6q5")--毕斯特传奇
--AddNotMakeTaskData("a7q8")--古斯特的墓碑
AddNotMakeTaskData("a7q5")--银色吊坠
AddNotMakeTaskData("a8q5")--瓦斯提里之翼
AddNotMakeTaskData("a9q4")--命运之历
AddNotMakeTaskData("a10q4")--无爱旧魂
AddNotMakeTaskData("a10q5")--深海之路


--AddUseGoodsData(name,className)--添加要使用的物品必须填一个，忽略填nil --name=物品名字 className=物品类名 



--SetZhongShenData(className1,className2)--设置要加的众神殿数据 className1=高阶数据类名 字符串型 className2=低阶数据类名 字符串型 
SetZhongShenData("Lunaris","Gruthkul")--设置月影女神之魂与绝望之母 格鲁丝克之魂

------------------存仓分类
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--设置存仓页面 
--saveType 物品类型 字符串型 支持以下种类 忽略填nil 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--pageName 仓库页面名 字符串型 可填多个，中间用|隔开
--goodsName 物品名 字符串型 忽略填nil
--goodsClassName 物品类名 字符串型 忽略填nil
--wordName 词缀名 字符串型 忽略填nil
--wordClassName 词缀类名 字符串型 忽略填nil
--pageType 仓库页类型 数值型 不填或nil或0 为普通仓库 1为通货页 2为命运卡页  3为碎片页

-------注意要大类在前 小类 单独设置在后面添加
SetSaveIndex("通货|可堆叠通货","1")
SetSaveIndex("异界地图","2")
SetSaveIndex("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|头盔","3|4")
SetSaveIndex("珠宝|命运卡|衣服|盾|箭袋|地图碎片","4")
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂","4")
SetSaveIndex(nil,"4","鍊魔眼睛","Metadata/Items/Metamorphosis/MetamorphosisEye")
SetSaveIndex(nil,"4","预言","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"4","鏈結石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"4","改造石","Metadata/Items/Currency/CurrencyRerollMagic")

------------------挂机相关
g_yijieNoWhiteMonster=false		--异界时是否不打白怪 true为不打 nil或false为打
g_yijieNoWhiteBox=true			--异界时是否不开白箱子 true为不开 nil或false为开
g_useYiJieWanChengDuLv=90	--使用下面异界完成度那个设置的等级，如果未到等则刷全图
g_yiJieWanChengDu=0.9		--异界完成度 完成多少就回去 为1或1以下的小数
g_yongHengShiBeiLv=90		--大于等于多少级打永恒石碑 
g_needTaFangLv=90			--大于等于多少级打塔防
g_needLianMoLv=90			--大于等于多少级打炼魔
g_attackFreezeMonsterLv=90	--大于等于多少级打冰冻怪
g_needChuanYueLv=90			--大于等于多少级打穿越怪
g_needLieXiLv=90			--大於等于多少级打时空裂缝怪
g_needMiWuLv=90				--大于等于多少级打迷雾

g_yuyanCnt=nil				--够多少银币去预言，小于10银币或填nil将不会触发 如果设定去预言，那下面还需要设置交易给仓库号的预言

--地图相关
--SetNotMapGoMap(className,cnt) 设置无地图或未到等级时要刷的剧情地图 className字符串型 地图类名 cnt=次数
SetNotMapGoMap("2_9_1",10)	--无地图时刷血色通道

g_yiJieLv=72				--够了多少级才去刷异界
g_checkSellMapCnt=60		--地图超过这个数量才会检测出售地图
g_destroyNoUseMap=true		--销毁上面设置不使用的地图 nil或false为不销毁
g_mapUseFuHaoLv=76			--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=nil			--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=76		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=72		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=nil			--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=83			--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=nil			--大于等于多少级使用制图钉 nil为永远不使用
g_noUseMapLv=0				--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外

g_mapUseOrangeMap=false		--true为使用橙图 nil或false为不使用
--SetYouXianUseMapData(name,className,color)--设置优先使用的异界地图 
--name 字符串型 地图名 
--className 字符串型 地图类名 
--color 字符串型 颜色 0白1蓝2黄3橙 中间用|隔开


-- SetNoUseMapShuXing(className)--设置不使用带有某种属性的地图,参数 className为属性类名
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--设置不打物理反射属性
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复
SetNoUseMapShuXing("is_blighted_map")--凋落地图

--SetLastEnterSmallMap(mapClassName)--设置需要后进小房间的异界地图
--mapClassName 异界地图类名 字符串型

SetLastEnterSmallMap("MapWorldsArachnidTomb")--灵虫墓穴
SetLastEnterSmallMap("MapWorldsTropicalIsland")--晴空幽岛
SetLastEnterSmallMap("MapWorldsBurialChambers")--幽闭墓领
SetLastEnterSmallMap("MapWorldsResidence")--神主居所
SetLastEnterSmallMap("MapWorldsCage")--恶念牢笼
SetLastEnterSmallMap("MapWorldsRamparts")--濱海堡壘
SetLastEnterSmallMap("MapWorldsCaldera")--火山炎口
SetLastEnterSmallMap("MapWorldsVaalPyramid")--瓦尔金字塔
SetLastEnterSmallMap("MapWorldsArena")--競技場
SetLastEnterSmallMap("MapWorldsOvergrownRuin")--長草遺跡
SetLastEnterSmallMap("MapWorldsGorge")--冰川山丘



--SetSellGoodsData(name,className,cnt,color)--设置卖(换)的地图 
--name=物品名 className=物品类名 先识别物品名 识别不到就识别类名 cnt=够多少去卖 color=颜色 0白 1蓝 2黄 多个用|隔开

SetSellGoodsData("露台花園","Metadata/Items/Maps/MapWorldsTerrace",3,"0|1|2|")
SetSellGoodsData("岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake",3,"0|1|2|")
SetSellGoodsData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand",9,"0|1|2|")
SetSellGoodsData("靜縊陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2|")

SetSellGoodsData("岔河","Metadata/Items/Maps/MapWorldsForkingRiver",3,"0|1|2|")
SetSellGoodsData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",3,"0|1|2|")
SetSellGoodsData("巨蛛之林","Metadata/Items/Maps/MapWorldsSpiderForest",3,"0|1|2|")
SetSellGoodsData("遺跡廢墟","Metadata/Items/Maps/MapWorldsCastleRuins",3,"0|1|2|")
SetSellGoodsData("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",3,"0|1|2|")
SetSellGoodsData("嬋娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
SetSellGoodsData("緋紅神殿","Metadata/Items/Maps/MapWorldsCrimsonTemple",3,"0|1|2|")

SetSellGoodsData("海風高原","Metadata/Items/Maps/MapWorldsPlateauk",3,"0|1|2|")
SetSellGoodsData("火山炎口","Metadata/Items/Maps/MapWorldsCaldera",3,"0|1|2|")
SetSellGoodsData("失落城塢","Metadata/Items/Maps/MapWorldsPort",3,"0|1|2|")
SetSellGoodsData("疾風峽灣","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2|")
SetSellGoodsData("魔靈幻獄","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2|")
SetSellGoodsData("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")
SetSellGoodsData("陰暗墓塚","Metadata/Items/Maps/MapWorldsSepulchre",3,"0|1|2|")
SetSellGoodsData("古博物館","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2|")

SetSellGoodsData("破碎堡礁","Metadata/Items/Maps/MapWorldsCoralRuins",3,"0|1|2|")
SetSellGoodsData("濱海山丘","Metadata/Items/Maps/MapWorldsAtoll",3,"0|1|2|")
SetSellGoodsData("暮光海灘","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2|")
SetSellGoodsData("巨蛛巢穴","Metadata/Items/Maps/MapWorldsSpiderLair",3,"0|1|2|")
SetSellGoodsData("異蛛巢穴","Metadata/Items/Maps/MapWorldsArachnidNest",3,"0|1|2|")
SetSellGoodsData("驚懼樹叢","Metadata/Items/Maps/MapWorldsThicket",3,"0|1|2|")
SetSellGoodsData("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
SetSellGoodsData("神主居所","Metadata/Items/Maps/MapWorldsResidence",3,"0|1|2|")

SetSellGoodsData("瘴氣泥沼","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
SetSellGoodsData("奇術之庭","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2|")
SetSellGoodsData("怒浪之港","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
SetSellGoodsData("象牙神殿","Metadata/Items/Maps/MapWorldsIvoryTemple",3,"0|1|2|")
SetSellGoodsData("儲物倉","Metadata/Items/Maps/MapWorldsSilo",3,"0|1|2|")
SetSellGoodsData("酸岩酸嶼","Metadata/Items/Maps/MapWorldsAcidCaverns",3,"0|1|2|")
SetSellGoodsData("實驗居所","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2|")
SetSellGoodsData("奪魂之殿","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2|")



SetSellGoodsData("劇毒林谷","Metadata/Items/Maps/MapWorldsJungleValley",3,"0|1|2|")
SetSellGoodsData("怒浪之港","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
SetSellGoodsData("白沙灘頭","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
SetSellGoodsData("魅影別墅","Metadata/Items/Maps/MapWorldsVilla",3,"0|1|2|")
SetSellGoodsData("密林果園","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
SetSellGoodsData("惡咒陵墓","Metadata/Items/Maps/MapWorldsCursedCrypt",9,"0|1|2|")
SetSellGoodsData("軍械庫","Metadata/Items/Maps/MapWorldsArmoury",3,"0|1|2|")
SetSellGoodsData("濱海堡壘","Metadata/Items/Maps/MapWorldsRamparts",3,"0|1|2|")
SetSellGoodsData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",9,"0|1|2|")
SetSellGoodsData("旱木林地","Metadata/Items/Maps/MapWorldsAshenWood",9,"0|1|2|")
SetSellGoodsData("靜縊陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2|")
SetSellGoodsData("幽魂宅邸","Metadata/Items/Maps/MapWorldsHauntedMansion",3,"0|1|2|")
SetSellGoodsData("無疆田野","Metadata/Items/Maps/MapWorldsFields",3,"0|1|2|")
SetSellGoodsData("冰川山丘","Metadata/Items/Maps/MapWorldsGorge",3,"0|1|2|")
SetSellGoodsData("乾潮林地","Metadata/Items/Maps/MapWorldsPeninsula",3,"0|1|2|")
SetSellGoodsData("毒菌魔域","Metadata/Items/Maps/MapWorldsSprings",9,"0|1|2|")
SetSellGoodsData("貧瘠之地","Metadata/Items/Maps/MapWorldsDesert",3,"0|1|2|")
SetSellGoodsData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",9,"0|1|2|")
SetSellGoodsData("墮影墓場","Metadata/Items/Maps/MapWorldsGraveyard",9,"0|1|2|")
SetSellGoodsData("古兵工廠","Metadata/Items/Maps/MapWorldsArsenal",9,"0|1|2|")
SetSellGoodsData("平頂荒漠","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
SetSellGoodsData("疾風峽灣","Metadata/Items/Maps/MapWorldsCoves",3,"0|1|2|")
SetSellGoodsData("瘴氣泥沼","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
SetSellGoodsData("荒地","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
SetSellGoodsData("雲頂鐘樓","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2|")
SetSellGoodsData("競技場","Metadata/Items/Maps/MapWorldsArena",3,"0|1|2|")
SetSellGoodsData("晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
SetSellGoodsData("魔金寶庫","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
SetSellGoodsData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar",9,"0|1|2|")
SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",9,"0|1|2|")
SetSellGoodsData("奪魂之殿","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2|")
SetSellGoodsData("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity",3,"0|1|2|")
SetSellGoodsData("腐敗下水道","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2|")
SetSellGoodsData("火山炎域","Metadata/Items/Maps/MapWorldsVolcano",9,"0|1|2|")
SetSellGoodsData("古典密室","Metadata/Items/Maps/MapWorldsRelicChambers",3,"0|1|2|")
SetSellGoodsData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade",9,"0|1|2|")
SetSellGoodsData("羈破牢","Metadata/Items/Maps/MapWorldsCage",3,"0|1|2|")
SetSellGoodsData("穢陰獄牢","Metadata/Items/Maps/MapWorldsPen",3,"0|1|2|")
SetSellGoodsData("紫晶礦山","Metadata/Items/Maps/MapWorldsCrystalOre",3,"0|1|2|")
SetSellGoodsData("巨坑","Metadata/Items/Maps/MapWorldsPit",3,"0|1|2|")
SetSellGoodsData("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",9,"0|1|2|")
SetSellGoodsData("死寂泥溝","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2|")
SetSellGoodsData("詭譎晶洞","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
SetSellGoodsData("熔岩之室","Metadata/Items/Maps/MapWorldsLavaChamber",3,"0|1|2|")
SetSellGoodsData("熱林塚墓","Metadata/Items/Maps/MapWorldsBarrows",9,"0|1|2|")
SetSellGoodsData("惡靈學院","Metadata/Items/Maps/MapWorldsAcademy",3,"0|1|2|")
SetSellGoodsData("闇獄尖塔","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")





--SetCompoundDivinationCard(name,className,nType) --设置需要合成的命运卡 name=卡片名 className=卡片类名 nType=合成场景 nil或不填为无论何时都合成 0为没在刷异界才合 1为只在刷异界才合
SetCompoundDivinationCard("黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")--设置合成忠诚命运卡
SetCompoundDivinationCard("蘭塔朵迷惘之愛","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")--设置合成忠诚命运卡
SetCompoundDivinationCard("薇妮雅的信物","Metadata/Items/DivinationCards/DivinationCardViniasToken")--设置合成忠诚命运卡
SetCompoundDivinationCard("珠宝匠","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")--设置合成忠诚命运卡
SetCompoundDivinationCard("浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")--设置合成忠诚命运卡
SetCompoundDivinationCard("帝运","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")--设置合成忠诚命运卡
SetCompoundDivinationCard("好运连连","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")--设置合成忠诚命运卡
SetCompoundDivinationCard("混沌之雨","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")--设置合成忠诚命运卡
SetCompoundDivinationCard("飢渴之佔","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")--设置合成忠诚命运卡
SetCompoundDivinationCard("棄財求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")--设置合成忠诚命运卡
SetCompoundDivinationCard("发明家","Metadata/Items/DivinationCards/DivinationCardTheInventor")--设置合成忠诚命运卡
SetCompoundDivinationCard("惊喜盒","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")--设置合成忠诚命运卡
SetCompoundDivinationCard("联姻","Metadata/Items/DivinationCards/DivinationCardTheUnion")--设置合成忠诚命运卡
SetCompoundDivinationCard("怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath")--设置合成忠诚命运卡
SetCompoundDivinationCard("灾变","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")--设置合成忠诚命运卡
SetCompoundDivinationCard("求生专家","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")--设置合成忠诚命运卡
SetCompoundDivinationCard("忠诚","Metadata/Items/DivinationCards/DivinationCardLoyalty")--设置合成忠诚命运卡
SetCompoundDivinationCard("制图师","Metadata/Items/DivinationCards/DivinationCardTheCartographer")--设置合成忠诚命运卡
SetCompoundDivinationCard("生命之樹","Metadata/Items/DivinationCards/DivinationCardTheSephirot")--设置合成忠诚命运卡
SetCompoundDivinationCard("聖徒之財","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")--设置合成忠诚命运卡
SetCompoundDivinationCard("無痕","Metadata/Items/DivinationCards/DivinationCardNoTraces")--设置合成忠诚命运卡
SetCompoundDivinationCard("善","Metadata/Items/DivinationCards/DivinationCardTheInnocent")--设置合成忠诚命运卡
SetCompoundDivinationCard("愚人","Metadata/Items/DivinationCards/DivinationCardTheFool")--设置合成忠诚命运卡
SetCompoundDivinationCard("赌徒","Metadata/Items/DivinationCards/DivinationCardTheGambler")--设置合成忠诚命运卡
SetCompoundDivinationCard("工匠大师","Metadata/Items/DivinationCards/DivinationCardTheMasterArtisan")--设置合成忠诚命运卡
SetCompoundDivinationCard("情人","Metadata/Items/DivinationCards/DivinationCardTheLover")--设置合成忠诚命运卡
SetCompoundDivinationCard("净白","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")--设置合成忠诚命运卡
SetCompoundDivinationCard("谦逊","Metadata/Items/DivinationCards/DivinationCardHumility",0)--设置合成忠诚命运卡

--SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--设置开始刷异界时间检测购买指定物品
--name=自己有的通货名 className=自己有的通货类名 cnt=够多少个触发 0或nil 不会触发 buyName=需要购买的物品名 buyClassName=需要购买的物品类名

g_buyNpcData={
mapClassName="1_3_town"
,className="Metadata/NPC/Act3/ClarissaTown"
}--将会在3章 1_3_town 此NPC下购买 name:卡尔丽莎

--SetNeedBuyGoodsData("知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal")
--SetNeedBuyGoodsData("传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,"蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetNeedBuyGoodsData("蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",200,"增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
SetNeedBuyGoodsData("增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",200,"改造石","Metadata/Items/Currency/CurrencyRerollMagic")
--SetNeedBuyGoodsData("改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,"工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
--SetNeedBuyGoodsData("工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",100,"链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetNeedBuyGoodsData("链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly")
SetNeedBuyGoodsData("机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",100,"重铸石","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetNeedBuyGoodsData("重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",nil,"后悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetNeedBuyGoodsData("后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",nil,"点金石","Metadata/Items/Currency/CurrencyUpgradeToRare")


--SetGoodsCaoZuo(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu)-- 设置要操作的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--czType:字符串型 0为拾 1卖 2存 3丢 4鉴定 可多个中间用|隔开
--name 字符串型 物品的名字 忽略则填 nil
--className 字符串型 物品的类名 忽略则填 nil
--wordName 字符串型 物品的词缀名 忽略则填 nil
--wordClassName 字符串型 物品的词缀类名 忽略则填 nil
--pingzhi 数字型 物品的品质 忽略则填 nil
--cnt 数字型 保留数量 忽略则填 nil
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--socketCnt 数字型 总洞数量 忽略则填 nil
--lineCnt 数字型 连洞数量 忽略则填 nil
--checkCangKu 计算保留数量时是否连仓库内的数量也计算进去 nil或false为不计算仓库 true 为需要计算
SetGoodsCaoZuo("通货|可堆叠通货|异界地图","0|2")--多个大类设置捡存
--SetGoodsCaoZuo("主动技能宝石|辅助技能宝石","0|1",nil,nil,nil,nil,20)--拾取品质超过5的技能宝石
--SetGoodsCaoZuo(nil,"0|1|4",nil,nil,nil,nil,nil,nil,"3")--拾取 鉴定 出售橙色物品
SetGoodsCaoZuo(nil,nil,"知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--够了就不捡了
SetGoodsCaoZuo(nil,nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,80)--够了就不捡了
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
--SetGoodsCaoZuo("爪","0|1|4",nil,nil,nil,nil,5,nil,"2")--捡卖精良的黄爪子
SetGoodsCaoZuo("珠宝|深渊珠宝","0|1|4",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
SetGoodsCaoZuo(nil,"1|3","周年福袋","Metadata/Items/MicrotransactionCurrency/MicrotransactionTencentEventCoin")--
SetGoodsCaoZuo(nil,"1|3","玻璃弹珠","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"0","磨刀石","Metadata/Items/Currency/CurrencyWeaponQuality")--磨刀石不存
SetGoodsCaoZuo(nil,"0","护甲片","Metadata/Items/Currency/CurrencyArmourQuality")--护甲片不存
SetGoodsCaoZuo(nil,"3","卷轴碎片","Metadata/Items/Currency/CurrencyIdentificationShard")--卷轴碎片丢
SetGoodsCaoZuo(nil,"3","预言","Metadata/Items/Currency/CurrencyItemisedProphecy")--丢预言
SetGoodsCaoZuo(nil,"0|2","蘭塔朵迷惘之愛","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")
SetGoodsCaoZuo(nil,"1|3","祝福石","Metadata/Items/Currency/CurrencyRerollImplicit")--
SetGoodsCaoZuo(nil,"1|3","束縛石","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets")--
SetGoodsCaoZuo(nil,"1|3","工程石","Metadata/Items/Currency/CurrencyStrongboxQuality")--


SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--鍊魔腦髓不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--鍊魔眼睛不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--鍊魔肝臟不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--鍊魔肺臟不捡
SetGoodsCaoZuo(nil,"1|3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--鍊魔心臟不捡


SetGoodsCaoZuo("异界地图","1|3","致命岩灘","Metadata/Items/Maps/MapWorldsCursedCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","濱海山丘","Metadata/Items/Maps/MapWorldsAtoll",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",nil,nil,nil,nil,"3")
SetGoodsCaoZuo("异界地图","1|3","魔影墓場","Metadata/Items/Maps/MapWorldsNecropolis",nil,nil,nil,nil,"3")

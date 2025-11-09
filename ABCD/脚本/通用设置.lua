
--所有通用设置 都在这里
--[[
---------------------------------------------不懂的一定要好好看这里的说明
--两个减号 --为注释符号 注释掉后相关的设置将不再起作用 
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
g_imBoss=false				--如果是仓库号要为true 挂机号为false
g_yiJieTimeOut=15*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=15*60				--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_attackDis=40	                        --攻击距离
g_sellSkillGem=true			--自动卖超过40品质的技能宝石
g_notHuanYaoLv=82			--大于等于多少级只捡蓝色以上药
g_bossGiveZhuangBei=true 	        --交易时仓库号给予缺少的高级换装中的装备
g_xiaoHaoGetZhuangBei=true		--挂机号向仓库号申请领高级换装中的装备
g_duobiHpVal=0.5                       --打怪时HP少于多少躲避
g_addHpVal=0.6                          --HP低于多少吃红药
g_addMpVal=0.3                          --MP低于多少吃蓝药
g_changeHunDunLv=70                     --多少级前不换C
g_notShuaBaiPao=nil                     --是否不需要刷白袍 true为不需要 false或nil为需要
g_wenWuChangeTime=60*60  	        --間隔多久检测一次文物兑换 单位为秒

g_needAutoSetBaoShi=true		--开启自动换宝石 true为换 nil或false为不换

AddUseGoodsData("天賦之書")             --添加天赋之书
g_yiJieLv=70			        --够了多少级才去刷异界

g_needYongBingLv=85                --数字型 满多少级打佣兵玩法 nil为一直不打
g_noUseMapLv=16		--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外
--g_useMinLvMapTianFuCnt=78       --取图时，地图天赋满多少点后 就从低阶地图开始取
g_openQlkMaxMapTianFuCnt=78     --满多少天赋后不开奇拉克任务 nil为一直开

------------------挂机相关
g_yijieNoWhiteMonster=true	--异界时是否不打白怪 true为不打 nil或false为打
g_yijieNoWhiteBox=true		--异界时是否不开白箱子 true为不开 nil或false为开
g_useYiJieWanChengDuLv=99	--使用下面异界完成度那个设置的等级，如果未到等则刷全图
g_yiJieWanChengDu=0.9		--异界完成度 完成多少就回去 为1或1以下的小数
g_yongHengShiBeiLv=85		--大于等于多少级打永恒石碑 
g_needTaFangLv=90		--大于等于多少级打塔防
g_needZhuangYuanLv=85           --大于等于多少级打庄园
g_needLianMoLv=90		--大于等于多少级打炼魔
g_attackFreezeMonsterLv=80	--大于等于多少级打冰冻怪
g_needChuanYueLv=90		--大于等于多少级打穿越怪
g_needLieXiLv=90		--大於等于多少级打时空裂缝怪
g_needMiWuLv=90			--大于等于多少级打迷雾
g_needZaFenLv=99                --设置多少级开始做新赛季炸坟玩法
g_needMengYanLv=85              --85级以后就点梦魇

g_checkSellMapCnt=60		--地图超过这个数量才会检测出售地图
g_destroyNoUseMap=true		--销毁上面设置不使用的地图 nil或false为不销毁
g_mapUseFuHaoLv=80		--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=70		--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=80		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=70		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=80		--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=nil		--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=80		--大于等于多少级使用制图钉 nil为永远不使用
g_mapUseOrangeMap=true		--true为使用橙图 nil或false为不使用
g_czYouXianMap=true                             --是否重铸不打属性的优先地图 true为是 false或nil为不重铸 

--AddMapUseGoods(name,className,mapColor,minLv,onlyOne)--增加对地图使用的物品 可添加谵妄玉 红门碎片 圣甲虫
--name 字符串型 对地图使用的物品的名字 可以填nil忽略 但必须要填下面的类名参数
--className 字符串型 对地图使用的物品的类名 可以填nil忽略 但必须要填上面的名字参数
--mapColor 字符串型 地图的颜色 0为白色 1为蓝色 2为黄色 3为橙色 可填多个，中间用|隔开 可以填nil忽略 默认为 "0|1|2"
--minLv 数字型 最小生效等级 人物等级大于这个才生效 可以填nil忽略 默认为0级
--onlyOne 逻辑型 这是个使用分组 true分组只会使用第一个符合的物品，false或nil 分组为使用所有符合的物品。

AddMapUseGoods("Harbinger Scarab","Metadata/Items/Scarabs/ScarabHarbingerNew1","1|2",80,false)     --神諭1
AddMapUseGoods("Harbinger Scarab","Metadata/Items/Scarabs/ScarabHarbingerNew1","1|2",80,false)     --神諭1
AddMapUseGoods("Harbinger Scarab of Obelisks","Metadata/Items/Scarabs/ScarabHarbingerNew2","1|2",80,false)     --神諭2
AddMapUseGoods("Harbinger Scarab of Regency","Metadata/Items/Scarabs/ScarabHarbingerNew3","1|2",80,false)     --神諭3
AddMapUseGoods("Harbinger Scarab of Warhoards","Metadata/Items/Scarabs/ScarabHarbingerNew4","1|2",80,false)     --神諭4


--设置多少样装备换C
SetChangeLimitCnt("头盔|手套|鞋子|武器|衣服",3)
SetChangeLimitCnt("项链|腰带",9)
SetChangeLimitCnt("戒指",18)

--卡等级模式
--SetTaskShengJiData("a1q6",nil,"1_1_9",15)
--SetTaskShengJiData("a5q7",nil,"1_5_5",46)
--SetTaskShengJiData("a9q1",nil,"2_9_1",65)

---交易速度
g_jiaoYiAddSellGoodsTime=1--数字型 交易时把东西放到交易栏的等待时间 单位为毫秒 默认为250

SetWenWuChangeZhuangBei("黄芪","Metadata/Items/Currency/CurrencyRefreshGambler")--文物兑换刷新物品
SetWenWuChangeZhuangBei("废金属","Metadata/Items/Currency/CurrencyRefreshDealer")
SetWenWuChangeZhuangBei("异域铸币","Metadata/Items/Currency/CurrencyRefreshBarter")

SetWenWuChangeZhuangBei("重革腰带","Metadata/Items/Belts/Belt4")--文物兑换 几率出魔血
SetWenWuChangeZhuangBei("皮革腰带","Metadata/Items/Belts/Belt3")--文物兑换 几率出猎首
SetWenWuChangeZhuangBei("权贵圆盾","Metadata/Items/Armours/Shields/ShieldStrDex13")--文物兑换 几率出大地主

------------通货------------
SetWenWuChangeZhuangBei("卡兰德的魔镜","Metadata/Items/Currency/CurrencyDuplicate")
SetWenWuChangeZhuangBei("魔镜碎片","Metadata/Items/Currency/CurrencyDuplicateShard")
SetWenWuChangeZhuangBei("破裂石","Metadata/Items/Currency/CurrencyFractureRare")
SetWenWuChangeZhuangBei("破裂石碎片","Metadata/Items/Currency/CurrencyFractureRareShard")
SetWenWuChangeZhuangBei("神圣石","Metadata/Items/Currency/CurrencyModValues")
SetWenWuChangeZhuangBei("终极混沌铸新仪","Metadata/Items/Delve/DelveSocketableCurrencyReroll4")
SetWenWuChangeZhuangBei("制图六分仪．觉醒","Metadata/Items/Currency/CurrencyAddAtlasModHigh")
SetWenWuChangeZhuangBei("远古石","Metadata/Items/Currency/CurrencyRerollUnique")
SetWenWuChangeZhuangBei("丰裕牌组","Metadata/Items/DivinationCards/DivinationCardDeck")
SetWenWuChangeZhuangBei("虚诞遗钥","Metadata/Items/MapFragments/VoidbornVaultKey")
SetWenWuChangeZhuangBei("悉妮蔻拉的髮丝","Metadata/Items/Currency/CurrencyHinekorasLock")
SetWenWuChangeZhuangBei("瓦尔多的谜盒","Metadata/Items/Currency/CurrencyValdoPuzzleBox")
SetWenWuChangeZhuangBei("淬鍊石","Metadata/Items/Currency/CurrencyHeistWeaponEnchant")
SetWenWuChangeZhuangBei("裁缝石","Metadata/Items/Currency/CurrencyHeistArmourEnchant")
SetWenWuChangeZhuangBei("支配之玉","Metadata/Items/Currency/CurrencyUpgradeInfluenceMod")
SetWenWuChangeZhuangBei("印記","Metadata/Items/Currency/CurrencyImprint")
SetWenWuChangeZhuangBei("衝突寶珠","Metadata/Items/Currency/CurrencyConflictOrb")
SetWenWuChangeZhuangBei("謁見國王","Metadata/Items/MapFragments/RitualBossFragment")
SetWenWuChangeZhuangBei("密教獎章","Metadata/Items/MapFragments/CurrencyMastermindsLair")
SetWenWuChangeZhuangBei("創傷之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestFearKey")
SetWenWuChangeZhuangBei("孤獨之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestIgnoranceKey")
SetWenWuChangeZhuangBei("敬畏之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestBenevolenceKey")
SetWenWuChangeZhuangBei("隱匿崇高石","Metadata/Items/Currency/CurrencyRerollRareVeiled")

------------精髓------------
SetWenWuChangeZhuangBei("浮夸精髓","Metadata/Items/Currency/CurrencyEssenceHysteria1")--浮夸精华
SetWenWuChangeZhuangBei("错乱精髓","Metadata/Items/Currency/CurrencyEssenceInsanity1")--错乱精华
SetWenWuChangeZhuangBei("极恐精髓","Metadata/Items/Currency/CurrencyEssenceHorror1")--极恐精华
SetWenWuChangeZhuangBei("谵妄精髓","Metadata/Items/Currency/CurrencyEssenceDelirium1")--谵妄精华
SetWenWuChangeZhuangBei("寻梦追忆","Metadata/Items/Maps/MapWorldsSynthesisedWorld")--深沉記憶
SetWenWuChangeZhuangBei("埃哈的记忆","Metadata/Items/MemoryLines/MemoryLineEinhar")--埃哈的记忆
SetWenWuChangeZhuangBei("寻梦追忆","Metadata/Items/Maps/MapWorldsSynthesisedWorld")--深沉記憶

------------裂片------------
SetWenWuChangeZhuangBei("幻像异界","Metadata/Items/MapFragments/CurrencyAfflictionFragment")--梦魇拟像
SetWenWuChangeZhuangBei("夏烏拉裂片","Metadata/Items/Currency/CurrencyBreachChaosShard")
SetWenWuChangeZhuangBei("夏乌拉纯淨裂痕石","Metadata/Items/Currency/CurrencyChayulasPurestone")
SetWenWuChangeZhuangBei("乌尔尼多纯淨裂痕石","Metadata/Items/Currency/CurrencyUulNetolsPurestone")
SetWenWuChangeZhuangBei("艾许纯淨裂痕石","Metadata/Items/Currency/CurrencyEshsPurestone")
SetWenWuChangeZhuangBei("托沃纯淨裂痕石","Metadata/Items/Currency/CurrencyTulsPurestone")
SetWenWuChangeZhuangBei("索伏纯淨裂痕石","Metadata/Items/Currency/CurrencyXophsPurestone")
SetWenWuChangeZhuangBei("夏乌拉富裕裂痕石","Metadata/Items/Currency/CurrencyChayulasEnrichedstone")
SetWenWuChangeZhuangBei("乌尔尼多富裕裂痕石","Metadata/Items/Currency/CurrencyUulNetolsEnrichedstone")
SetWenWuChangeZhuangBei("艾许富裕裂痕石","Metadata/Items/Currency/CurrencyEshsEnrichedstone")
SetWenWuChangeZhuangBei("托沃富裕裂痕石","Metadata/Items/Currency/CurrencyTulsEnrichedstone")
SetWenWuChangeZhuangBei("索伏富裕裂痕石","Metadata/Items/Currency/CurrencyXophsEnrichedstone")
SetWenWuChangeZhuangBei("夏乌拉充能裂痕石","Metadata/Items/Currency/CurrencyChayulasChargedstone")
SetWenWuChangeZhuangBei("乌尔尼多充能裂痕石","Metadata/Items/Currency/CurrencyUulNetolsChargedstone")
SetWenWuChangeZhuangBei("艾许充能裂痕石","Metadata/Items/Currency/CurrencyEshsChargedstone")
SetWenWuChangeZhuangBei("托沃充能裂痕石","Metadata/Items/Currency/CurrencyTulsChargedstone")
SetWenWuChangeZhuangBei("索伏充能裂痕石","Metadata/Items/Currency/CurrencyXophsChargedstone")
SetWenWuChangeZhuangBei("夏乌拉裂痕石","Metadata/Items/Currency/CurrencyChayulasstone")
SetWenWuChangeZhuangBei("神諭之殿．神臨","Metadata/Items/Maps/MapAtlasHarbingerHigh")--先驱者地图
SetWenWuChangeZhuangBei("神諭之殿．降師","Metadata/Items/Maps/MapAtlasHarbingerMid")--先驱者地图
SetWenWuChangeZhuangBei("神諭之殿．歸徒","Metadata/Items/Maps/MapAtlasHarbingerLow")--先驱者地图
SetWenWuChangeZhuangBei("灵现结晶生灵之力","Metadata/Items/Currency/HarvestSeedGreen")--灵现结晶生灵之力
SetWenWuChangeZhuangBei("野性结晶生灵之力","Metadata/Items/Currency/HarvestSeedRed")--野性结晶生灵之力
SetWenWuChangeZhuangBei("神圣结晶生灵之力","Metadata/Items/Currency/HarvestSeedBoss")--神圣结晶生灵之力
SetWenWuChangeZhuangBei("原始结晶生灵之力","Metadata/Items/Currency/HarvestSeedBlue")--原始结晶生灵之力
SetWenWuChangeZhuangBei("金色圣油","Metadata/Items/Currency/Mushrune12")--金色圣油
SetWenWuChangeZhuangBei("神圣之花","Metadata/Items/MapFragments/CurrencyHarvestBossKey")--神圣之花
SetWenWuChangeZhuangBei("破裂石","Metadata/Items/Currency/CurrencyFractureRare")--破裂石
SetWenWuChangeZhuangBei("改善之預兆","Metadata/Items/Currency/AncestralOmenOnDeathPreventExpLoss")
SetWenWuChangeZhuangBei("白化之預兆","Metadata/Items/Currency/AncestralOmenOnChromaticAddWhiteSockets")
SetWenWuChangeZhuangBei("連結之預兆","Metadata/Items/Currency/AncestralOmenOnFusingMakeFullLinks")
--SetWenWuChangeZhuangBei("工匠之預兆","Metadata/Items/Currency/AncestralOmenOnJewellersMakeFullSockets")
SetWenWuChangeZhuangBei("財富之預兆","Metadata/Items/Currency/AncestralOmenOnChanceMakeUnique")
SetWenWuChangeZhuangBei("映像迷霧","Metadata/Items/Currency/ReflectiveMist")
SetWenWuChangeZhuangBei("魂芯符文之結","Metadata/Items/Currency/RunegraftSouls")
SetWenWuChangeZhuangBei("寶石工藝符文之結","Metadata/Items/Currency/RunegraftSupportLevels")
SetWenWuChangeZhuangBei("巫印符文之結","Metadata/Items/Currency/RunegraftSpellLifeCost")
SetWenWuChangeZhuangBei("圣甲虫：觉醒犄角","Metadata/Items/Scarabs/ScarabUber4")
SetWenWuChangeZhuangBei("圣甲虫：庇护犄角","Metadata/Items/Scarabs/ScarabUber3")
SetWenWuChangeZhuangBei("通牒铭文之圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum5")
SetWenWuChangeZhuangBei("通牒催化的圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum4")
SetWenWuChangeZhuangBei("隐匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiled")
------------卡片------------
SetWenWuChangeZhuangBei("疯猫","Metadata/Items/DivinationCards/DivinationCardTheInsaneCat")
SetWenWuChangeZhuangBei("神圣之美","Metadata/Items/DivinationCards/DivinationCardDivineBeauty")
SetWenWuChangeZhuangBei("奉献的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfDevotion")
SetWenWuChangeZhuangBei("庞然大物","Metadata/Items/DivinationCards/DivinationCardTheLeviathan")
SetWenWuChangeZhuangBei("药剂师","Metadata/Items/DivinationCards/DivinationCardTheApothecary")
SetWenWuChangeZhuangBei("明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors")
SetWenWuChangeZhuangBei("单相思","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")
SetWenWuChangeZhuangBei("兄弟之赠","Metadata/Items/DivinationCards/DivinationCardBrothersGift")
SetWenWuChangeZhuangBei("持盾者","Metadata/Items/DivinationCards/DivinationCardTheShieldbearer")
SetWenWuChangeZhuangBei("疯医","Metadata/Items/DivinationCards/DivinationCardTheDoctor")
SetWenWuChangeZhuangBei("恶魔","Metadata/Items/DivinationCards/DivinationCardTheDemon")
SetWenWuChangeZhuangBei("冰冷爱恋","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce")
SetWenWuChangeZhuangBei("魔鬼","Metadata/Items/DivinationCards/DivinationCardTheFiend")
SetWenWuChangeZhuangBei("幸运的人","Metadata/Items/DivinationCards/DivinationCardTheFortunate")
SetWenWuChangeZhuangBei("永恆不朽","Metadata/Items/DivinationCards/DivinationCardTheImmortal")
SetWenWuChangeZhuangBei("诈欺师","Metadata/Items/DivinationCards/DivinationCardTheCheater")
SetWenWuChangeZhuangBei("灵魂","Metadata/Items/DivinationCards/DivinationCardTheSoul")
SetWenWuChangeZhuangBei("生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetWenWuChangeZhuangBei("诱惑之宝","Metadata/Items/DivinationCards/DivinationCardAlluringBounty")
SetWenWuChangeZhuangBei("钱与权","Metadata/Items/DivinationCards/DivinationCardWealthAndPower")
SetWenWuChangeZhuangBei("亵渎的美德","Metadata/Items/DivinationCards/DivinationCardDesecratedVirtue")
SetWenWuChangeZhuangBei("守护的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfProtection")
SetWenWuChangeZhuangBei("不守信","Metadata/Items/DivinationCards/DivinationCardBrokenPromises")
SetWenWuChangeZhuangBei("护理师","Metadata/Items/DivinationCards/DivinationCardTheNurse")
SetWenWuChangeZhuangBei("无罪救赎","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless")
SetWenWuChangeZhuangBei("智慧启蒙","Metadata/Items/DivinationCards/DivinationCardTheEnlightened")
SetWenWuChangeZhuangBei("龙之心","Metadata/Items/DivinationCards/DivinationCardTheDragonsHeart")
SetWenWuChangeZhuangBei("灭世之咒","Metadata/Items/DivinationCards/DivinationCardTheDamned")
SetWenWuChangeZhuangBei("武士之眼","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye")
SetWenWuChangeZhuangBei("忠诚代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty")
SetWenWuChangeZhuangBei("比死更惨的命","Metadata/Items/DivinationCards/DivinationCardAFateWorseThanDeath")
SetWenWuChangeZhuangBei("晦暗不明","Metadata/Items/DivinationCards/DivinationCardDarkerHalf")
SetWenWuChangeZhuangBei("策略家","Metadata/Items/DivinationCards/DivinationCardTheStrategist")
SetWenWuChangeZhuangBei("家园","Metadata/Items/DivinationCards/DivinationCardHome")
SetWenWuChangeZhuangBei("来了兄弟","Metadata/Items/DivinationCards/DivinationCardISeeBrothers")
SetWenWuChangeZhuangBei("孤軍奮戰","Metadata/Items/DivinationCards/DivinationCardLonelyWarrior")
SetWenWuChangeZhuangBei("初始經文 ","Metadata/Items/DivinationCards/DivinationCardDamnation")
SetWenWuChangeZhuangBei("歷史","Metadata/Items/DivinationCards/DivinationCardHistory")
SetWenWuChangeZhuangBei("自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance")
SetWenWuChangeZhuangBei("父愛","Metadata/Items/DivinationCards/DivinationCardFathersLove")
SetWenWuChangeZhuangBei("神秘之火的起源","Metadata/Items/DivinationCards/DivinationCardFireOfUnknownOrigin")
SetWenWuChangeZhuangBei("自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance")
SetWenWuChangeZhuangBei("追擊之翼","Metadata/Items/DivinationCards/DivinationCardAvianPursuit")

--SetQuLingData(nil,99,true,true)
AddYouXianGongPingBuyGoods(nil,nil,nil,"Mageblood",true)--"魔血"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Kalandra's Touch",true)--"卡兰德之触"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Squire",true)--"大地主"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Headhunter",true)--"猎首"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Voidborn Reliquary Key",true)--"虚诞遗钥"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Fulcrum",true)--"支点"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Arakaali's Fang",true)--"艾尔卡莉之牙"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Polaric Devastation",true)--"极地毁灭"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Unnatural Instinct",true)--"神感"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Interrogation",true)--审问"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Inspired Learning",true)--求知的热情"
AddYouXianGongPingBuyGoods(nil,nil,nil,"The Red Nightmare",true)--"赤影梦魇"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Rain of Splinters",true)--"碎镞雨"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Aegis Aurora",true)--"幻芒圣盾"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Hyrri's Ire",true)--"西里的战衣"
--AddYouXianGongPingBuyGoods(nil,nil,nil,"Berek's Respite",true)--"贝雷克的火与雷之乐"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Fortress Covenant",true)--"堅壁誓約"
--AddYouXianGongPingBuyGoods(nil,nil,nil,"Tabula Rasa",true)--"无尽之衣"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Lioneye's Remorse",true)--"狮眼的荣耀塔盾"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Voltaxic Rift",true)--"魔暴之痕"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Soul Taker",true)--"开膛斧"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Eyes of the Greatwolf",true)--"巨狼之眼"
--AddYouXianGongPingBuyGoods(nil,nil,nil,"Lioneye's Glare",true)--"狮眼的战弓"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Marohi Erqi",true)--"尔奇的巨灵之锤"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Astral Projector",true)--"星空之影"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Divinarius",true)--"戒律之影"
AddYouXianGongPingBuyGoods(nil,nil,nil,"Wine of the Prophet",true)--預言家之酒
AddYouXianGongPingBuyGoods(nil,nil,nil,"Wraithlord",true)--憤靈郡主

AddYouXianGongPingBuyGoods("卡兰德的魔镜","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,true)
AddYouXianGongPingBuyGoods("启蒙辅助","Metadata/Items/Gems/SupportGemAdditionalXP",nil,nil,true)
AddYouXianGongPingBuyGoods("悉妮蔻拉的髮丝","Metadata/Items/Currency/CurrencyHinekorasLock",nil,nil,true)
AddYouXianGongPingBuyGoods("异能崇高石","Metadata/Items/Currency/CurrencyEldritchAddModToRare",nil,nil,true)
AddYouXianGongPingBuyGoods("异能混沌石","Metadata/Items/Currency/CurrencyEldritchRerollRare",nil,nil,true)
AddYouXianGongPingBuyGoods("异能无效石","Metadata/Items/Currency/CurrencyEldritchRemoveMod",nil,nil,true)
AddYouXianGongPingBuyGoods("神圣石","Metadata/Items/Currency/CurrencyModValues",nil,nil,true)
AddYouXianGongPingBuyGoods("瓦尔多的谜盒","Metadata/Items/Currency/CurrencyValdoPuzzleBox",nil,nil,true)
AddYouXianGongPingBuyGoods("破裂石碎片","Metadata/Items/Currency/CurrencyFractureRareShard",nil,nil,true)
--AddYouXianGongPingBuyGoods("富裕牌组","Metadata/Items/DivinationCards/DivinationCardDeck")
AddYouXianGongPingBuyGoods("破裂石","Metadata/Items/Currency/CurrencyFractureRare",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("改善之預兆","Metadata/Items/Currency/AncestralOmenOnDeathPreventExpLoss",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("白化之預兆","Metadata/Items/Currency/AncestralOmenOnChromaticAddWhiteSockets",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("連結之預兆","Metadata/Items/Currency/AncestralOmenOnFusingMakeFullLinks",nil,nil,true)--破裂石
--AddYouXianGongPingBuyGoods("工匠之預兆","Metadata/Items/Currency/AncestralOmenOnJewellersMakeFullSockets",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("財富之預兆","Metadata/Items/Currency/AncestralOmenOnChanceMakeUnique",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("映像迷霧","Metadata/Items/Currency/ReflectiveMist",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("魂芯符文之結","Metadata/Items/Currency/RunegraftSouls",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("寶石工藝符文之結","Metadata/Items/Currency/RunegraftSupportLevels",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("巫印符文之結","Metadata/Items/Currency/RunegraftSpellLifeCost",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("淬鍊石","Metadata/Items/Currency/CurrencyHeistWeaponEnchant",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("裁缝石","Metadata/Items/Currency/CurrencyHeistArmourEnchant",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("支配之玉","Metadata/Items/Currency/CurrencyUpgradeInfluenceMod",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("印記","Metadata/Items/Currency/CurrencyImprint",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("衝突寶珠","Metadata/Items/Currency/CurrencyConflictOrb",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("謁見國王","Metadata/Items/MapFragments/RitualBossFragment",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("密教獎章","Metadata/Items/MapFragments/CurrencyMastermindsLair",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("創傷之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestFearKey",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("孤獨之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestIgnoranceKey",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("敬畏之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestBenevolenceKey",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("圣甲虫：觉醒犄角","Metadata/Items/Scarabs/ScarabUber4",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("圣甲虫：庇护犄角","Metadata/Items/Scarabs/ScarabUber3",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("通牒铭文之圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum5",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("通牒催化的圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum4",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("隐匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiled",nil,nil,true)--破裂石
AddYouXianGongPingBuyGoods("隱匿崇高石","Metadata/Items/Currency/CurrencyRerollRareVeiled",nil,nil,true)--破裂石

AddYouXianGongPingBuyGoods("疯猫","Metadata/Items/DivinationCards/DivinationCardTheInsaneCat",nil,nil,true)
AddYouXianGongPingBuyGoods("神圣之美","Metadata/Items/DivinationCards/DivinationCardDivineBeauty",nil,nil,true)
AddYouXianGongPingBuyGoods("奉献的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfDevotion",nil,nil,true)
AddYouXianGongPingBuyGoods("庞然大物","Metadata/Items/DivinationCards/DivinationCardTheLeviathan",nil,nil,true)
AddYouXianGongPingBuyGoods("药剂师","Metadata/Items/DivinationCards/DivinationCardTheApothecary",nil,nil,true)
AddYouXianGongPingBuyGoods("明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,true)
AddYouXianGongPingBuyGoods("单相思","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,true)
AddYouXianGongPingBuyGoods("兄弟之赠","Metadata/Items/DivinationCards/DivinationCardBrothersGift",nil,nil,true)
AddYouXianGongPingBuyGoods("持盾者","Metadata/Items/DivinationCards/DivinationCardTheShieldbearer",nil,nil,true)
AddYouXianGongPingBuyGoods("疯医","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,true)
AddYouXianGongPingBuyGoods("恶魔","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,true)
AddYouXianGongPingBuyGoods("冰冷爱恋","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,true)
AddYouXianGongPingBuyGoods("魔鬼","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,true)
AddYouXianGongPingBuyGoods("幸运的人","Metadata/Items/DivinationCards/DivinationCardTheFortunate",nil,nil,true)
AddYouXianGongPingBuyGoods("永恆不朽","Metadata/Items/DivinationCards/DivinationCardTheImmortal",nil,nil,true)
AddYouXianGongPingBuyGoods("诈欺师","Metadata/Items/DivinationCards/DivinationCardTheCheater",nil,nil,true)
AddYouXianGongPingBuyGoods("灵魂","Metadata/Items/DivinationCards/DivinationCardTheSoul",nil,nil,true)
AddYouXianGongPingBuyGoods("来了兄弟","Metadata/Items/DivinationCards/DivinationCardISeeBrothers",nil,nil,true)
AddYouXianGongPingBuyGoods("生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,true)
AddYouXianGongPingBuyGoods("诱惑之宝","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,true)
AddYouXianGongPingBuyGoods("钱与权","Metadata/Items/DivinationCards/DivinationCardWealthAndPower",nil,nil,true)
AddYouXianGongPingBuyGoods("亵渎的美德","Metadata/Items/DivinationCards/DivinationCardDesecratedVirtue",nil,nil,true)
AddYouXianGongPingBuyGoods("守护的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfProtection",nil,nil,true)
AddYouXianGongPingBuyGoods("不守信","Metadata/Items/DivinationCards/DivinationCardBrokenPromises",nil,nil,true)
AddYouXianGongPingBuyGoods("护理师","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,true)
AddYouXianGongPingBuyGoods("无罪救赎","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,true)
AddYouXianGongPingBuyGoods("智慧启蒙","Metadata/Items/DivinationCards/DivinationCardTheEnlightened",nil,nil,true)
AddYouXianGongPingBuyGoods("龙之心","Metadata/Items/DivinationCards/DivinationCardTheDragonsHeart",nil,nil,true)
AddYouXianGongPingBuyGoods("武士之眼","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,true)
AddYouXianGongPingBuyGoods("忠诚代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty",nil,nil,true)
AddYouXianGongPingBuyGoods("比死更惨的命","Metadata/Items/DivinationCards/DivinationCardAFateWorseThanDeath",nil,nil,true)
AddYouXianGongPingBuyGoods("晦暗不明","Metadata/Items/DivinationCards/DivinationCardDarkerHalf",nil,nil,true)
AddYouXianGongPingBuyGoods("策略家","Metadata/Items/DivinationCards/DivinationCardTheStrategist",nil,nil,true)
AddYouXianGongPingBuyGoods("家园","Metadata/Items/DivinationCards/DivinationCardHome",nil,nil,true)
AddYouXianGongPingBuyGoods("深沉记忆","Metadata/Items/Maps/MapWorldsSynthesisedWorld",nil,nil,true)
AddYouXianGongPingBuyGoods("孤軍奮戰","Metadata/Items/DivinationCards/DivinationCardLonelyWarrior",nil,nil,true)
AddYouXianGongPingBuyGoods("初始經文 ","Metadata/Items/DivinationCards/DivinationCardDamnation",nil,nil,true)
AddYouXianGongPingBuyGoods("歷史","Metadata/Items/DivinationCards/DivinationCardHistory",nil,nil,true)
AddYouXianGongPingBuyGoods("自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance",nil,nil,true)
AddYouXianGongPingBuyGoods("父愛","Metadata/Items/DivinationCards/DivinationCardFathersLove",nil,nil,true)
AddYouXianGongPingBuyGoods("神秘之火的起源","Metadata/Items/DivinationCards/DivinationCardFireOfUnknownOrigin",nil,nil,true)
AddYouXianGongPingBuyGoods("自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance",nil,nil,true)
AddYouXianGongPingBuyGoods("追擊之翼","Metadata/Items/DivinationCards/DivinationCardAvianPursuit",nil,nil,true)
--AddYouXianGongPingBuyGoods("靈現之看守者","Metadata/Monsters/LeagueHarvest/Green/HarvestSquidT3MemoryLine",nil,nil,true)
--AddYouXianGongPingBuyGoods("靈現之禿鷹","Metadata/Monsters/LeagueHarvest/Green/HarvestVultureParasiteT3MemoryLine",nil,nil,true)
--AddYouXianGongPingBuyGoods("黑色莫里根","Metadata/Monsters/LeagueAzmeri/GullGoliathBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("初始之天斯卡沃","Metadata/Monsters/LeagueBestiary/MarakethBirdSpiritBoss",nil,nil,true)
--AddYouXianGongPingBuyGoods("初始之潭奎爾珊","Metadata/Monsters/LeagueBestiary/NessaCrabBestiarySpiritBoss",nil,nil,true)
--AddYouXianGongPingBuyGoods("奎爾珊龍蜥","Metadata/Monsters/LeagueBestiary/GemFrogBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("費爾羅坑穴獵犬","Metadata/Monsters/LeagueBestiary/PitbullBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("斯卡沃龍蜥","Metadata/Monsters/LeagueBestiary/IguanaBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("斯卡沃禿鷹","Metadata/Monsters/LeagueBestiary/VultureBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("菲恩絲女皇","Metadata/Monsters/LeagueBestiary/InsectSpawnerBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("斯卡沃雛鳥","Metadata/Monsters/LeagueBestiary/Avians/MarakethBirdBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("菲恩絲吞噬獸","Metadata/Monsters/LeagueBestiary/RootSpiderBestiary",nil,nil,true)
--AddYouXianGongPingBuyGoods("祭祀裂片","Metadata/Items/Currency/CurrencyRitualSplinter")

g_needShiLianDaShiLv=99 --满75级打试炼大师
SetNeedShiLianReward("卡兰德的魔镜","Metadata/Items/Currency/CurrencyDuplicate")
SetNeedShiLianReward(nil,nil,nil,"The Squire")--"大地主"
SetNeedShiLianReward(nil,nil,nil,"Mageblood")--"魔血"
SetNeedShiLianReward(nil,nil,nil,"Headhunter")--"猎首"
SetNeedShiLianReward(nil,nil,nil,"Badge of the Brotherhood")--"激情之章"
SetNeedShiLianReward(nil,nil,nil,"Bottled Faith")--"瓶中信仰"
SetNeedShiLianReward(nil,nil,nil,"Unnatural Instinct")--"神感"
SetNeedShiLianReward(nil,nil,nil,"Void Battery")--"潜能魔棒"
SetNeedShiLianReward(nil,nil,nil,"Asenath's Gentle Touch")--"安赛娜丝的安抚之语"
--SetNeedShiLianReward(nil,nil,nil,"Machina Mitts")--"诡计魔手"
SetNeedShiLianReward(nil,nil,nil,"Farrul's Fur")--"费尔罗羽衣"
SetNeedShiLianReward(nil,nil,nil,"Shroud of the Lightless")--"晦暗的尸布"
SetNeedShiLianReward(nil,nil,nil,"The Halcyon")--"太平"
SetNeedShiLianReward(nil,nil,nil,"Gravebind")--"幽墓束縛"
SetNeedShiLianReward(nil,nil,nil,"Arakaali's Fang")--"艾尔卡莉之牙"
--SetNeedShiLianReward(nil,nil,nil,"Unending Hunger")--"无尽渴望"
SetNeedShiLianReward(nil,nil,nil,"Inspired Learning")--"求知的热情"
SetNeedShiLianReward("卡兰德的魔镜碎片","Metadata/Items/Currency/CurrencyDuplicateShard")
SetNeedShiLianReward("疯医","Metadata/Items/DivinationCards/DivinationCardTheDoctor")
SetNeedShiLianReward("魔鬼","Metadata/Items/DivinationCards/DivinationCardTheFiend")
SetNeedShiLianReward("单相思","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")
SetNeedShiLianReward("明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors")
SetNeedShiLianReward("恶魔","Metadata/Items/DivinationCards/DivinationCardTheDemon")
SetNeedShiLianReward("悉妮蔻拉的髮丝","Metadata/Items/Currency/CurrencyHinekorasLock")
SetNeedShiLianReward("无罪救赎","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless")
SetNeedShiLianReward("蜂巢知识","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge")
SetNeedShiLianReward("安赛娜丝赠礼","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath")
SetNeedShiLianReward("雄伟动机","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions")
SetNeedShiLianReward("长期诈骗","Metadata/Items/DivinationCards/DivinationCardTheLongCon")
SetNeedShiLianReward("伯仲财库","Metadata/Items/DivinationCards/DivinationCardBrothersStash")
SetNeedShiLianReward("命中注定","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting")
SetNeedShiLianReward("星象学家","Metadata/Items/DivinationCards/DivinationCardTheAstromancer")
SetNeedShiLianReward("跨冰之恋","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce")
SetNeedShiLianReward("病患","Metadata/Items/DivinationCards/DivinationCardThePatient")
SetNeedShiLianReward("照料者","Metadata/Items/DivinationCards/DivinationCardTheNurse")
SetNeedShiLianReward("药剂师","Metadata/Items/DivinationCards/DivinationCardTheApothecary")
SetNeedShiLianReward("疯猫","Metadata/Items/DivinationCards/DivinationCardTheInsaneCat")
SetNeedShiLianReward("奉献的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfDevotion")
SetNeedShiLianReward("持盾者","Metadata/Items/DivinationCards/DivinationCardTheShieldbearer")--命运卡
SetNeedShiLianReward("圣人之礼","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")
SetNeedShiLianReward("坚毅诗人","Metadata/Items/DivinationCards/DivinationCardTheIronBard")
SetNeedShiLianReward("武士之眼","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye")
SetNeedShiLianReward("来生之美","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath")
SetNeedShiLianReward("明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors")
SetNeedShiLianReward("单相思","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove")
SetNeedShiLianReward("崇高石","Metadata/Items/Currency/CurrencyAddModToRare")
SetNeedShiLianReward("远古石","Metadata/Items/Currency/CurrencyRerollUnique")
SetNeedShiLianReward("神圣石","Metadata/Items/Currency/CurrencyModValues")
SetNeedShiLianReward("诱人的奖赏","Metadata/Items/DivinationCards/DivinationCardAlluringBounty")
SetNeedShiLianReward("先祖的代价","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes")
SetNeedShiLianReward("来了兄弟","Metadata/Items/DivinationCards/DivinationCardISeeBrothers")
SetNeedShiLianReward("兄弟之赠","Metadata/Items/DivinationCards/DivinationCardBrothersGift")
SetNeedShiLianReward("幸运的人","Metadata/Items/DivinationCards/DivinationCardTheFortunate")
SetNeedShiLianReward("生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot")
SetNeedShiLianReward("神圣之美","Metadata/Items/DivinationCards/DivinationCardDivineBeauty")
SetNeedShiLianReward("丰裕牌组","Metadata/Items/DivinationCards/DivinationCardDeck")
SetNeedShiLianReward("破裂石","Metadata/Items/Currency/CurrencyFractureRare")
SetNeedShiLianReward("瓦尔多的谜盒","Metadata/Items/Currency/CurrencyValdoPuzzleBox")
SetNeedShiLianReward("破裂石碎片","Metadata/Items/Currency/CurrencyFractureRareShard")
SetNeedShiLianReward("浮夸精髓","Metadata/Items/Currency/CurrencyEssenceHysteria1")--浮夸精华
SetNeedShiLianReward("错乱精髓","Metadata/Items/Currency/CurrencyEssenceInsanity1")--错乱精华
SetNeedShiLianReward("极恐精髓","Metadata/Items/Currency/CurrencyEssenceHorror1")--极恐精华
SetNeedShiLianReward("谵妄精髓","Metadata/Items/Currency/CurrencyEssenceDelirium1")--谵妄精华
SetNeedShiLianReward("幻像异界","Metadata/Items/MapFragments/CurrencyAfflictionFragment")--梦魇拟像
SetNeedShiLianReward("乌尔尼多裂痕石","Metadata/Items/MapFragments/BreachFragmentPhysical")--不屈瓦尔印记
SetNeedShiLianReward("夏乌拉裂痕石","Metadata/Items/MapFragments/BreachFragmentChaos")--夏乌拉裂隙石
SetNeedShiLianReward("夏乌拉裂片","Metadata/Items/Currency/CurrencyBreachChaosShard")--裂隙碎片(夏乌拉)
SetNeedShiLianReward("改善之預兆","Metadata/Items/Currency/AncestralOmenOnDeathPreventExpLoss")
SetNeedShiLianReward("白化之預兆","Metadata/Items/Currency/AncestralOmenOnChromaticAddWhiteSockets")
SetNeedShiLianReward("連結之預兆","Metadata/Items/Currency/AncestralOmenOnFusingMakeFullLinks")
SetNeedShiLianReward("工匠之預兆","Metadata/Items/Currency/AncestralOmenOnJewellersMakeFullSockets")
SetNeedShiLianReward("財富之預兆","Metadata/Items/Currency/AncestralOmenOnChanceMakeUnique")
SetNeedShiLianReward("映像迷霧","Metadata/Items/Currency/ReflectiveMist")
SetNeedShiLianReward("魂芯符文之結","Metadata/Items/Currency/RunegraftSouls")
SetNeedShiLianReward("寶石工藝符文之結","Metadata/Items/Currency/RunegraftSupportLevels")
SetNeedShiLianReward("巫印符文之結","Metadata/Items/Currency/RunegraftSpellLifeCost")
SetNeedShiLianReward("孤軍奮戰","Metadata/Items/DivinationCards/DivinationCardLonelyWarrior")
SetNeedShiLianReward("初始經文 ","Metadata/Items/DivinationCards/DivinationCardDamnation")
SetNeedShiLianReward("歷史","Metadata/Items/DivinationCards/DivinationCardHistory")
SetNeedShiLianReward("符文之运","Metadata/Items/DivinationCards/DivinationCardRunicLuck")
SetNeedShiLianReward("自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance")
SetNeedShiLianReward("父愛","Metadata/Items/DivinationCards/DivinationCardFathersLove")
SetNeedShiLianReward("神秘之火的起源","Metadata/Items/DivinationCards/DivinationCardFireOfUnknownOrigin")
SetNeedShiLianReward("自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance")
SetNeedShiLianReward("追擊之翼","Metadata/Items/DivinationCards/DivinationCardAvianPursuit")
SetNeedShiLianReward("淬鍊石","Metadata/Items/Currency/CurrencyHeistWeaponEnchant")
SetNeedShiLianReward("裁缝石","Metadata/Items/Currency/CurrencyHeistArmourEnchant")
SetNeedShiLianReward("支配之玉","Metadata/Items/Currency/CurrencyUpgradeInfluenceMod")
SetNeedShiLianReward("印記","Metadata/Items/Currency/CurrencyImprint")
SetNeedShiLianReward("衝突寶珠","Metadata/Items/Currency/CurrencyConflictOrb")
SetNeedShiLianReward("謁見國王","Metadata/Items/MapFragments/RitualBossFragment")
SetNeedShiLianReward("密教獎章","Metadata/Items/MapFragments/CurrencyMastermindsLair")
SetNeedShiLianReward("創傷之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestFearKey")
SetNeedShiLianReward("孤獨之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestIgnoranceKey")
SetNeedShiLianReward("敬畏之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestBenevolenceKey")
SetNeedShiLianReward("圣甲虫：觉醒犄角","Metadata/Items/Scarabs/ScarabUber4")
SetNeedShiLianReward("圣甲虫：庇护犄角","Metadata/Items/Scarabs/ScarabUber3")
SetNeedShiLianReward("通牒铭文之圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum5")
SetNeedShiLianReward("通牒催化的圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum4")
SetNeedShiLianReward("隐匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiled")
SetNeedShiLianReward("隱匿崇高石","Metadata/Items/Currency/CurrencyRerollRareVeiled")

--SetZhuangBeiBoss(bossName,srvName)--设置发装仓库号 bossName=发装号名字 字符串型 srvName=服务器名字，如果多个区用同一份配置的话填上服务器名字可单独区分 如果不是可忽略 或填nil 
--SetZhuangBeiBoss("永恒苦痛之喉馬爾加什",nil)--发装备的仓库号 如果不需要 就注释掉

--添加在做到某个任务时购买技能宝石
--AddNeedBuySkillTime(city,task)--city=城市索引数值型 1-11 task=任务类名 字符串型 任务类名可以在调试窗口中点击 所有任务 按钮查看到
AddNeedBuySkillTime(1,"a1q1")
AddNeedBuySkillTime(1,"a1q2")
AddNeedBuySkillTime(1,"a1q3")
AddNeedBuySkillTime(1,"a1q4")
AddNeedBuySkillTime(1,"a1q5")
AddNeedBuySkillTime(1,"a1q6")
AddNeedBuySkillTime(1,"a1q7")
AddNeedBuySkillTime(1,"a1q9")
AddNeedBuySkillTime(2,"a2q1")
AddNeedBuySkillTime(2,"a2q2")
AddNeedBuySkillTime(2,"a2q4")
AddNeedBuySkillTime(2,"a2q6")
AddNeedBuySkillTime(2,"a2q8a3")
AddNeedBuySkillTime(3,"a3q1")
AddNeedBuySkillTime(3,"a3q5")
AddNeedBuySkillTime(3,"a3q8")
AddNeedBuySkillTime(3,"a3q9")
AddNeedBuySkillTime(3,"a3q10")
AddNeedBuySkillTime(3,"a3q12")
AddNeedBuySkillTime(4,"a4q1")
AddNeedBuySkillTime(4,"a4q2")
AddNeedBuySkillTime(4,"a4q3")
AddNeedBuySkillTime(4,"a4q4")
AddNeedBuySkillTime(6,"a6q1")	--在第6章的惊海之王时 检测购买一遍
AddNeedBuySkillTime(10,"a10q2")	--第10章的死亡和重生任务 检测购买一遍
AddNeedBuySkillTime(11,"a11q1")	--在拾取碎片 这个任务时检测购买一遍



--AddNotMakeTaskData(taskClassName)--添加不需要做的任务 taskClassName为任务类名
AddNotMakeTaskData("a2q10")--白色巨兽
AddNotMakeTaskData("a3q13")--重生的渴望
AddNotMakeTaskData("a3q12")--命运之语
AddNotMakeTaskData("a6q5")--毕斯特传奇
AddNotMakeTaskData("a7q8")--古斯特的墓碑
AddNotMakeTaskData("a7q5")--银色吊坠
AddNotMakeTaskData("a8q5")--瓦斯提里之翼
AddNotMakeTaskData("a9q4")--命运之历
AddNotMakeTaskData("a10q4")--无爱旧魂
AddNotMakeTaskData("a10q5")--深海之路

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫
SetTaskMiGongDataByLv(35,1)
--SetTaskMiGongData("a9q1",nil,2)
SetTaskMiGongDataByLv(80,3)

--SetZhongShenData(className1,className2)--设置要加的众神殿数据 className1=高阶数据类名 字符串型 className2=低阶数据类名 字符串型 
SetZhongShenData("TheBrineKing","Yugul")--设置月影女神之魂与绝望之母 格鲁丝克之魂

------------------存仓分类
--SetSaveIndex(saveType,pageName,goodsName,goodsClassName,wordName,wordClassName,pageType)--设置存仓页面 
--SaveType 物品类型 字符串型 支持以下种类 忽略填nil 多种类型以|分开 --SaveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|盗贼饰品珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--pageName 仓库页面名 字符串型 可填多个，中间用|隔开
--goodsName 物品名 字符串型 忽略填nil
--goodsClassName 物品类名 字符串型 忽略填nil
--wordName 词缀名 字符串型 忽略填nil
--wordClassName 词缀类名 字符串型 忽略填nil
--pageType 仓库页类型 数值型 不填或nil或0 为普通仓库 1为通货页 2为命运卡页  3为碎片页

-------注意要大类在前 小类 单独设置在后面添加
SetSaveIndex("通货|可堆叠通货","1|5|6|7|8")
SetSaveIndex("异界地图","2|6|7|8")
SetSaveIndex("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|头盔","3|5|6|7|8")
SetSaveIndex("主动技能宝石|辅助技能宝石|珠宝|命运卡|衣服|盾|箭袋|地图碎片|契约|地心探索：可镶嵌的通货","3|4|6|7|8")
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂|契约|地图碎片|预言","4|5|6|7|8")
SetSaveIndex(nil,"4|5|6|7|8","预言","Metadata/Items/Currency/CurrencyItemisedProphecy")
SetSaveIndex(nil,"4|5|6|7|8","幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours")
SetSaveIndex(nil,"4|5|6|7|8","工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
SetSaveIndex(nil,"4|5|6|7|8","增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
SetSaveIndex(nil,"4|5|6|7|8","链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
SetSaveIndex(nil,"4|5|6|7|8","后悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
SetSaveIndex(nil,"4|5|6|7|8","重铸石","Metadata/Items/Currency/CurrencyConvertToNormal")
SetSaveIndex(nil,"4|5|6|7|8","改造石","Metadata/Items/Currency/CurrencyRerollMagic")
SetSaveIndex(nil,"4|5|6|7|8","混沌石","Metadata/Items/Currency/CurrencyRerollRare")
SetSaveIndex(nil,"4|5|6|7|8","拓印的封魔之玉","Metadata/Items/Currency/CurrencyItemisedCapturedMonster")
SetSaveIndex(nil,"4|5|6|7|8","埃哈的记忆","Metadata/Items/MemoryLines/MemoryLineEinhar")
SetSaveIndex(nil,"4|5|6|7|8","艾瓦的记忆","Metadata/Items/MemoryLines/MemoryLineAlva")
SetSaveIndex(nil,"4|5|6|7|8","尼科的记忆","Metadata/Items/MemoryLines/MemoryLineNiko")
SetSaveIndex(nil,"4|5|6|7|8","埃哈的记忆","Metadata/Items/MemoryLines/MemoryLineEinhar")
SetSaveIndex(nil,"4|5|6|7|8","探险日志","Metadata/Items/Expedition/ExpeditionLogbook")
SetSaveIndex(nil,"4|5|6|7|8","虚诞遗钥","Metadata/Items/MapFragments/VoidbornVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","吞噬遗钥","Metadata/Items/MapFragments/UberEaterOfWorldsVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","闪耀遗钥","Metadata/Items/MapFragments/UberMavenVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","文书遗钥","Metadata/Items/MapFragments/UberSearingExarchVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","地窖遗钥","Metadata/Items/MapFragments/UberSirusVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","宇宙遗钥","Metadata/Items/MapFragments/UberShaperVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","腐化遗钥","Metadata/Items/MapFragments/UberUberElderVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","遗忘遗钥","Metadata/Items/MapFragments/UberVenariusVaultKey")
SetSaveIndex(nil,"4|5|6|7|8","阿兹瓦特史记","Metadata/Items/Incursion/ItemisedTemple")
SetSaveIndex(nil,"4|5|6|7|8","禁忌之書","Metadata/Items/Sanctum/SanctumKey")
SetSaveIndex(nil,"4|5|6|7|8","终极混沌铸新仪","Metadata/Items/Delve/DelveSocketableCurrencyReroll4")
SetSaveIndex("地图碎片","2")
SetSaveIndex("鱼竿","4")
SetSaveIndex("蓝图","4|5|6|7|8")
SetSaveIndex("SentinelDrone","1|4")
SetSaveIndex("Engraved Ultimatum","1|4")--"刻划最后通牒"


SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueHarvest/Green/HarvestSquidT3MemoryLine")--靈現之看守者
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueHarvest/Green/HarvestVultureParasiteT3MemoryLine")--靈現之禿鷹
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueAzmeri/GullGoliathBestiary")--黑色莫里根
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/MarakethBirdSpiritBoss")--初始之天斯卡沃
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/NessaCrabBestiarySpiritBoss")--初始之潭奎爾珊
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/GemFrogBestiary")--奎爾珊龍蜥
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/PitbullBestiary")--費爾羅坑穴獵犬
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/IguanaBestiary")--斯卡沃龍蜥
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/VultureBestiary")--斯卡沃禿鷹
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/InsectSpawnerBestiary")--菲恩絲女皇
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/Avians/MarakethBirdBestiary")--斯卡沃雛鳥
SetNeedFengYinYeShou(nil,"Metadata/Monsters/LeagueBestiary/RootSpiderBestiary")--菲恩絲吞噬獸



--SetMapCfg(name,className,px,noUse,noTf)--添加地图设置
--name 字符串型 地图物品名字
--className 字符串型 地图物品类名
--px 逻辑型 是否使用平行石  true为使用 false或nil为不使用
--noUse 逻辑型 是否不打这个图 true为不打 false或nil为打
--noTf 逻辑型 拓地图天赋时是否不打这个图 true为不打 false或nil为打
SetMapCfg("实验居所","Metadata/Items/Maps/MapWorldsLaboratory",true,true,true,nil)
SetMapCfg("魔金宝库","Metadata/Items/Maps/MapWorldsVault",true,true,true,nil)
SetMapCfg("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",true,true,true,nil)
SetMapCfg("核心","Metadata/Items/Maps/MapWorldsCore",true,true,true,nil)
SetMapCfg("神域之殿","Metadata/Items/Maps/MapWorldsPalace",true,true,true,nil)
SetMapCfg("密林果園","Metadata/Items/Maps/MapWorldsOrchard",true,true,true,nil)
SetMapCfg("軍械庫","Metadata/Items/Maps/MapWorldsArmoury",true,true,true,nil)
SetMapCfg("密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",true,true,true,nil)
SetMapCfg("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",true,true,true,nil)
SetMapCfg("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",true,true,true,nil)
SetMapCfg("古兵工廠","Metadata/Items/Maps/MapWorldsArsenal",true,true,true,nil)
SetMapCfg("古博物館","Metadata/Items/Maps/MapWorldsMuseum",true,true,true,nil)
SetMapCfg("魅影別墅","Metadata/Items/Maps/MapWorldsVilla",true,true,true,nil)
SetMapCfg("遠古市集","Metadata/Items/Maps/MapWorldsBazaar",true,true,true,nil)
SetMapCfg("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity",true,true,true,nil)
SetMapCfg("古堡","Metadata/Items/Maps/MapWorldsChateau",true,true,true,nil)
SetMapCfg("寧逸溫房","Metadata/Items/Maps/MapWorldsConservatory",true,true,true,nil)
SetMapCfg("寒河","Metadata/Items/Maps/MapWorldsColdRiver",true,true,true,nil)
SetMapCfg("畸形亡域","Metadata/Items/Maps/MapWorldsMalformation",true,true,true,nil)




--SetYouXianUseMapData(name,className,color)--设置优先使用的异界地图 
--name 字符串型 地图名 
--className 字符串型 地图类名 
--color 字符串型 颜色 0白1蓝2黄3橙 中间用|隔开
SetYouXianUseMapData("禁斷圍城","Metadata/Items/Maps/MapWorldsSiege","0|1|2|")
SetYouXianUseMapData("墓地谷","Metadata/Items/Maps/MapWorldsGraveTrough","0|1|2|")
SetYouXianUseMapData("岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake","0|1|2|")
SetYouXianUseMapData("象牙神殿","Metadata/Items/Maps/MapWorldsIvoryTemple","0|1|2|")
SetYouXianUseMapData("濱海山丘","Metadata/Items/Maps/MapWorldsAtoll","0|1|2|")
SetYouXianUseMapData("赤貧居所","Metadata/Items/Maps/MapWorldsGhetto","0|1|2|")
SetYouXianUseMapData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar","0|1|2|")
SetYouXianUseMapData("海風高原","Metadata/Items/Maps/MapWorldsPlateau","0|1|2|")
SetYouXianUseMapData("巨蛛之林","Metadata/Items/Maps/MapWorldsSpiderForest","0|1|2|")
SetYouXianUseMapData("不潔教堂","Metadata/Items/Maps/MapWorldsDefiledCathedral","0|1|2|")
SetYouXianUseMapData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand","0|1|2|")
SetYouXianUseMapData("魔影墓場","Metadata/Items/Maps/MapWorldsNecropolis","0|1|2|")
SetYouXianUseMapData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea","0|1|2|")
SetYouXianUseMapData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade","0|1|2|")
SetYouXianUseMapData("平頂荒漠","Metadata/Items/Maps/MapWorldsMesa","0|1|2|")
SetYouXianUseMapData("聖殿","Metadata/Items/Maps/MapWorldsBasilica","0|1|2|")
SetYouXianUseMapData("濕地礦山","Metadata/Items/Maps/MapWorldsMineralPools","0|1|2|")
SetYouXianUseMapData("危機水道","Metadata/Items/Maps/MapWorldsWaterways","0|1|2|")
SetYouXianUseMapData("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity","0|1|2|")
SetYouXianUseMapData("荊棘谷","Metadata/Items/Maps/MapWorldsBrambleValley","0|1|2|")

--SetNoUseMapShuXing(className)--设置不使用带有某种属性的地图,参数 className为属性类名
SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--设置不打物理反射属性
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
--SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复
SetNoUseMapShuXing("is_blighted_map")--凋落地图


--SetSellGoodsData(name,className,cnt,color)--设置卖(换)的地图 
--name=物品名 className=物品类名 先识别物品名 识别不到就识别类名 cnt=够多少去卖 color=颜色 0白 1蓝 2黄 多个用|隔开
SetSellGoodsData("危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",3,"0|1|2|")
SetSellGoodsData("濱海堡壘","Metadata/Items/Maps/MapWorldsRamparts",3,"0|1|2|")
SetSellGoodsData("露台花園","Metadata/Items/Maps/MapWorldsTerrace",3,"0|1|2|")
SetSellGoodsData("骨跡陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",3,"0|1|2|")
SetSellGoodsData("詭譎晶洞","Metadata/Items/Maps/MapWorldsGeode",3,"0|1|2|")
SetSellGoodsData("大決鬥場","Metadata/Items/Maps/MapWorldsColosseum",3,"0|1|2|")
SetSellGoodsData("暮色沙丘","Metadata/Items/Maps/MapWorldsDunes",3,"0|1|2|")
SetSellGoodsData("秘密通道","Metadata/Items/Maps/MapWorldsChannel",3,"0|1|2|")
SetSellGoodsData("古堡","Metadata/Items/Maps/MapWorldsChateau",3,"0|1|2|")
SetSellGoodsData("魅影別墅","Metadata/Items/Maps/MapWorldsVilla",3,"0|1|2|")
SetSellGoodsData("陰暗墓塚","Metadata/Items/Maps/MapWorldsSepulchre",3,"0|1|2|")
SetSellGoodsData("靜縊陵墓","Metadata/Items/Maps/MapWorldsMausoleum",3,"0|1|2|")
SetSellGoodsData("致命岩灘","Metadata/Items/Maps/MapWorldsStrand",6,"0|1|2|")
SetSellGoodsData("禁忌之森","Metadata/Items/Maps/MapWorldsForbiddenWoods",3,"0|1|2|")
SetSellGoodsData("酸岩酸嶼","Metadata/Items/Maps/MapWorldsAcidLakes",3,"0|1|2|")
SetSellGoodsData("異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",3,"0|1|2|")
SetSellGoodsData("密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",3,"0|1|2|")
SetSellGoodsData("實驗居所","Metadata/Items/Maps/MapWorldsLaboratory",3,"0|1|2|")
SetSellGoodsData("不潔教堂","Metadata/Items/Maps/MapWorldsDefiledCathedral",6,"0|1|2|")
SetSellGoodsData("核心","Metadata/Items/Maps/MapWorldsCore",1,"0|1|2|")
SetSellGoodsData("巨蛛之林","Metadata/Items/Maps/MapWorldsSpiderForest",6,"0|1|2|")
SetSellGoodsData("晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",3,"0|1|2|")
SetSellGoodsData("夜語幽林","Metadata/Items/Maps/MapWorldsDarkForest",3,"0|1|2|")
SetSellGoodsData("海風高原","Metadata/Items/Maps/MapWorldsPlateau",6,"0|1|2|")
SetSellGoodsData("禁斷圍城","Metadata/Items/Maps/MapWorldsSiege",3,"0|1|2|")
SetSellGoodsData("瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",3,"0|1|2|")
SetSellGoodsData("鍊金房","Metadata/Items/Maps/MapWorldsFoundry",3,"0|1|2|")
SetSellGoodsData("嬋娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",3,"0|1|2|")
SetSellGoodsData("遠古市集","Metadata/Items/Maps/MapWorldsBazaar",6,"0|1|2|")
SetSellGoodsData("奇術之庭","Metadata/Items/Maps/MapWorldsCourtyard",3,"0|1|2|")
SetSellGoodsData("赤貧居所","Metadata/Items/Maps/MapWorldsGhetto",6,"0|1|2|")
SetSellGoodsData("凍原小屋","Metadata/Items/Maps/MapWorldsFrozenCabins",3,"0|1|2|")
SetSellGoodsData("濱海山丘","Metadata/Items/Maps/MapWorldsAtoll",6,"0|1|2|")
SetSellGoodsData("瘴氣泥沼","Metadata/Items/Maps/MapWorldsBog",3,"0|1|2|")
SetSellGoodsData("古競速場","Metadata/Items/Maps/MapWorldsRacecourse",3,"0|1|2|")
SetSellGoodsData("象牙神殿","Metadata/Items/Maps/MapWorldsIvoryTemple",6,"0|1|2|")
SetSellGoodsData("遠古危城","Metadata/Items/Maps/MapWorldsAncientCity",3,"0|1|2|")
SetSellGoodsData("暮光海灘","Metadata/Items/Maps/MapWorldsShore",3,"0|1|2|")
SetSellGoodsData("月色迴廊","Metadata/Items/Maps/MapWorldsPromenade",3,"0|1|2|")
SetSellGoodsData("岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake",6,"0|1|2|")
SetSellGoodsData("荒涼牧野","Metadata/Items/Maps/MapWorldsLeyline",3,"0|1|2|")
SetSellGoodsData("聖殿","Metadata/Items/Maps/MapWorldsBasilica",6,"0|1|2|")
SetSellGoodsData("寧逸溫房","Metadata/Items/Maps/MapWorldsConservatory",3,"0|1|2|")
SetSellGoodsData("苦行之域","Metadata/Items/Maps/MapWorldsPrecinct",3,"0|1|2|")
SetSellGoodsData("血腥陣地","Metadata/Items/Maps/MapWorldsTortureChamber",3,"0|1|2|")
SetSellGoodsData("冰川山丘","Metadata/Items/Maps/MapWorldsGorge",3,"0|1|2|")
SetSellGoodsData("危城廣場","Metadata/Items/Maps/MapWorldsCitySquare",3,"0|1|2|")
SetSellGoodsData("濕地礦山","Metadata/Items/Maps/MapWorldsMineralPools",3,"0|1|2|")
SetSellGoodsData("危機水道","Metadata/Items/Maps/MapWorldsWaterways",3,"0|1|2|")
SetSellGoodsData("惡咒陵墓","Metadata/Items/Maps/MapWorldsCursedCrypt",3,"0|1|2|")
SetSellGoodsData("激戰柱廊","Metadata/Items/Maps/MapWorldsColonnade",3,"0|1|2|")
SetSellGoodsData("古兵工廠","Metadata/Items/Maps/MapWorldsArsenal",3,"0|1|2|")
SetSellGoodsData("毒牙海港","Metadata/Items/Maps/MapWorldsWharf",3,"0|1|2|")
SetSellGoodsData("熾炎船塢","Metadata/Items/Maps/MapWorldsShipyard",3,"0|1|2|")
SetSellGoodsData("晴空幽島","Metadata/Items/Maps/MapWorldsTropicalIsland",3,"0|1|2|")
SetSellGoodsData("魔金寶庫","Metadata/Items/Maps/MapWorldsVault",3,"0|1|2|")
SetSellGoodsData("墓影書坊","Metadata/Items/Maps/MapWorldsScriptorium",3,"0|1|2|")
SetSellGoodsData("硫磺荒漠","Metadata/Items/Maps/MapWorldsDesertSpring",3,"0|1|2|")
SetSellGoodsData("違禁掘坑","Metadata/Items/Maps/MapWorldsDig",3,"0|1|2|")
SetSellGoodsData("園林苑","Metadata/Items/Maps/MapWorldsPark",3,"0|1|2|")
SetSellGoodsData("荊棘谷","Metadata/Items/Maps/MapWorldsBrambleValley",3,"0|1|2|")
SetSellGoodsData("破碎堡礁","Metadata/Items/Maps/MapWorldsCoralRuins",3,"0|1|2|")
SetSellGoodsData("魔靈幻獄","Metadata/Items/Maps/MapWorldsPhantasmagoria",3,"0|1|2|")
SetSellGoodsData("平頂荒漠","Metadata/Items/Maps/MapWorldsMesa",3,"0|1|2|")
SetSellGoodsData("極原冰帽","Metadata/Items/Maps/MapWorldsIceberg",3,"0|1|2|")
SetSellGoodsData("乾枯湖岸","Metadata/Items/Maps/MapWorldsAridLake",3,"0|1|2|")
SetSellGoodsData("熔火岩灘","Metadata/Items/Maps/MapWorldsEstuary",3,"0|1|2|")
SetSellGoodsData("幽暗地穴","Metadata/Items/Maps/MapWorldsGrotto",3,"0|1|2|")
SetSellGoodsData("濱海幽穴","Metadata/Items/Maps/MapWorldsUndergroundSea",3,"0|1|2|")
SetSellGoodsData("崩壞長廊","Metadata/Items/Maps/MapWorldsArcade",3,"0|1|2|")
SetSellGoodsData("劇毒林谷","Metadata/Items/Maps/MapWorldsJungleValley",3,"0|1|2|")
SetSellGoodsData("密林果園","Metadata/Items/Maps/MapWorldsOrchard",3,"0|1|2|")
SetSellGoodsData("墓地谷","Metadata/Items/Maps/MapWorldsGraveTrough",6,"0|1|2|")
SetSellGoodsData("雲頂鐘樓","Metadata/Items/Maps/MapWorldsBelfry",3,"0|1|2|")
SetSellGoodsData("儲物倉","Metadata/Items/Maps/MapWorldsSilo",3,"0|1|2|")
SetSellGoodsData("遺跡廢墟","Metadata/Items/Maps/MapWorldsCastleRuins",3,"0|1|2|")
SetSellGoodsData("亞特蘭提斯","Metadata/Items/Maps/MapWorldsSunkenCity",3,"0|1|2|")
SetSellGoodsData("禁魂炎獄","Metadata/Items/Maps/MapWorldsDungeon",3,"0|1|2|")
SetSellGoodsData("魔影墓場","Metadata/Items/Maps/MapWorldsNecropolis",3,"0|1|2|")
SetSellGoodsData("腐敗下水道","Metadata/Items/Maps/MapWorldsToxicSewer",3,"0|1|2|")
SetSellGoodsData("古博物館","Metadata/Items/Maps/MapWorldsMuseum",3,"0|1|2|")
SetSellGoodsData("白沙灘頭","Metadata/Items/Maps/MapWorldsBeach",3,"0|1|2|")
SetSellGoodsData("怒浪之港","Metadata/Items/Maps/MapWorldsPier",3,"0|1|2|")
SetSellGoodsData("畸形亡域","Metadata/Items/Maps/MapWorldsMalformation",3,"0|1|2|")
SetSellGoodsData("軍械庫","Metadata/Items/Maps/MapWorldsArmoury",3,"0|1|2|")
SetSellGoodsData("紫晶礦山","Metadata/Items/Maps/MapWorldsCrystalOre",3,"0|1|2|")
SetSellGoodsData("寒河","Metadata/Items/Maps/MapWorldsColdRiver",3,"0|1|2|")
SetSellGoodsData("乾潮林地","Metadata/Items/Maps/MapWorldsPeninsula",3,"0|1|2|")
SetSellGoodsData("洪災礦坑","Metadata/Items/Maps/MapWorldsFloodedMine",3,"0|1|2|")
SetSellGoodsData("冥神之域","Metadata/Items/Maps/MapWorldsMaze",3,"0|1|2|")
SetSellGoodsData("奪魂之殿","Metadata/Items/Maps/MapWorldsTemple",3,"0|1|2|")
SetSellGoodsData("荒地","Metadata/Items/Maps/MapWorldsWasteland",3,"0|1|2|")
SetSellGoodsData("旱木林地","Metadata/Items/Maps/MapWorldsAshenWood",3,"0|1|2|")
SetSellGoodsData("地底之河","Metadata/Items/Maps/MapWorldsUndergroundRiver",3,"0|1|2|")
SetSellGoodsData("死寂泥溝","Metadata/Items/Maps/MapWorldsWastePool",3,"0|1|2|")
SetSellGoodsData("神域之殿","Metadata/Items/Maps/MapWorldsPalace",3,"0|1|2|")
SetSellGoodsData("緋紅之鎮","Metadata/Items/Maps/MapWorldsCrimsonTownship",3,"0|1|2|")
SetSellGoodsData("炙陽峽谷","Metadata/Items/Maps/MapWorldsCanyon",3,"0|1|2|")
SetSellGoodsData("絕望燈塔","Metadata/Items/Maps/MapWorldsLighthouse",3,"0|1|2|")
SetSellGoodsData("瓦爾密殿","Metadata/Items/Maps/MapWorldsVaalTemple",3,"0|1|2|")
SetSellGoodsData("闇獄尖塔","Metadata/Items/Maps/MapWorldsTower",3,"0|1|2|")

--地图相关
--SetNotMapGoMap(className,cnt) 设置无地图或未到等级时要刷的剧情地图 className字符串型 地图类名 cnt=次数
SetNotMapGoMap("2_9_1",10)	--无地图时刷血色通道



--SetCompoundDivinationCard(name,className,nType) --设置需要合成的命运卡 name=卡片名 className=卡片类名 nType=合成场景 nil或不填为无论何时都合成 0为没在刷异界才合 1为只在刷异界才合
SetCompoundDivinationCard("黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")--设置合成忠诚命运卡
SetCompoundDivinationCard("兰塔朵迷惘之爱","Metadata/Items/DivinationCards/DivinationCardLantadorsLostLove")--设置合成忠诚命运卡
SetCompoundDivinationCard("薇妮雅的信物","Metadata/Items/DivinationCards/DivinationCardViniasToken")--设置合成忠诚命运卡
SetCompoundDivinationCard("珠宝匠","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")--设置合成忠诚命运卡
SetCompoundDivinationCard("浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")--设置合成忠诚命运卡
SetCompoundDivinationCard("帝运","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")--设置合成忠诚命运卡
SetCompoundDivinationCard("好运连连","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")--设置合成忠诚命运卡
SetCompoundDivinationCard("混沌之雨","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")--设置合成忠诚命运卡
SetCompoundDivinationCard("飢渴之佔","Metadata/Items/DivinationCards/DivinationCardCovetedPossession",1)--设置合成忠诚命运卡
SetCompoundDivinationCard("弃财求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth")--设置合成忠诚命运卡
SetCompoundDivinationCard("发明家","Metadata/Items/DivinationCards/DivinationCardTheInventor")--设置合成忠诚命运卡
SetCompoundDivinationCard("惊喜盒","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")--设置合成忠诚命运卡
SetCompoundDivinationCard("联姻","Metadata/Items/DivinationCards/DivinationCardTheUnion")--设置合成忠诚命运卡
SetCompoundDivinationCard("怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath")--设置合成忠诚命运卡
SetCompoundDivinationCard("灾变","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")--设置合成忠诚命运卡
SetCompoundDivinationCard("社会的懊悔","Metadata/Items/DivinationCards/DivinationCardSocietysRemorse")--设置合成忠诚命运卡
SetCompoundDivinationCard("求生专家","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")--设置合成忠诚命运卡
SetCompoundDivinationCard("适者生存","Metadata/Items/DivinationCards/DivinationCardAcclimatisation")--设置合成忠诚命运卡
SetCompoundDivinationCard("忠诚","Metadata/Items/DivinationCards/DivinationCardLoyalty")--设置合成忠诚命运卡
SetCompoundDivinationCard("制图师","Metadata/Items/DivinationCards/DivinationCardTheCartographer")--设置合成忠诚命运卡
SetCompoundDivinationCard("生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot")--设置合成忠诚命运卡
SetCompoundDivinationCard("圣徒之财","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure")--设置合成忠诚命运卡
SetCompoundDivinationCard("无痕","Metadata/Items/DivinationCards/DivinationCardNoTraces")--设置合成忠诚命运卡
SetCompoundDivinationCard("善","Metadata/Items/DivinationCards/DivinationCardTheInnocent")--设置合成忠诚命运卡
SetCompoundDivinationCard("愚人","Metadata/Items/DivinationCards/DivinationCardTheFool")--设置合成忠诚命运卡
SetCompoundDivinationCard("赌徒","Metadata/Items/DivinationCards/DivinationCardTheGambler")--设置合成忠诚命运卡
SetCompoundDivinationCard("工匠大师","Metadata/Items/DivinationCards/DivinationCardMasterArtisan")--设置合成忠诚命运卡
SetCompoundDivinationCard("谦逊","Metadata/Items/DivinationCards/DivinationCardHumility")--设置合成忠诚命运卡
SetCompoundDivinationCard("血肉之躯","Metadata/Items/DivinationCards/DivinationCardTheBody")--设置合成忠诚命运卡
SetCompoundDivinationCard("宝石匠的允诺","Metadata/Items/DivinationCards/DivinationCardGemcuttersPromise")--设置合成忠诚命运卡
SetCompoundDivinationCard("傀儡","Metadata/Items/DivinationCards/DivinationCardTheDoppelganger")--设置合成忠诚命运卡
SetCompoundDivinationCard("净白","Metadata/Items/DivinationCards/DivinationCardTheOpulecent")--设置合成忠诚命运卡
SetCompoundDivinationCard("伯仲财库","Metadata/Items/DivinationCards/DivinationCardBrothersStash")--设置合成忠诚命运卡
SetCompoundDivinationCard("蓝海","Metadata/Items/DivinationCards/DivinationCardASeaOfBlue")--设置合成忠诚命运卡
--SetCompoundDivinationCard("变形","Metadata/Items/DivinationCards/DivinationCardTheTransformation")--设置合成忠诚命运卡
SetCompoundDivinationCard("佣兵","Metadata/Items/DivinationCards/DivinationCardTheMercenary")--设置合成忠诚命运卡
SetCompoundDivinationCard("装饰之力 Metadata/Items/DivinationCards/DivinationCardTheGarishPower")--设置合成忠诚命运卡
SetCompoundDivinationCard("龙眼","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTheDragon")--设置合成忠诚命运卡
SetCompoundDivinationCard("囤积","Metadata/Items/DivinationCards/DivinationCardTheCache")--设置合成忠诚命运卡
SetCompoundDivinationCard("阿基尔的预言","Metadata/Items/DivinationCards/DivinationCardAkilsProphecy")--设置合成忠诚命运卡
SetCompoundDivinationCard("情人","Metadata/Items/DivinationCards/DivinationCardTheLover")--设置合成忠诚命运卡
SetCompoundDivinationCard("狂妄","Metadata/Items/DivinationCards/DivinationCardHubris")--设置合成忠诚命运卡
SetCompoundDivinationCard("盲途","Metadata/Items/DivinationCards/DivinationCardBlindVenture")--设置合成忠诚命运卡
SetCompoundDivinationCard("阿兹里的武库","Metadata/Items/DivinationCards/DivinationCardAtzirisArsenal")--设置合成忠诚命运卡
SetCompoundDivinationCard("雄狮","Metadata/Items/DivinationCards/DivinationCardTheLion")--设置合成忠诚命运卡
SetCompoundDivinationCard("鼠归","Metadata/Items/DivinationCards/DivinationCardTheReturnOfTheRat")--设置合成忠诚命运卡
SetCompoundDivinationCard("兄弟之赠","Metadata/Items/DivinationCards/DivinationCardBrothersGift")--设置合成忠诚命运卡
SetCompoundDivinationCard("千变万化","Metadata/Items/DivinationCards/DivinationCardEverChanging")--设置合成忠诚命运卡
SetCompoundDivinationCard("阿基尔的预言","Metadata/Items/DivinationCards/DivinationCardEverChanging")--设置合成忠诚命运卡
SetCompoundDivinationCard("永不知足","Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough")--设置合成忠诚命运卡
SetCompoundDivinationCard("肮脏","Metadata/Items/DivinationCards/DivinationCardTheWretched")--设置合成忠诚命运卡


--卡片保留
SetGoodsCaoZuo(nil,"0|2","肮脏","Metadata/Items/DivinationCards/DivinationCardTheWretched")
SetGoodsCaoZuo(nil,"0|2","黑暗三面","Metadata/Items/DivinationCards/DivinationCardThreeFacesInTheDark")
SetGoodsCaoZuo(nil,"0|2","薇妮雅的信物","Metadata/Items/DivinationCards/DivinationCardViniasToken")
SetGoodsCaoZuo(nil,"0|2","珠宝匠","Metadata/Items/DivinationCards/DivinationCardTheGemcutter")
SetGoodsCaoZuo(nil,"0|2","浑沌性情","Metadata/Items/DivinationCards/DivinationCardChaoticDisposition")
SetGoodsCaoZuo(nil,"0|2","帝运","Metadata/Items/DivinationCards/DivinationCardEmperorsLuck")
SetGoodsCaoZuo(nil,"0|2","好运连连","Metadata/Items/DivinationCards/DivinationCardLuckyConnections")
SetGoodsCaoZuo(nil,"0|2","混沌之雨","Metadata/Items/DivinationCards/DivinationCardRainOfChaos")
SetGoodsCaoZuo(nil,"0|2","飢渴之佔","Metadata/Items/DivinationCards/DivinationCardCovetedPossession")
SetGoodsCaoZuo(nil,"0|2","发明家","Metadata/Items/DivinationCards/DivinationCardTheInventor")
SetGoodsCaoZuo(nil,"0|2","惊喜盒","Metadata/Items/DivinationCards/DivinationCardJackInTheBox")
SetGoodsCaoZuo(nil,"0|2","联姻","Metadata/Items/DivinationCards/DivinationCardTheUnion")
SetGoodsCaoZuo(nil,"0|2","怨忿","Metadata/Items/DivinationCards/DivinationCardTheWrath")
SetGoodsCaoZuo(nil,"0|2","灾变","Metadata/Items/DivinationCards/DivinationCardTheCatalyst")
SetGoodsCaoZuo(nil,"0|2","社会的懊悔","Metadata/Items/DivinationCards/DivinationCardSocietysRemorse")
SetGoodsCaoZuo(nil,"0|2","求生专家","Metadata/Items/DivinationCards/DivinationCardTheSurvivalist")
SetGoodsCaoZuo(nil,"0|2","适者生存","Metadata/Items/DivinationCards/DivinationCardAcclimatisation")
SetGoodsCaoZuo(nil,"0|2","忠诚","Metadata/Items/DivinationCards/DivinationCardLoyalty")
SetGoodsCaoZuo(nil,"0|2","制图师","Metadata/Items/DivinationCards/DivinationCardTheCartographer")
SetGoodsCaoZuo(nil,"0|2","无痕","Metadata/Items/DivinationCards/DivinationCardNoTraces")
SetGoodsCaoZuo(nil,"0|2","善","Metadata/Items/DivinationCards/DivinationCardTheInnocent")
SetGoodsCaoZuo(nil,"0|2","愚人","Metadata/Items/DivinationCards/DivinationCardTheFool")
SetGoodsCaoZuo(nil,"0|2","赌徒","Metadata/Items/DivinationCards/DivinationCardTheGambler")
SetGoodsCaoZuo(nil,"0|2","工匠大师","Metadata/Items/DivinationCards/DivinationCardMasterArtisan")
SetGoodsCaoZuo(nil,"0|2","血肉之躯","Metadata/Items/DivinationCards/DivinationCardTheBody")
SetGoodsCaoZuo(nil,"0|2","宝石匠的允诺","Metadata/Items/DivinationCards/DivinationCardGemcuttersPromise")
SetGoodsCaoZuo(nil,"0|2","傀儡","Metadata/Items/DivinationCards/DivinationCardTheDoppelganger")
SetGoodsCaoZuo(nil,"0|2","伯仲财库","Metadata/Items/DivinationCards/DivinationCardBrothersStash")
SetGoodsCaoZuo(nil,"0|2","蓝海","Metadata/Items/DivinationCards/DivinationCardASeaOfBlue")
SetGoodsCaoZuo(nil,"0|2","佣兵","Metadata/Items/DivinationCards/DivinationCardTheMercenary")
SetGoodsCaoZuo(nil,"0|2","装饰之力 Metadata/Items/DivinationCards/DivinationCardTheGarishPower")
SetGoodsCaoZuo(nil,"0|2","龙眼","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTheDragon")
SetGoodsCaoZuo(nil,"0|2","囤积","Metadata/Items/DivinationCards/DivinationCardTheCache")
SetGoodsCaoZuo(nil,"0|2","阿基尔的预言","Metadata/Items/DivinationCards/DivinationCardAkilsProphecy")
SetGoodsCaoZuo(nil,"0|2","狂妄","Metadata/Items/DivinationCards/DivinationCardHubris")
SetGoodsCaoZuo(nil,"0|2","盲途","Metadata/Items/DivinationCards/DivinationCardBlindVenture")
SetGoodsCaoZuo(nil,"0|2","阿兹里的武库","Metadata/Items/DivinationCards/DivinationCardAtzirisArsenal")
SetGoodsCaoZuo(nil,"0|2","兄弟之赠","Metadata/Items/DivinationCards/DivinationCardBrothersGift")
SetGoodsCaoZuo(nil,"0|2","雄狮","Metadata/Items/DivinationCards/DivinationCardTheLion")
SetGoodsCaoZuo(nil,"0|2","千变万化","Metadata/Items/DivinationCards/DivinationCardEverChanging")
SetGoodsCaoZuo(nil,"0|2","阿基尔的预言","Metadata/Items/DivinationCards/DivinationCardEverChanging")
SetGoodsCaoZuo(nil,"0|2","永不知足","Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough")

--SetNeedBuyGoodsData(name,className,cnt,buyName,buyClassName)--设置开始刷异界时间检测购买指定物品
--name=自己有的通货名 className=自己有的通货类名 cnt=够多少个触发 0或nil 不会触发 buyName=需要购买的物品名 buyClassName=需要购买的物品类名
--g_buyNpcData={mapClassName="2_8_town",className="Metadata/NPC/Act8/ClarissaTown"}--将会在8章 2_8_town 此NPC下购买 name:卡爾麗莎 className:Metadata/NPC/Act8/ClarissaTown

SetNeedBuyGoodsData("知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,"卷轴","Metadata/Items/Currency/CurrencyPortal")
--SetNeedBuyGoodsData("传送卷轴","Metadata/Items/Currency/CurrencyPortal",200,"蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic")
SetNeedBuyGoodsData("蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",200,"增幅石","Metadata/Items/Currency/CurrencyAddModToMagic")
SetNeedBuyGoodsData("增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",200,"改造石","Metadata/Items/Currency/CurrencyRerollMagic")
--SetNeedBuyGoodsData("改造石","Metadata/Items/Currency/CurrencyRerollMagic",100,"工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers")
SetNeedBuyGoodsData("工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",100,"链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks")
--SetNeedBuyGoodsData("链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",100,"机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly")
SetNeedBuyGoodsData("机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",100,"重铸石","Metadata/Items/Currency/CurrencyConvertToNormal")
--SetNeedBuyGoodsData("重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",40,"后悔石","Metadata/Items/Currency/CurrencyPassiveRefund")
--SetNeedBuyGoodsData("后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",10,"点金石","Metadata/Items/Currency/CurrencyUpgradeToRare")

--SetGoods(goodsType,czType,name,className,wordName,wordClassName,pingzhi,cnt,color,socketCnt,lineCnt,checkCangKu)--设置要操作的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --SaveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--czType:字符串型 0为拾 1卖 2存 3丢 4鉴定 可多个中间用|隔开
--name 字符串型 物品的名字 忽略则填 nil
--className 字符串型 物品的类名 忽略则填 nil
--wordName 字符串型 物品的词缀名 忽略则填 nil
--wordClassName 字符串型 物品的词缀类名 忽略则填 nil
--pingzhi 数字型 物品的品质 忽略则填 nil
--cnt 数字型 保留数量 忽略则填 nil
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--SocketCnt 数字型 总洞数量 忽略则填 nil
--lineCnt 数字型 连洞数量 忽略则填 nil
--checkCangKu 计算保留数量时是否连仓库内的数量也计算进去 nil或false为不计算仓库 true 为需要计算
SetGoodsCaoZuo("通货|可堆叠通货|异界地图","0|2")--多个大类设置捡存
SetGoodsCaoZuo("主动技能宝石|辅助技能宝石","0|2",nil,nil,nil,nil,5)--拾取品质超过5的技能宝石

--SetGoodsCaoZuo("Convoking Wand|Bone Ring","0|1|4",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
SetGoodsCaoZuo(nil,"1|4",nil,nil,nil,nil,nil,nil,"3")--拾取 鉴定 出售橙色物品

SetGoodsCaoZuo(nil,"0|2","Abomination Map","Metadata/Items/Maps/MapWorldsAbomination")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Citadel Map","Metadata/Items/Maps/MapWorldsCitadel")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Fortress Map","Metadata/Items/Maps/MapWorldsFortress")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Ziggurat Map","Metadata/Items/Maps/MapWorldsZiggurat")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","Sanctuary Map","Metadata/Items/Maps/MapWorldsSanctuary")--T17设置捡
SetGoodsCaoZuo(nil,"0|2","尖嘯之邀","Metadata/Items/MapFragments/Primordial/QuestTangleBossKey")--尖嘯之邀
SetGoodsCaoZuo(nil,"0|2","極地之邀","Metadata/Items/MapFragments/Primordial/QuestCleansingFireKey")--極地之邀
SetGoodsCaoZuo(nil,"0|2","熾熱之邀","Metadata/Items/MapFragments/Primordial/QuestCleansingFireBossKey")--熾熱之邀
SetGoodsCaoZuo(nil,"0|2","纏繞之邀","Metadata/Items/MapFragments/Primordial/QuestTangleKey")--纏繞之邀
--SetGoodsCaoZuo(nil,"0|2","尋夢追憶","Metadata/Items/Maps/MapWorldsSynthesisedWorld")--追憶地圖设置捡

SetGoodsCaoZuo(nil,"1|4","权贵圆盾","Metadata/Items/Armours/Shields/ShieldStrDex13",nil,nil,nil,nil,"1|2")
SetGoodsCaoZuo(nil,nil,"知识卷轴","Metadata/Items/Currency/CurrencyIdentification",nil,nil,nil,40)--够了就不捡了
SetGoodsCaoZuo(nil,nil,"传送卷轴","Metadata/Items/Currency/CurrencyPortal",nil,nil,nil,79)--够了就不捡了
SetGoodsCaoZuo(nil,"2","增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",nil,nil,nil,20,nil,nil,nil,true)--够了就不捡了
SetGoodsCaoZuo(nil,"2","蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,20,nil,nil,nil,true)--够了就不捡了
--SetGoodsCaoZuo(nil,"0|3","玻璃弹珠","Metadata/Items/Currency/CurrencyFlaskQuality")--
SetGoodsCaoZuo(nil,"0|3","磨刀石","Metadata/Items/Currency/CurrencyWeaponQuality")--磨刀石不存
SetGoodsCaoZuo(nil,"0|3","护甲片","Metadata/Items/Currency/CurrencyArmourQuality")--护甲片不存
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard",nil,nil,nil)--束縛石碎片
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSockets",nil,nil,nil)--束縛石
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyStrongboxQualityShard",nil,nil,nil)--工程石碎片
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyUpgradeToMagicShard",nil,nil,nil)--蜕变石碎片
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyRerollMagicShard",nil,nil,nil)--改造石碎片
SetGoodsCaoZuo(nil,"3","卷轴碎片","Metadata/Items/Currency/CurrencyIdentificationShard")--卷轴碎片丢
SetGoodsCaoZuo(nil,"3","阿兹瓦特史记","Metadata/Items/Incursion/ItemisedTemple")
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil)--普兰德斯金币
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisBrain")--鍊魔脑髓不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisEye")--鍊魔眼睛不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLiver")--鍊魔肝脏不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisLung")--鍊魔肺脏不捡
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Metamorphosis/MetamorphosisHeart")--鍊魔心脏不捡
SetGoodsCaoZuo(nil,"3","动力核心","Metadata/Items/Currency/SentinelCurrencyBasic")
SetGoodsCaoZuo(nil,"3","调查员的罗盘","Metadata/Items/Currency/CurrencyItemiseSextantModifier")
SetGoodsCaoZuo(nil,"3","改造动力核心","Metadata/Items/Currency/SentinelCurrencyMutate")
SetGoodsCaoZuo(nil,"3","增强动力核心","Metadata/Items/Currency/SentinelCurrencyUpgradeMod")
SetGoodsCaoZuo(nil,"3","提升动力核心","Metadata/Items/Currency/SentinelCurrencyAddMod")
SetGoodsCaoZuo(nil,"3","玷污的磨刀石","Metadata/Items/Currency/CurrencyHellscapeWeaponQuality")--磨刀石不存
SetGoodsCaoZuo(nil,"3","玷污的护甲片","Metadata/Items/Currency/CurrencyHellscapeArmourQuality")--护甲片不存
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyCorruptMonolith",nil,nil,nil)--遗忘的污染器皿
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyStrongboxQuality",nil,nil,nil)--工程石
SetGoodsCaoZuo(nil,"0|2","圣甲虫：拣选祭祀","Metadata/Items/Scarabs/ScarabRitual1")


--销毁的挂机地图
SetGoodsCaoZuo(nil,"3","Vault Map","Metadata/Items/Maps/MapWorldsVault",nil,nil,nil,nil,"0|1|2")--机关宝库不能打15级
--SetGoodsCaoZuo(nil,"3","Summit Map","Metadata/Items/Maps/MapWorldsSummit",nil,nil,nil,nil,"0|1|2")--寒顶之巅16级
SetGoodsCaoZuo(nil,"3","Laboratory Map","Metadata/Items/Maps/MapWorldsLaboratory",nil,nil,nil,nil,"0|1|2")--实验密室需要开机关难打5级
--SetGoodsCaoZuo(nil,"3","Crater Map","Metadata/Items/Maps/MapWorldsTribunal",nil,nil,nil,nil,"0|1|2")--陨坑地形复杂3级
--SetGoodsCaoZuo(nil,"3","Pier Map","Metadata/Items/Maps/MapWorldsPier",nil,nil,nil,nil,"0|1|2")--怒浪之港boss阶段多机关多2级
--SetGoodsCaoZuo(nil,"3","白玉神庙","Metadata/Items/Maps/MapWorldsIvoryTemple",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","强酸洞穴","Metadata/Items/Maps/MapWorldsAcidLakes",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","熔岩之殿","Metadata/Items/Maps/MapWorldsLavaChamber",nil,nil,nil,nil,"0|1|2")--熔岩之殿地形复杂2级
--SetGoodsCaoZuo(nil,"3","花园迷宫","Metadata/Items/Maps/MapWorldsGardens",nil,nil,nil,nil,"0|1|2")--花园迷宫地形复杂2级
--SetGoodsCaoZuo(nil,"3","绯红小镇","Metadata/Items/Maps/MapWorldsCrimsonTownship",nil,nil,nil,nil,"0|1|2")--绯红小镇boss房间走不过去-
SetGoodsCaoZuo(nil,"3","夜语幽林","Metadata/Items/Maps/MapWorldsDarkForest",nil,nil,nil,nil,"0|1|2")--夜语幽林boss房间不好找BOSS-
--SetGoodsCaoZuo(nil,"3","神域之殿","Metadata/Items/Maps/MapWorldsPalace",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","瓦爾金字塔","Metadata/Items/Maps/MapWorldsVaalPyramid",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","月影神殿","Metadata/Items/Maps/MapWorldsMoonTemple",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","密草神殿","Metadata/Items/Maps/MapWorldsOvergrownShrine",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","核心","Metadata/Items/Maps/MapWorldsCore",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","长草遗迹","Metadata/Items/Maps/MapWorldsOvergrownRuin",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","異蛛墓塚","Metadata/Items/Maps/MapWorldsArachnidTomb",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","竞技场","Metadata/Items/Maps/MapWorldsArena",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","畸形亡域","Metadata/Items/Maps/MapWorldsMalformation",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","古兵工廠","Metadata/Items/Maps/MapTier2_2",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","硫磺蝕岸","Metadata/Items/Maps/MapWorldsSulphurVents",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","密林果園","Metadata/Items/Maps/MapWorldsOrchard",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","穢陰獄牢","Metadata/Items/Maps/MapWorldsPen",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","岩漿熔湖","Metadata/Items/Maps/MapWorldsLavaLake",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","墓影书坊","Metadata/Items/Maps/MapWorldsScriptorium",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","实验居所","Metadata/Items/Maps/MapWorldsLaboratory",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","晨曦墓地","Metadata/Items/Maps/MapWorldsCemetery",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","血腥阵地","Metadata/Items/Maps/MapWorldsTortureChamber",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","危城巷弄","Metadata/Items/Maps/MapWorldsAlleyways",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","激战柱廊","Metadata/Items/Maps/MapWorldsColonnade",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","失落城坞","Metadata/Items/Maps/MapWorldsPort",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","婵娟神殿","Metadata/Items/Maps/MapWorldsMoonTemple",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","绝望灯塔","Metadata/Items/Maps/MapWorldsTortureChamber",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","苦行之域","Metadata/Items/Maps/MapWorldsPrecinct",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","骨迹陵墓","Metadata/Items/Maps/MapWorldsBoneCrypt",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","奇术秘殿","Metadata/Items/Maps/MapWorldsShrine",nil,nil,nil,nil,"0|1|2")
--SetGoodsCaoZuo(nil,"3","绝望灯塔","Metadata/Items/Maps/MapWorldsLighthouse",nil,nil,nil,nil,"0|1|2")

--赛季初
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
SetGoodsCaoZuo(nil,"0|1",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
--SetGoodsCaoZuo("珠宝|深渊珠宝","0|1|4",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝
--赛季末
--SetGoodsCaoZuo(nil,"3",nil,nil,nil,nil,nil,nil,"0|1|2",6)--6洞装设置捡卖
--SetGoodsCaoZuo(nil,"3",nil,nil,nil,nil,nil,nil,"0|1|2",nil,6)--6连洞装设置捡卖
--SetGoodsCaoZuo(nil,"2","机会石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,20,nil,nil,nil,true)--机会石
--SetGoodsCaoZuo(nil,"3","众神圣器","Metadata/Items/MapFragments/CurrencyFragmentPantheonFlask")
--SetGoodsCaoZuo(nil,"2","链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,20,nil,nil,nil,true)--链结石
--SetGoodsCaoZuo(nil,"2","改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,20,nil,nil,nil,true)--改造石
--SetGoodsCaoZuo(nil,"2","工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,20,nil,nil,nil,true)--工匠石
SetGoodsCaoZuo(nil,"2","地平石","Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,20,nil,nil,nil,true)--地平石
SetGoodsCaoZuo(nil,"3",nil,"Metadata/Items/Currency/CurrencyRerollMapTypeShard")--地平石碎片
SetGoodsCaoZuo("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|腰带|手套|鞋子|衣服|头盔|盾|珠宝|深渊珠宝","3",nil,nil,nil,nil,nil,nil,"2")--拾取 鉴定 出售黄色物品珠宝

SetGoodsCaoZuo(nil,"2","幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,60,nil,nil,nil,true)--够了就不捡了
--SetGoodsCaoZuo(nil,"3","点金石碎片","Metadata/Items/Currency/CurrencyUpgradeToRareShard")--够了就不捡了
SetGoodsCaoZuo("契约","3",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(r)return r.lv>60 end)
SetGoodsCaoZuo(nil,"2","点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,50,nil,nil,nil,true)--够了就不捡了
SetGoodsCaoZuo(nil,"1|3","低阶异能灰烬","Metadata/Items/Currency/CurrencyEldritchEmber1")
SetGoodsCaoZuo(nil,"1|3","低阶异能灵液","Metadata/Items/Currency/CurrencyEldritchIchor1")
SetGoodsCaoZuo(nil,"1|3","点燃石","Metadata/Items/Currency/CurrencyEnkindlingOrb")
SetGoodsCaoZuo(nil,"3","滴注石","Metadata/Items/Currency/CurrencyInstillingOrb")
SetGoodsCaoZuo(nil,"3","祝福石","Metadata/Items/Currency/CurrencyRerollImplicit")

--SetGoodsCaoZuo(nil,"0","赏金猎人印记","Metadata/Items/Heist/HeistCoin")--只捡不存夺宝币
--SetGoodsCaoZuo(nil,nil,"赏金猎人印记","Metadata/Items/Heist/HeistCoin",nil,nil,nil,50000)--够了就不捡了
SetGoodsCaoZuo("SentinelDrone","0|4",nil,nil,nil,nil,nil,nil,"1|2|3",nil,nil,nil,nil,2,IsNeedShiQuHuWei)--异界时仓库护卫没达到设置留下来的数量时捡 鉴定 蓝 黄 橙 护卫
SetGoodsCaoZuo("SentinelDrone","0|2|4",nil,nil,nil,nil,nil,nil,"1|2|3",nil,nil,nil,nil,2,IsNeedHuWei)--异界时捡 存 鉴定 有指定属性的 蓝 黄 橙 护卫
SetGoodsCaoZuo("SentinelDrone","1|3",nil,nil,nil,nil,nil,nil,"1|2|3",nil,nil,nil,nil,2,function(gd)return not IsNeedHuWei(gd) end)--异界时 卖 丢 没有指定属性的 蓝 黄 橙 护卫


SetGoodsCaoZuo(nil,"3","调查员的罗盘","Metadata/Items/Currency/CurrencyItemiseSextantModifier")
SetGoodsCaoZuo(nil,"3","全面侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportMoreHidden")
SetGoodsCaoZuo(nil,"3","凋落侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBlighted")
SetGoodsCaoZuo(nil,"3","谵妄侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportDelirium")
SetGoodsCaoZuo(nil,"3","技工侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportJuiced")
SetGoodsCaoZuo(nil,"3","势力侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian")
SetGoodsCaoZuo(nil,"3","瓦尔侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")
--SetGoodsCaoZuo(nil,"3","超凡侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")
SetGoodsCaoZuo(nil,"3","探险家侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")
SetGoodsCaoZuo(nil,"3","卓越侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")
SetGoodsCaoZuo(nil,"3","清透油瓶","Metadata/Items/Currency/Mushrune1")
SetGoodsCaoZuo(nil,"3","深褐油瓶","Metadata/Items/Currency/Mushrune2")
SetGoodsCaoZuo(nil,"3","琥珀油瓶","Metadata/Items/Currency/Mushrune3")
SetGoodsCaoZuo(nil,"3","翠绿油瓶","Metadata/Items/Currency/Mushrune4")
SetGoodsCaoZuo(nil,"3","清绿油瓶","Metadata/Items/Currency/Mushrune5")
SetGoodsCaoZuo(nil,"3","碧蓝油瓶","Metadata/Items/Currency/Mushrune6")
SetGoodsCaoZuo(nil,"3","紫色圣油","Metadata/Items/Currency/Mushrune7")
SetGoodsCaoZuo(nil,"3","靛青油瓶","Metadata/Items/Currency/Mushrune6b")

SetGoodsCaoZuo(nil,"1|3","暴炎化石","Metadata/Items/Currency/CurrencyDelveCraftingFire")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","寒风化石","Metadata/Items/Currency/CurrencyDelveCraftingCold")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","金钢化石","Metadata/Items/Currency/CurrencyDelveCraftingLightning")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","锯齿化石","Metadata/Items/Currency/CurrencyDelveCraftingPhysical")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","特异化石","Metadata/Items/Currency/CurrencyDelveCraftingChaos")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","原始化石","Metadata/Items/Currency/CurrencyDelveCraftingLife")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","稠密化石","Metadata/Items/Currency/CurrencyDelveCraftingDefences")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","三相化石","Metadata/Items/Currency/CurrencyDelveCraftingElemental")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","神幻化石","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","利齿化石","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","明透化石","Metadata/Items/Currency/CurrencyDelveCraftingMana")--可堆叠通货
SetGoodsCaoZuo(nil,"1|3","颤慄化石","Metadata/Items/Currency/CurrencyDelveCraftingSpeed")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","镶饰化石","Metadata/Items/Currency/CurrencyDelveCraftingSockets")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","雕琢化石","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","血渍化石","Metadata/Items/Currency/CurrencyDelveCraftingVaal")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","镂空化石","Metadata/Items/Currency/CurrencyDelveCraftingAbyss")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","破裂化石","Metadata/Items/Currency/CurrencyDelveCraftingMirror")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","雕纹化石","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","紊乱化石","Metadata/Items/Currency/CurrencyDelveCraftingRandom")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","神圣化石","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","镶金化石","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","斑驳化石","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","无瑕化石","Metadata/Items/Currency/CurrencyDelveCraftingQuality")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","畛域化石","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras")--可堆叠通货
--SetGoodsCaoZuo(nil,"1|3","附魔化石","Metadata/Items/Currency/CurrencyDelveCraftingEnchant")--可堆叠通货

SetGoodsCaoZuo(nil,"1|3","憎恨之低语精华","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetGoodsCaoZuo(nil,"1|3","憎恨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetGoodsCaoZuo(nil,"1|3","憎恨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetGoodsCaoZuo(nil,"1|3","憎恨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetGoodsCaoZuo(nil,"1|3","悲痛之低语精华","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetGoodsCaoZuo(nil,"1|3","悲痛之呢喃精华","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetGoodsCaoZuo(nil,"1|3","悲痛之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetGoodsCaoZuo(nil,"1|3","悲痛之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetGoodsCaoZuo(nil,"1|3","贪婪之低语精华","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetGoodsCaoZuo(nil,"1|3","贪婪之呢喃精华","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetGoodsCaoZuo(nil,"1|3","贪婪之啼泣精华","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetGoodsCaoZuo(nil,"1|3","贪婪之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetGoodsCaoZuo(nil,"1|3","轻视之低语精华","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetGoodsCaoZuo(nil,"1|3","轻视之呢喃精华","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetGoodsCaoZuo(nil,"1|3","轻视之啼泣精华","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetGoodsCaoZuo(nil,"1|3","轻视之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetGoodsCaoZuo(nil,"1|3","哀惜之呢喃精华","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetGoodsCaoZuo(nil,"1|3","哀惜之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetGoodsCaoZuo(nil,"1|3","哀惜之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetGoodsCaoZuo(nil,"1|3","愤怒之呢喃精华","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetGoodsCaoZuo(nil,"1|3","愤怒之啼泣精华","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetGoodsCaoZuo(nil,"1|3","愤怒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetGoodsCaoZuo(nil,"1|3","折磨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetGoodsCaoZuo(nil,"1|3","折磨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetGoodsCaoZuo(nil,"1|3","折磨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetGoodsCaoZuo(nil,"1|3","恐惧之呢喃精华","Metadata/Items/Currency/CurrencyEssenceFear1")
SetGoodsCaoZuo(nil,"1|3","恐惧之啼泣精华","Metadata/Items/Currency/CurrencyEssenceFear2")
SetGoodsCaoZuo(nil,"1|3","恐惧之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceFear3")
SetGoodsCaoZuo(nil,"1|3","苦难之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetGoodsCaoZuo(nil,"1|3","苦难之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetGoodsCaoZuo(nil,"1|3","肆虐之啼泣精华","Metadata/Items/Currency/CurrencyEssenceRage1")
SetGoodsCaoZuo(nil,"1|3","肆虐之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceRage2")
SetGoodsCaoZuo(nil,"1|3","雷霆之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetGoodsCaoZuo(nil,"1|3","雷霆之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetGoodsCaoZuo(nil,"1|3","疑惑之啼泣精华","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetGoodsCaoZuo(nil,"1|3","疑惑之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetGoodsCaoZuo(nil,"1|3","煎熬之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetGoodsCaoZuo(nil,"1|3","厌恶之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetGoodsCaoZuo(nil,"1|3","刻毒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSpite1")

SetGoodsCaoZuo(nil,"1|3","热情之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceZeal1")
SetGoodsCaoZuo(nil,"3","忌惮之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDread1")
SetGoodsCaoZuo(nil,"3","忌惮之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDread2")
SetGoodsCaoZuo(nil,"1|3","禁忌之书","Metadata/Items/Sanctum/SanctumKey")

SetSellGoodsData("充能的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",3,"0|1|2")
SetSellGoodsData("研磨的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",3,"0|1|2")
SetSellGoodsData("本质的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",3,"0|1|2")
--SetSellGoodsData("毒性催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",3,"0|1|2")
--SetSellGoodsData("加速催化剂","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",3,"0|1|2")
--SetSellGoodsData("汹涌的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",3,"0|1|2")
--SetSellGoodsData("易变催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityCritical",3,"0|1|2")

SetGoodsCaoZuo(nil,"1|3","憎恨之低语精华","Metadata/Items/Currency/CurrencyEssenceHatred1")
SetGoodsCaoZuo(nil,"1|3","憎恨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceHatred2")
SetGoodsCaoZuo(nil,"1|3","憎恨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceHatred3")
SetGoodsCaoZuo(nil,"1|3","憎恨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceHatred4")
SetGoodsCaoZuo(nil,"1|3","悲痛之低语精华","Metadata/Items/Currency/CurrencyEssenceWoe1")
SetGoodsCaoZuo(nil,"1|3","悲痛之呢喃精华","Metadata/Items/Currency/CurrencyEssenceWoe2")
SetGoodsCaoZuo(nil,"1|3","悲痛之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWoe3")
SetGoodsCaoZuo(nil,"1|3","悲痛之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWoe4")
SetGoodsCaoZuo(nil,"1|3","贪婪之低语精华","Metadata/Items/Currency/CurrencyEssenceGreed1")
SetGoodsCaoZuo(nil,"1|3","贪婪之呢喃精华","Metadata/Items/Currency/CurrencyEssenceGreed2")
SetGoodsCaoZuo(nil,"1|3","贪婪之啼泣精华","Metadata/Items/Currency/CurrencyEssenceGreed3")
SetGoodsCaoZuo(nil,"1|3","贪婪之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceGreed4")
SetGoodsCaoZuo(nil,"1|3","轻视之低语精华","Metadata/Items/Currency/CurrencyEssenceContempt1")
SetGoodsCaoZuo(nil,"1|3","轻视之呢喃精华","Metadata/Items/Currency/CurrencyEssenceContempt2")
SetGoodsCaoZuo(nil,"1|3","轻视之啼泣精华","Metadata/Items/Currency/CurrencyEssenceContempt3")
SetGoodsCaoZuo(nil,"1|3","轻视之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceContempt4")
SetGoodsCaoZuo(nil,"1|3","哀惜之呢喃精华","Metadata/Items/Currency/CurrencyEssenceSorrow1")
SetGoodsCaoZuo(nil,"1|3","哀惜之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSorrow2")
SetGoodsCaoZuo(nil,"1|3","哀惜之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSorrow3")
SetGoodsCaoZuo(nil,"1|3","愤怒之呢喃精华","Metadata/Items/Currency/CurrencyEssenceAnger1")
SetGoodsCaoZuo(nil,"1|3","愤怒之啼泣精华","Metadata/Items/Currency/CurrencyEssenceAnger2")
SetGoodsCaoZuo(nil,"1|3","愤怒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnger3")
SetGoodsCaoZuo(nil,"1|3","折磨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceTorment1")
SetGoodsCaoZuo(nil,"1|3","折磨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceTorment2")
SetGoodsCaoZuo(nil,"1|3","折磨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceTorment3")
SetGoodsCaoZuo(nil,"1|3","恐惧之呢喃精华","Metadata/Items/Currency/CurrencyEssenceFear1")
SetGoodsCaoZuo(nil,"1|3","恐惧之啼泣精华","Metadata/Items/Currency/CurrencyEssenceFear2")
SetGoodsCaoZuo(nil,"1|3","恐惧之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceFear3")
SetGoodsCaoZuo(nil,"1|3","苦难之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSuffering1")
SetGoodsCaoZuo(nil,"1|3","苦难之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSuffering2")
SetGoodsCaoZuo(nil,"1|3","肆虐之啼泣精华","Metadata/Items/Currency/CurrencyEssenceRage1")
SetGoodsCaoZuo(nil,"1|3","肆虐之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceRage2")
SetGoodsCaoZuo(nil,"1|3","雷霆之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWrath1")
SetGoodsCaoZuo(nil,"1|3","雷霆之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWrath2")
SetGoodsCaoZuo(nil,"1|3","疑惑之啼泣精华","Metadata/Items/Currency/CurrencyEssenceDoubt1")
SetGoodsCaoZuo(nil,"1|3","疑惑之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceDoubt2")
SetGoodsCaoZuo(nil,"1|3","煎熬之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnguish1")
SetGoodsCaoZuo(nil,"1|3","厌恶之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceLoathing1")
SetGoodsCaoZuo(nil,"1|3","刻毒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSpite1")

SetSellGoodsData("憎恨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceHatred5",3,"0|1|2")
SetSellGoodsData("憎恨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceHatred6",3,"0|1|2")
SetSellGoodsData("悲痛之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWoe5",3,"0|1|2")
SetSellGoodsData("悲痛之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWoe6",3,"0|1|2")
SetSellGoodsData("贪婪之咆哮精华","Metadata/Items/Currency/CurrencyEssenceGreed5",3,"0|1|2")
SetSellGoodsData("贪婪之尖啸精华","Metadata/Items/Currency/CurrencyEssenceGreed6",3,"0|1|2")
SetSellGoodsData("轻视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceContempt5",3,"0|1|2")
SetSellGoodsData("轻视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceContempt6",3,"0|1|2")
SetSellGoodsData("哀惜之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSorrow4",3,"0|1|2")
SetSellGoodsData("哀惜之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSorrow5",3,"0|1|2")
SetSellGoodsData("愤怒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnger4",3,"0|1|2")
SetSellGoodsData("愤怒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnger5",3,"0|1|2")
SetSellGoodsData("折磨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceTorment4",3,"0|1|2")
SetSellGoodsData("折磨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceTorment5",3,"0|1|2")
SetSellGoodsData("恐惧之咆哮精华","Metadata/Items/Currency/CurrencyEssenceFear4",3,"0|1|2")
SetSellGoodsData("恐惧之尖啸精华","Metadata/Items/Currency/CurrencyEssenceFear5",3,"0|1|2")
SetSellGoodsData("苦难之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSuffering3",3,"0|1|2")
SetSellGoodsData("苦难之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSuffering4",3,"0|1|2")
SetSellGoodsData("肆虐之咆哮精华","Metadata/Items/Currency/CurrencyEssenceRage3",3,"0|1|2")
SetSellGoodsData("肆虐之尖啸精华","Metadata/Items/Currency/CurrencyEssenceRage4",3,"0|1|2")
SetSellGoodsData("雷霆之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWrath3",3,"0|1|2")
SetSellGoodsData("雷霆之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWrath4",3,"0|1|2")
SetSellGoodsData("疑惑之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDoubt3",3,"0|1|2")
SetSellGoodsData("疑惑之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDoubt4",3,"0|1|2")
SetSellGoodsData("煎熬之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnguish2",3,"0|1|2")
SetSellGoodsData("煎熬之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnguish3",3,"0|1|2")
SetSellGoodsData("厌恶之咆哮精华","Metadata/Items/Currency/CurrencyEssenceLoathing2",3,"0|1|2")
SetSellGoodsData("厌恶之尖啸精华","Metadata/Items/Currency/CurrencyEssenceLoathing3",3,"0|1|2")
SetSellGoodsData("刻毒之巨吼精华","Metadata/Items/Currency/CurrencyEssenceSpite2",3,"0|1|2")
SetSellGoodsData("刻毒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSpite3",3,"0|1|2")
SetSellGoodsData("热情之巨吼精华","Metadata/Items/Currency/CurrencyEssenceZeal2",3,"0|1|2")
SetSellGoodsData("热情之尖啸精华","Metadata/Items/Currency/CurrencyEssenceZeal3",3,"0|1|2")
SetSellGoodsData("凄惨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceMisery1",3,"0|1|2")
SetSellGoodsData("凄惨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceMisery2",3,"0|1|2")
SetSellGoodsData("忌惮之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDread1",3,"0|1|2")
SetSellGoodsData("忌惮之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDread2",3,"0|1|2")
SetSellGoodsData("傲视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceScorn1",3,"0|1|2")
SetSellGoodsData("傲视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceScorn2",3,"0|1|2")
SetSellGoodsData("忌妒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceEnvy1",3,"0|1|2")
SetSellGoodsData("忌妒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceEnvy2",3,"0|1|2")

--集货boss名 字符串型
--AddJiaoYiBossName(bossName,computerName,mohu) 添加仓库号
--bossName 仓库号名字 
--computerName 电脑名 单独为某台电脑指定不同的仓库号 忽略填nil
--mohu true为模糊匹配 false 或 nil 或不填为完整匹配
--AddJiaoYiBossName("射手座遺落的虛空箭囊")
--AddJiaoYiTime(startHour,endHour)--添加交易时间段大于等于startHour 并且小于等于endHour 时会检测交易
--StartHour 数字型 开始交易的小时 
--endHour 数字型 结束交易的小时
AddJiaoYiTime(0,24)--晚上11点到8点前会检测交易

--公会仓库存仓 fanxing
AddJiaoYiBossName("gos",nil,nil,nil,true)

SetSaveIndex("可堆叠通货|通货","2|1|16",nil,nil,nil,nil,nil,true)
SetSaveIndex("珠宝","1|20",nil,nil,nil,nil,nil,true)
SetSaveIndex("蓝图","1|20|5|6|7|8|9|10|11|12",nil,nil,nil,nil,nil,true)
SetSaveIndex("主动技能宝石|辅助技能宝石","1|6",nil,nil,nil,nil,nil,true)
SetSaveIndex("命运卡","1|19",nil,nil,nil,nil,nil,true)
SetSaveIndex("灾变样品|赛季石|神灵之魂","1|20",nil,nil,nil,nil,nil,true)
SetSaveIndex("生命药剂|魔力药剂|复合药剂|功能药剂|盾|坚岩药剂","1|20|21|22|1",nil,nil,nil,nil,nil,true)
SetSaveIndex("地图碎片","|124",nil,nil,nil,nil,nil,true)
SetSaveIndex("项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|箭袋|腰带|手套|鞋子|衣服|头盔|异界地图|药剂|鱼竿","1|20|21|22|1",nil,nil,nil,nil,nil,true)
SetSaveIndex(nil,"20|1","污秽圣油","Metadata/Items/Currency/MushruneCorrupt",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","绯红圣油","Metadata/Items/Currency/Mushrune8",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","漆黑圣油","Metadata/Items/Currency/Mushrune9",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","乳白圣油","Metadata/Items/Currency/Mushrune10",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","白银圣油","Metadata/Items/Currency/Mushrune11",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","金色圣油","Metadata/Items/Currency/Mushrune12",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","祭祀裂片","Metadata/Items/Currency/CurrencyRitualSplinter")
SetSaveIndex(nil,"20|1","圣油萃取器","Metadata/Items/Currency/CurrencyExtractOil",nil,nil,nil,true) --吸油器
SetSaveIndex(nil,"20|21|22|1","終極混沌鑄新儀","Metadata/Items/Delve/DelveSocketableCurrencyReroll4",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","银币","Metadata/Items/Currency/CurrencySilverCoin",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","混沌石","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","崇高石","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","瓦尔宝珠","Metadata/Items/Currency/CurrencyCorrupt",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","撤销石","Metadata/Items/Currency/CurrencyAtlasPassiveRefund",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","製圖釘","Metadata/Items/Currency/CurrencyCartographersChisel",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","宝石匠的棱镜","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","剥离石","Metadata/Items/Currency/CurrencyRemoveMod",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","拓印的封魔之玉","Metadata/Items/Currency/CurrencyItemisedCapturedMonster",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","点燃石","Metadata/Items/Currency/CurrencyEnkindlingOrb",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","滴注石","Metadata/Items/Currency/CurrencyInstillingOrb",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","銀幣","Metadata/Items/Currency/CurrencyAncestralSilverCoin",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","低阶异能灰烬","Metadata/Items/Currency/CurrencyEldritchEmber1",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","低阶异能灵液","Metadata/Items/Currency/CurrencyEldritchIchor1",nil,nil,nil,true)

SetSaveIndex(nil,"20|1","埃哈的記憶","Metadata/Items/MemoryLines/MemoryLineEinhar",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","艾瓦的記憶","Metadata/Items/MemoryLines/MemoryLineAlva",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","尼科的記憶","Metadata/Items/MemoryLines/MemoryLineNiko",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","埃哈的記憶","Metadata/Items/MemoryLines/MemoryLineEinhar",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","虛誕遺鑰","Metadata/Items/MapFragments/VoidbornVaultKey",nil,nil,nil,true)
--SetSaveIndex(nil,"8|9|10|11|12|13","禁忌之书","Metadata/Items/Sanctum/SanctumKey",nil,nil,nil,true)

SetSaveIndex(nil,"20|1","譫妄玉","Metadata/Items/Currency/CurrencyDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","製圖六分儀．覺醒","Metadata/Items/Currency/CurrencyAddAtlasModHigh",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","多稜的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","富饒的催化劑","Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","易变催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityCritical",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","冶鍊的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","玷污催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityVaal",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","汹涌的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","毒性催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","加速催化剂","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",nil,nil,nil,true)

SetSaveIndex(nil,"20|12|13|1","魂芯符文之結","Metadata/Items/Currency/RunegraftSouls",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","寶石工藝符文之結","Metadata/Items/Currency/RunegraftSupportLevels",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","巫印符文之結","Metadata/Items/Currency/RunegraftSpellLifeCost",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","改善之預兆","Metadata/Items/Currency/AncestralOmenOnDeathPreventExpLoss",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","白化之預兆","Metadata/Items/Currency/AncestralOmenOnChromaticAddWhiteSockets",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","連結之預兆","Metadata/Items/Currency/AncestralOmenOnFusingMakeFullLinks",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","工匠之預兆","Metadata/Items/Currency/AncestralOmenOnJewellersMakeFullSockets",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","財富之預兆","Metadata/Items/Currency/AncestralOmenOnChanceMakeUnique",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","忠诚符文之結","Metadata/Items/Currency/RunegraftAilmentRedirect",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","堡壘符文之結","Metadata/Items/Currency/RunegraftAttributeGlobalDefences",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","緊密符文之結","Metadata/Items/Currency/RunegraftBootsGloves",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","扭曲符文之結","Metadata/Items/Currency/RunegraftBuffScaling",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","補償符文之結","Metadata/Items/Currency/RunegraftChainMana",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","時間符文之結","Metadata/Items/Currency/RunegraftCooldownRefresh",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","重新縫合符文之結","Metadata/Items/Currency/RunegraftCritRecoup",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","工匠符文之結","Metadata/Items/Currency/RunegraftDamagePerSocket",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","左旋符文之結","Metadata/Items/Currency/RunegraftFlatOffhandAttackTime",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","河川符文之結","Metadata/Items/Currency/RunegraftLowLifeRestore",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","轟鳴符文之結","Metadata/Items/Currency/RunegraftWarcrySpeed",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","穩定符文之結","Metadata/Items/Currency/RunegraftUnexciting",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","瀆神符文之結","Metadata/Items/Currency/RunegraftRandomCurse",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","星印符文之結","Metadata/Items/Currency/RunegraftNovaMarkedTarget",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","戰鬥者符文之結","Metadata/Items/Currency/RunegraftMatchedAttackDamage",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","魂芯符文之結","Metadata/Items/Currency/RunegraftSouls",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","寶石工藝符文之結","Metadata/Items/Currency/RunegraftSupportLevels",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","巫印符文之結","Metadata/Items/Currency/RunegraftSpellLifeCost",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","雷默科偵瞬步的紋身","Metadata/Items/Currency/AncestralTattooRamako4",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","雷默科薩滿的紋身","Metadata/Items/Currency/AncestralTattooRamako5",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","奇塔弗飲血者的紋身","Metadata/Items/Currency/AncestralTattooKitava1",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","努葛瑪呼戰鬥王的紋身","Metadata/Items/Currency/AncestralTattooNgamahu4",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","艾蘿紅薇薩滿的紋身","Metadata/Items/Currency/AncestralTattooArohongui5",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","塔赫亞馬坎加的紋身","Metadata/Items/Currency/AncestralTattooTawhoa7",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","悉妮蔻拉說書人的紋身","Metadata/Items/Currency/AncestralTattooHinekora4",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","雷默科馬坎加的紋身","Metadata/Items/Currency/AncestralTattooRamako7",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","創傷之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestFearKey",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","敬畏之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestBenevolenceKey",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","孤獨之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestIgnoranceKey",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火虛靈餘燼","Metadata/Items/MapFragments/CleansedAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火骷髏馬克餘燼","Metadata/Items/MapFragments/BetrayalAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火傳播餘燼","Metadata/Items/MapFragments/PropagationAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火血肉餘燼","Metadata/Items/MapFragments/MeatSackAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火荒林餘燼","Metadata/Items/MapFragments/WildwoodAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火虛靈餘燼","Metadata/Items/MapFragments/CleansedAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火鍍金餘燼","Metadata/Items/MapFragments/GoldAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|12|13|1","不滅之火蟾蜍餘燼","Metadata/Items/MapFragments/ToadAllflamePack",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","映像迷霧","Metadata/Items/Currency/ReflectiveMist",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","釋界之採購鑿","Metadata/Items/Currency/CurrencyMapQualityRarity",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","釋界之增值鑿","Metadata/Items/Currency/CurrencyMapQualityPackSize",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","釋界之占卜鑿","Metadata/Items/Currency/CurrencyMapQualityDivinationCards",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","釋界之聖甲蟲鑿","Metadata/Items/Currency/CurrencyMapQualityScarabs",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","釋界之貪婪鑿","Metadata/Items/Currency/CurrencyMapQualityCurrency",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","巨靈瓦爾寶珠","Metadata/Items/Currency/CurrencyMoreCorrupt",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","隱匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiledChaos",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","塑界者的崇高石","Metadata/Items/Currency/CurrencyAddModToRareShaper",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","尊師的崇高石","Metadata/Items/Currency/CurrencyAddModToRareElder",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","回想石","Metadata/Items/Currency/CurrencyAddZanaInfluence",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","拆解石","Metadata/Items/Currency/CurrencyRemoveZanaInfluence",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","意志石","Metadata/Items/Currency/CurrencyMoreZanaInfluencedItems",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","神圣石","Metadata/Items/Currency/CurrencyModValues",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","古變石","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","製圖六分儀．3","Metadata/Items/Currency/CurrencyAddAtlasModMid",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","先驱石","Metadata/Items/Currency/CurrencyUpgradeMapTier",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","崇高石碎片","Metadata/Items/Currency/CurrencyExaltedShard",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","初级制图六分仪","Metadata/Items/Currency/CurrencyAddAtlasMod",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","豐裕牌組","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","淬鍊石","Metadata/Items/Currency/CurrencyHeistWeaponEnchant",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","裁缝石","Metadata/Items/Currency/CurrencyHeistArmourEnchant",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","异能混沌石","Metadata/Items/Currency/CurrencyEldritchRerollRare",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","异能无效石","Metadata/Items/Currency/CurrencyEldritchRemoveMod",nil,nil,nil,true)

SetSaveIndex(nil,"16|1","祝福石","Metadata/Items/Currency/CurrencyRerollImplicit",nil,nil,nil,true)
SetSaveIndex(nil,"16|1","地平石","Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,true)

SetSaveIndex(nil,"20|1","探險家偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","卓越偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","全面偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportMoreHidden",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","凋落偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBlighted",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","勢力偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","技工偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportJuiced",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","瓦爾偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","譫妄偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportDelirium",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","超凡偵查報告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","調查員的羅盤","Metadata/Items/Currency/CurrencyItemiseSextantModifier",nil,nil,nil,true)
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/MemoryLines/MemoryLineEinhar",nil,nil,nil,true)--埃哈的記憶
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/MemoryLines/MemoryLineAlva",nil,nil,nil,true)--艾瓦的記憶
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/MemoryLines/MemoryLineNiko",nil,nil,nil,true)--尼科的記憶
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/MemoryLines/MemoryLineEinhar",nil,nil,nil,true)--埃哈的記憶
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CrucibleGeode",nil,nil,nil,true)--火炎精晶
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CrucibleGeodeUber",nil,nil,nil,true)--水晶精晶
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CurrencyAddCrucibleExperience",nil,nil,nil,true)--岩礦

--SetSaveIndex(nil,"4|5|6|7","實驗室","Metadata/Items/Heist/HeistBlueprintDungeon",nil,nil,nil,true)
--SetSaveIndex(nil,"4|5|6|7","展覽室 ","Metadata/Items/Heist/HeistBlueprintReliquary",nil,nil,nil,true)
--SetSaveIndex(nil,"4|5|6|7","地道","Metadata/Items/Heist/HeistBlueprintRobotTunnels",nil,nil,nil,true)
--SetSaveIndex(nil,"4|5|6|7","禁忌館藏","Metadata/Items/Heist/HeistBlueprintLibrary",nil,nil,nil,true)
SetSaveIndex(nil,"20|9|10|11|12|13",nil,nil,"Engraved Ultimatum")--"刻划最后通牒"

SetSaveIndex(nil,"20|1","白银圣油","Metadata/Items/Currency/Mushrune4",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","金色圣油","Metadata/Items/Currency/Mushrune18",nil,nil,nil,true)

SetSaveIndex(nil,"20|1","盜之印","Metadata/Items/Heist/HeistCoin",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","幻像斷片","Metadata/Items/Currency/CurrencySimulacrumSplinter",nil,nil,nil,true)

SetSaveIndex(nil,"24|1","裂隙碎片(夏乌拉)","Metadata/Items/Currency/CurrencyBreachChaosShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","永恒卡鲁裂片","Metadata/Items/Currency/CurrencyLegionKaruiShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","永恒马拉克斯裂片","Metadata/Items/Currency/CurrencyLegionMarakethShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","永恒帝国裂片","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","永恒圣堂裂片","Metadata/Items/Currency/CurrencyLegionTemplarShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","永恒瓦尔裂片","Metadata/Items/Currency/CurrencyLegionVaalShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","裂隙碎片(乌尔尼多)","Metadata/Items/Currency/CurrencyBreachPhysicalShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","裂隙碎片(托沃)","Metadata/Items/Currency/CurrencyBreachColdShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","夏烏拉裂痕石","Metadata/Items/Currency/CurrencyChayulasstone",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","烏爾尼多裂痕石","Metadata/Items/Currency/CurrencyUulNetolsstone",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","托沃裂痕石","Metadata/Items/Currency/CurrencyTulsstone",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","索伏裂痕石","Metadata/Items/MapFragments/CurrencyBreachFragmentFire",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","艾許裂痕石","Metadata/Items/MapFragments/CurrencyBreachFragmentLightning",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","裂隙碎片(索伏)","Metadata/Items/Currency/CurrencyBreachFireShard",nil,nil,nil,true)
SetSaveIndex(nil,"24|1","裂隙碎片(艾许)","Metadata/Items/Currency/CurrencyBreachLightningShard",nil,nil,nil,true)

--SetSaveIndex(nil,"1|2","貪婪鎧甲","Metadata/Items/Armours/BodyArmours/BodyStrDexInt2",nil,nil,nil,true)
--SetSaveIndex(nil,"6|7|8|9","裂痕戒指","Metadata/Items/Rings/BreachRing",nil,nil,nil,true)
SetSaveIndex(nil,"20|21|22|1","骸骨之戒","Metadata/Items/Rings/Ring16",nil,nil,nil,true)--骸骨戒指

SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/HarvestSeedRed",nil,nil,nil,true)--野性結晶生靈之力
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/HarvestSeedGreen",nil,nil,nil,true)--靈現結晶生靈之力
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/HarvestSeedBlue",nil,nil,nil,true)--原始結晶生靈之力
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/HarvestSeedBoss",nil,nil,nil,true)--神聖結晶生靈之力

SetSaveIndex(nil,"20|1","變態之譫妄玉","Metadata/Items/Currency/CurrencyAmorphousDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","凋落之譫妄玉","Metadata/Items/Currency/CurrencyBlightedDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","永恆之譫妄玉","Metadata/Items/Currency/CurrencyTimelessDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","帝王之譫妄玉","Metadata/Items/Currency/CurrencyImperialDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","初始之譫妄玉","Metadata/Items/Currency/CurrencyPrimalDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","聖人之譫妄玉","Metadata/Items/Currency/CurrencyDivinersDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","預兆之譫妄玉","Metadata/Items/Currency/CurrencyPortentousDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","石化之譫妄玉","Metadata/Items/Currency/CurrencyFossilisedDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","飛掠之譫妄玉","Metadata/Items/Currency/CurrencySkitteringDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","碎片之譫妄玉","Metadata/Items/Currency/CurrencyFragmentedDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","低語之譫妄玉","Metadata/Items/Currency/CurrencyWhisperingDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","晦澀之譫妄玉","Metadata/Items/Currency/CurrencyObscuredDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","預感之譫妄玉","Metadata/Items/Currency/CurrencyForebodingDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","墮落之譫妄玉","Metadata/Items/Currency/CurrencyDecadentDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","深淵之譫妄玉","Metadata/Items/Currency/CurrencyAbyssalDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","飾品之譫妄玉","Metadata/Items/Currency/CurrencyJewellersDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","製圖之譫妄玉","Metadata/Items/Currency/CurrencyCartographersDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","護甲之譫妄玉","Metadata/Items/Currency/CurrencyArmoursmithsDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","鐵匠之譫妄玉","Metadata/Items/Currency/CurrencyBlacksmithsDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","奇術之譫妄玉","Metadata/Items/Currency/CurrencyThaumaturgesDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","卓越之譫妄玉","Metadata/Items/Currency/CurrencySingularDeliriumOrb",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","精良之譫妄玉","Metadata/Items/Currency/CurrencyFineDeliriumOrb",nil,nil,nil,true)

SetSaveIndex(nil,"20|1","药材","Metadata/Items/Currency/CurrencyRefreshGambler",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","异域币铸","Metadata/Items/Currency/CurrencyRefreshBarter",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","废金属","Metadata/Items/Currency/CurrencyRefreshDealer",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","埋葬奖章","Metadata/Items/Currency/CurrencyRefreshSaga",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","探险日志","Metadata/Items/Expedition/ExpeditionLogbook",nil,nil,nil,true)
--SetSaveIndex(nil,"碎片","众神神器","Metadata/Items/MapFragments/CurrencyFragmentPantheonFlask",nil,nil,nil,true)
SetSaveIndex("DelveSocketableCurrency","20|1",nil,nil,nil,nil,nil,true)--掘獄插槽通貨

SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CurrencyDelveCraftingDefences",nil,nil,nil,true)
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras",nil,nil,nil,true)
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison",nil,nil,nil,true)
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CurrencyDelveCraftingQuality",nil,nil,nil,true)
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CurrencyDelveCraftingEnchant",nil,nil,nil,true)
SetSaveIndex(nil,"20|1",nil,"Metadata/Items/Currency/CurrencyDelveCraftingSockets",nil,nil,nil,true)
SetSaveIndex(nil,"20|1","紊亂化石","Metadata/Items/Currency/CurrencyDelveCraftingRandom",nil,nil,nil,true)--纠缠化石
SetSaveIndex(nil,"20|1","神聖化石","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls",nil,nil,nil,true)--圣洁化石
SetSaveIndex(nil,"20|1","鑲金化石","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice",nil,nil,nil,true)--镶金化石
SetSaveIndex(nil,"20|1","破裂化石","Metadata/Items/Currency/CurrencyDelveCraftingMirror",nil,nil,nil,true)--分裂化石
SetSaveIndex(nil,"20|1","鏤空化石","Metadata/Items/Currency/CurrencyDelveCraftingAbyss",nil,nil,nil,true)--镂空化石
SetSaveIndex(nil,"20|1","血漬化石","Metadata/Items/Currency/CurrencyDelveCraftingVaal",nil,nil,nil,true)--溅血化石
SetSaveIndex(nil,"20|1","幻像異界","Metadata/Items/MapFragments/CurrencyAfflictionFragment",nil,nil,nil,true)--梦魇拟像

SetSaveIndex(nil,"23|1","憎恨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceHatred4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","憎恨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceHatred5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","憎恨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceHatred6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","憎恨之破空精华","Metadata/Items/Currency/CurrencyEssenceHatred7",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","悲痛之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWoe4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","悲痛之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWoe5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","悲痛之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWoe6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","悲痛之破空精华","Metadata/Items/Currency/CurrencyEssenceWoe7",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","贪婪之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceGreed4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","贪婪之咆哮精华","Metadata/Items/Currency/CurrencyEssenceGreed5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","贪婪之尖啸精华","Metadata/Items/Currency/CurrencyEssenceGreed6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","贪婪之破空精华","Metadata/Items/Currency/CurrencyEssenceGreed7",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","轻视之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceContempt4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","轻视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceContempt5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","轻视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceContempt6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","轻视之破空精华","Metadata/Items/Currency/CurrencyEssenceContempt7",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","哀惜之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSorrow3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","哀惜之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSorrow4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","哀惜之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSorrow5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","哀惜之破空精华","Metadata/Items/Currency/CurrencyEssenceSorrow6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","愤怒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnger3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","愤怒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnger4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","愤怒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnger5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","愤怒之破空精华","Metadata/Items/Currency/CurrencyEssenceAnger6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","折磨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceTorment3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","折磨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceTorment4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","折磨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceTorment5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","折磨之破空精华","Metadata/Items/Currency/CurrencyEssenceTorment6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","恐惧之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceFear3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","恐惧之咆哮精华","Metadata/Items/Currency/CurrencyEssenceFear4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","恐惧之尖啸精华","Metadata/Items/Currency/CurrencyEssenceFear5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","恐惧之破空精华","Metadata/Items/Currency/CurrencyEssenceFear6",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","苦难之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSuffering2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","苦难之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSuffering3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","苦难之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSuffering4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","苦难之破空精华","Metadata/Items/Currency/CurrencyEssenceSuffering5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","肆虐之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceRage2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","肆虐之咆哮精华","Metadata/Items/Currency/CurrencyEssenceRage3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","肆虐之尖啸精华","Metadata/Items/Currency/CurrencyEssenceRage4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","肆虐之破空精华","Metadata/Items/Currency/CurrencyEssenceRage5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","雷霆之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWrath2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","雷霆之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWrath3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","雷霆之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWrath4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","雷霆之破空精华","Metadata/Items/Currency/CurrencyEssenceWrath5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","疑惑之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceDoubt2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","疑惑之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDoubt3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","疑惑之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDoubt4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","疑惑之破空精华","Metadata/Items/Currency/CurrencyEssenceDoubt5",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","煎熬之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnguish1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","煎熬之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnguish2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","煎熬之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnguish3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","煎熬之破空精华","Metadata/Items/Currency/CurrencyEssenceAnguish4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","厌恶之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceLoathing1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","厌恶之咆哮精华","Metadata/Items/Currency/CurrencyEssenceLoathing2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","厌恶之尖啸精华","Metadata/Items/Currency/CurrencyEssenceLoathing3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","厌恶之破空精华","Metadata/Items/Currency/CurrencyEssenceLoathing4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","刻毒之巨吼精华","Metadata/Items/Currency/CurrencyEssenceSpite1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","刻毒之巨吼精华","Metadata/Items/Currency/CurrencyEssenceSpite2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","刻毒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSpite3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","刻毒之破空精华","Metadata/Items/Currency/CurrencyEssenceSpite4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","热情之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceZeal1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","热情之巨吼精华","Metadata/Items/Currency/CurrencyEssenceZeal2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","热情之尖啸精华","Metadata/Items/Currency/CurrencyEssenceZeal3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","热情之破空精华","Metadata/Items/Currency/CurrencyEssenceZeal4",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","凄惨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceMisery1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","凄惨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceMisery2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","凄惨之破空精华","Metadata/Items/Currency/CurrencyEssenceMisery3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","忌惮之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDread1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","忌惮之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDread2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","忌惮之破空精华","Metadata/Items/Currency/CurrencyEssenceDread3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","傲视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceScorn1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","傲视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceScorn2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","傲视之破空精华","Metadata/Items/Currency/CurrencyEssenceScorn3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","极恐精华","Metadata/Items/Currency/CurrencyEssenceHorror1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","忌妒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceEnvy1",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","忌妒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceEnvy2",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","忌妒之破空精华","Metadata/Items/Currency/CurrencyEssenceEnvy3",nil,nil,nil,true)
SetSaveIndex(nil,"23|1","浮誇精髓","Metadata/Items/Currency/CurrencyEssenceHysteria1",nil,nil,nil,true)--浮夸精华
SetSaveIndex(nil,"23|1","錯亂精髓","Metadata/Items/Currency/CurrencyEssenceInsanity1",nil,nil,nil,true)--错乱精华
SetSaveIndex(nil,"23|1","極恐精髓","Metadata/Items/Currency/CurrencyEssenceHorror1",nil,nil,nil,true)--极恐精华
SetSaveIndex(nil,"23|1","譫妄精髓","Metadata/Items/Currency/CurrencyEssenceDelirium1",nil,nil,nil,true)--谵妄精华
SetSaveIndex(nil,"23|1","遗忘的污染器皿","Metadata/Items/Currency/CurrencyCorruptMonolith",nil,nil,nil)

--聖甲蟲
SetSaveIndex(nil,"1|23","通牒贿赂之圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum2",nil,nil,nil)

SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Lioneye's Remorse",nil,true)--"狮眼的荣耀塔盾"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Skullhead",nil,true)--"光辉之颅"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Tabula Rasa",nil,true)--"无尽之衣"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Siegebreaker",nil,true)--"突围"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Aukuna's Will",nil,true)--"奧庫納之意"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Bones of Ullr",nil,true)--"烏勒爾之骨"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Carnage Heart",nil,true)--"屠戮之心"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Alberon's Warpath",nil,true)--"阿尔贝隆的征途"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Chernobog's Pillar",nil,true)--"五芒屏障"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"The Jinxed Juju",nil,true)--"恶咒护符"
SetSaveIndex(nil,"20|21|22|1",nil,nil,nil,"Daresso's Courage",nil,true)--"德瑞索的勇者之盾"


--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt)--设置要交易的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--name 字符串型 物品的名字
--className 字符串型 物品的类名
--wordName 字符串型 物品的词缀名
--wordClassName 字符串型 物品的词缀类名
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--chufaCnt 数字型 触发交易的数量 0或nil 为不触发
--bossJiaoYiCnt 数字型 交易时仓库号交易给挂机号的数量

SetJiaoYiGoods(nil,"Abomination Map","Metadata/Items/Maps/MapWorldsAbomination")--T17设置交易
SetJiaoYiGoods(nil,"Citadel Map","Metadata/Items/Maps/MapWorldsCitadel")--T17设置交易
SetJiaoYiGoods(nil,"Fortress Map","Metadata/Items/Maps/MapWorldsFortress")--T17设置交易
SetJiaoYiGoods(nil,"Ziggurat Map","Metadata/Items/Maps/MapWorldsZiggurat")--T17设置交易
SetJiaoYiGoods(nil,"Sanctuary Map","Metadata/Items/Maps/MapWorldsSanctuary")--T17设置交易
SetJiaoYiGoods(nil,"熾熱之邀","Metadata/Items/MapFragments/Primordial/QuestCleansingFireBossKey")--熾熱之邀设置交易
SetJiaoYiGoods(nil,"尖嘯之邀","Metadata/Items/MapFragments/Primordial/QuestTangleBossKey")--熾熱之邀设置交易
SetJiaoYiGoods(nil,"極地之邀","Metadata/Items/MapFragments/Primordial/QuestCleansingFireKey")--極地之邀设置交易
SetJiaoYiGoods(nil,"纏繞之邀","Metadata/Items/MapFragments/Primordial/QuestTangleKey")--纏繞之邀设置交易
--SetJiaoYiGoods(nil,"尋夢追憶","Metadata/Items/Maps/MapWorldsSynthesisedWorld")--追憶地圖设置交易

SetJiaoYiGoods(nil,"混沌石","Metadata/Items/Currency/CurrencyRerollRare",nil,nil,nil,20)
SetJiaoYiGoods(nil,"卡兰德的魔镜","Metadata/Items/Currency/CurrencyDuplicate",nil,nil,nil,1)
SetJiaoYiGoods(nil,"卡兰德的魔镜碎片","Metadata/Items/Currency/CurrencyDuplicateShard",nil,nil,nil,1)
SetJiaoYiGoods(nil,"机会石","Metadata/Items/Currency/CurrencyUpgradeRandomly",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"幻像断片","Metadata/Items/Currency/CurrencySimulacrumSplinter",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"赏金猎人印记","Metadata/Items/Heist/HeistCoin",nil,nil,nil,nil,nil,nil)--保留1000个夺宝币 多出来的交易给仓库号
SetJiaoYiGoods(nil,"后悔石","Metadata/Items/Currency/CurrencyPassiveRefund",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"撤销石","Metadata/Items/Currency/CurrencyAtlasPassiveRefund",nil,nil,nil,nil,20)
SetJiaoYiGoods(nil,"祭祀碑器","Metadata/Items/Currency/CurrencyRitualStone")
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/HarvestSeedRed",nil,nil,nil,3000)--野性结晶生灵之力
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/HarvestSeedGreen",nil,nil,nil,3000)--灵现结晶生灵之力
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/HarvestSeedBlue",nil,nil,nil,3000)--原始结晶生灵之力
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/HarvestSeedBoss")--神圣结晶生灵之力
SetJiaoYiGoods(nil,nil,"Metadata/Items/MapFragments/CurrencyHarvestBossKey")--神圣之花
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/MushruneMirror")--映像油瓶
SetJiaoYiGoods(nil,nil,"Metadata/Items/MemoryLines/MemoryLineEinhar")--埃哈的记忆
SetJiaoYiGoods(nil,nil,"Metadata/Items/MemoryLines/MemoryLineAlva")--艾瓦的记忆
SetJiaoYiGoods(nil,nil,"Metadata/Items/MemoryLines/MemoryLineNiko")--尼科的记忆
SetJiaoYiGoods(nil,nil,"Metadata/Items/MemoryLines/MemoryLineEinhar")--埃哈的记忆
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CrucibleGeode")--火炎精晶
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CrucibleGeodeUber")--水晶精晶
SetJiaoYiGoods(nil,nil,"Metadata/Items/Currency/CurrencyAddCrucibleExperience")--岩矿
--SetJiaoYiGoods(nil,"蜕变石","Metadata/Items/Currency/CurrencyUpgradeToMagic",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",nil,nil,nil,nil,20)
SetJiaoYiGoods(nil,"改造石","Metadata/Items/Currency/CurrencyRerollMagic",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"磨刀石","Metadata/Items/Currency/CurrencyWeaponQuality")--磨刀石不存
--SetJiaoYiGoods(nil,"护甲片","Metadata/Items/Currency/CurrencyArmourQuality")--护甲片不存

--SetJiaoYiGoods(nil,"制图钉","Metadata/Items/Currency/CurrencyMapQuality",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"增幅石","Metadata/Items/Currency/CurrencyAddModToMagic",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"工匠石","Metadata/Items/Currency/CurrencyRerollSocketNumbers",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"普兰德斯金币","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"阿兹瓦特史记","Metadata/Items/Incursion/ItemisedTemple")
SetJiaoYiGoods(nil,"悉妮蔻拉的髮丝","Metadata/Items/Currency/CurrencyHinekorasLock",nil,nil,nil,1)
SetJiaoYiGoods(nil,"瓦尔多的谜盒","Metadata/Items/Currency/CurrencyValdoPuzzleBox",nil,nil,nil,1)

--探险
--SetJiaoYiGoods(nil,"药材","Metadata/Items/Currency/CurrencyRefreshGambler")
SetJiaoYiGoods(nil,"废金属","Metadata/Items/Currency/CurrencyRefreshDealer")
SetJiaoYiGoods(nil,"异域币铸","Metadata/Items/Currency/CurrencyRefreshBarter")
SetJiaoYiGoods(nil,"埋葬奖章","Metadata/Items/Currency/CurrencyRefreshSaga")
--SetJiaoYiGoods(nil,"探险日志","Metadata/Items/Expedition/ExpeditionLogbook")
SetJiaoYiGoods(nil,"銀幣","Metadata/Items/Currency/CurrencyAncestralSilverCoin")

--SetJiaoYiGoods(nil,"点燃石","Metadata/Items/Currency/CurrencyEnkindlingOrb")
--SetJiaoYiGoods(nil,"滴注石","Metadata/Items/Currency/CurrencyInstillingOrb")
--SetJiaoYiGoods(nil,"地平石","Metadata/Items/Currency/CurrencyRerollMapType",nil,nil,nil,nil,20)
--SetJiaoYiGoods(nil,"幻色石","Metadata/Items/Currency/CurrencyRerollSocketColours",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"低阶异能灰烬","Metadata/Items/Currency/CurrencyEldritchEmber1")
--SetJiaoYiGoods(nil,"低阶异能灵液","Metadata/Items/Currency/CurrencyEldritchIchor1")
SetJiaoYiGoods(nil,"祝福石","Metadata/Items/Currency/CurrencyRerollImplicit",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"玻璃弹珠","Metadata/Items/Currency/CurrencyFlaskQuality")

SetJiaoYiGoods(nil,"卡尔葛圣甲虫：精化","Metadata/Items/Scarabs/ScarabSettlers3")
SetJiaoYiGoods(nil,"圣甲虫：腐化制图","Metadata/Items/Scarabs/ScarabMapsNew4")
SetJiaoYiGoods(nil,"盗窃之命运圣甲虫","Metadata/Items/Scarabs/ScarabDivinationCardsNew3")
SetJiaoYiGoods(nil,"圣甲虫：遏制伏击","Metadata/Items/Scarabs/ScarabStrongboxNew4")
SetJiaoYiGoods(nil,"圣甲虫：战储神谕","Metadata/Items/Scarabs/ScarabHarbingerNew4")
SetJiaoYiGoods(nil,"圣甲虫：摄政神谕","Metadata/Items/Scarabs/ScarabHarbingerNew3")
SetJiaoYiGoods(nil,"圣甲虫：万劫犄角","Metadata/Items/Scarabs/ScarabUber7")
SetJiaoYiGoods(nil,"圣甲虫：血统犄角","Metadata/Items/Scarabs/ScarabUber1")
SetJiaoYiGoods(nil,"圣甲虫：振奋凋落","Metadata/Items/Scarabs/ScarabBlightNew5")
SetJiaoYiGoods(nil,"通牒决斗之圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum3")
SetJiaoYiGoods(nil,"通牒贿赂之圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum2")
SetJiaoYiGoods(nil,"圣甲虫：时间线穿越","Metadata/Items/Scarabs/ScarabIncursion4")
SetJiaoYiGoods(nil,"圣甲虫：倍增丰收","Metadata/Items/Scarabs/ScarabHarvest2")
SetJiaoYiGoods(nil,"圣甲虫：富饶丰收","Metadata/Items/Scarabs/ScarabHarvest3")
SetJiaoYiGoods(nil,"圣甲虫：繁荣祭祀","Metadata/Items/Scarabs/ScarabRitual3")
SetJiaoYiGoods(nil,"圣甲虫：适性精髓","Metadata/Items/Scarabs/ScarabEssence5")
SetJiaoYiGoods(nil,"圣甲虫：钙化精髓","Metadata/Items/Scarabs/ScarabEssence4")
SetJiaoYiGoods(nil,"圣甲虫：觉醒犄角","Metadata/Items/Scarabs/ScarabUber4")
SetJiaoYiGoods(nil,"圣甲虫：庇护犄角","Metadata/Items/Scarabs/ScarabUber3")
SetJiaoYiGoods(nil,"通牒铭文之圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum5")
SetJiaoYiGoods(nil,"通牒催化的圣甲虫","Metadata/Items/Scarabs/ScarabUltimatum4")

SetJiaoYiGoods(nil,"破裂石","Metadata/Items/Currency/CurrencyFractureRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"破裂石碎片","Metadata/Items/Currency/CurrencyFractureRareShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"重铸石","Metadata/Items/Currency/CurrencyConvertToNormal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"崇高石","Metadata/Items/Currency/CurrencyAddModToRare",nil,nil,nil)
SetJiaoYiGoods(nil,"富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"宝石匠的棱镜","Metadata/Items/Currency/CurrencyGemQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"崇高石碎片","Metadata/Items/Currency/CurrencyExaltedShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"隐匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiled",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"链结石","Metadata/Items/Currency/CurrencyRerollSocketLinks",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"神圣石","Metadata/Items/Currency/CurrencyModValues",nil,nil,nil,1)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","光彩夺目","Glorious Vanity",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","好战的信仰","Militant Faith",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","残酷的约束","Brutal Restraint",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","致命的骄傲","Lethal Pride",nil,nil)
SetJiaoYiGoods(nil,"永恒宝珠","Metadata/Items/Currency/CurrencyImprintOrb","优雅的狂妄","Elegant Hubris",nil,nil)
SetJiaoYiGoods(nil,"瓦尔宝珠","Metadata/Items/Currency/CurrencyCorrupt",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"普兰德斯金币","Metadata/Items/Currency/CurrencyPerandusCoin",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"圣战士的崇高石","Metadata/Items/Currency/CurrencyCrusadersExaltedOrb",nil,nil,nil,1)
SetJiaoYiGoods(nil,"救赎者的崇高石","Metadata/Items/Currency/CurrencyRedeemersExaltedOrb",nil,nil,nil,1)
SetJiaoYiGoods(nil,"狩猎者的崇高石","Metadata/Items/Currency/CurrencyHuntersExaltedOrb",nil,nil,nil,1)
SetJiaoYiGoods(nil,"总督军的崇高石","Metadata/Items/Currency/CurrencyWarlordsExaltedOrb",nil,nil,nil,1)
SetJiaoYiGoods(nil,"瓦尔遗钥","Metadata/Items/MapFragments/VaalVaultKey")
SetJiaoYiGoods(nil,"靈現之看守者","Metadata/Monsters/LeagueHarvest/Green/HarvestSquidT3MemoryLine_",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"靈現之禿鷹","Metadata/Monsters/LeagueHarvest/Green/HarvestVultureParasiteT3MemoryLine",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"黑色莫里根","Metadata/Monsters/LeagueAzmeri/GullGoliathBestiary_",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"初始之天斯卡沃","Metadata/Monsters/LeagueBestiary/MarakethBirdSpiritBoss",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"初始之潭奎爾珊","Metadata/Monsters/LeagueBestiary/NessaCrabBestiarySpiritBoss",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"奎爾珊龍蜥","Metadata/Monsters/LeagueBestiary/GemFrogBestiary",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"費爾羅坑穴獵犬","Metadata/Monsters/LeagueBestiary/PitbullBestiary",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"斯卡沃龍蜥","Metadata/Monsters/LeagueBestiary/IguanaBestiary",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"斯卡沃禿鷹","Metadata/Monsters/LeagueBestiary/VultureBestiary",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"菲恩絲女皇","Metadata/Monsters/LeagueBestiary/InsectSpawnerBestiary",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"斯卡沃雛鳥","Metadata/Monsters/LeagueBestiary/Avians/MarakethBirdBestiary",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"菲恩絲吞噬獸","Metadata/Monsters/LeagueBestiary/RootSpiderBestiary_",nil,nil,nil,nil)

SetJiaoYiGoods("HeistBlueprint",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.useLv>=70 end)--设置使用等级大于等于68的蓝图交易
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintControlBlocks",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：碉堡
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintMines",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：走私者老巢
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintSewers",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：地下道
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintCourts",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：纪录室
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintMansion",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：官邸
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintDungeon",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：实验室
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintReliquary",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：展览室
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintLibrary",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：禁忌馆藏
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Heist/HeistBlueprintRobotTunnels",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--蓝图：地道
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Jewels/JewelPassiveTreeExpansionLarge",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--大型星团珠宝
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Jewels/JewelPassiveTreeExpansionMedium",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--中型星团珠宝
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Rings/BreachRing",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=68 end)--裂痕戒指
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Sanctum/SanctumKey",nil,nil,nil,nil,nil,nil,nil,nil,nil,function(goodsData)return goodsData.lv>=80 end)--禁忌之书

--SetJiaoYiGoods(nil,"势力侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportGuardian")
--SetJiaoYiGoods(nil,"瓦尔侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportCorrupted")
SetJiaoYiGoods(nil,"超凡侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportBreachstone")
--SetJiaoYiGoods(nil,"探险家侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportExplorers")
--SetJiaoYiGoods(nil,"卓越侦查报告","Metadata/Items/Currency/ScoutingReports/AtlasScoutingReportUnique")

SetJiaoYiGoods(nil,"启蒙辅助","Metadata/Items/Gems/SupportGemAdditionalXP")
SetJiaoYiGoods(nil,"赋予辅助","Metadata/Items/Gems/SupportGemAdditionalLevel")
SetJiaoYiGoods(nil,"增幅辅助","Metadata/Items/Gems/SupportGemAdditionalQuality")
SetJiaoYiGoods(nil,"圣玉","Metadata/Items/Currency/CurrencyRerollDefences")
SetJiaoYiGoods(nil,"卓越异能灰烬","Metadata/Items/Currency/CurrencyEldritchEmber4")
SetJiaoYiGoods(nil,"卓越异能灵液","Metadata/Items/Currency/CurrencyEldritchIchor4")
SetJiaoYiGoods(nil,"宏伟异能灵液","Metadata/Items/Currency/CurrencyEldritchIchor3")
SetJiaoYiGoods(nil,"宏伟异能灰烬","Metadata/Items/Currency/CurrencyEldritchEmber3")
SetJiaoYiGoods(nil,"高阶异能灵液","Metadata/Items/Currency/CurrencyEldritchIchor2")
SetJiaoYiGoods(nil,"高阶异能灰烬","Metadata/Items/Currency/CurrencyEldritchEmber2")
SetJiaoYiGoods(nil,"异能混沌石","Metadata/Items/Currency/CurrencyEldritchRerollRare")
SetJiaoYiGoods(nil,"异能无效石","Metadata/Items/Currency/CurrencyEldritchRemoveMod")
SetJiaoYiGoods(nil,"动力核心","Metadata/Items/Currency/SentinelCurrencyBasic")
SetJiaoYiGoods(nil,"改造动力核心","Metadata/Items/Currency/SentinelCurrencyMutate")
SetJiaoYiGoods(nil,"增强动力核心","Metadata/Items/Currency/SentinelCurrencyUpgradeMod")
SetJiaoYiGoods(nil,"提升动力核心","Metadata/Items/Currency/SentinelCurrencyAddMod")
SetJiaoYiGoods(nil,"护甲重组装置","Metadata/Items/Currency/SentinelCurrencyArmour")
SetJiaoYiGoods(nil,"武器重组装置","Metadata/Items/Currency/SentinelCurrencyWeapon")
SetJiaoYiGoods(nil,"饰品重组装置","Metadata/Items/Currency/SentinelCurrencyJewellery")
SetJiaoYiGoods(nil,"拓印的封魔之玉","Metadata/Items/Currency/CurrencyItemisedCapturedMonster",nil,nil,nil,nil)

--值钱的地图
--SetJiaoYiGoods(nil,nil,nil,nil,"Caer Blaidd, Wolfpack's Den")--"塞尔．佈雷德狼穴"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vinktar Square")--"维克塔广场"
SetJiaoYiGoods(nil,nil,nil,nil,"The Beachhead")--"神谕之殿"
SetJiaoYiGoods(nil,nil,nil,nil,"Cortex")--"深沉记忆"
SetJiaoYiGoods(nil,nil,nil,nil,"Replica Cortex")--"深沉记忆"
SetJiaoYiGoods(nil,nil,nil,nil,"The Original Scripture")--初始经文

SetJiaoYiGoods(nil,"炽热之邀","Metadata/Items/MapFragments/Primordial/QuestCleansingFireBossKey",nil,nil,nil)
SetJiaoYiGoods(nil,"虚诞遗钥","Metadata/Items/MapFragments/VoidbornVaultKey",nil,nil,nil,1)
SetJiaoYiGoods(nil,"吞噬遗钥","Metadata/Items/MapFragments/UberEaterOfWorldsVaultKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"闪耀遗钥","Metadata/Items/MapFragments/UberMavenVaultKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"文书遗钥","Metadata/Items/MapFragments/UberSearingExarchVaultKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"地窖遗钥","Metadata/Items/MapFragments/UberSirusVaultKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"宇宙遗钥","Metadata/Items/MapFragments/UberShaperVaultKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"腐化遗钥","Metadata/Items/MapFragments/UberUberElderVaultKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"遗忘遗钥","Metadata/Items/MapFragments/UberVenariusVaultKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,nil,nil,nil,"Engraved Ultimatum")--"刻划最后通牒"
SetJiaoYiGoods(nil,"永恆卡鲁徽印","Metadata/Items/MapFragments/CurrencyLegionFragmentKarui")
SetJiaoYiGoods(nil,"永恆马拉克斯徽印","Metadata/Items/MapFragments/CurrencyLegionFragmentMaraketh")
SetJiaoYiGoods(nil,"永恆不朽帝国徽印","Metadata/Items/MapFragments/CurrencyLegionFragmentEternal")
SetJiaoYiGoods(nil,"永恆圣宗徽印","Metadata/Items/MapFragments/CurrencyLegionFragmentTemplar")
SetJiaoYiGoods(nil,"永恆瓦尔徽印","Metadata/Items/MapFragments/CurrencyLegionFragmentVaal")



SetJiaoYiGoods(nil,"易变催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityCritical")
SetJiaoYiGoods(nil,"冶鍊的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityDefense",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"玷污催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityVaal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"汹涌的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityElemental",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"毒性催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityPhysicalChaos",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"加速催化剂","Metadata/Items/Currency/CurrencyJewelleryQualitySpeed",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"充能的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityCaster",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"研磨的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityAttack",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"本质的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityAttribute",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"富饶的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityResource",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"多稜的催化剂","Metadata/Items/Currency/CurrencyJewelleryQualityResistance",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"奴役断片","Metadata/Items/MapFragments/CurrencyElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"根除断片","Metadata/Items/MapFragments/CurrencyElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"干扰断片","Metadata/Items/MapFragments/CurrencyElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"淨化断片","Metadata/Items/MapFragments/CurrencyElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"恐惧断片","Metadata/Items/MapFragments/CurrencyUberElderFragment1",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"空虚断片","Metadata/Items/MapFragments/CurrencyUberElderFragment2",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"雕塑断片","Metadata/Items/MapFragments/CurrencyUberElderFragment3",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"智慧断片","Metadata/Items/MapFragments/CurrencyUberElderFragment4",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"九头蛇断片","Metadata/Items/MapFragments/CurrencyFragmentoftheHydra",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"奇美拉断片","Metadata/Items/MapFragments/CurrencyFragmentoftheChimera",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"牛头断片","Metadata/Items/MapFragments/CurrencyFragmentoftheMinotaur",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"凤凰断片","Metadata/Items/MapFragments/CurrencyFragmentofthePhoenix",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"福库尔之钥","Metadata/Items/MapFragments/CurrencyVolkuursKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"茵雅之钥","Metadata/Items/MapFragments/CurrencyInyasKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"伊瑞之钥","Metadata/Items/MapFragments/CurrencyYrielsKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"希伯之钥","Metadata/Items/MapFragments/CurrencyEbersKey",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"凡人的哀伤","Metadata/Items/MapFragments/CurrencyMortalGrief",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"凡人的无知","Metadata/Items/MapFragments/CurrencyMortalIgnorance",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"凡人的希望","Metadata/Items/MapFragments/CurrencyMortalHope",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"凡人的愤怒","Metadata/Items/MapFragments/CurrencyMortalRage",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"幻像斷片","Metadata/Items/Currency/CurrencyAfflictionShard")--梦魇拟像裂片
--SetJiaoYiGoods(nil,"憎恨之低语精华","Metadata/Items/Currency/CurrencyEssenceHatred1")
--SetJiaoYiGoods(nil,"憎恨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceHatred2")
--SetJiaoYiGoods(nil,"憎恨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceHatred3")
--SetJiaoYiGoods(nil,"憎恨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceHatred4")
--SetJiaoYiGoods(nil,"憎恨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceHatred5")
--SetJiaoYiGoods(nil,"憎恨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceHatred6")
SetJiaoYiGoods(nil,"憎恨之破空精华","Metadata/Items/Currency/CurrencyEssenceHatred7")
--SetJiaoYiGoods(nil,"悲痛之低语精华","Metadata/Items/Currency/CurrencyEssenceWoe1")
--SetJiaoYiGoods(nil,"悲痛之呢喃精华","Metadata/Items/Currency/CurrencyEssenceWoe2")
--SetJiaoYiGoods(nil,"悲痛之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWoe3")
--SetJiaoYiGoods(nil,"悲痛之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWoe4")
--SetJiaoYiGoods(nil,"悲痛之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWoe5")
--SetJiaoYiGoods(nil,"悲痛之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWoe6")
SetJiaoYiGoods(nil,"悲痛之破空精华","Metadata/Items/Currency/CurrencyEssenceWoe7")
--SetJiaoYiGoods(nil,"贪婪之低语精华","Metadata/Items/Currency/CurrencyEssenceGreed1")
--SetJiaoYiGoods(nil,"贪婪之呢喃精华","Metadata/Items/Currency/CurrencyEssenceGreed2")
--SetJiaoYiGoods(nil,"贪婪之啼泣精华","Metadata/Items/Currency/CurrencyEssenceGreed3")
--SetJiaoYiGoods(nil,"贪婪之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceGreed4")
--SetJiaoYiGoods(nil,"贪婪之咆哮精华","Metadata/Items/Currency/CurrencyEssenceGreed5")
--SetJiaoYiGoods(nil,"贪婪之尖啸精华","Metadata/Items/Currency/CurrencyEssenceGreed6")
SetJiaoYiGoods(nil,"贪婪之破空精华","Metadata/Items/Currency/CurrencyEssenceGreed7")
--SetJiaoYiGoods(nil,"轻视之低语精华","Metadata/Items/Currency/CurrencyEssenceContempt1")
--SetJiaoYiGoods(nil,"轻视之呢喃精华","Metadata/Items/Currency/CurrencyEssenceContempt2")
--SetJiaoYiGoods(nil,"轻视之啼泣精华","Metadata/Items/Currency/CurrencyEssenceContempt3")
--SetJiaoYiGoods(nil,"轻视之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceContempt4")
--SetJiaoYiGoods(nil,"轻视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceContempt5")
--SetJiaoYiGoods(nil,"轻视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceContempt6")
SetJiaoYiGoods(nil,"轻视之破空精华","Metadata/Items/Currency/CurrencyEssenceContempt7")
--SetJiaoYiGoods(nil,"哀惜之呢喃精华","Metadata/Items/Currency/CurrencyEssenceSorrow1")
--SetJiaoYiGoods(nil,"哀惜之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSorrow2")
--SetJiaoYiGoods(nil,"哀惜之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSorrow3")
--SetJiaoYiGoods(nil,"哀惜之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSorrow4")
--SetJiaoYiGoods(nil,"哀惜之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSorrow5")
SetJiaoYiGoods(nil,"哀惜之破空精华","Metadata/Items/Currency/CurrencyEssenceSorrow6")
--SetJiaoYiGoods(nil,"愤怒之呢喃精华","Metadata/Items/Currency/CurrencyEssenceAnger1")
--SetJiaoYiGoods(nil,"愤怒之啼泣精华","Metadata/Items/Currency/CurrencyEssenceAnger2")
--SetJiaoYiGoods(nil,"愤怒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnger3")
--SetJiaoYiGoods(nil,"愤怒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnger4")
--SetJiaoYiGoods(nil,"愤怒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnger5")
SetJiaoYiGoods(nil,"愤怒之破空精华","Metadata/Items/Currency/CurrencyEssenceAnger6")
--SetJiaoYiGoods(nil,"折磨之呢喃精华","Metadata/Items/Currency/CurrencyEssenceTorment1")
--SetJiaoYiGoods(nil,"折磨之啼泣精华","Metadata/Items/Currency/CurrencyEssenceTorment2")
--SetJiaoYiGoods(nil,"折磨之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceTorment3")
--SetJiaoYiGoods(nil,"折磨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceTorment4")
--SetJiaoYiGoods(nil,"折磨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceTorment5")
SetJiaoYiGoods(nil,"折磨之破空精华","Metadata/Items/Currency/CurrencyEssenceTorment6")
--SetJiaoYiGoods(nil,"恐惧之呢喃精华","Metadata/Items/Currency/CurrencyEssenceFear1")
--SetJiaoYiGoods(nil,"恐惧之啼泣精华","Metadata/Items/Currency/CurrencyEssenceFear2")
--SetJiaoYiGoods(nil,"恐惧之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceFear3")
--SetJiaoYiGoods(nil,"恐惧之咆哮精华","Metadata/Items/Currency/CurrencyEssenceFear4")
--SetJiaoYiGoods(nil,"恐惧之尖啸精华","Metadata/Items/Currency/CurrencyEssenceFear5")
SetJiaoYiGoods(nil,"恐惧之破空精华","Metadata/Items/Currency/CurrencyEssenceFear6")
--SetJiaoYiGoods(nil,"苦难之啼泣精华","Metadata/Items/Currency/CurrencyEssenceSuffering1")
--SetJiaoYiGoods(nil,"苦难之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSuffering2")
--SetJiaoYiGoods(nil,"苦难之咆哮精华","Metadata/Items/Currency/CurrencyEssenceSuffering3")
--SetJiaoYiGoods(nil,"苦难之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSuffering4")
SetJiaoYiGoods(nil,"苦难之破空精华","Metadata/Items/Currency/CurrencyEssenceSuffering5")
--SetJiaoYiGoods(nil,"肆虐之啼泣精华","Metadata/Items/Currency/CurrencyEssenceRage1")
--SetJiaoYiGoods(nil,"肆虐之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceRage2")
--SetJiaoYiGoods(nil,"肆虐之咆哮精华","Metadata/Items/Currency/CurrencyEssenceRage3")
--SetJiaoYiGoods(nil,"肆虐之尖啸精华","Metadata/Items/Currency/CurrencyEssenceRage4")
SetJiaoYiGoods(nil,"肆虐之破空精华","Metadata/Items/Currency/CurrencyEssenceRage5")
--SetJiaoYiGoods(nil,"雷霆之啼泣精华","Metadata/Items/Currency/CurrencyEssenceWrath1")
--SetJiaoYiGoods(nil,"雷霆之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceWrath2")
--SetJiaoYiGoods(nil,"雷霆之咆哮精华","Metadata/Items/Currency/CurrencyEssenceWrath3")
--SetJiaoYiGoods(nil,"雷霆之尖啸精华","Metadata/Items/Currency/CurrencyEssenceWrath4")
SetJiaoYiGoods(nil,"雷霆之破空精华","Metadata/Items/Currency/CurrencyEssenceWrath5")
--SetJiaoYiGoods(nil,"疑惑之啼泣精华","Metadata/Items/Currency/CurrencyEssenceDoubt1")
--SetJiaoYiGoods(nil,"疑惑之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceDoubt2")
--SetJiaoYiGoods(nil,"疑惑之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDoubt3")
--SetJiaoYiGoods(nil,"疑惑之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDoubt4")
SetJiaoYiGoods(nil,"疑惑之破空精华","Metadata/Items/Currency/CurrencyEssenceDoubt5")
--SetJiaoYiGoods(nil,"煎熬之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceAnguish1")
--SetJiaoYiGoods(nil,"煎熬之咆哮精华","Metadata/Items/Currency/CurrencyEssenceAnguish2")
--SetJiaoYiGoods(nil,"煎熬之尖啸精华","Metadata/Items/Currency/CurrencyEssenceAnguish3")
SetJiaoYiGoods(nil,"煎熬之破空精华","Metadata/Items/Currency/CurrencyEssenceAnguish4")
--SetJiaoYiGoods(nil,"厌恶之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceLoathing1")
--SetJiaoYiGoods(nil,"厌恶之咆哮精华","Metadata/Items/Currency/CurrencyEssenceLoathing2")
--SetJiaoYiGoods(nil,"厌恶之尖啸精华","Metadata/Items/Currency/CurrencyEssenceLoathing3")
SetJiaoYiGoods(nil,"厌恶之破空精华","Metadata/Items/Currency/CurrencyEssenceLoathing4")
--SetJiaoYiGoods(nil,"刻毒之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceSpite1")
--SetJiaoYiGoods(nil,"刻毒之巨吼精华","Metadata/Items/Currency/CurrencyEssenceSpite2")
--SetJiaoYiGoods(nil,"刻毒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceSpite3")
SetJiaoYiGoods(nil,"刻毒之破空精华","Metadata/Items/Currency/CurrencyEssenceSpite4")
--SetJiaoYiGoods(nil,"热情之哀嚎精华","Metadata/Items/Currency/CurrencyEssenceZeal1")
--SetJiaoYiGoods(nil,"热情之巨吼精华","Metadata/Items/Currency/CurrencyEssenceZeal2")
--SetJiaoYiGoods(nil,"热情之尖啸精华","Metadata/Items/Currency/CurrencyEssenceZeal3")
SetJiaoYiGoods(nil,"热情之破空精华","Metadata/Items/Currency/CurrencyEssenceZeal4")
--SetJiaoYiGoods(nil,"凄惨之咆哮精华","Metadata/Items/Currency/CurrencyEssenceMisery1")
--SetJiaoYiGoods(nil,"凄惨之尖啸精华","Metadata/Items/Currency/CurrencyEssenceMisery2")
SetJiaoYiGoods(nil,"凄惨之破空精华","Metadata/Items/Currency/CurrencyEssenceMisery3")
--SetJiaoYiGoods(nil,"忌惮之咆哮精华","Metadata/Items/Currency/CurrencyEssenceDread1")
--SetJiaoYiGoods(nil,"忌惮之尖啸精华","Metadata/Items/Currency/CurrencyEssenceDread2")
SetJiaoYiGoods(nil,"忌惮之破空精华","Metadata/Items/Currency/CurrencyEssenceDread3")
--SetJiaoYiGoods(nil,"傲视之咆哮精华","Metadata/Items/Currency/CurrencyEssenceScorn1")
--SetJiaoYiGoods(nil,"傲视之尖啸精华","Metadata/Items/Currency/CurrencyEssenceScorn2")
SetJiaoYiGoods(nil,"傲视之破空精华","Metadata/Items/Currency/CurrencyEssenceScorn3")
--SetJiaoYiGoods(nil,"忌妒之咆哮精华","Metadata/Items/Currency/CurrencyEssenceEnvy1")
--SetJiaoYiGoods(nil,"忌妒之尖啸精华","Metadata/Items/Currency/CurrencyEssenceEnvy2")
SetJiaoYiGoods(nil,"忌妒之破空精华","Metadata/Items/Currency/CurrencyEssenceEnvy3")
SetJiaoYiGoods(nil,"浮夸精华","Metadata/Items/Currency/CurrencyEssenceHysteria1")
SetJiaoYiGoods(nil,"错乱精华","Metadata/Items/Currency/CurrencyEssenceInsanity1")
SetJiaoYiGoods(nil,"极恐精华","Metadata/Items/Currency/CurrencyEssenceHorror1")
SetJiaoYiGoods(nil,"谵妄精华","Metadata/Items/Currency/CurrencyEssenceDelirium1")

--SetJiaoYiGoods(nil,"遗忘的腐化器皿","Metadata/Items/Currency/CurrencyCorruptMonolith")
--SetJiaoYiGoods(nil,"众神圣器","Metadata/Items/MapFragments/CurrencyFragmentPantheonFlask")

SetJiaoYiGoods(nil,"改善之預兆","Metadata/Items/Currency/AncestralOmenOnDeathPreventExpLoss")
SetJiaoYiGoods(nil,"白化之預兆","Metadata/Items/Currency/AncestralOmenOnChromaticAddWhiteSockets")
SetJiaoYiGoods(nil,"連結之預兆","Metadata/Items/Currency/AncestralOmenOnFusingMakeFullLinks")
SetJiaoYiGoods(nil,"工匠之預兆","Metadata/Items/Currency/AncestralOmenOnJewellersMakeFullSockets")
SetJiaoYiGoods(nil,"財富之預兆","Metadata/Items/Currency/AncestralOmenOnChanceMakeUnique")
SetJiaoYiGoods(nil,"映像迷霧","Metadata/Items/Currency/ReflectiveMist")

SetJiaoYiGoods(nil,"釋界之採購鑿","Metadata/Items/Currency/CurrencyMapQualityRarity")
SetJiaoYiGoods(nil,"釋界之增值鑿","Metadata/Items/Currency/CurrencyMapQualityPackSize")
SetJiaoYiGoods(nil,"釋界之占卜鑿","Metadata/Items/Currency/CurrencyMapQualityDivinationCards")
SetJiaoYiGoods(nil,"釋界之聖甲蟲鑿","Metadata/Items/Currency/CurrencyMapQualityScarabs")
SetJiaoYiGoods(nil,"釋界之貪婪鑿","Metadata/Items/Currency/CurrencyMapQualityCurrency")

SetJiaoYiGoods(nil,"忠诚符文之結","Metadata/Items/Currency/RunegraftAilmentRedirect")
SetJiaoYiGoods(nil,"堡壘符文之結","Metadata/Items/Currency/RunegraftAttributeGlobalDefences")
SetJiaoYiGoods(nil,"緊密符文之結","Metadata/Items/Currency/RunegraftBootsGloves")
SetJiaoYiGoods(nil,"扭曲符文之結","Metadata/Items/Currency/RunegraftBuffScaling")
SetJiaoYiGoods(nil,"補償符文之結","Metadata/Items/Currency/RunegraftChainMana")
SetJiaoYiGoods(nil,"時間符文之結","Metadata/Items/Currency/RunegraftCooldownRefresh")
SetJiaoYiGoods(nil,"重新縫合符文之結","Metadata/Items/Currency/RunegraftCritRecoup")
SetJiaoYiGoods(nil,"工匠符文之結","Metadata/Items/Currency/RunegraftDamagePerSocket")
SetJiaoYiGoods(nil,"左旋符文之結","Metadata/Items/Currency/RunegraftFlatOffhandAttackTime")
SetJiaoYiGoods(nil,"河川符文之結","Metadata/Items/Currency/RunegraftLowLifeRestore")
SetJiaoYiGoods(nil,"轟鳴符文之結","Metadata/Items/Currency/RunegraftWarcrySpeed")
SetJiaoYiGoods(nil,"穩定符文之結","Metadata/Items/Currency/RunegraftUnexciting")
SetJiaoYiGoods(nil,"瀆神符文之結","Metadata/Items/Currency/RunegraftRandomCurse")
SetJiaoYiGoods(nil,"星印符文之結","Metadata/Items/Currency/RunegraftNovaMarkedTarget")
SetJiaoYiGoods(nil,"戰鬥者符文之結","Metadata/Items/Currency/RunegraftMatchedAttackDamage")

SetJiaoYiGoods(nil,"魂芯符文之結","Metadata/Items/Currency/RunegraftSouls")
SetJiaoYiGoods(nil,"寶石工藝符文之結","Metadata/Items/Currency/RunegraftSupportLevels")
SetJiaoYiGoods(nil,"巫印符文之結","Metadata/Items/Currency/RunegraftSpellLifeCost")

SetJiaoYiGoods(nil,"雷默科偵瞬步的紋身","Metadata/Items/Currency/AncestralTattooRamako4")
SetJiaoYiGoods(nil,"雷默科薩滿的紋身","Metadata/Items/Currency/AncestralTattooRamako5")
SetJiaoYiGoods(nil,"奇塔弗飲血者的紋身","Metadata/Items/Currency/AncestralTattooKitava1")
SetJiaoYiGoods(nil,"努葛瑪呼戰鬥王的紋身","Metadata/Items/Currency/AncestralTattooNgamahu4")
SetJiaoYiGoods(nil,"艾蘿紅薇薩滿的紋身","Metadata/Items/Currency/AncestralTattooArohongui5")
SetJiaoYiGoods(nil,"塔赫亞馬坎加的紋身","Metadata/Items/Currency/AncestralTattooTawhoa7")
SetJiaoYiGoods(nil,"悉妮蔻拉說書人的紋身","Metadata/Items/Currency/AncestralTattooHinekora4")
SetJiaoYiGoods(nil,"雷默科馬坎加的紋身","Metadata/Items/Currency/AncestralTattooRamako7")

SetJiaoYiGoods(nil,"巨靈瓦爾寶珠","Metadata/Items/Currency/CurrencyMoreCorrupt")
SetJiaoYiGoods(nil,"隱匿崇高石","Metadata/Items/Currency/CurrencyRerollRareVeiled")
SetJiaoYiGoods(nil,"隱匿混沌石","Metadata/Items/Currency/CurrencyRerollRareVeiledChaos")
SetJiaoYiGoods(nil,"回想石","Metadata/Items/Currency/CurrencyAddZanaInfluence")
SetJiaoYiGoods(nil,"拆解石","Metadata/Items/Currency/CurrencyRemoveZanaInfluence")
SetJiaoYiGoods(nil,"意志石","Metadata/Items/Currency/CurrencyMoreZanaInfluencedItems")
SetJiaoYiGoods(nil,"創傷之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestFearKey")
SetJiaoYiGoods(nil,"敬畏之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestBenevolenceKey")
SetJiaoYiGoods(nil,"孤獨之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestIgnoranceKey")
SetJiaoYiGoods(nil,"不滅之火虛靈餘燼","Metadata/Items/MapFragments/CleansedAllflamePack")
SetJiaoYiGoods(nil,"不滅之火骷髏馬克餘燼","Metadata/Items/MapFragments/BetrayalAllflamePack")
SetJiaoYiGoods(nil,"不滅之火傳播餘燼","Metadata/Items/MapFragments/PropagationAllflamePack")
SetJiaoYiGoods(nil,"不滅之火血肉餘燼","Metadata/Items/MapFragments/MeatSackAllflamePack")
SetJiaoYiGoods(nil,"不滅之火荒林餘燼","Metadata/Items/MapFragments/WildwoodAllflamePack")
SetJiaoYiGoods(nil,"不滅之火虛靈餘燼","Metadata/Items/MapFragments/CleansedAllflamePack")
SetJiaoYiGoods(nil,"不滅之火鍍金餘燼","Metadata/Items/MapFragments/GoldAllflamePack")
SetJiaoYiGoods(nil,"不滅之火蟾蜍餘燼","Metadata/Items/MapFragments/ToadAllflamePack")

SetJiaoYiGoods(nil,"初级封界印","Metadata/Items/Currency/CurrencySealMapLow",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"中级封界印","Metadata/Items/Currency/CurrencySealMapMid",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"大师封界印","Metadata/Items/Currency/CurrencySealMapHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"裂界之玉","Metadata/Items/Currency/CurrencyRespecShapersOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"裂隙碎片(索伏)","Metadata/Items/Currency/CurrencyBreachFireShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"裂隙碎片(托沃)","Metadata/Items/Currency/CurrencyBreachColdShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"裂隙碎片(艾许)","Metadata/Items/Currency/CurrencyBreachLightningShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"裂隙碎片(乌尔尼多)","Metadata/Items/Currency/CurrencyBreachPhysicalShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"夏乌拉纯淨裂痕石","Metadata/Items/Currency/CurrencyChayulasPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"乌尔尼多纯淨裂痕石","Metadata/Items/Currency/CurrencyUulNetolsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"艾许纯淨裂痕石","Metadata/Items/Currency/CurrencyEshsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"托沃纯淨裂痕石","Metadata/Items/Currency/CurrencyTulsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"索伏纯淨裂痕石","Metadata/Items/Currency/CurrencyXophsPurestone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"夏乌拉富裕裂痕石","Metadata/Items/Currency/CurrencyChayulasEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"乌尔尼多富裕裂痕石","Metadata/Items/Currency/CurrencyUulNetolsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"艾许富裕裂痕石","Metadata/Items/Currency/CurrencyEshsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"托沃富裕裂痕石","Metadata/Items/Currency/CurrencyTulsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"索伏富裕裂痕石","Metadata/Items/Currency/CurrencyXophsEnrichedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"夏乌拉充能裂痕石","Metadata/Items/Currency/CurrencyChayulasChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"乌尔尼多充能裂痕石","Metadata/Items/Currency/CurrencyUulNetolsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"艾许充能裂痕石","Metadata/Items/Currency/CurrencyEshsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"托沃充能裂痕石","Metadata/Items/Currency/CurrencyTulsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"索伏充能裂痕石","Metadata/Items/Currency/CurrencyXophsChargedstone",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"夏乌拉裂痕石","Metadata/Items/Currency/CurrencyChayulasstone")
SetJiaoYiGoods(nil,"乌尔尼多裂痕石","Metadata/Items/Currency/CurrencyUulNetolsstone")
SetJiaoYiGoods(nil,"托沃裂痕石","Metadata/Items/Currency/CurrencyTulsstone")
SetJiaoYiGoods(nil,"索伏裂痕石","Metadata/Items/MapFragments/CurrencyBreachFragmentFire")
SetJiaoYiGoods(nil,"艾许裂痕石","Metadata/Items/MapFragments/CurrencyBreachFragmentLightning")

SetJiaoYiGoods(nil,"裂隙碎片(夏乌拉)","Metadata/Items/Currency/CurrencyBreachChaosShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"永恒卡鲁裂片","Metadata/Items/Currency/CurrencyLegionKaruiShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"永恒马拉克斯裂片","Metadata/Items/Currency/CurrencyLegionMarakethShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"永恒帝国裂片","Metadata/Items/Currency/CurrencyLegionEternalEmpireShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"永恒圣堂裂片","Metadata/Items/Currency/CurrencyLegionTemplarShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"永恒瓦尔裂片","Metadata/Items/Currency/CurrencyLegionVaalShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"剥离石","Metadata/Items/Currency/CurrencyRemoveMod",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"先驱石","Metadata/Items/Currency/CurrencyUpgradeMapTier",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"先驱石碎片","Metadata/Items/Currency/CurrencyUpgradeMapTierShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"远古石","Metadata/Items/Currency/CurrencyRerollUnique",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"远古石碎片","Metadata/Items/Currency/CurrencyRerollUniqueShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"制图六分仪．简易","Metadata/Items/Currency/CurrencyAddAtlasMod",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"制图六分仪．高尚","Metadata/Items/Currency/CurrencyAddAtlasModMaven",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"制图六分仪．觉醒","Metadata/Items/Currency/CurrencyAddAtlasModHigh",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"圣战士的崇高石","Metadata/Items/AtlasExiles/AddModToRareCrusader",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"异能崇高石","Metadata/Items/Currency/CurrencyEldritchAddModToRare",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"唤醒者之玉","Metadata/Items/AtlasExiles/ApplyInfluence",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"支配之玉","Metadata/Items/Currency/CurrencyUpgradeInfluenceMod",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"费斯特之镜","Metadata/Items/Currency/CurrencyAddGemExperience",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"初阶筛分之镜","Metadata/Items/Currency/CurrencyRerollSkillQualityType",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"次阶筛分之镜","Metadata/Items/Currency/CurrencyRerollSupportQualityType",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"淬鍊石","Metadata/Items/Currency/CurrencyHeistWeaponEnchant",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"裁缝石","Metadata/Items/Currency/CurrencyHeistArmourEnchant",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"玷污的混沌石","Metadata/Items/Currency/CurrencyHellscapeRerollRare",nil,nil,nil)
SetJiaoYiGoods(nil,"玷污的神话石","Metadata/Items/Currency/CurrencyHellscapeUpgradeToUnique",nil,nil,nil)
SetJiaoYiGoods(nil,"玷污的工匠石","Metadata/Items/Currency/CurrencyHellscapeRerollSocketNumbers",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"玷污的幻色石","Metadata/Items/Currency/CurrencyHellscapeRerollSocketColours",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"玷污的崇高石","Metadata/Items/Currency/CurrencyHellscapeAddModToRare",nil,nil,nil,1)
--SetJiaoYiGoods(nil,"玷污的磨刀石","Metadata/Items/Currency/CurrencyHellscapeWeaponQuality")--磨刀石不存
--SetJiaoYiGoods(nil,"玷污的护甲片","Metadata/Items/Currency/CurrencyHellscapeArmourQuality")--护甲片不存
SetJiaoYiGoods(nil,"玷污的祝福石","Metadata/Items/Currency/CurrencyHellscapeRerollImplicit",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"玷污的神圣石","Metadata/Items/Currency/CurrencyHellscapeModValues",nil,nil,nil,nil,1)
SetJiaoYiGoods(nil,"玷污的链结石","Metadata/Items/Currency/CurrencyHellscapeRerollSocketLinks",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"玷污的神圣泪珠","Metadata/Items/Currency/CurrencyHellscapeUpgradeModTier",nil,nil,nil,nil)

SetJiaoYiGoods(nil,"精良之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbCurrency",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"卓越之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbUniques",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"奇术之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbGems",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"铁匠之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbWeapons",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"护甲之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbArmour",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"制图之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbMaps",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"饰品之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbTrinkets",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"深渊之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbAbyss",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"卡尔葛之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbPerandus",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"预感之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbHarbinger",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"晦涩之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbBreach",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"低语之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbEssences",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"碎片之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbFragments",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"飞掠之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbScarabs",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"石化之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbFossils",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"精良之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbProphecies",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"圣人之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbDivinationCards",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbGeneric",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"初始之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbTalismans",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"帝王之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbLabyrinth",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"永恆之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbIncubators",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"凋落之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbBlight",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"变态之谵妄玉","Metadata/Items/Currency/CurrencyAfflictionOrbMetamorphosis",nil,nil,nil,nil)

SetJiaoYiGoods(nil,"印記","Metadata/Items/Currency/CurrencyImprint",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"衝突寶珠","Metadata/Items/Currency/CurrencyConflictOrb",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"謁見國王","Metadata/Items/MapFragments/RitualBossFragment",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"密教獎章","Metadata/Items/MapFragments/CurrencyMastermindsLair",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"創傷之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestFearKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"孤獨之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestIgnoranceKey",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"敬畏之迴響","Metadata/Items/MapFragments/AtlasMemory/QuestBenevolenceKey",nil,nil,nil,nil)

--打宝挂机装
--SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Remorse")--"狮眼的荣耀塔盾"
SetJiaoYiGoods(nil,nil,nil,nil,"Tabula Rasa")--"无尽之衣"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Jinxed Juju")--"恶咒护符"
--SetJiaoYiGoods(nil,nil,nil,nil,"Daresso's Courage")--"德瑞索的勇者之盾"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Devourer of Minds")--"心靈吞噬者"
--SetJiaoYiGoods(nil,nil,nil,nil,"Carnage Heart")--"屠戮之心"
SetJiaoYiGoods(nil,nil,nil,nil,"Siegebreaker")--"突围"
--SetJiaoYiGoods(nil,nil,nil,nil,"Aukuna's Will")--"奧庫納之意"
SetJiaoYiGoods(nil,nil,nil,nil,"Bones of Ullr")--"烏勒爾之骨"
SetJiaoYiGoods(nil,nil,nil,nil,"Skullhead")--"光辉之颅"



SetJiaoYiGoods(nil,nil,nil,nil,"Black Sun Crest",nil,nil,nil,nil,nil,nil,"strength_+%,13|dexterity_+%,13|intelligence_+%,10")--"黑陽之冠"
SetJiaoYiGoods(nil,nil,nil,nil,"Legacy of the Rose")--玫瑰的傳承
SetJiaoYiGoods(nil,nil,nil,nil,"Bound By Destiny")--被命運束縛
SetJiaoYiGoods(nil,nil,nil,nil,"Squirming Terror")--扭曲恐懼
SetJiaoYiGoods(nil,nil,nil,nil,"The Dark Monarch")--黑暗君主
SetJiaoYiGoods(nil,nil,nil,nil,"Wine of the Prophet")--預言家之酒
SetJiaoYiGoods(nil,nil,nil,nil,"Wraithlord")--憤靈郡主
SetJiaoYiGoods(nil,nil,nil,nil,"Incandescent Heart")--"烈炎之心"
SetJiaoYiGoods(nil,nil,nil,nil,"The Pariah")--"草民"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Vigilance")--"帝王的戒心"
SetJiaoYiGoods(nil,nil,nil,nil,"Blackflame")--"黯炎"
--SetJiaoYiGoods(nil,nil,nil,nil,"Anathema")--"咒詛"
--SetJiaoYiGoods(nil,nil,nil,nil,"Ming's Heart")--"明恩的慧心"
--SetJiaoYiGoods(nil,nil,nil,nil,"Gloomfang")--"憂愁獠根"
--SetJiaoYiGoods(nil,nil,nil,nil,"Willclash")--"意志衝突"
SetJiaoYiGoods(nil,nil,nil,nil,"Breathstealer")--"偷息"
SetJiaoYiGoods(nil,nil,nil,nil,"Ralakesh's Impatience")--"芮勒蓋許的急躁"
--SetJiaoYiGoods(nil,nil,nil,nil,"Carcass Jack")--"致命之體"
SetJiaoYiGoods(nil,nil,nil,nil,"Ventor's Gamble")--"賭神芬多"
--SetJiaoYiGoods(nil,nil,nil,nil,"Fleshcrafter")--"人體匠師"
SetJiaoYiGoods(nil,nil,nil,nil,"Gravebind")--"幽墓束缚"
SetJiaoYiGoods(nil,nil,nil,nil,"Aegis Aurora")--"幻芒圣盾"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Scourge")--"灾害"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Poet's Pen")--"学富之笔"
--SetJiaoYiGoods(nil,nil,nil,nil,"Shade of Solaris")--"日耀之影"
SetJiaoYiGoods(nil,nil,nil,nil,"Sandstorm Visage")--"沙瀑面紗"
--SetJiaoYiGoods(nil,nil,nil,nil,"Eye of Malice")--"邪眼"
SetJiaoYiGoods(nil,nil,nil,nil,"Original Sin")--"原罪"
--SetJiaoYiGoods(nil,nil,nil,nil,"Kaom's Spirit")--"岡姆之魂"
SetJiaoYiGoods(nil,nil,nil,nil,"Shimmeron")--"低伏微光"
--SetJiaoYiGoods(nil,nil,nil,nil,"Corpsewalker")--"行屍走肉"
SetJiaoYiGoods(nil,nil,nil,nil,"Replica Dragonfang's Flight")--"贗品．龍牙翱翔"

SetJiaoYiGoods(nil,nil,nil,nil,"Defiance of Destiny")--"拒绝命运"
SetJiaoYiGoods(nil,nil,nil,nil,"Void Battery")--"潜能魔棒"
SetJiaoYiGoods(nil,nil,nil,nil,"Oni-Goroshi")--"西拉气流杀"
SetJiaoYiGoods(nil,nil,nil,nil,"Fate of the Vaal")--"瓦尔之命"
SetJiaoYiGoods(nil,nil,nil,nil,"The Rippling Thoughts")--"涟漪冥想"
SetJiaoYiGoods(nil,nil,nil,nil,"The Saviour")--"救世主"
--SetJiaoYiGoods(nil,nil,nil,nil,"Cold Iron Point")--"艾兹麦之匕"
--SetJiaoYiGoods(nil,nil,nil,nil,"Darkscorn")--"夜吟"
--SetJiaoYiGoods(nil,nil,nil,nil,"Singularity")--"奇異"
--SetJiaoYiGoods(nil,nil,nil,nil,"Heatshiver")--"寒焰 "
SetJiaoYiGoods(nil,nil,nil,nil,"Legacy of Fury")--"傳承憤怒"
SetJiaoYiGoods(nil,nil,nil,nil,"Mahuxotl's Machination")--"瑪哈薩多的陰謀"
--SetJiaoYiGoods(nil,nil,nil,nil,"Thunderfist")--"轟天雷"
--SetJiaoYiGoods(nil,nil,nil,nil,"Shadows and Dust")--"沙塵之影"
--SetJiaoYiGoods(nil,nil,nil,nil,"Snakebite")--"蝮吻"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Covenant")--"血誓"
--SetJiaoYiGoods(nil,nil,nil,nil,"Death Rush")--"亡者呼喚"
SetJiaoYiGoods(nil,nil,nil,nil,"Dialla's Malefaction")--"達拉的罪刑"
SetJiaoYiGoods(nil,nil,nil,nil,"Polaric Devastation")--"極地毀滅"
--SetJiaoYiGoods(nil,nil,nil,nil,"Dyadian Dawn")--"戴亞迪安的晨曦"
--SetJiaoYiGoods(nil,nil,nil,nil,"Death's Oath")--"冥使之體"
--SetJiaoYiGoods(nil,nil,nil,nil,"Tukohama's Fortress")--"图克哈玛堡垒"

SetJiaoYiGoods(nil,nil,nil,nil,"Kalandra's Touch")--"卡兰德之触
SetJiaoYiGoods(nil,nil,nil,nil,"Black Zenith")--"漆黑极顶"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fulcrum")--"支点"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Iron Fortress")--"钢铁壁垒"
SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Chant")--"安赛娜丝的歌颂"
SetJiaoYiGoods(nil,nil,nil,nil,"Crown of the Tyrant")--"堂皇冠冕"
SetJiaoYiGoods(nil,nil,nil,nil,"Apep's Supremacy")--"艾普霸权"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Meadow")--"普坦堡的草原"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Mountain")--"普坦堡的山峦"
SetJiaoYiGoods(nil,nil,nil,nil,"The Torrent's Reclamation")--"奔流之开拓"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Valley")--"尤莎莎的峡谷"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Mountain")--"尤莎莎的山峦"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Meadow")--"尤莎莎的草原"
SetJiaoYiGoods(nil,nil,nil,nil,"Death's Door")--"死亡大门"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Mountain")--"普坦堡的山峦"
SetJiaoYiGoods(nil,nil,nil,nil,"The Torrent's Reclamation")--"奔流之开拓"
SetJiaoYiGoods(nil,nil,nil,nil,"Uzaza's Valley")--"尤莎莎的峡谷"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Meadow")--"普坦堡的草原"
SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Legacy")--"懦夫的遗产"
SetJiaoYiGoods(nil,nil,nil,nil,"Aul's Uprising")--"奥尔的崛起"
SetJiaoYiGoods(nil,nil,nil,nil,"Ahkeli's Valley")--"阿卡莉的峡谷"
SetJiaoYiGoods(nil,nil,nil,nil,"Ahkeli's Mountain")--"阿卡莉的山峦"
SetJiaoYiGoods(nil,nil,nil,nil,"Fated End")--"终结"
SetJiaoYiGoods(nil,nil,nil,nil,"Putembo's Valley")--"普坦堡的峡谷"
SetJiaoYiGoods(nil,nil,nil,nil,"Star of Wraeclast")--"瓦尔克拉斯之星"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Ephemeral Bond")--"短期债券"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Mind")--"超凡之意"
SetJiaoYiGoods(nil,nil,nil,nil,"Reefbane")--"灾祸之礁"

SetJiaoYiGoods(nil,nil,nil,nil,"Sandstorm Visage")--"沙瀑面紗"
SetJiaoYiGoods(nil,nil,nil,nil,"Entropic Devastation")--"熵毀滅"
SetJiaoYiGoods(nil,nil,nil,nil,"Divinarius")--"戒律之影"
--SetJiaoYiGoods(nil,nil,nil,nil,"Quill Rain")--"驟雨之弦"
--SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Glare")--"獅眼的戰弓"
SetJiaoYiGoods(nil,nil,nil,nil,"Voltaxic Rift")--"魔暴之痕"
--SetJiaoYiGoods(nil,nil,nil,nil,"Bloodseeker")--"嗜血之爪"
SetJiaoYiGoods(nil,nil,nil,nil,"Song of the Sirens")--"海妖魅曲"
SetJiaoYiGoods(nil,nil,nil,nil,"Fate of the Vaal")--"瓦尔之命"
SetJiaoYiGoods(nil,nil,nil,nil,"The Hidden Blade")--"隐藏之剑",
SetJiaoYiGoods(nil,nil,nil,nil,"The Surging Thoughts")--"涌浪之思想"
SetJiaoYiGoods(nil,nil,nil,nil,"Duskdawn")--"宵晓"
SetJiaoYiGoods(nil,nil,nil,nil,"Actum")--"谈判"
SetJiaoYiGoods(nil,nil,nil,nil,"Disintegrator")--"灭碎獠杖"
--SetJiaoYiGoods(nil,nil,nil,nil,"Windripper")--"裂風"
SetJiaoYiGoods(nil,nil,nil,nil,"United in Dream")--"合流夢寐"
--SetJiaoYiGoods(nil,nil,nil,nil,"Rathpith Globe")--"獻祭之心"
SetJiaoYiGoods(nil,nil,nil,nil,"The Formless Inferno")--"無形煉獄"
SetJiaoYiGoods(nil,nil,nil,nil,"Voice of the Storm")--"暴風之言"
--SetJiaoYiGoods(nil,nil,nil,nil,"Emberwake")--"餘燼之痕"
--SetJiaoYiGoods(nil,nil,nil,nil,"Kaom's Spirit")--"岡姆之魂"
--SetJiaoYiGoods(nil,nil,nil,nil,"Voll's Vision")--"福爾的遠見"
--SetJiaoYiGoods(nil,nil,nil,nil,"Wilma's Requital")--"威爾瑪的報復"
--SetJiaoYiGoods(nil,nil,nil,nil,"Vixen's Entrapment")--"雌狐的圈套"
--SetJiaoYiGoods(nil,nil,nil,nil,"Apep's Rage")--"艾普之怒"
SetJiaoYiGoods(nil,nil,nil,nil,"The Eternal Struggle")--"永恆鬥爭"
--SetJiaoYiGoods(nil,nil,nil,nil,"Haemophilia")--"逆凝之血"
SetJiaoYiGoods(nil,nil,nil,nil,"Polaric Devastation")--"極地毀滅"
--SetJiaoYiGoods(nil,nil,nil,nil,"Leash of Oblation")--"祭品之繫"
--SetJiaoYiGoods(nil,nil,nil,nil,"Lightning Coil")--"雷語"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fledgling")--"幼雛"

--SetJiaoYiGoods(nil,nil,nil,nil,"Prism Guardian")--"元素的庇护"
--SetJiaoYiGoods(nil,nil,nil,nil,"Beltimber Blade")--"刀锋禁材"
--SetJiaoYiGoods(nil,nil,nil,nil,"Grelwood Shank")--"沃德步伐"
SetJiaoYiGoods(nil,nil,nil,nil,"Cospri's Malice")--"卡斯普里的怨恨"
SetJiaoYiGoods(nil,nil,nil,nil,"Soul Taker")--"开膛斧"
SetJiaoYiGoods(nil,nil,nil,nil,"Nebuloch")--"银河星云"
SetJiaoYiGoods(nil,nil,nil,nil,"Nebulis")--"银河星云"
SetJiaoYiGoods(nil,nil,nil,nil,"Doryani's Catalyst")--"多里亚尼的幻化之杖"
SetJiaoYiGoods(nil,nil,nil,nil,"Arakaali's Fang")--"艾尔卡莉之牙"
--SetJiaoYiGoods(nil,nil,nil,nil,"Vulconus")--"祝融锻冶"
SetJiaoYiGoods(nil,nil,nil,nil,"The Crimson Storm")--"绯红风暴"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Nurture")--"索伏的爱抚"
SetJiaoYiGoods(nil,nil,nil,nil,"Hopeshredder")--"破灭之希"
--SetJiaoYiGoods(nil,nil,nil,nil,"Slivertongue")--"裂舌"
--SetJiaoYiGoods(nil,nil,nil,nil,"Martyr of Innocence")--"烈士之淨"
SetJiaoYiGoods(nil,nil,nil,nil,"Starforge")--"核星"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidforge")--"核虚"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Disfavour")--"阿兹里的刑刃"
SetJiaoYiGoods(nil,nil,nil,nil,"Kingmaker")--"王者之刃"
SetJiaoYiGoods(nil,nil,nil,nil,"Pledge of Hands")--"誓约"
SetJiaoYiGoods(nil,nil,nil,nil,"Rigwald's Quills")--"瑞佛之羽"
SetJiaoYiGoods(nil,nil,nil,nil,"The Fracturing Spinner")--"裂断蛛丝"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidfletcher")--"虚眼箭矢"
--SetJiaoYiGoods(nil,nil,nil,nil,"Maloney's Mechanism")--"马洛尼的机关"
--SetJiaoYiGoods(nil,nil,nil,nil,"Whakatutuki o Matua")--"养育之恩"
--SetJiaoYiGoods(nil,nil,nil,nil,"Light of Lunaris")--"月影之耀"
SetJiaoYiGoods(nil,nil,nil,nil,"Apep's Supremacy")--"艾普霸权"
SetJiaoYiGoods(nil,nil,nil,nil,"Unyielding Flame")--"不屈恶火"
SetJiaoYiGoods(nil,nil,nil,nil,"Kalandra's Touch")--"卡蘭德之觸"

SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Acuity")--"阿兹里的捷思"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Pincers")--"奎尔珊坚钳"
--SetJiaoYiGoods(nil,nil,nil,nil,"Maligaro's Virtuosity")--"马雷葛萝的血染手套"
SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Gentle Touch")--"安赛娜丝的安抚之语"
--SetJiaoYiGoods(nil,nil,nil,nil,"Grip of the Council")--"议会之握"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Pounce")--"费尔罗锋爪"
SetJiaoYiGoods(nil,nil,nil,nil,"Breathstealer")--"偷息"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Nest")--"斯卡沃之巢"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Winds")--"斯卡沃之翼"
SetJiaoYiGoods(nil,nil,nil,nil,"Command of the Pit")--"闇核号令"
--SetJiaoYiGoods(nil,nil,nil,nil,"Null and Void")--"虚空"
SetJiaoYiGoods(nil,nil,nil,nil,"Offering to the Serpent")--"蛇皮献祭"
SetJiaoYiGoods(nil,nil,nil,nil,"Shaper's Touch")--"塑者之触"
SetJiaoYiGoods(nil,nil,nil,nil,"Hands of the High Templar")--"圣宗神手"
SetJiaoYiGoods(nil,nil,nil,nil,"Ashes of the Stars")--"星尘"
SetJiaoYiGoods(nil,nil,nil,nil,"Stranglegasp")--"扼杀之息"
SetJiaoYiGoods(nil,nil,nil,nil,"Uul-Netol's Vow")--"乌尔尼多之誓"
SetJiaoYiGoods(nil,nil,nil,nil,"The Squire",nil,1)--"大地主"
SetJiaoYiGoods(nil,nil,nil,nil,"Mageblood",nil,1)--"魔血"

SetJiaoYiGoods(nil,nil,nil,nil,"Slavedriver's Hand")--"奴役之手"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Weave")--"菲恩丝夜织"
SetJiaoYiGoods(nil,nil,nil,nil,"Storm's Gift")--"风暴之赠"
--SetJiaoYiGoods(nil,nil,nil,nil,"Machina Mitts")--"诡计魔手"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Tracks")--"奎尔珊之迹"
SetJiaoYiGoods(nil,nil,nil,nil,"The Red Trail")--"赤红踪迹"
SetJiaoYiGoods(nil,nil,nil,nil,"Seven-League Step")--"盟誓之迹"
--SetJiaoYiGoods(nil,nil,nil,nil,"Garukhan's Flight")--"卡洛翰之影"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Chase")--"费尔罗猎靴"
--SetJiaoYiGoods(nil,nil,nil,nil,"Inya's Epiphany")--"茵雅的顿悟"
SetJiaoYiGoods(nil,nil,nil,nil,"Skyforth")--"空向"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Talons")--"斯卡沃鹰爪"
SetJiaoYiGoods(nil,nil,nil,nil,"Omeyocan")--"欧门悠根"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Spinnerets")--"菲恩丝刺靴"
SetJiaoYiGoods(nil,nil,nil,nil,"The Stampede")--"溃逃之靴"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidwalker")--"虚空行者"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Carapace")--"奎尔珊硬甲"
SetJiaoYiGoods(nil,nil,nil,nil,"The Brass Dome")--"坚铜战罩"
--SetJiaoYiGoods(nil,nil,nil,nil,"Kaom's Heart")--"冈姆的壮志"
--SetJiaoYiGoods(nil,nil,nil,nil,"Yriel's Fostering")--"伊瑞的栽培"
SetJiaoYiGoods(nil,nil,nil,nil,"Hyrri's Ire")--"西里的战衣"
SetJiaoYiGoods(nil,nil,nil,nil,"The Perfect Form")--"完美姿态"

SetJiaoYiGoods(nil,nil,nil,nil,"Skin of the Lords")--"君主之肤"
SetJiaoYiGoods(nil,nil,nil,nil,"Cloak of Tawm'r Isley")--"陶米儿艾斯理之袍"
SetJiaoYiGoods(nil,nil,nil,nil,"Garb of the Ephemeral")--"无常礼袍"
--SetJiaoYiGoods(nil,nil,nil,nil,"Shavronne's Wrappings")--"薛朗的护身长袍"
SetJiaoYiGoods(nil,nil,nil,nil,"Fenumus' Shroud")--"菲恩丝魇甲"
SetJiaoYiGoods(nil,nil,nil,nil,"The Queen's Hunger")--"女王的渴望"
--SetJiaoYiGoods(nil,nil,nil,nil,"Gruthkul's Pelt")--"葛鲁斯寇真皮"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Fur")--"费尔罗羽衣"
SetJiaoYiGoods(nil,nil,nil,nil,"Crystal Vault")--"水晶宝库"
SetJiaoYiGoods(nil,nil,nil,nil,"Sporeguard")--"毒孢守卫"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Ivory Tower")--"象牙塔"
--SetJiaoYiGoods(nil,nil,nil,nil,"Cloak of Defiance")--"卫道之袍"
SetJiaoYiGoods(nil,nil,nil,nil,"The Eternity Shroud")--"永恆尸布"
--SetJiaoYiGoods(nil,nil,nil,nil,"Inpulsa's Broken Heart")--"印卜萨的心碎"
SetJiaoYiGoods(nil,nil,nil,nil,"Shroud of the Lightless")--"晦暗的尸布"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Splendour")--"祭禮束衣"
SetJiaoYiGoods(nil,nil,nil,nil,"Shadowstitch")--"缝影"
SetJiaoYiGoods(nil,nil,nil,nil,"Saqawal's Flock")--"斯卡沃之徒"
SetJiaoYiGoods(nil,nil,nil,nil,"Cowl of the Cryophile")--"酷寒斗篷"
--SetJiaoYiGoods(nil,nil,nil,nil,"Obscurantis")--"朦胧诡面"
SetJiaoYiGoods(nil,nil,nil,nil,"The Devouring Diadem")--"吞噬之冠"
SetJiaoYiGoods(nil,nil,nil,nil,"Cowl of the Ceraunophile")--"狂雷斗篷"
SetJiaoYiGoods(nil,nil,nil,nil,"Hale Negator")--"强弹辩驳"
SetJiaoYiGoods(nil,nil,nil,nil,"Indigon")--"地印之环"
SetJiaoYiGoods(nil,nil,nil,nil,"Craiceann's Chitin")--"奎尔珊畸面"
SetJiaoYiGoods(nil,nil,nil,nil,"Mask of the Stitched Demon")--"恶缝之面"
SetJiaoYiGoods(nil,nil,nil,nil,"Crown of the Tyrant")--"堂皇冠冕"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Brine Crown")--"海王冠冕"
SetJiaoYiGoods(nil,nil,nil,nil,"Crown of the Inward Eye")--"暗眼之冠"
SetJiaoYiGoods(nil,nil,nil,nil,"Memory Vault")--"回忆宝库"
SetJiaoYiGoods(nil,nil,nil,nil,"Farrul's Bite")--"费尔罗咥喙"
SetJiaoYiGoods(nil,nil,nil,nil,"The Vertex")--"谜容"
--SetJiaoYiGoods(nil,nil,nil,nil,"Soulwrest")--"铸影"

--SetJiaoYiGoods(nil,nil,nil,nil,"The Primordial Chain")--"先祖羁绊"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Heart")--"索伏之心"
SetJiaoYiGoods(nil,nil,nil,nil,"Xoph's Blood")--"索伏之血"
SetJiaoYiGoods(nil,nil,nil,nil,"The Halcyon")--"太平"
SetJiaoYiGoods(nil,nil,nil,nil,"The Pandemonius")--"群魔殿"
--SetJiaoYiGoods(nil,nil,nil,nil,"Fury Valve")--"愤怒闭锁"
SetJiaoYiGoods(nil,nil,nil,nil,"Presence of Chayula")--"夏乌拉之印"
SetJiaoYiGoods(nil,nil,nil,nil,"Yoke of Suffering")--"磨难之轭"
SetJiaoYiGoods(nil,nil,nil,nil,"Impresence")--"不在场证明"
SetJiaoYiGoods(nil,nil,nil,nil,"Solstice Vigil")--"守夜之至"
SetJiaoYiGoods(nil,nil,nil,nil,"Badge of the Brotherhood")--"激情之章"
--SetJiaoYiGoods(nil,nil,nil,nil,"Voll's Devotion")--"福尔的忠诚之符"
--SetJiaoYiGoods(nil,nil,nil,nil,"Eye of Innocence")--"无罪之眼"
SetJiaoYiGoods(nil,nil,nil,nil,"Eyes of the Greatwolf")--"巨狼之眼"

SetJiaoYiGoods(nil,nil,nil,nil,"Calamitous Visions")--"悲惨幻视"
SetJiaoYiGoods(nil,nil,nil,nil,"Voidheart")--"虚空心灵"
--SetJiaoYiGoods(nil,nil,nil,nil,"Icefang Orbit")--"冰风轨迹"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Guilt")--"愧疚之环"
--SetJiaoYiGoods(nil,nil,nil,nil,"Winterweave")--"冬织"
--SetJiaoYiGoods(nil,nil,nil,nil,"Asenath's Mark")--"安賽娜絲的迅敏之冠"
SetJiaoYiGoods(nil,nil,nil,nil,"Call of the Void")--"虛空呼喚"
--SetJiaoYiGoods(nil,nil,nil,nil,"Crown of Eyes")--"邪眼之冠"
--SetJiaoYiGoods(nil,nil,nil,nil,"Valako's Sign")--"瓦拉库之印"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Regret")--"遗憾之环"
SetJiaoYiGoods(nil,nil,nil,nil,"Astral Projector")--"星空之影"
SetJiaoYiGoods(nil,nil,nil,nil,"Snakepit")--"蛇巢"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Fear")--"恐惧之环"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Anguish")--"煎熬之环"
--SetJiaoYiGoods(nil,nil,nil,nil,"Warrior's Legacy")--"战士遗物"
SetJiaoYiGoods(nil,nil,nil,nil,"The Taming")--"元素之章"
--SetJiaoYiGoods(nil,nil,nil,nil,"Shavronne's Revelation")--"薛朗的启示之环"
SetJiaoYiGoods(nil,nil,nil,nil,"Circle of Nostalgia")--"怀旧之环"
--SetJiaoYiGoods(nil,nil,nil,nil,"Berek's Respite")--"贝雷克的火与雷之乐"
--SetJiaoYiGoods(nil,nil,nil,nil,"Call of the Brotherhood")--"意志呼唤"
SetJiaoYiGoods(nil,nil,nil,nil,"Angler's Plait")--"渔夫之辫"
SetJiaoYiGoods(nil,nil,nil,nil,"Vivinsect")--"寄生恶魔"
SetJiaoYiGoods(nil,nil,nil,nil,"Mark of the Elder")--"尊师之印"
SetJiaoYiGoods(nil,nil,nil,nil,"Mark of the Shaper")--"塑者之印"
SetJiaoYiGoods(nil,nil,nil,nil,"Bear's Girdle")--"熊之束"
--SetJiaoYiGoods(nil,nil,nil,nil,"Widowhail")--"鳏寡之托"

SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Chains")--"懦夫的锁链"
SetJiaoYiGoods(nil,nil,nil,nil,"Coward's Legacy")--"懦夫的遗产"
SetJiaoYiGoods(nil,nil,nil,nil,"Headhunter",nil,1)--"猎首"
SetJiaoYiGoods(nil,nil,nil,nil,"Cyclopean Coil")--"巨岩之环"
SetJiaoYiGoods(nil,nil,nil,nil,"Hyperboreus")--"极地束腹"
--SetJiaoYiGoods(nil,nil,nil,nil,"Mother's Embrace")--"母亲的拥抱"
SetJiaoYiGoods(nil,nil,nil,nil,"The Flow Untethered")--"潺流不息"
SetJiaoYiGoods(nil,nil,nil,nil,"Ryslatha's Coil")--"瑞斯拉萨之缠"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Magnate")--"堅毅之環"
SetJiaoYiGoods(nil,nil,nil,nil,"The Nomad")--"游牧"
SetJiaoYiGoods(nil,nil,nil,nil,"The Tactician")--"智勇軍師"
SetJiaoYiGoods(nil,nil,nil,nil,"Marohi Erqi",nil,1)--"爾奇的巨靈之錘"
--SetJiaoYiGoods(nil,nil,nil,nil,"Tremor Rod")--"颤抖之杖"
SetJiaoYiGoods(nil,nil,nil,nil,"Sudden Dawn")--"黎明骤起"
SetJiaoYiGoods(nil,nil,nil,nil,"The Annihilating Light")--"毁灭白光"
SetJiaoYiGoods(nil,nil,nil,nil,"The Gluttonous Tide")--"饕餮浪潮"
SetJiaoYiGoods(nil,nil,nil,nil,"Forbidden Flesh")--"禁忌血肉"
SetJiaoYiGoods(nil,nil,nil,nil,"Inextricable Fate")--"无法挣脱之命"
SetJiaoYiGoods(nil,nil,nil,nil,"Melding of the Flesh")--"血肉融合"
SetJiaoYiGoods(nil,nil,nil,nil,"Polaric Devastation")--"极地毁灭"
SetJiaoYiGoods(nil,nil,nil,nil,"Crystallised Omniscience")--"晶化全知"
SetJiaoYiGoods(nil,nil,nil,nil,"Dawnbreaker")--"破晓"
SetJiaoYiGoods(nil,nil,nil,nil,"Dissolution of the Flesh")--"血肉溶解"
SetJiaoYiGoods(nil,nil,nil,nil,"Ceaseless Feast")--"无尽盛宴"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Supreme Truth")--"無上箴言"
--SetJiaoYiGoods(nil,nil,nil,nil,"Esh's Mirror")--"艾許之鏡"
--SetJiaoYiGoods(nil,nil,nil,nil,"Hrimsorrow")--"冰冷之眼"
--SetJiaoYiGoods(nil,nil,nil,nil,"Elevore")--"愛勒弗"
SetJiaoYiGoods(nil,nil,nil,nil,"Yoke of Suffering")--"磨難之軛"
--SetJiaoYiGoods(nil,nil,nil,nil,"Hyrri's Truth")--"西里的真理"

SetJiaoYiGoods(nil,nil,nil,nil,"Immutable Force")--"不變之力"
--SetJiaoYiGoods(nil,nil,nil,nil,"Inertia")--"慣性"
--SetJiaoYiGoods(nil,nil,nil,nil,"The Golden Rule")--"黃金守則"
SetJiaoYiGoods(nil,nil,nil,nil,"Seething Fury")--"沸騰之怒"
SetJiaoYiGoods(nil,nil,nil,nil,"Quickening Covenant")--"复甦誓约"
SetJiaoYiGoods(nil,nil,nil,nil,"The Interrogation")--"审问"
SetJiaoYiGoods(nil,nil,nil,nil,"Dead Reckoning")--"死亡清算"
SetJiaoYiGoods(nil,nil,nil,nil,"One With Nothing")--"一无所有"
SetJiaoYiGoods(nil,nil,nil,nil,"Kitava's Teachings")--"奇塔弗的教学"
SetJiaoYiGoods(nil,nil,nil,nil,"Inspired Learning")--"求知的热情"
SetJiaoYiGoods(nil,nil,nil,nil,"Voices")--"嗓音"
SetJiaoYiGoods(nil,nil,nil,nil,"Megalomaniac")--"妄想症"
--SetJiaoYiGoods(nil,nil,nil,nil,"Efficient Training")--"充分训练"
--SetJiaoYiGoods(nil,nil,nil,nil,"Fragility")--"虚弱"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Might")--"帝王的霸权"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Mastery")--"帝王的纯熟"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Cunning")--"帝王的诡计"
SetJiaoYiGoods(nil,nil,nil,nil,"Emperor's Wit")--"帝王的智慧"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Might")--"先祖力量"
SetJiaoYiGoods(nil,nil,nil,nil,"The Red Dream")--"赤影梦境"
SetJiaoYiGoods(nil,nil,nil,nil,"Might of the Meek")--"儒子可教"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Flesh")--"超凡之体"
SetJiaoYiGoods(nil,nil,nil,nil,"Thread of Hope")--"希望之絃"
SetJiaoYiGoods(nil,nil,nil,nil,"Intuitive Leap")--"直觉之跃"
SetJiaoYiGoods(nil,nil,nil,nil,"Lioneye's Fall",nil,1)--"狮眼的陨落"
SetJiaoYiGoods(nil,nil,nil,nil,"The Green Dream")--"青影梦境"
SetJiaoYiGoods(nil,nil,nil,nil,"The Green Nightmare")--"青影梦魇"
SetJiaoYiGoods(nil,nil,nil,nil,"Transcendent Spirit")--"超凡之灵"
SetJiaoYiGoods(nil,nil,nil,nil,"Unnatural Instinct",nil,1)--"神感"
SetJiaoYiGoods(nil,nil,nil,nil,"Clear Mind")--"理智"
SetJiaoYiGoods(nil,nil,nil,nil,"Energy From Within")--"潜能防护"
SetJiaoYiGoods(nil,nil,nil,nil,"Bloodnotch")--"缺血症"
SetJiaoYiGoods(nil,nil,nil,nil,"Dissolution of the Flesh")--"血肉溶解"
SetJiaoYiGoods(nil,nil,nil,nil,"That Which Was Taken")--"霸佔"
SetJiaoYiGoods(nil,nil,nil,nil,"The Adorned")--"假掰"
SetJiaoYiGoods(nil,nil,nil,nil,"Ancestral Vision")--"先祖预视"

SetJiaoYiGoods(nil,nil,nil,nil,"Grand Spectrum")--"巨光谱" 
SetJiaoYiGoods(nil,nil,nil,nil,"Unending Hunger")--"无尽渴望"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Harmony")--"先祖和谐"
SetJiaoYiGoods(nil,nil,nil,nil,"Primordial Eminence")--"先祖和谐"
SetJiaoYiGoods(nil,nil,nil,nil,"Fortress Covenant")--"坚壁誓约"
SetJiaoYiGoods(nil,nil,nil,nil,"The Blue Dream")--"碧影梦境"
SetJiaoYiGoods(nil,nil,nil,nil,"The Blue Nightmare")--"碧影梦魇"
SetJiaoYiGoods(nil,nil,nil,nil,"The Anima Stone")--"聚魂石"
SetJiaoYiGoods(nil,nil,nil,nil,"Watcher's Eye")--"看守之眼"
--SetJiaoYiGoods(nil,nil,nil,nil,"Conqueror's Potency")--"征服者的力量 "
SetJiaoYiGoods(nil,nil,nil,nil,"Glorious Vanity")--"辉煌的虚荣"
SetJiaoYiGoods(nil,nil,nil,nil,"Lethal Pride")--"致命的骄傲"
SetJiaoYiGoods(nil,nil,nil,nil,"Brutal Restraint")--"残酷的纪律"
SetJiaoYiGoods(nil,nil,nil,nil,"Militant Faith")--"激进的信仰"
SetJiaoYiGoods(nil,nil,nil,nil,"Elegant Hubris")--"优雅的高傲"
SetJiaoYiGoods(nil,nil,nil,nil,"Arn's Anguish")--"昂恩的烦恼"
SetJiaoYiGoods(nil,nil,nil,nil,"Ulaman's Gaze")--"乌拉曼的邪眼"
SetJiaoYiGoods(nil,nil,nil,nil,"Rain of Splinters")--"碎镞雨"
SetJiaoYiGoods(nil,nil,nil,nil,"Kurgal's Gaze")--"柯戈的邪眼"
--SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Foible")--"阿兹里圣徽"
SetJiaoYiGoods(nil,nil,nil,nil,"Healthy Mind")--"灵体转换"
SetJiaoYiGoods(nil,nil,nil,nil,"The Front Line")--"前列的线"
SetJiaoYiGoods(nil,nil,nil,nil,"Sublime Vision")--"崇高愿景"
SetJiaoYiGoods(nil,nil,nil,nil,"Amanamu's Gaze")--"阿姆那姆的邪眼"
SetJiaoYiGoods(nil,nil,nil,nil,"Crest of Desire")--"慾望之冠"
--SetJiaoYiGoods(nil,nil,nil,nil,"Scold's Bridle")--"禁语"
SetJiaoYiGoods(nil,nil,nil,nil,"Doryani's Prototype")--"多里亚尼之型"
SetJiaoYiGoods(nil,nil,nil,nil,"The Brass Dome")--"坚铜战罩"
SetJiaoYiGoods(nil,nil,nil,nil,"To Dust")--"塵埃落定"
--SetJiaoYiGoods(nil,nil,nil,nil,"Corpsewalker")--"行屍走肉"
--SetJiaoYiGoods(nil,nil,nil,nil,"Crown of Eyes")--"邪眼之冠"
SetJiaoYiGoods(nil,nil,nil,nil,"Redblade Banner")--"紅刃旗幟"
--SetJiaoYiGoods(nil,nil,nil,nil,"Cloak of Tawm'r Isley")--"陶米兒艾斯理之袍"
SetJiaoYiGoods(nil,nil,nil,nil,"The Red Trail")--"赤紅蹤跡"
SetJiaoYiGoods(nil,nil,nil,nil,"Replica Hyrri's Ire")--"赝品．西里的战衣"
SetJiaoYiGoods(nil,nil,nil,nil,"Replica Heatshiver")--"赝品．寒焰"
SetJiaoYiGoods(nil,nil,nil,nil,"Replica Covenant")--"赝品．血誓"
SetJiaoYiGoods(nil,nil,nil,nil,"Replica Badge of the Brotherhood")--"赝品．激情之章"
SetJiaoYiGoods(nil,nil,nil,nil,"Pragmatism")--"实用主义"
--SetJiaoYiGoods(nil,nil,nil,nil,"Wraithlord")--"愤灵郡主"

--值钱的药剂
SetJiaoYiGoods(nil,nil,nil,nil,"Dying Sun")--"灭日"
SetJiaoYiGoods(nil,nil,nil,nil,"Taste of Hate")--"恨意"
SetJiaoYiGoods(nil,nil,nil,nil,"Vessel of Vinktar")--"维克塔血器"
--SetJiaoYiGoods(nil,nil,nil,nil,"Sin's Rebirth")--"再生的罪恶"
SetJiaoYiGoods(nil,nil,nil,nil,"Bottled Faith")--"瓶中信仰"
SetJiaoYiGoods(nil,nil,nil,nil,"Soul Ripper")--"碎魂者"
SetJiaoYiGoods(nil,nil,nil,nil,"Olroth's Resolve")--"奥尔罗斯的决心"
SetJiaoYiGoods(nil,nil,nil,nil,"Starlight Chalice")--"星光圣杯"

--SetJiaoYiGoods(nil,nil,nil,nil,"Soul Tether")--"灵魂束缚"
SetJiaoYiGoods(nil,nil,nil,nil,"The Anticipation")--"悬念"
SetJiaoYiGoods(nil,nil,nil,nil,"The Surrender")--"降伏"
SetJiaoYiGoods(nil,nil,nil,nil,"Panquetzaliztli")--"吨击之锤"
SetJiaoYiGoods(nil,nil,nil,nil,"The Dancing Duo")--"双人舞"
SetJiaoYiGoods(nil,nil,nil,nil,"Atziri's Rule")--"阿兹里的统御"
SetJiaoYiGoods(nil,nil,nil,nil,"The Enmity Divine")--"恶言圣语"
SetJiaoYiGoods(nil,nil,nil,nil,"Witchhunter's Judgment")--"猎巫者的审判"
SetJiaoYiGoods(nil,nil,nil,nil,"Choir of the Storm")--"暴风之语"
SetJiaoYiGoods(nil,nil,nil,nil,"Expedition's End")--"远征之尽"
SetJiaoYiGoods(nil,nil,nil,nil,"Crest of Desire")--"慾望之冠"
--SetJiaoYiGoods(nil,nil,nil,nil,"Ascent From Flesh")--"血躯昇华"
SetJiaoYiGoods(nil,nil,nil,nil,"Hateforge")--"怨恨锻造"
SetJiaoYiGoods(nil,nil,nil,nil,"Pure Talent")--"纯才"
SetJiaoYiGoods(nil,nil,nil,nil,"Stormshroud")--"風暴籠罩"
--SetJiaoYiGoods(nil,nil,nil,nil,"Alpha's Howl")--"极地之嗥"

--SetJiaoYiGoods(nil,"剥离石碎片","Metadata/Items/Currency/CurrencyRemoveModShard",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"高阶点金石碎片","Metadata/Items/Currency/CurrencyUpgradeToRareAndSetSocketsShard",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"平行石碎片","Metadata/Items/Currency/CurrencyRerollMapTypeShard",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"制箱岩碎片","Metadata/Items/Currency/CurrencyStrongboxQualityShard",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"混沌石碎片","Metadata/Items/Currency/CurrencyRerollRareShard",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"崇高石碎片","Metadata/Items/Currency/CurrencyAddModToRareShard",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"富豪石碎片","Metadata/Items/Currency/CurrencyUpgradeMagicToRareShard",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"统御魔瓶","Metadata/Items/Currency/CurrencyIncursionVialTrap",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"召唤魔瓶","Metadata/Items/Currency/CurrencyIncursionVialHealing",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"觉醒魔瓶","Metadata/Items/Currency/CurrencyIncursionVialPoison",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"仪祭魔瓶","Metadata/Items/Currency/CurrencyIncursionVialLightning",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"命运魔瓶","Metadata/Items/Currency/CurrencyIncursionVialFire",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"结论魔瓶","Metadata/Items/Currency/CurrencyIncursionVialMinion",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"鬼魂魔瓶","Metadata/Items/Currency/CurrencyIncursionVialBossFlask",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"超越魔瓶","Metadata/Items/Currency/CurrencyIncursionVialBossJewel",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"献祭魔瓶","Metadata/Items/Currency/CurrencyIncursionVialBossAmulet",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"炽炎化石","Metadata/Items/Currency/CurrencyDelveCraftingFire",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"冰冽化石","Metadata/Items/Currency/CurrencyDelveCraftingCold",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"金属化石","Metadata/Items/Currency/CurrencyDelveCraftingLightning",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"锯齿化石","Metadata/Items/Currency/CurrencyDelveCraftingPhysical",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"畸变化石","Metadata/Items/Currency/CurrencyDelveCraftingChaos",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"原始化石","Metadata/Items/Currency/CurrencyDelveCraftingLife",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"腐蚀化石","Metadata/Items/Currency/CurrencyDelveCraftingBleedPoison",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"稠密化石","Metadata/Items/Currency/CurrencyDelveCraftingDefences",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"五彩化石","Metadata/Items/Currency/CurrencyDelveCraftingElemental",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"以太化石","Metadata/Items/Currency/CurrencyDelveCraftingCasterMods",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"狼牙化石","Metadata/Items/Currency/CurrencyDelveCraftingAttackMods",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"透光化石","Metadata/Items/Currency/CurrencyDelveCraftingMana",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"震颤化石","Metadata/Items/Currency/CurrencyDelveCraftingSpeed",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"绑缚化石","Metadata/Items/Currency/CurrencyDelveCraftingMinionsAuras",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"完美化石","Metadata/Items/Currency/CurrencyDelveCraftingQuality",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"魔法化石","Metadata/Items/Currency/CurrencyDelveCraftingEnchant",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"结壳化石","Metadata/Items/Currency/CurrencyDelveCraftingSockets",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"棱面化石","Metadata/Items/Currency/CurrencyDelveCraftingGemLevel",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"溅血化石","Metadata/Items/Currency/CurrencyDelveCraftingVaal",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"镂空化石","Metadata/Items/Currency/CurrencyDelveCraftingAbyss",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"分裂化石","Metadata/Items/Currency/CurrencyDelveCraftingMirror",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"雕刻化石","Metadata/Items/Currency/CurrencyDelveCraftingCorruptEssence",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"纠缠化石","Metadata/Items/Currency/CurrencyDelveCraftingRandom",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"圣洁化石","Metadata/Items/Currency/CurrencyDelveCraftingLuckyModRolls",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"镶金化石","Metadata/Items/Currency/CurrencyDelveCraftingSellPrice",nil,nil,nil,nil)

--SetJiaoYiGoods(nil,"清澈圣油","Metadata/Items/Currency/Mushrune1",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"墨色圣油","Metadata/Items/Currency/Mushrune2",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"琥珀圣油","Metadata/Items/Currency/Mushrune3",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"翠绿圣油","Metadata/Items/Currency/Mushrune4",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"水蓝圣油","Metadata/Items/Currency/Mushrune5",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"天蓝圣油","Metadata/Items/Currency/Mushrune6",nil,nil,nil,nil)
--SetJiaoYiGoods(nil,"紫色圣油","Metadata/Items/Currency/Mushrune7",nil,nil,nil,nil)
SetJiaoYiGoods(nil,"污秽圣油","Metadata/Items/Currency/MushruneCorrupt")
SetJiaoYiGoods(nil,"绯红圣油","Metadata/Items/Currency/Mushrune8")
SetJiaoYiGoods(nil,"漆黑圣油","Metadata/Items/Currency/Mushrune9")
SetJiaoYiGoods(nil,"乳白圣油","Metadata/Items/Currency/Mushrune10")
SetJiaoYiGoods(nil,"白银圣油","Metadata/Items/Currency/Mushrune11")
SetJiaoYiGoods(nil,"金色圣油","Metadata/Items/Currency/Mushrune12")
SetJiaoYiGoods(nil,"圣油萃取器","Metadata/Items/Currency/CurrencyExtractOil") --吸油器
SetJiaoYiGoods(nil,"终极混沌铸新仪","Metadata/Items/Delve/DelveSocketableCurrencyReroll4")

--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach1")--圣甲虫：鏽蚀裂痕
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach2")--圣甲虫：圆滑裂痕
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach3")--圣甲虫：镀金裂痕
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBreach4")--圣甲虫：展翅裂痕
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps1")--圣甲虫：鏽蚀制图
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps2")--圣甲虫：圆滑制图
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps3")--圣甲虫：镀金制图
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMaps4")--圣甲虫：展翅制图
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques1")--圣甲虫：鏽蚀圣物
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques2")--圣甲虫：圆滑圣物
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques3")--圣甲虫：镀金圣物
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabUniques4")--圣甲虫：展翅圣物
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts1")--圣甲虫：鏽蚀兽猎
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts2")--圣甲虫：圆滑兽猎
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts3")--圣甲虫：镀金兽猎
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBeasts4")--圣甲虫：展翅兽猎
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares1")--圣甲虫：鏽蚀塑者
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares2")--圣甲虫：圆滑塑者
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares3")--圣甲虫：镀金塑者
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabShaperRares4")--圣甲虫：展翅塑者
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares1")--圣甲虫：鏽蚀尊师
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares2")--圣甲虫：圆滑尊师
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares3")--圣甲虫：镀金尊师
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabElderRares4")--圣甲虫：展翅尊师
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite1")--圣甲虫：鏽蚀硫酸
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite2")--圣甲虫：圆滑硫酸
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite3")--圣甲虫：镀金硫酸
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabSulphite4")--圣甲虫：展翅硫酸
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards1")--圣甲虫：鏽蚀命运
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards2")--圣甲虫：圆滑命运
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards3")--圣甲虫：镀金命运
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabDivinationCards4")--圣甲虫：展翅命运
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment1")--圣甲虫：鏽蚀苦痛
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment2")--圣甲虫：圆滑苦痛
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment3")--圣甲虫：镀金苦痛
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabTorment4")--圣甲虫：展翅金苦痛
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox1")--圣甲虫：鏽蚀伏击
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox2")--圣甲虫：圆滑伏击
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox3")--圣甲虫：镀金伏击
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabStrongbox4")--圣甲虫：展翅伏击
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger1")--圣甲虫：鏽蚀神谕
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger2")--圣甲虫：圆滑神谕
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger3")--圣甲虫：镀金神谕
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabHarbinger4")--圣甲虫：展翅神谕
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus1")--圣甲虫：鏽蚀普兰德斯
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus2")--圣甲虫：圆滑普兰德斯
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus3")--圣甲虫：镀金普兰德斯
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus4")--圣甲虫：展翅普兰德斯
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion1")--圣甲虫：鏽蚀战乱
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion2")--圣甲虫：圆滑战乱
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion3")--圣甲虫：镀金战乱
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabLegion4")--圣甲虫：展翅战乱
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph1")--圣甲虫：鏽蚀鍊魔
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph2")--圣甲虫：圆滑鍊魔
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph3")--圣甲虫：镀金鍊魔
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabMetamorph4")--圣甲虫：展翅鍊魔
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus1")--圣甲虫：鏽蚀神谕
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus2")--圣甲虫：圆滑神谕
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus3")--圣甲虫：镀金神谕
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus4")--圣甲虫：展翅神谕
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus1")--圣甲虫：鏽蚀探险
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus2")--圣甲虫：圆滑探险
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus3")--圣甲虫：镀金探险
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabPerandus4")--圣甲虫：展翅探险
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss1")--圣甲虫：鏽蚀深渊
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss2")--圣甲虫：圆滑深渊
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss3")--圣甲虫：镀金深渊
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabAbyss4")--圣甲虫：展翅深渊
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight1")--圣甲虫：鏽蚀深渊
--SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight2")--圣甲虫：鏽蚀深渊
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight3")--圣甲虫：鏽蚀深渊
SetJiaoYiGoods(nil,nil,"Metadata/Items/Scarabs/ScarabBlight4")--圣甲虫：鏽蚀深渊


SetJiaoYiGoods(nil,"天选之人","Metadata/Items/DivinationCards/DivinationCardTheChosen",nil,nil,nil,nil)--命运
SetJiaoYiGoods(nil,"瓦尔宝藏","Metadata/Items/DivinationCards/DivinationCardTreasuresOfTheVaal",nil,nil,nil,nil)--命运
SetJiaoYiGoods(nil,"永恒之击","Metadata/Items/DivinationCards/DivinationCardEternalBonds",nil,nil,nil,nil)--命运
SetJiaoYiGoods(nil,"守护者的挑战","Metadata/Items/DivinationCards/DivinationCardGuardiansChallenge",nil,nil,nil,nil)--命运
SetJiaoYiGoods(nil,"伯仲财库","Metadata/Items/DivinationCards/DivinationCardBrothersStash",nil,nil,nil,nil)--命运
SetJiaoYiGoods(nil,"疯医","Metadata/Items/DivinationCards/DivinationCardTheDoctor",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"明镜","Metadata/Items/DivinationCards/DivinationCardHouseOfMirrors",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"恶魔","Metadata/Items/DivinationCards/DivinationCardTheDemon",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"晦暗不明","Metadata/Items/DivinationCards/DivinationCardDarkerHalf",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"冒险犯难","Metadata/Items/DivinationCards/DivinationCardChasingRisk",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"空灵","Metadata/Items/DivinationCards/DivinationCardTheEthereal",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"昂贵古玩","Metadata/Items/DivinationCards/DivinationCardCostlyCurio",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"偏见","Metadata/Items/DivinationCards/DivinationCardPrejudice",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"穆什的祝福","Metadata/Items/DivinationCards/DivinationCardTheBlessingOfMoosh",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"天堂执法官","Metadata/Items/DivinationCards/DivinationCardTheCelestialJusticar",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"轻鬆漫步","Metadata/Items/DivinationCards/DivinationCardTheEasyStroll",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"逃脱","Metadata/Items/DivinationCards/DivinationCardTheOneThatGotAway",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑暗王子","Metadata/Items/DivinationCards/DivinationCardThePrinceOfDarkness",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"牺牲","Metadata/Items/DivinationCards/DivinationCardTheSacrifice",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"大军阀","Metadata/Items/DivinationCards/DivinationCardTheWarlord",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"守护的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfProtection",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"非黑即白","Metadata/Items/DivinationCards/DivinationCardMonochrome",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"娇纵皇子","Metadata/Items/DivinationCards/DivinationCardTheSpoiledPrince",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"黑暗物质","Metadata/Items/DivinationCards/DivinationCardSomethingDark",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"绝境诱惑","Metadata/Items/DivinationCards/DivinationCardLetheanTemptation",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"将军","Metadata/Items/DivinationCards/DivinationCardCheckmate",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"宝石匠的怜悯","Metadata/Items/DivinationCards/DivinationCardGemcuttersMercy",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"星际保护","Metadata/Items/DivinationCards/DivinationCardAstralProtection",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"奉献的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfDevotion",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"庞然大物","Metadata/Items/DivinationCards/DivinationCardTheLeviathan",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"碧蓝之怒","Metadata/Items/DivinationCards/DivinationCardAzureRage",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"牧羊人的草鞋","Metadata/Items/DivinationCards/DivinationCardTheShepherdsSandals",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"执行者","Metadata/Items/DivinationCards/DivinationCardTheEnforcer",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"持盾者","Metadata/Items/DivinationCards/DivinationCardTheShieldbearer",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"巨著","Metadata/Items/DivinationCards/DivinationCardMagnumOpus",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"不完美的回忆","Metadata/Items/DivinationCards/DivinationCardImperfectMemories",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"绝境诱惑","Metadata/Items/DivinationCards/DivinationCardLetheanTemptation",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"恐惧之密","Metadata/Items/DivinationCards/DivinationCardTerribleSecretOfSpace",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"不守信","Metadata/Items/DivinationCards/DivinationCardBrokenPromises",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"黑暗物质","Metadata/Items/DivinationCards/DivinationCardSomethingDark",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"吉祥之志","Metadata/Items/DivinationCards/DivinationCardAuspiciousAmbitions",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"宁静","Metadata/Items/DivinationCards/DivinationCardTranquillity",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"疯猫","Metadata/Items/DivinationCards/DivinationCardTheInsaneCat",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"神圣之美","Metadata/Items/DivinationCards/DivinationCardDivineBeauty",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"结婚礼物","Metadata/Items/DivinationCards/DivinationCardTheWeddingGift",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"召唤师","Metadata/Items/DivinationCards/DivinationCardTheSummoner",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"先祖之物","Metadata/Items/DivinationCards/DivinationCardThePrimordial",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"完石","Metadata/Items/DivinationCards/DivinationCardAStonePerfected",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"鼠归","Metadata/Items/DivinationCards/DivinationCardTheReturnOfTheRat",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"有毒信仰","Metadata/Items/DivinationCards/DivinationCardPoisonedFaith",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"兄弟之赠","Metadata/Items/DivinationCards/DivinationCardBrothersGift",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"俄罗斯娃娃","Metadata/Items/DivinationCards/DivinationCardMatryoshka",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"不休萃取器","Metadata/Items/DivinationCards/DivinationCardTheTirelessExtractor",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"巨狼之眼","Metadata/Items/DivinationCards/DivinationCardMawrBlaidd",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"月神后嗣","Metadata/Items/DivinationCards/DivinationCardTheProgenyOfLunaris",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"猫咪议会","Metadata/Items/DivinationCards/DivinationCardCouncilOfCats",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"蜂巢知识","Metadata/Items/DivinationCards/DivinationCardTheHiveOfKnowledge",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"安赛娜丝赠礼","Metadata/Items/DivinationCards/DivinationCardGiftOfAsenath",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"雄伟动机","Metadata/Items/DivinationCards/DivinationCardTheGreatestIntentions",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"白骑士","Metadata/Items/DivinationCards/DivinationCardTheWhiteKnight",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"赖以为生","Metadata/Items/DivinationCards/DivinationCardTheSustenance",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"平静时刻","Metadata/Items/DivinationCards/DivinationCardPeacefulMoments",nil,nil,nil,nil)--命运卡	
SetJiaoYiGoods(nil,"长期诈骗","Metadata/Items/DivinationCards/DivinationCardTheLongCon",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"鸿沟","Metadata/Items/DivinationCards/DivinationCardTheGulf",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"苦涩绽放","Metadata/Items/DivinationCards/DivinationCardTheBitterBlossom",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"单相思","Metadata/Items/DivinationCards/DivinationCardUnrequitedLove",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"学术界","Metadata/Items/DivinationCards/DivinationCardTheAcademic",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"亵渎的美德","Metadata/Items/DivinationCards/DivinationCardDesecratedVirtue",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"碎裂大帝","Metadata/Items/DivinationCards/DivinationCardTheBrittleEmperor",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"魔鬼","Metadata/Items/DivinationCards/DivinationCardTheFiend",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"宝箱","Metadata/Items/DivinationCards/DivinationCardTheHoarder",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"复仇者","Metadata/Items/DivinationCards/DivinationCardTheAvenger",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"失落遗骨","Metadata/Items/DivinationCards/DivinationCardTimeLostRelic",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"王者之心","Metadata/Items/DivinationCards/DivinationCardTheKingsHeart",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"弃财求生","Metadata/Items/DivinationCards/DivinationCardAbandonedWealth",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"协约","Metadata/Items/DivinationCards/DivinationCardThePact",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"束缚之炼","Metadata/Items/DivinationCards/DivinationCardTheChainsThatBind",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"艺者","Metadata/Items/DivinationCards/DivinationCardTheArtist",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"群聚之首","Metadata/Items/DivinationCards/DivinationCardThePackLeader",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"女王","Metadata/Items/DivinationCards/DivinationCardTheQueen",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"谦逊","Metadata/Items/DivinationCards/DivinationCardHumility",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"背叛","Metadata/Items/DivinationCards/DivinationCardTheBetrayal",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"屹立不败之人","Metadata/Items/DivinationCards/DivinationCardTheLastOneStanding",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"远征","Metadata/Items/DivinationCards/DivinationCardTheTrial",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"钱与权","Metadata/Items/DivinationCards/DivinationCardWealthAndPower",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"平壤","Metadata/Items/DivinationCards/DivinationCardTheVast",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"龙之心","Metadata/Items/DivinationCards/DivinationCardTheDragonsHeart",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"骄者必败","Metadata/Items/DivinationCards/DivinationCardPrideBeforeTheFall",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"大奇术师","Metadata/Items/DivinationCards/DivinationCardTheThaumaturgist",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"智慧启蒙","Metadata/Items/DivinationCards/DivinationCardTheEnlightened",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"猎人的奖赏","Metadata/Items/DivinationCards/DivinationCardHuntersReward",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"最后希望","Metadata/Items/DivinationCards/DivinationCardLastHope",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"奉献","Metadata/Items/DivinationCards/DivinationCardTheOffering",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"极致不凡","Metadata/Items/DivinationCards/DivinationCardTheDapperProdigy",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"灵魂","Metadata/Items/DivinationCards/DivinationCardTheSoul",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"雄狮","Metadata/Items/DivinationCards/DivinationCardTheLion",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"危机","Metadata/Items/DivinationCards/DivinationCardTheRisk",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"大地吞食者","Metadata/Items/DivinationCards/DivinationCardEarthDrinker",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"生命之树","Metadata/Items/DivinationCards/DivinationCardTheSephirot",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"永恒不朽","Metadata/Items/DivinationCards/DivinationCardTheImmortal",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"出老千","Metadata/Items/DivinationCards/DivinationCardTheCheater",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"裂界之殇","Metadata/Items/DivinationCards/DivinationCardTheEldritchDecay",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"兵法家","Metadata/Items/DivinationCards/DivinationCardTheStrategist",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"蹂躏之王","Metadata/Items/DivinationCards/DivinationCardTheDevastator",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"阴阳眼","Metadata/Items/DivinationCards/DivinationCardHeterochromia",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"纯净帝王","Metadata/Items/DivinationCards/DivinationCardEmperorOfPurity",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"未知的命运卡","Metadata/Items/DivinationCards/DivinationCardDeck",nil,nil,nil,nil)--可堆迭通货
--SetJiaoYiGoods(nil,"命运垂青","Metadata/Items/DivinationCards/DivinationCardLuckyDeck",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"瓦尔的眷顾","Metadata/Items/DivinationCards/DivinationCardLuckOfTheVaal",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"群狼之王","Metadata/Items/DivinationCards/DivinationCardTheWolf",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"女之武神","Metadata/Items/DivinationCards/DivinationCardTheValkyrie",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"无迹之海","Metadata/Items/DivinationCards/DivinationCardTheFormlessSea",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"射成筛子","Metadata/Items/DivinationCards/DivinationCardThePorcupine",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"博学者","Metadata/Items/DivinationCards/DivinationCardThePolymath",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"死灵遗物","Metadata/Items/DivinationCards/DivinationCardTheWretched",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"狼王之弦","Metadata/Items/DivinationCards/DivinationCardTheWolvenKingsBite",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"闪光与火焰","Metadata/Items/DivinationCards/DivinationCardTheSparkAndTheFlame",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"圣人之礼","Metadata/Items/DivinationCards/DivinationCardTheSaintsTreasure",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"似曾相识","Metadata/Items/DivinationCards/DivinationCardAFamiliarCall",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"重生","Metadata/Items/DivinationCards/DivinationCardRebirth",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"坚毅诗人","Metadata/Items/DivinationCards/DivinationCardTheIronBard",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"裂隙","Metadata/Items/DivinationCards/DivinationCardTheBreach",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"追梦者","Metadata/Items/DivinationCards/DivinationCardTheDreamer",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"噬界者","Metadata/Items/DivinationCards/DivinationCardTheWorldEater",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"不朽决心","Metadata/Items/DivinationCards/DivinationCardImmortalResolve",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"主宰","Metadata/Items/DivinationCards/DivinationCardTheMaster",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无畏者","Metadata/Items/DivinationCards/DivinationCardTheUndaunted",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"仰慕者","Metadata/Items/DivinationCards/DivinationCardTheAdmirer",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"天堂之石","Metadata/Items/DivinationCards/DivinationCardTheCelestialStone",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"至臻完美","Metadata/Items/DivinationCards/DivinationCardPerfection",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"出老千","Metadata/Items/DivinationCards/DivinationCardTheCheater",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"裂界之殇","Metadata/Items/DivinationCards/DivinationCardTheEldritchDecay",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"兵法家","Metadata/Items/DivinationCards/DivinationCardTheStrategist",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"武士之眼","Metadata/Items/DivinationCards/DivinationCardTheSamuraisEye",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"壮心不已","Metadata/Items/DivinationCards/DivinationCardTheHaleHeart",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"庄园主","Metadata/Items/DivinationCards/DivinationCardTheMayor",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"无辜者","Metadata/Items/DivinationCards/DivinationCardTheInnocent",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"枯萎玫瑰","Metadata/Items/DivinationCards/DivinationCardTheWiltedRose",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"来生之美","Metadata/Items/DivinationCards/DivinationCardBeautyThroughDeath",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"先祖赐福","Metadata/Items/DivinationCards/DivinationCardBoonOfTheFirstOnes",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"不协之音","Metadata/Items/DivinationCards/DivinationCardTheCacophony",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"墨水点滴","Metadata/Items/DivinationCards/DivinationCardADabOfInk",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"照料者","Metadata/Items/DivinationCards/DivinationCardTheNurse",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"生命窃贼","Metadata/Items/DivinationCards/DivinationCardTheLifeThief",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"寻觅者","Metadata/Items/DivinationCards/DivinationCardTheSeeker",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"信使","Metadata/Items/DivinationCards/DivinationCardTheMessenger",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"旅程","Metadata/Items/DivinationCards/DivinationCardTheJourney",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"降临","Metadata/Items/DivinationCards/DivinationCardTheLanding",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"七年厄运","Metadata/Items/DivinationCards/DivinationCardSevenYearsBadLuck",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"萨博辛的誓言","Metadata/Items/DivinationCards/DivinationCardSambodhisVow",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"虚荣","Metadata/Items/DivinationCards/DivinationCardVanity",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"燃烧之血","Metadata/Items/DivinationCards/DivinationCardBurningBlood",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"诱人的奖赏","Metadata/Items/DivinationCards/DivinationCardAlluringBounty",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"先祖的代价","Metadata/Items/DivinationCards/DivinationCardPrideOfTheFirstOnes",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"黑暗之梦","Metadata/Items/DivinationCards/DivinationCardDarkDreams",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"半神的赌局","Metadata/Items/DivinationCards/DivinationCardDemigodsWager",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"老人","Metadata/Items/DivinationCards/DivinationCardTheOldMan",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"诺克之冠","Metadata/Items/DivinationCards/DivinationCardNooksCrown",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"忠诚的代价","Metadata/Items/DivinationCards/DivinationCardThePriceOfLoyalty",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"铭记","Metadata/Items/DivinationCards/DivinationCardRemembrance",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"永不知足","Metadata/Items/DivinationCards/DivinationCardMoreIsNeverEnough",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"交易","Metadata/Items/DivinationCards/DivinationCardTheBargain",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"阿祖兰的奖赏","Metadata/Items/DivinationCards/DivinationCardAzyransReward",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"恐怖之眼","Metadata/Items/DivinationCards/DivinationCardTheEyeOfTerror",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"灭世之咒","Metadata/Items/DivinationCards/DivinationCardTheDamned",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"元素虚空","Metadata/Items/DivinationCards/DivinationCardVoidOfTheElements",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"诱饵之期待","Metadata/Items/DivinationCards/DivinationCardBaitedExpectations",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"致死记号","Metadata/Items/DivinationCards/DivinationCardDeathlyDesigns",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"腐烂于血","Metadata/Items/DivinationCards/DivinationCardEtchedInBlood",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"失落的繁华","Metadata/Items/DivinationCards/DivinationCardSquanderedProsperity",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无罪救赎","Metadata/Items/DivinationCards/DivinationCardSuccorOfTheSinless",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"流亡兄弟会","Metadata/Items/DivinationCards/DivinationCardBrotherhoodInExile",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"病患","Metadata/Items/DivinationCards/DivinationCardThePatient",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"披梦","Metadata/Items/DivinationCards/DivinationCardDrapedInDreams",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"冰冷爱恋","Metadata/Items/DivinationCards/DivinationCardLoveThroughIce",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"鲁莽的野心","Metadata/Items/DivinationCards/DivinationCardRecklessAmbition",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"守护者的腐败","Metadata/Items/DivinationCards/DivinationCardKeepersCorruption",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"天文巫师","Metadata/Items/DivinationCards/DivinationCardTheAstromancer",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"垂死之光","Metadata/Items/DivinationCards/DivinationCardDyingLight",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"黑影缠绕","Metadata/Items/DivinationCards/DivinationCardHauntingShadows",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"白化","Metadata/Items/DivinationCards/DivinationCardTheWhiteout",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"囤积","Metadata/Items/DivinationCards/DivinationCardTheCache",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"冬拥","Metadata/Items/DivinationCards/DivinationCardWintersEmbrace",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"永恆战争","Metadata/Items/DivinationCards/DivinationCardTheEternalWar",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"热心民众","Metadata/Items/DivinationCards/DivinationCardTheEnthusiasts",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"致命喜悦","Metadata/Items/DivinationCards/DivinationCardDeadlyJoy",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"谦卑请求","Metadata/Items/DivinationCards/DivinationCardAModestRequest",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"不守信","Metadata/Items/DivinationCards/DivinationCardBrokenPromises",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"大会","Metadata/Items/DivinationCards/DivinationCardFatefulMeeting",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"辉煌宝藏","Metadata/Items/DivinationCards/DivinationCardLuminousTrove",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"无尽黯黑","Metadata/Items/DivinationCards/DivinationCardTheEndlessDarkness",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"鱼贩","Metadata/Items/DivinationCards/DivinationCardTheFishmonger",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"冠","Metadata/Items/DivinationCards/DivinationCardNooksCrown",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"守护者","Metadata/Items/DivinationCards/DivinationCardKeepersCorruption",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"觉醒","Metadata/Items/DivinationCards/DivinationCardTheAwakened",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"想要","Metadata/Items/DivinationCards/DivinationCardTheCraving",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"随风飘记","Metadata/Items/DivinationCards/DivinationCardANoteInTheWind",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"心灵之眼","Metadata/Items/DivinationCards/DivinationCardTheMindsEyes",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"后裔","Metadata/Items/DivinationCards/DivinationCardTheOffspring",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"不完美的回忆","Metadata/Items/DivinationCards/DivinationCardImperfectMemories",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"巨著","Metadata/Items/DivinationCards/DivinationCardMagnumOpus",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"变形","Metadata/Items/DivinationCards/DivinationCardTheTransformation",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"正义野心","Metadata/Items/DivinationCards/DivinationCardJustifiedAmbition",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"黑暗中的苦难","Metadata/Items/DivinationCards/DivinationCardMiseryInDarkness",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"沉默与寒霜","Metadata/Items/DivinationCards/DivinationCardBijoux",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"珠宝","Metadata/Items/DivinationCards/DivinationCardTheOffspring",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"审判之声","Metadata/Items/DivinationCards/DivinationCardJudgingVoices",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"被遗忘的宝藏","Metadata/Items/DivinationCards/DivinationCardTheForgottenTreasure",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"童子军","Metadata/Items/DivinationCards/DivinationCardTheScout",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"绝望远征","Metadata/Items/DivinationCards/DivinationCardDesperateCrusade",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"蔑视","Metadata/Items/DivinationCards/DivinationCardDisdain",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"兔脚","Metadata/Items/DivinationCards/DivinationCardTheRabbitsFoot",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"瓦尔宝藏","Metadata/Items/DivinationCards/DivinationCardTreasuresOfTheVaal",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"上进执迷","Metadata/Items/DivinationCards/DivinationCardAmbitiousObsession",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"痴呆症","Metadata/Items/DivinationCards/DivinationCardDementophobia",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"比死更惨","Metadata/Items/DivinationCards/DivinationCardAFateWorseThanDeath",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"变动感知","Metadata/Items/DivinationCards/DivinationCardAlteredPerception",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"进步发明","Metadata/Items/DivinationCards/DivinationCardFurtherInvention",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"家园","Metadata/Items/DivinationCards/DivinationCardHome",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"重生与复兴","Metadata/Items/DivinationCards/DivinationCardRebirthAndRenewal",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"药剂师","Metadata/Items/DivinationCards/DivinationCardTheApothecary",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"终点站","Metadata/Items/DivinationCards/DivinationCardTheDestination",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"地牢大师","Metadata/Items/DivinationCards/DivinationCardTheDungeonMaster",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"凝视前方","Metadata/Items/DivinationCards/DivinationCardTheForwardGaze",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"勾锁","Metadata/Items/DivinationCards/DivinationCardTheHook",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"瓦尔之傲","Metadata/Items/DivinationCards/DivinationCardArroganceOfTheVaal",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"珠宝","Metadata/Items/DivinationCards/DivinationCardBijoux",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"菩提的智慧","Metadata/Items/DivinationCards/DivinationCardSambodhisWisdom",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"沉默与寒霜","Metadata/Items/DivinationCards/DivinationCardSilenceAndFrost",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"记者","Metadata/Items/DivinationCards/DivinationCardTheJournalist",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"晦涩","Metadata/Items/DivinationCards/DivinationCardTheObscured",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"专家级","Metadata/Items/DivinationCards/DivinationCardTheProfessor",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"极度癫狂","Metadata/Items/DivinationCards/DivinationCardTriskaidekaphobia",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"地底丛林","Metadata/Items/DivinationCards/DivinationCardUndergroundForest",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"不朽圣物","Metadata/Items/DivinationCards/DivinationCardImperialLegacy",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"弓匠的梦想","Metadata/Items/DivinationCards/DivinationCardBowyersDream",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"铁骨心肠","Metadata/Items/DivinationCards/DivinationCardLachrymalNecrosis",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"疯癫之王","Metadata/Items/DivinationCards/DivinationCardTheMadKing",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"神秘之火的起源","Metadata/Items/DivinationCards/DivinationCardFireOfUnknownOrigin",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"幸运的人","Metadata/Items/DivinationCards/DivinationCardTheFortunate",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"扼杀之息","Metadata/Items/DivinationCards/DivinationCardChokingGuilt",nil,nil,nil,nil)--命运卡
--SetJiaoYiGoods(nil,"脏话","Metadata/Items/DivinationCards/DivinationCardCursedWords",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"來了兄弟","Metadata/Items/DivinationCards/DivinationCardISeeBrothers",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"刺客的馈赠","Metadata/Items/DivinationCards/DivinationCardAssassinsGift",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"画笔、颜料和调色盘","Metadata/Items/DivinationCards/DivinationCardBrushPaintAndPalette",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"孤軍奮戰","Metadata/Items/DivinationCards/DivinationCardLonelyWarrior",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"歷史","Metadata/Items/DivinationCards/DivinationCardHistory",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"符文之运","Metadata/Items/DivinationCards/DivinationCardRunicLuck",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"父愛","Metadata/Items/DivinationCards/DivinationCardFathersLove",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"神秘之火的起源","Metadata/Items/DivinationCards/DivinationCardFireOfUnknownOrigin",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"自我約束","Metadata/Items/DivinationCards/DivinationCardTemperance",nil,nil,nil,nil)--命运卡
SetJiaoYiGoods(nil,"追擊之翼","Metadata/Items/DivinationCards/DivinationCardAvianPursuit",nil,nil,nil,nil)--命运卡

--祭坛探险
SetNeedAddTianFu("异界地图天赋=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_essence_1_1-精髓稀有機率|atlas_essence_1_5-精髓稀有機率|atlas_essence_1_3-海量精華|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_harbinger_1_2_-額外神諭碎片|atlas_harbinger_1_4-額外神諭碎片|atlas_harbinger_1_3-不祥到來|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_drops_20-聖甲蟲掉落率|atlas_map_drops_2-聖甲蟲掉落率|atlas_map_drops_4-聖甲蟲掉落率|atlas_map_drops_8-聖甲蟲掉落率|atlas_path_92-聖甲蟲掉落率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_harbinger_2_3-額外神諭機率|atlas_harbinger_2_5-額外神諭機率|atlas_harbinger_2_2-額外神諭機率|atlas_harbinger_2_4-初潮|atlas_boss_adjacent_maps_10-物品數量和稀有度|atlas_boss_adjacent_maps_11-物品數量和稀有度|atlas_essence_2_2-精髓機率|atlas_essence_2_4-強化能量|atlas_harbinger_3_1-額外神諭機率|atlas_harbinger_3_5-額外神諭碎片|atlas_harbinger_3_3-額外神諭碎片|atlas_harbinger_3_4-不可描述侵犯|atlas_harbinger_1_1-額外神諭碎片|atlas_essence_2_5-精髓機率|atlas_essence_2_3-精髓機率|atlas_path_93-聖甲蟲掉落率|atlas_map_drops_9-聖甲蟲掉落率|atlas_map_drops_15-聖甲蟲掉落率|atlas_essence_3_1-精髓機率|atlas_essence_3_2-禁錮怪物額外精髓機率|atlas_essence_3_3-禁錮怪物額外精髓機率|atlas_essence_3_5-水晶共振|atlas_harvest_4_1-豐收額外生靈之力|atlas_harvest_2_3-豐收額外生靈之力|atlas_harvest_2_4-豐收額外生靈之力|atlas_harvest_3_4__-豐收|atlas_harvest_2_1-豐收怪物複製機率|atlas_harvest_4_2-豐收怪物複製機率|atlas_harvest_2_5_-大豐收|atlas_boss_adjacent_maps_12-物品數量和稀有度|atlas_harvest_3_1-豐收階級 3 作物機率|atlas_harvest_2_6-密園之心|atlas_harvest_2_7-豐收階級 3 作物機率|atlas_harvest_3_3-豐收階級 3 作物機率|atlas_path_83-聖甲蟲掉落率|atlas_harvest_4222-豐收額外生靈之力|atlas_harvest_4220-豐收額外生靈之力|atlas_harvest_4225-豐收額外生靈之力|atlas_harvest_4212-倍增期|atlas_harvest_4218-豐收機率|atlas_harvest_3_2-豐收機率|atlas_harvest_3_5-豐收機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|atlas_harvest_1_2-豐收機率|atlas_harvest_1_3-豐收機率|atlas_harvest_1_1-豐收機率|atlas_harvest_1_4-密園呼喚|atlas_map_drops_16-聖甲蟲掉落率|atlas_map_drops_1-聖甲蟲掉落率|atlas_map_drops_10-聖甲蟲掉落率|atlas_map_drops_11-聖甲蟲掉落率|atlas_path_4-相鄰地圖掉落機率|atlas_path_7-相鄰地圖掉落機率|atlas_essence_4_1-禁錮怪物額外精髓機率|atlas_essence_4_2-禁錮怪物額外精髓機率|atlas_essence_4_3-禁錮怪物額外精髓機率|atlas_essence_4_4-水晶格|")


--SetCheckHeistData(5*60,1000,nil,68,true,65,73,78,65,nil,6) --设置去夺宝 
--SetHeistData("RewardChestCurrency|RewardCurrency|RewardChestTrinkets|RewardChestLegion|RewardChestDivination|RewardChestProphecy|RewardChestBreach|RewardChestBlight|卡兰德的魔镜,Metadata/Items/Currency/CurrencyDuplicate,1|豐裕牌組,Metadata/Items/DivinationCards/DivinationCardDeck,3|伯仲財庫,Metadata/Items/DivinationCards/DivinationCardBrothersStash,1|弃财求生,Metadata/Items/DivinationCards/DivinationCardAbandonedWealth,1|诱人的奖赏,Metadata/Items/DivinationCards/DivinationCardAlluringBounty,1|混沌石,Metadata/Items/Currency/CurrencyRerollRare,2|瘋醫,Metadata/Items/DivinationCards/DivinationCardTheDoctor,1|恶魔,Metadata/Items/DivinationCards/DivinationCardTheDemon,1|神圣石,Metadata/Items/Currency/CurrencyModValues,1")

--g_needSuDiLv=82            --满75级打强袭宿敌内容
--SetUseArchnemesisGoods("Generic|Currency|Uniques|Gems|Maps|Trinkets|Armour|Weapon|Essences|Fragments|Scarabs|Labyrinth|DivinationCards|Abyss|Harbinger|Breach|Fossils|Legion|Blight|Metamorphosis|Expedition|Heist|Ritual|Delirium","Generic","DivinationCards","Trinkets",nil,82)


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


设置玩法等级("精髓",60)
设置玩法等级("祭祀",60)
--设置玩法等级("探险",80)
设置玩法等级("裂痕",60)
设置玩法等级("迷雾",60)
设置玩法等级("神殿",60)
祭祀无优先物品刷新=true

设置优先开图(80,"祭祀|迷雾|BOSS|裂痕")
添加优先碑牌("祭祀碑牌","Metadata/Items/TowerAugment/RitualAugment")--设置优先使用的碑牌 从上到下添加 上面的优先
-- 添加优先碑牌("裂痕碑牌","Metadata/Items/TowerAugment/BreachAugment")
-- 添加优先碑牌("譫妄碑牌","Metadata/Items/TowerAugment/DeliriumAugment")
添加取图设置(90, 1, 15, true, true,"蜕变|增幅|富豪|点金|瓦尔|崇高",100,14,"愤怒|罪孽|贪婪|偏执|忌妒|厌恶|绝望|恐惧|苦难|孤立")
添加取图设置(60, 1, 11, true, true,"蜕变|增幅|富豪|点金|瓦尔",100,12)
-----个人仓库页面设置 从上到下设置 下面添加的如果符合条件会覆盖上面的个人仓库页面设置
设置存仓页面("2|4|9|10", "类型类名:Map|MapFragment|Omen")--异界地图 地图碎片 预兆
设置存仓页面("5|6|7|8|1|3", "类型类名:StackableCurrency")--通货
-- 设置存仓页面("5", "类名:*CurrencyEssence|*CurrencyGreaterEssence")--单独设置精髓页面
-- 设置存仓页面("5", "类名:*CurrencyJewelleryQuality")--单独设置催化剂页面
-- 设置存仓页面("5", "类名:*DistilledEmotion")--单独设置精煉页面
-----公会仓库页面设置 从上到下设置 下面添加的如果符合条件会覆盖上面的公会仓库页面设置
设置公会存仓页面("2","类型类名:StackableCurrency")--通货存进1页面
设置公会存仓页面("5","类型类名:Map|MapFragment|Omen")--异界地图 地图碎片 预兆 存进2页面

-- 设置公会存仓页面("3|4","类型类名:Belt")--腰带 存进3、4页面
-- 设置公会存仓页面("3|4","类型类名:Ring|Amulet")--戒指 项链 存进3、4页面

设置公会存仓页面("戒指","类型类名:Belt")--腰带 存进3、4页面
设置公会存仓页面("戒指","类型类名:Ring")--戒指
设置公会存仓页面("项链","类型类名:Amulet")--项链 存进项链页面

---------------------物品设置






设置物品操作("用","名字:*知識之書")

设置物品操作("捡|鉴|存", "类型类名:Omen")--预兆
设置物品操作("捡|鉴|存", "类型类名:MapFragment")--地图碎片 预兆
-- 设置物品操作("捡|鉴|存", "类型类名:Map")--异界地图
设置物品操作("捡|鉴|存", "类型类名:Map","地图等级:>11")--大于11阶的异界地图 
设置物品操作("捡|存", "类型类名:PinnacleKey")--巔峰鑰匙
设置物品操作("捡|存", "类型类名:StackableCurrency")--可堆叠通货
-- 设置物品操作("捡|存", "类型类名:SoulCore") --符文

设置物品操作("捡|存", "类名:Metadata/Items/TowerAugment/BreachAugment")--裂痕碑牌
设置物品操作("捡|存", "类名:Metadata/Items/TowerAugment/RitualAugment")--祭祀碑牌
设置物品操作("捡|存", "类名:Metadata/Items/TowerAugment/DeliriumAugment")--譫妄碑牌
设置物品操作("丢", "类名:Metadata/Items/TowerAugment/GenericAugment|Metadata/Items/TowerAugment/MapBossAugment")--先行者碑牌 和boss碑牌
-- 设置物品操作("捡|存", "类型类名:UncutReservationGemStackable") --精魂宝石


-- 设置物品操作("存","类名:Metadata/Items/Currency/CurrencyAddModToMagic")        --增幅
-- 设置物品操作("存","类名:Metadata/Items/Currency/CurrencyUpgradeToMagic")     --蜕变



设置物品操作("空", "类名:Metadata/Items/Currency/GoldCoin") --黄金取消捡存设定

设置物品操作("捡", "类名:Metadata/Items/Currency/CurrencyIdentification") --知识卷轴 单独设置捡
设置物品操作("空", "类名:Metadata/Items/Currency/CurrencyIdentification", "包内数量:>=40") --知识卷轴 满40个去掉捡设定


-- 设置物品操作("捡|存|鉴","类名:Metadata/Items/Rings/FourRing4&颜色:0")--藍玉戒指
-- 设置物品操作("捡|存|鉴","类名:Metadata/Items/Amulets/FourAmulet8&颜色:0")--恆星項鍊
-- 设置物品操作("存","fire_spell_skill_gem_level_+:3&base_cast_speed_+%:19&base_maximum_mana:140")

-- --设置装备卖
-- local 首饰="Ring|Amulet|Belt|"
-- local 副武器="Quiver|Shield|"
-- local 防具="Boots|Gloves|Helmet|Body Armour|"
-- local 武器="TrapTool|Sceptre|Crossbow|Bow|Staff|Wand|Flail|Warstaff|Dagger|Claw|Spear|Two Hand Mace|One Hand Mace|Two Hand Axe|One Hand Axe|Two Hand Sword|One Hand Sword|"
-- local 所有装备=首饰..副武器..防具..武器
-- 设置物品操作("鉴|卖","类型类名:"..所有装备)--
-- 设置物品操作("捡|鉴|卖","类型类名:"..所有装备,"颜色:>0","自己金币:<50000")--自己金币少于多少 捡卖所有垃圾
-- 设置物品操作("鉴|卖","类型类名:LifeFlask|ManaFlask")--
-- 设置物品操作("捡|鉴|卖","类型类名:Ring|Amulet|Belt")--首饰 戒指 项链 腰带
-- 设置物品操作("捡|鉴|卖","类型类名:Quiver")--箭袋 
-- 设置物品操作("捡|鉴|卖","类型类名:Focus")--法器
-- 设置物品操作("捡|鉴|卖","类型类名:Shield")--盾
-- 设置物品操作("捡|鉴|卖","类型类名:Boots")--鞋子
-- 设置物品操作("捡|鉴|卖","类型类名:Gloves")--手套
-- 设置物品操作("捡|鉴|卖","类型类名:Helmet")--頭部
-- 设置物品操作("捡|鉴|卖","类型类名:Body Armour")--胸甲
-- 设置物品操作("捡|鉴|卖","类型类名:TrapTool")--陷阱
-- 设置物品操作("捡|鉴|卖","类型类名:Sceptre")--權杖
-- 设置物品操作("捡|鉴|卖","类型类名:Crossbow")--十字弓
-- 设置物品操作("捡|鉴|卖","类型类名:Bow")--弓
-- 设置物品操作("捡|鉴|卖","类型类名:Staff")--長杖
-- 设置物品操作("捡|鉴|卖","类型类名:Wand")--法杖
-- 设置物品操作("捡|鉴|卖","类型类名:Flail")--鏈錘
-- 设置物品操作("捡|鉴|卖","类型类名:Warstaff")--征戰長杖
-- 设置物品操作("捡|鉴|卖","类型类名:Dagger")--匕首
-- 设置物品操作("捡|鉴|卖","类型类名:Claw")--爪
-- 设置物品操作("捡|鉴|卖","类型类名:Spear")--長鋒
-- 设置物品操作("捡|鉴|卖","类型类名:Two Hand Mace")--雙手錘
-- 设置物品操作("捡|鉴|卖","类型类名:One Hand Mace")--單手錘
-- 设置物品操作("捡|鉴|卖","类型类名:Two Hand Axe")--雙手斧
-- 设置物品操作("捡|鉴|卖","类型类名:One Hand Axe")--單手斧
-- 设置物品操作("捡|鉴|卖","类型类名:Two Hand Sword")--雙手劍
-- 设置物品操作("捡|鉴|卖","类型类名:One Hand Sword")--單手劍

设置物品操作("捡|存|鉴", "颜色:3")--设置橙色装备
---下面所有橙装 不要的装备就取消掉注释让他分解

--设置物品操作("分","词缀类名:Kaom's Primacy")-- 岡姆的霸業
--设置物品操作("分","词缀类名:Redbeak")-- 赤紅短刃
--设置物品操作("分","词缀类名:Stone of Lazhwar")-- 拉茲瓦的靈石
设置物品操作("分","词缀类名:Blackheart")-- 幽暗之語
--设置物品操作("分","词缀类名:Kaom's Sign")-- 岡姆的遠見
--设置物品操作("分","词缀类名:Ungil's Coil")-- 恩吉爾的指環
--设置物品操作("分","词缀类名:Andvarius")-- 貪慾之記
--设置物品操作("分","词缀类名:Lioneye's Glare")-- 獅眼的戰弓
--设置物品操作("分","词缀类名:Demigod's Presence")-- 昇華之印
设置物品操作("分","词缀类名:Voll's Protector")-- 福爾的戰鎧
--设置物品操作("分","词缀类名:Divinarius")-- 戒律之影
--设置物品操作("分","词缀类名:Silverbranch")-- 幻銀之弦
--设置物品操作("分","词缀类名:Ephemeral Edge")-- 影殞
--设置物品操作("分","词缀类名:Malachai's Simula")-- 瑪拉凱的祭具
设置物品操作("分","词缀类名:Ezomyte Peak")-- 艾茲麥的榮光
设置物品操作("分","词缀类名:Death's Harp")-- 冥使之琴
设置物品操作("分","词缀类名:The Searing Touch")-- 熾炎之使
设置物品操作("分","词缀类名:Hrimnor's Hymn")-- 雷姆諾的奪命樂具
--设置物品操作("分","词缀类名:Geofri's Baptism")-- 吉爾菲的淨罪之錘
--设置物品操作("分","词缀类名:Rigvald's Charge")-- 瑞佛的奮戰長劍
--设置物品操作("分","词缀类名:Shiversting")-- 寒光劍
--设置物品操作("分","词缀类名:Doedre's Damning")-- 德瑞的魔具
--设置物品操作("分","词缀类名:Replica Doedre's Damning")-- 贗品．德瑞的魔具
--设置物品操作("分","词缀类名:Dream Fragments")-- 夢語之痕
设置物品操作("分","词缀类名:Blackgleam")-- 黑炎之芒
--设置物品操作("分","词缀类名:Broadstroke")-- 疾襲之鋒
--设置物品操作("分","词缀类名:Sidhebreath")-- 魔靈之符
--设置物品操作("分","词缀类名:Karui Ward")-- 卡魯的戰徽
--设置物品操作("分","词缀类名:Replica Karui Ward")-- 贗品．卡魯的戰徽
--设置物品操作("分","词缀类名:Eye of Chayula")-- 夏烏拉之眼
--设置物品操作("分","词缀类名:Hyrri's Ire")-- 西里的戰衣
--设置物品操作("分","词缀类名:Kaom's Heart")-- 岡姆的壯志
--设置物品操作("分","词缀类名:Replica Kaom's Heart")-- 贗品．岡姆的壯志
--设置物品操作("分","词缀类名:Fairgraves' Tricorne")-- 費爾之帽
--设置物品操作("分","词缀类名:Heatshiver")-- 寒焰
设置物品操作("分","词缀类名:Crown of Thorns")-- 刺棘之冠
--设置物品操作("分","词缀类名:Asenath's Mark")-- 安賽娜絲的迅敏之冠
--设置物品操作("分","词缀类名:Chitus' Apex")-- 切特斯的威權
--设置物品操作("分","词缀类名:Hrimnor's Resolve")-- 雷姆諾的豪情
--设置物品操作("分","词缀类名:The Peregrine")-- 疾風的沉思
--设置物品操作("分","词缀类名:Honourhome")-- 私慾的光輝
--设置物品操作("分","词缀类名:Geofri's Crest")-- 吉爾菲的榮光
--设置物品操作("分","词缀类名:Araku Tiki")-- 隱靈之符
设置物品操作("分","词缀类名:Wondertrap")-- 迴光之跡
--设置物品操作("分","词缀类名:Mightflay")-- 力量獵刃
--设置物品操作("分","词缀类名:Lioneye's Paws")-- 獅眼的鬥志
--设置物品操作("分","词缀类名:Replica Lioneye's Paws")-- 贗品．獅眼的鬥志
设置物品操作("分","词缀类名:Wake of Destruction")-- 覆滅之兆
设置物品操作("分","词缀类名:Wanderlust")-- 苦行之履
--设置物品操作("分","词缀类名:Shavronne's Pace")-- 薛朗的秘術長靴
--设置物品操作("分","词缀类名:Sundance")-- 日耀
设置物品操作("分","词缀类名:Windscream")-- 惡風足跡
--设置物品操作("分","词缀类名:Hrimsorrow")-- 冰冷之眼
--设置物品操作("分","词缀类名:Maligaro's Virtuosity")-- 馬雷葛蘿的血染手套
--设置物品操作("分","词缀类名:Slitherpinch")-- 蒼蟒之鱗
设置物品操作("分","词缀类名:Aurseize")-- 富貴之運
--设置物品操作("分","词缀类名:Sadima's Touch")-- 獵寶者的護手
设置物品操作("分","词缀类名:Doedre's Tenure")-- 德瑞的精神手套
--设置物品操作("分","词缀类名:Ondar's Clasp")-- 恩德的迅影
设置物品操作("分","词缀类名:Lochtonial Caress")-- 意識之緣
--设置物品操作("分","词缀类名:The Ignomon")-- 烈陽徽記
--设置物品操作("分","词缀类名:Astramentis")-- 均衡之符
--设置物品操作("分","词缀类名:Wurm's Molt")-- 龍蛻之帶
--设置物品操作("分","词缀类名:The Magnate")-- 堅毅之環
--设置物品操作("分","词缀类名:Perandus Blazon")-- 普蘭德斯之印
设置物品操作("分","词缀类名:Meginord's Girdle")-- 梅吉諾德的力量泉源
--设置物品操作("分","词缀类名:Daresso's Courage")-- 德瑞索的勇者之盾
--设置物品操作("分","词缀类名:Rathpith Globe")-- 獻祭之心
--设置物品操作("分","词缀类名:Kaltenhalt")-- 冰霜之鏡
--设置物品操作("分","词缀类名:Crest of Perandus")-- 普蘭德斯之徽
--设置物品操作("分","词缀类名:Lioneye's Remorse")-- 獅眼的榮耀之盾
--设置物品操作("分","词缀类名:Reaper's Pursuit")-- 死神的取魂器
--设置物品操作("分","词缀类名:Terminus Est")-- 行刑之刃
--设置物品操作("分","词缀类名:Tipua Kaikohuru")-- 幽冥之祭
--设置物品操作("分","词缀类名:Ambu's Charge")-- 安姆布的戰甲
--设置物品操作("分","词缀类名:Replica Ambu's Charge")-- 贗品．安姆布的戰甲
设置物品操作("分","词缀类名:Saffell's Frame")-- 薩費爾的智慧
--设置物品操作("分","词缀类名:Rime Gaze")-- 酷寒的凝視
--设置物品操作("分","词缀类名:Moonsorrow")-- 泣月
--设置物品操作("分","词缀类名:Vaults of Atziri")-- 阿茲里的秘寶庫
--设置物品操作("分","词缀类名:Prism Guardian")-- 元素的庇護
--设置物品操作("分","词缀类名:Springleaf")-- 新生之徽
--设置物品操作("分","词缀类名:Marohi Erqi")-- 爾奇的巨靈之錘
--设置物品操作("分","词缀类名:Carnage Heart")-- 屠戮之心
--设置物品操作("分","词缀类名:Deshret's Vise")-- 迪虛瑞特的巨力腕甲
--设置物品操作("分","词缀类名:Meginord's Vise")-- 梅吉諾德的巨力腕甲
--设置物品操作("分","词缀类名:Facebreaker")-- 毀面者
--设置物品操作("分","词缀类名:Sin Trek")-- 敏銳思維
--设置物品操作("分","词缀类名:Devoto's Devotion")-- 德沃托的信念之盔
--设置物品操作("分","词缀类名:Ungil's Gauche")-- 恩吉爾的叉刃
--设置物品操作("分","词缀类名:Replica Ungil's Gauche")-- 贗品．恩吉爾的叉刃
--设置物品操作("分","词缀类名:Goldwyrm")-- 龍炎足跡
设置物品操作("分","词缀类名:Bones of Ullr")-- 烏勒爾之骨
--设置物品操作("分","词缀类名:Replica Bones of Ullr")-- 贗品．烏勒爾之骨
--设置物品操作("分","词缀类名:Brightbeak")-- 光耀之錘
--设置物品操作("分","词缀类名:Shavronne's Wrappings")-- 薛朗的護身長袍
设置物品操作("分","词缀类名:Quill Rain")-- 驟雨之弦
--设置物品操作("分","词缀类名:Replica Quill Rain")-- 贗品．驟雨之弦
--设置物品操作("分","词缀类名:Darkscorn")-- 夜吟
--设置物品操作("分","词缀类名:Limbsplit")-- 斷罪
--设置物品操作("分","词缀类名:Voidhome")-- 逝空之錘
--设置物品操作("分","词缀类名:Midnight Bargain")-- 冥約
--设置物品操作("分","词缀类名:Replica Midnight Bargain")-- 贗品．冥約
--设置物品操作("分","词缀类名:Chin Sol")-- 亂矢之弦
--设置物品操作("分","词缀类名:Ondar's Flight")-- 維多里奧的飛昇
设置物品操作("分","词缀类名:Bramblejack")-- 刺棘寶甲
--设置物品操作("分","词缀类名:Dewath's Hide")-- 德瓦斯的匿蹤
设置物品操作("分","词缀类名:Ashrend")-- 拂燼
设置物品操作("分","词缀类名:Cloak of Flame")-- 烈炎之袍
--设置物品操作("分","词缀类名:Infractem")-- 穿雲
--设置物品操作("分","词缀类名:Replica Infractem")-- 贗品．穿雲
--设置物品操作("分","词缀类名:Essentia Sanguis")-- 精華收割器
--设置物品操作("分","词缀类名:Titucus Span")-- 提圖庫斯堅盾
--设置物品操作("分","词缀类名:Titucius' Span")-- 提圖庫斯的堅盾
设置物品操作("分","词缀类名:Foxshade")-- 狐毛鎧
设置物品操作("分","词缀类名:Taryn's Shiver")-- 塔林的顫慄之語
--设置物品操作("分","词缀类名:Goldrim")-- 金縷帽
--设置物品操作("分","词缀类名:Aegis Aurora")-- 幻芒聖盾
--设置物品操作("分","词缀类名:The Supreme Truth")-- 無上箴言
--设置物品操作("分","词缀类名:The Covenant")-- 血誓
--设置物品操作("分","词缀类名:Infernal Mantle")-- 煉獄之心
--设置物品操作("分","词缀类名:Mortem Morsu")-- 噬魂之牙
--设置物品操作("分","词缀类名:Queen's Decree")-- 威嚴之刃
--设置物品操作("分","词缀类名:Atziri's Mirror")-- 阿茲里之鏡
--设置物品操作("分","词缀类名:The Blood Reaper")-- 竭血之鐮
--设置物品操作("分","词缀类名:Storm Cloud")-- 暴雨之弦
--设置物品操作("分","词缀类名:Demigod's Triumph")-- 昇華之冠
--设置物品操作("分","词缀类名:Matua Tupuna")-- 遠祖之顱
--设置物品操作("分","词缀类名:Heartbreaker")-- 裂心刃
--设置物品操作("分","词缀类名:Replica Heartbreaker")-- 贗品．裂心刃
--设置物品操作("分","词缀类名:Maelstr?m of Chaos")-- 混沌之淵
--设置物品操作("分","词缀类名:Carcass Jack")-- 致命之體
--设置物品操作("分","词缀类名:Le Heup of All")-- 英靈寶環
--设置物品操作("分","词缀类名:Chernobog's Pillar")-- 五芒屏障
--设置物品操作("分","词缀类名:The Coward's Trial")-- 懦者的試驗
--设置物品操作("分","词缀类名:Nycta's Lantern")-- 奈可妲之燈
--设置物品操作("分","词缀类名:Acton's Nightmare")-- 輪迴的夢魘
--设置物品操作("分","词缀类名:Starkonja's Head")-- 斯塔空加之首
--设置物品操作("分","词缀类名:Bloodseeker")-- 嗜血之爪
设置物品操作("分","词缀类名:Chober Chaber")-- 忠誠之錘
--设置物品操作("分","词缀类名:Alpha's Howl")-- 極地之嗥
--设置物品操作("分","词缀类名:Replica Alpha's Howl")-- 贗品．極地之嗥
设置物品操作("分","词缀类名:Rise of the Phoenix")-- 烈炎之翼
--设置物品操作("分","词缀类名:Thousand Ribbons")-- 千縷
--设置物品操作("分","词缀类名:Bronn's Lithe")-- 布隆的影衣
--设置物品操作("分","词缀类名:Rainbowstride")-- 虹幕
--设置物品操作("分","词缀类名:Tabula Rasa")-- 無盡之衣
设置物品操作("分","词缀类名:Darkray Vectors")-- 暗雷
设置物品操作("分","词缀类名:Pillar of the Caged God")-- 囚神杵
设置物品操作("分","词缀类名:Icetomb")-- 冰息
--设置物品操作("分","词缀类名:Soul Mantle")-- 祖靈之約
--设置物品操作("分","词缀类名:Wurmfist")-- 崩石
--设置物品操作("分","词缀类名:Asenath's Gentle Touch")-- 安賽娜絲的安撫之語
--设置物品操作("分","词缀类名:Kalisa's Grace")-- 卡莉莎的優雅之影
--设置物品操作("分","词缀类名:Replica Kalisa's Grace")-- 贗品．卡莉莎的優雅之影
--设置物品操作("分","词缀类名:Arimagius' Honor")-- 志士的榮耀之心
--设置物品操作("分","词缀类名:Hellbringer")-- 喚獄
--设置物品操作("分","词缀类名:Thunderfist")-- 轟天雷
--设置物品操作("分","词缀类名:Deadman's Hand")-- 枯萎之手
--设置物品操作("分","词缀类名:Rat's Nest")-- 鼠巢
--设置物品操作("分","词缀类名:Vizaru's Folly")-- 維札盧的不堪往事
--设置物品操作("分","词缀类名:Ylfe Ban")-- 禁語
--设置物品操作("分","词缀类名:Abyssus")-- 深淵之喚
--设置物品操作("分","词缀类名:Replica Abyssus")-- 贗品．深淵之喚
--设置物品操作("分","词缀类名:Aurumvorax")-- 靈護
--设置物品操作("分","词缀类名:Thief's Torment")-- 竊罪
--设置物品操作("分","词缀类名:Poorjoy's Asylum")-- 沉淪之間
--设置物品操作("分","词缀类名:Replica Poorjoy's Asylum")-- 贗品．沉淪之間
设置物品操作("分","词缀类名:Deidbell")-- 喪鐘
--设置物品操作("分","词缀类名:Last Resort")-- 終息
--设置物品操作("分","词缀类名:Replica Last Resort")-- 贗品．終息
--设置物品操作("分","词缀类名:Leviathan Ivory")-- 神力之牙
--设置物品操作("分","词缀类名:Al Dhih")-- 鬣犬之牙
--设置物品操作("分","词缀类名:Ungils's Coil")-- 恩吉爾的指環
--设置物品操作("分","词缀类名:Atziri's Foible")-- 阿茲里聖徽
--设置物品操作("分","词缀类名:Replica Atziri's Foible")-- 贗品．阿茲里聖徽
--设置物品操作("分","词缀类名:Lori's Lantern")-- 羅里的幸運之燈
--设置物品操作("分","词缀类名:The Bringer of Rain")-- 祭禮之雨
--设置物品操作("分","词缀类名:NameGoesHere")-- 填入名稱
--设置物品操作("分","词缀类名:Zahndethus' Cassock")-- 札德圖斯的聖衣
--设置物品操作("分","词缀类名:Lightbane Raiment")-- 魔道之衣
--设置物品操作("分","词缀类名:Void Battery")-- 潛能魔棒
--设置物品操作("分","词缀类名:Rebuke of the Vaal")-- 瓦爾戰刃
--设置物品操作("分","词缀类名:Rory's Revengance")-- 羅里的復仇之途
--设置物品操作("分","词缀类名:Mark2's Mastery")-- 馬克的精銳戰意
--设置物品操作("分","词缀类名:Robbie's Rotten Mace")-- 羅比的腐敗釘錘
--设置物品操作("分","词缀类名:Carl's Crusher")-- 卡爾的破壞者
--设置物品操作("分","词缀类名:DrTestapus' Charm")-- 特塔普斯的幸運符
--设置物品操作("分","词缀类名:Convent of the Twins' Flame")-- 雙炎修道院
--设置物品操作("分","词缀类名:Mao Kun")-- 賊窩
--设置物品操作("分","词缀类名:The Rathorn")-- 咒荊
--设置物品操作("分","词缀类名:Wareclast Pantheon")-- 瓦爾克拉斯神殿
--设置物品操作("分","词缀类名:Sibyl's Lament")-- 希比爾之嘆
--设置物品操作("分","词缀类名:Oba's Cursed Trove")-- 歐霸的咒怨寶庫
--设置物品操作("分","词缀类名:Soul Taker")-- 開膛斧
--设置物品操作("分","词缀类名:Replica Soul Taker")-- 贗品．開膛斧
--设置物品操作("分","词缀类名:Olmec's Sanctum")-- 遠古之印
--设置物品操作("分","词缀类名:Untainted Paradise")-- 純淨樂園
--设置物品操作("分","词缀类名:Daresso's Salute")-- 德瑞索的戰禮
--设置物品操作("分","词缀类名:Voll's Devotion")-- 福爾的忠誠之符
--设置物品操作("分","词缀类名:Victario's Acuity")-- 維多里奧的捷思
--设置物品操作("分","词缀类名:Gifts from Above")-- 神賜
--设置物品操作("分","词缀类名:Death Rush")-- 亡者呼喚
--设置物品操作("分","词缀类名:Shavronne's Revelation")-- 薛朗的啟示之環
--设置物品操作("分","词缀类名:Auxium")-- 奧術之符
--设置物品操作("分","词缀类名:BlackGuardz")-- 烏衛
--设置物品操作("分","词缀类名:The Blood Dance")-- 血影
--设置物品操作("分","词缀类名:Kongor's Undying Rage")-- 康戈的戰炎
--设置物品操作("分","词缀类名:Replica Kongor's Undying Rage")-- 贗品．康戈的戰炎
--设置物品操作("分","词缀类名:The Goddess Scorned")-- 女神的怒炎
--设置物品操作("分","词缀类名:The Anvil")-- 信念之砧
--设置物品操作("分","词缀类名:Mon'tregul's Grasp")-- 凋靈魔爪
--设置物品操作("分","词缀类名:Perandus Signet")-- 普蘭德斯之記
--设置物品操作("分","词缀类名:Pyre")-- 燃焰
--设置物品操作("分","词缀类名:Divination Distillate")-- 寶視精華
--设置物品操作("分","词缀类名:Queen of the Forest")-- 森林之后
--设置物品操作("分","词缀类名:Crown of Eyes")-- 邪眼之冠
--设置物品操作("分","词缀类名:Demigod's Stride")-- 昇華之途
--设置物品操作("分","词缀类名:Windripper")-- 裂風
--设置物品操作("分","词缀类名:Replica Windripper")-- 贗品．裂風
--设置物品操作("分","词缀类名:Death's Oath")-- 冥使之體
--设置物品操作("分","词缀类名:Voidbringer")-- 虛空之力
--设置物品操作("分","词缀类名:The Goddess Bound")-- 女神的靈縛
--设置物品操作("分","词缀类名:Belly of the Beast")-- 獸腹
--设置物品操作("分","词缀类名:Mindspiral")-- 靈漩
设置物品操作("分","词缀类名:Leer Cast")-- 共鳴之面
--设置物品操作("分","词缀类名:Replica Leer Cast")-- 贗品．共鳴之面
--设置物品操作("分","词缀类名:Seven-League Step")-- 盟誓之跡
--设置物品操作("分","词缀类名:Dusktoe")-- 迎暮
--设置物品操作("分","词缀类名:Battlehaste")-- 迅戰
--设置物品操作("分","词缀类名:Wideswing")-- 闊斬
设置物品操作("分","词缀类名:Quecholli")-- 重擊之錘
--设置物品操作("分","词缀类名:Mordhau")-- 魔器
--设置物品操作("分","词缀类名:Maligaro's Etcher")-- 馬雷葛蘿的刻具
--设置物品操作("分","词缀类名:Felltooth")-- 崩齒
--设置物品操作("分","词缀类名:Galla's Riposte")-- 加拉的突刺刃
--设置物品操作("分","词缀类名:Pagan Geis")-- 異宗之鏡
--设置物品操作("分","词缀类名:Stillwater")-- 止水
--设置物品操作("分","词缀类名:Wings of Entropy")-- 亂世之翼
--设置物品操作("分","词缀类名:Replica Wings of Entropy")-- 贗品．亂世之翼
--设置物品操作("分","词缀类名:Voltaxic Rift")-- 魔暴之痕
--设置物品操作("分","词缀类名:Doedre's Elixir")-- 德瑞的妙藥
--设置物品操作("分","词缀类名:Marylene's Fallacy")-- 瑪莉琳的護體之符
--设置物品操作("分","词缀类名:Mana Sponge")-- 吸魔海綿
设置物品操作("分","词缀类名:Briskwrap")-- 荒途
--设置物品操作("分","词缀类名:Oro's Sacrifice")-- 歐羅的貢品
--设置物品操作("分","词缀类名:Replica Oro's Sacrifice")-- 贗品．歐羅的貢品
--设置物品操作("分","词缀类名:Cybil's Paw")-- 希比爾的冰爪
--设置物品操作("分","词缀类名:Prismatic Eclipse")-- 虹耀之月
--设置物品操作("分","词缀类名:Daresso's Defiance")-- 德瑞索的衛衣
--设置物品操作("分","词缀类名:Santoni's Faith")-- 桑托尼的忠誠之心
--设置物品操作("分","词缀类名:Ming's Heart")-- 明恩的慧心
--设置物品操作("分","词缀类名:Lightning Coil")-- 雷語
--设置物品操作("分","词缀类名:Romira's Banquet")-- 羅米拉的潛力之環
--设置物品操作("分","词缀类名:Dyadus")-- 龍鳳吟
--设置物品操作("分","词缀类名:Sunblast")-- 日炎
--设置物品操作("分","词缀类名:Deerstalker")-- 獵蹤
--设置物品操作("分","词缀类名:Berek's Pass")-- 貝雷克的冰與火之歌
--设置物品操作("分","词缀类名:Berek's Grip")-- 貝雷克的冰與雷之曲
--设置物品操作("分","词缀类名:Berek's Respite")-- 貝雷克的火與雷之樂
--设置物品操作("分","词缀类名:The Taming")-- 元素之章
--设置物品操作("分","词缀类名:Blood of the Karui")-- 卡魯之血
--设置物品操作("分","词缀类名:Lavianga's Spirit")-- 拉維安加之泉
--设置物品操作("分","词缀类名:Replica Lavianga's Spirit")-- 贗品．拉維安加之泉
--设置物品操作("分","词缀类名:The Gull")-- 鷗喙
--设置物品操作("分","词缀类名:Headhunter")-- 獵首
--设置物品操作("分","词缀类名:Replica Headhunter")-- 贗品．獵首
--设置物品操作("分","词缀类名:Cloak of Defiance")-- 衛道之袍
--设置物品操作("分","词缀类名:Immortal Flesh")-- 永生
--设置物品操作("分","词缀类名:Fragment of Eternity")-- 亙古之靈
--设置物品操作("分","词缀类名:Splinter of the Moon")-- 碎月
--设置物品操作("分","词缀类名:Remnant of Empires")-- 帝國的殘壁
--设置物品操作("分","词缀类名:Rust of Winter")-- 霜刃
--设置物品操作("分","词缀类名:Ashes of the Sun")-- 燼杵
--设置物品操作("分","词缀类名:Thunder of the Dawn")-- 曙雷
--设置物品操作("分","词缀类名:Vestige of Divinity")-- 莊重之杖
--设置物品操作("分","词缀类名:Relic of the Cycle")-- 輪迴之記
--设置物品操作("分","词缀类名:Tear of Entropy")-- 亂世之淚
--设置物品操作("分","词缀类名:Chains of Time")-- 時空之鏈
--设置物品操作("分","词缀类名:Doon Cuebiyari")-- 黑鋼
设置物品操作("分","词缀类名:Lifesprig")-- 生機之記
--设置物品操作("分","词缀类名:Demigod's Touch")-- 昇華之指
设置物品操作("分","词缀类名:Ghostmarch")-- 鬼行
--设置物品操作("分","词缀类名:Death and Taxes")-- 亡者之財
--设置物品操作("分","词缀类名:Cagan's Map")-- 卡甘的奧秘之地
--设置物品操作("分","词缀类名:Solaris Lorica")-- 烈陽鎧
--设置物品操作("分","词缀类名:Chalice of Horrors")-- 恐懼之缶
--设置物品操作("分","词缀类名:Death Rattle")-- 亡靈之音
--设置物品操作("分","词缀类名:Wheel of the Stormsail")-- 暴雨之舵
--设置物品操作("分","词缀类名:Ironweld")-- 鐵芒
--设置物品操作("分","词缀类名:Celestial Fragment")-- 殘星
--设置物品操作("分","词缀类名:The Screaming Eagle")-- 鷹嘯
--设置物品操作("分","词缀类名:Boreal Shepherd")-- 牧者之音
--设置物品操作("分","词缀类名:Bartek's Finger")-- 巴特克的魔指
--设置物品操作("分","词缀类名:Stormblast")-- 雷暴
--设置物品操作("分","词缀类名:Fencoil")-- 綠藤
--设置物品操作("分","词缀类名:Replica Fencoil")-- 贗品．綠藤
--设置物品操作("分","词缀类名:Bino's Kitchen Knife")-- 比諾的廚刀
设置物品操作("分","词缀类名:Veil of the Night")-- 夜幕
--设置物品操作("分","词缀类名:Replica Veil of the Night")-- 贗品．夜幕
--设置物品操作("分","词缀类名:Song of the Sirens")-- 海妖魅曲
设置物品操作("分","词缀类名:The Three Dragons")-- 三龍戰紀
设置物品操作("分","词缀类名:Shackles of the Wretched")-- 悲運之縛
--设置物品操作("分","词缀类名:Mj?lner")-- 沉默之雷
--设置物品操作("分","词缀类名:Dying Breath")-- 亡者之息
设置物品操作("分","词缀类名:Snakebite")-- 蝮吻
--设置物品操作("分","词缀类名:Alberon's Warpath")-- 阿爾貝隆的征途
--设置物品操作("分","词缀类名:Replica Alberon's Warpath")-- 贗品．阿爾貝隆的征途
--设置物品操作("分","词缀类名:Skullhead")-- 光輝之顱
--设置物品操作("分","词缀类名:Voideye")-- 虛空慧眼
--设置物品操作("分","词缀类名:Replica Voideye")-- 贗品．虛空慧眼
--设置物品操作("分","词缀类名:Vaal Caress")-- 瓦爾的靈手
--设置物品操作("分","词缀类名:Drillneck")-- 穿心
--设置物品操作("分","词缀类名:Rearguard")-- 寒鋒之衛
--设置物品操作("分","词缀类名:Pledge of Hands")-- 誓約
--设置物品操作("分","词缀类名:Atziri's Step")-- 阿茲里的金履
--设置物品操作("分","词缀类名:Doryani's Invitation")-- 多里亞尼之約
--设置物品操作("分","词缀类名:Atziri's Promise")-- 阿茲里的諾言
--设置物品操作("分","词缀类名:Atziri's Acuity")-- 阿茲里的捷思
--设置物品操作("分","词缀类名:Replica Atziri's Acuity")-- 贗品．阿茲里的捷思
--设置物品操作("分","词缀类名:Atziri's Splendour")-- 阿茲里的威權
--设置物品操作("分","词缀类名:The Vertex")-- 謎容
--设置物品操作("分","词缀类名:Atziri's Disfavour")-- 阿茲里的刑刃
--设置物品操作("分","词缀类名:Vis Mortis")-- 兀鳴
--设置物品操作("分","词缀类名:Doryani's Catalyst")-- 多里亞尼的幻化之杖
--设置物品操作("分","词缀类名:Piscator's Vigil")-- 皮斯卡托的慧眼
--设置物品操作("分","词缀类名:Demigod's Bounty")-- 昇華珍寶
--设置物品操作("分","词缀类名: DO NOT USE")--  請勿使用
设置物品操作("分","词缀类名:Asphyxia's Wrath")-- 冰靈之吼
--设置物品操作("分","词缀类名:Incandescent Heart")-- 烈炎之心
--设置物品操作("分","词缀类名:Hyrri's Bite")-- 西里的嗜血之矢
--设置物品操作("分","词缀类名:Doomfletch")-- 滅世
--设置物品操作("分","词缀类名:Hyaon's Fury")-- 海昂的狂怒
--设置物品操作("分","词缀类名:Perandus Bank")-- 普蘭德斯的寶盒
--设置物品操作("分","词缀类名:Kaom's Cache")-- 岡姆的寶藏
--设置物品操作("分","词缀类名:Empyrean Apparatus")-- 魔域寶盒
--设置物品操作("分","词缀类名:Kaom's Roots")-- 岡姆的穩重之靴
--设置物品操作("分","词缀类名:Fidelitas' Spike")-- 費德利塔斯之鋒
--设置物品操作("分","词缀类名:Soul Strike")-- 靈魂打擊
--设置物品操作("分","词缀类名:Replica Soul Strike")-- 贗品．靈魂打擊
--设置物品操作("分","词缀类名:Forbidden Taste")-- 禁果
--设置物品操作("分","词缀类名:Hegemony's Era")-- 霸權時代
--设置物品操作("分","词缀类名:Scar of Fate")-- 命運傷痕
--设置物品操作("分","词缀类名:Blood of Summer")-- 炎夏之血
--设置物品操作("分","词缀类名:Whakawairua Tuahu")-- 禁閉祭壇
--设置物品操作("分","词缀类名:Jaws of Agony")-- 苦痛狂鯊
--设置物品操作("分","词缀类名:Thousand Teeth Temu")-- 千齒
--设置物品操作("分","词缀类名:Fairgraves' Bearing")-- 費爾之儀
--设置物品操作("分","词缀类名:Mokou's Embrace")-- 莫考之擁
--设置物品操作("分","词缀类名:Mark of the Doubting Knight")-- 迷茫幻符
--设置物品操作("分","词缀类名:Rumi's Concoction")-- 魯米的靈藥
--设置物品操作("分","词缀类名:Replica Rumi's Concoction")-- 贗品．魯米的靈藥
--设置物品操作("分","词缀类名:Dreamfeather")-- 幻夢飛羽
--设置物品操作("分","词缀类名:Replica Dreamfeather")-- 贗品．幻夢飛羽
--设置物品操作("分","词缀类名:Gang's Momentum")-- 剛勇
--设置物品操作("分","词缀类名:Nomic's Storm")-- 諾米克的風暴
--设置物品操作("分","词缀类名:Cherrubim's Maleficence")-- 薛魯賓的惡作劇
--设置物品操作("分","词缀类名:Apep's Rage")-- 艾普之怒
--设置物品操作("分","词缀类名:Jack, The Axe")-- 劊子手．傑克
--设置物品操作("分","词缀类名:Null and Void")-- 虛空
--设置物品操作("分","词缀类名:Flesh and Spirit")-- 肉體與魂靈
--设置物品操作("分","词缀类名:Shadows and Dust")-- 沙塵之影
--设置物品操作("分","词缀类名:The Harvest")-- 收割者
--设置物品操作("分","词缀类名:Replica Harvest")-- 贗品．收割者
--设置物品操作("分","词缀类名:Edge of Madness")-- 瘋狂邊界
--设置物品操作("分","词缀类名:The Dark Seer")-- 黯黑賢者
--设置物品操作("分","词缀类名:Craghead")-- 岩頭
--设置物品操作("分","词缀类名:Hall of Grandmasters")-- 元帥殿堂
--设置物品操作("分","词缀类名:Malachai's Artifice")-- 瑪拉凱的巧技
--设置物品操作("分","词缀类名:Replica Malachai's Artifice")-- 贗品．瑪拉凱的巧技
--设置物品操作("分","词缀类名:Sentari's Answer")-- 山特立的回應
--设置物品操作("分","词缀类名:Doomsower")-- 終末之始
--设置物品操作("分","词缀类名:Great Old One's Ward")-- 邪神庇護
--设置物品操作("分","词缀类名:Oba's Prized Cache")-- 歐霸的獎賞
--设置物品操作("分","词缀类名:Oba's Riches")-- 歐霸的珍寶
--设置物品操作("分","词缀类名:Oba's Glittering Stash")-- 歐霸的閃耀之窟
--设置物品操作("分","词缀类名:Demigod's Eye")-- 昇華之眼
--设置物品操作("分","词缀类名:Agnerod")-- 雷霆聖杖
--设置物品操作("分","词缀类名:Agnerod East")-- 東方雷霆聖杖
--设置物品操作("分","词缀类名:Talisman of the Victor")-- 勝者護符
设置物品操作("分","词缀类名:The Blood Thorn")-- 血棘
--设置物品操作("分","词缀类名:Replica Blood Thorn")-- 贗品．血棘
--设置物品操作("分","词缀类名:Agnerod North")-- 北方雷霆聖杖
--设置物品操作("分","词缀类名:Prismweave")-- 幻彩菱織
--设置物品操作("分","词缀类名:Replica Prismweave")-- 贗品．幻彩菱織
--设置物品操作("分","词缀类名:Bated Breath")-- 凝息
--设置物品操作("分","词缀类名:Replica Bated Breath")-- 贗品．凝息
--设置物品操作("分","词缀类名:Kikazaru")-- 基加薩魯
--设置物品操作("分","词缀类名:Reverberation Rod")-- 混響
设置物品操作("分","词缀类名:Ungil's Harmony")-- 恩吉爾的和諧
--设置物品操作("分","词缀类名:Maligaro's Lens")-- 馬雷葛蘿的染血透鏡
--设置物品操作("分","词缀类名:Maligaro's Restraint")-- 馬雷葛蘿的染血之環
--设置物品操作("分","词缀类名:The Broken Crown")-- 缺角帝冠
--设置物品操作("分","词缀类名:Maloney's Nightfall")-- 馬洛尼的暮光
--设置物品操作("分","词缀类名:Surgebinders")-- 浪湧縛者
--设置物品操作("分","词缀类名:Belt of the Deceiver")-- 狡徒束腰
--设置物品操作("分","词缀类名:Timeclasp")-- 時光之握
--设置物品操作("分","词缀类名:Bloodboil")-- 沸血
--设置物品操作("分","词缀类名:Null's Inclination")-- 虛無之傾
--设置物品操作("分","词缀类名:Rashkaldor's Patience")-- 拉什卡德的耐心
--设置物品操作("分","词缀类名:Valako's Sign")-- 瓦拉庫之印
--设置物品操作("分","词缀类名:Tasalio’s Sign")-- 塔薩里之印
--设置物品操作("分","词缀类名:Replica Tasalio’s Sign")-- 贗品．塔薩里之印
--设置物品操作("分","词缀类名:Ngamahu’s Sign")-- 拿瑪乎之印
设置物品操作("分","词缀类名:The Rat Cage")-- 疫鼠囚籠
--设置物品操作("分","词缀类名:Scold's Bridle")-- 禁語
--设置物品操作("分","词缀类名:Brutus' Lead Sprinkler")-- 布魯特斯的刑具
--设置物品操作("分","词缀类名:Taste of Hate")-- 恨意
设置物品操作("分","词缀类名:Greed's Embrace")-- 貪婪之擁
--设置物品操作("分","词缀类名:Warped Timepiece")-- 扭曲之鐘
--设置物品操作("分","词缀类名:Doedre's Scorn")-- 德瑞的蔑視
设置物品操作("分","词缀类名:Black Sun Crest")-- 黑陽之冠
--设置物品操作("分","词缀类名:Agnerod South")-- 南方雷霆聖杖
--设置物品操作("分","词缀类名:Southbound")-- 南方
--设置物品操作("分","词缀类名:Grandmaster's Gemcutting Cache")-- 元帥的珠寶秘寶
--设置物品操作("分","词缀类名:Grandmaster's Arcanist Cache")-- 元帥的奧術秘寶
--设置物品操作("分","词缀类名:Grandmaster's Cartography Cache")-- 元帥的製圖秘寶
--设置物品操作("分","词缀类名:Grandmaster's Ornate Cache")-- 元帥的華麗秘寶
--设置物品操作("分","词缀类名:Grandmaster's Treasury")-- 元帥的財富
--设置物品操作("分","词缀类名:Grandmaster's Trove")-- 元帥的寶藏
--设置物品操作("分","词缀类名:Grandmaster's Corrupted Cache")-- 被汙染的元帥秘寶
--设置物品操作("分","词缀类名:Grandmaster's Large Cache")-- 元帥的大型祕寶
--设置物品操作("分","词缀类名:Ventor's Gamble")-- 賭神芬多
设置物品操作("分","词缀类名:Heartbound Loop")-- 結魂之環
--设置物品操作("分","词缀类名:Dyadian Dawn")-- 戴亞迪安的晨曦
--设置物品操作("分","词缀类名:Sire of Shards")-- 破碎傳承者
--设置物品操作("分","词缀类名:Strange Barrel")-- 怪桶
--设置物品操作("分","词缀类名:Victario's Influence")-- 維多里奧之絕響
--设置物品操作("分","词缀类名:The Consuming Dark")-- 蠶食之闇
--设置物品操作("分","词缀类名:Shaper's Seed")-- 塑界者之籽
--设置物品操作("分","词缀类名:Tremor Rod")-- 顫抖之杖
--设置物品操作("分","词缀类名:Relentless Fury")-- 無盡憤怒
--设置物品操作("分","词缀类名:Cameria's Maul")-- 卡美利亞之錘
设置物品操作("分","词缀类名:Kitoko's Current")-- 奇多可之流
--设置物品操作("分","词缀类名:Callinellus Malleus")-- 堅定之刃
--设置物品操作("分","词缀类名:Death's Hand")-- 死神之手
--设置物品操作("分","词缀类名:The GoddessUnleashed")-- 女神的束縛
--设置物品操作("分","词缀类名:Ichimonji")-- 一文字
--设置物品操作("分","词缀类名:Empire's Grasp")-- 帝國之掌
--设置物品操作("分","词缀类名:The Restless Ward")-- 無盡之衛
--设置物品操作("分","词缀类名:Replica Restless Ward")-- 贗品．無盡之衛
--设置物品操作("分","词缀类名:Lion's Roar")-- 獅吼精華
--设置物品操作("分","词缀类名:Ornament of the East")-- 東之飾
--设置物品操作("分","词缀类名:The Whispering Ice")-- 冰點低語
--设置物品操作("分","词缀类名:Tear of Purity")-- 純淨之淚
--设置物品操作("分","词缀类名:Blood of Corruption")-- 墮落之血
--设置物品操作("分","词缀类名:Lioneye's Vision")-- 獅眼的視線
--设置物品操作("分","词缀类名:Repentance")-- 悔悟之掌
--设置物品操作("分","词缀类名:Twyzel")-- 峽灣之星
--设置物品操作("分","词缀类名:Replica Twyzel")-- 贗品．峽灣之星
--设置物品操作("分","词缀类名:Kingmaker")-- 王者之刃
--设置物品操作("分","词缀类名:Army of Bones")-- 化為塵土
--设置物品操作("分","词缀类名:Band of the Victor")-- 勝利之環
--设置物品操作("分","词缀类名:Eldritch Knowledge")-- 異能知識
--设置物品操作("分","词缀类名:Inspired Learning")-- 求知的熱情
--设置物品操作("分","词缀类名:Martial Artistry")-- 武藝之相
--设置物品操作("分","词缀类名:Lioneye's Fall")-- 獅眼的隕落
--设置物品操作("分","词缀类名:Intuitive Leap")-- 直覺之躍
--设置物品操作("分","词缀类名:Selfless Leadership")-- 無私領導
--设置物品操作("分","词缀类名:Survival Skills")-- 生存技巧
--设置物品操作("分","词缀类名:Survival Instincts")-- 生存本能
--设置物品操作("分","词缀类名:Survival Secrets")-- 生存秘技
--设置物品操作("分","词缀类名:Fertile Mind")-- 豐富心靈
--设置物品操作("分","词缀类名:Fluid Motion")-- 流暢行動
--设置物品操作("分","词缀类名:Cannibalistic Habits")-- 同族相殘
--设置物品操作("分","词缀类名:Spire of Stone")-- 石塔
--设置物品操作("分","词缀类名:Apparitions")-- 映像
--设置物品操作("分","词缀类名:Mantra of Flames")-- 烈炎之兆
--设置物品操作("分","词缀类名:Bulwark Legion")-- 堅守軍團
--设置物品操作("分","词缀类名:Vampire's Might")-- 吸血鬼的力量
--设置物品操作("分","词缀类名:Hotfooted")-- 腦衝
--设置物品操作("分","词缀类名:Replica Hotheaded")-- 贗品．腦衝
--设置物品操作("分","词缀类名:Combustibles")-- 燃盡
--设置物品操作("分","词缀类名:Weight of Sin")-- 罪惡的重量
--设置物品操作("分","词缀类名:Fevered Mind")-- 狂熱之心
--设置物品操作("分","词缀类名:The Naming Temporary")-- 暫名
--设置物品操作("分","词缀类名:Fragile Bloom")-- 脆弱的繁華
--设置物品操作("分","词缀类名:Replica Fragile Bloom")-- 贗品．脆弱的繁華
--设置物品操作("分","词缀类名:Hidden Potential")-- 深藏的潛能
--设置物品操作("分","词缀类名:Rain of Splinters")-- 碎鏃雨
--设置物品操作("分","词缀类名:Malicious Intent")-- 不善意圖
--设置物品操作("分","词缀类名:Brawn")-- 筋骨強化
--设置物品操作("分","词缀类名:Clear Mind")-- 理智
--设置物品操作("分","词缀类名:Specialised")-- 熟稔
--设置物品操作("分","词缀类名:Miser of Misery")-- 悲慘賜予者
--设置物品操作("分","词缀类名:Efficient Training")-- 充分訓練
--设置物品操作("分","词缀类名:Brute Force Solution")-- 蠻力衝撞
--设置物品操作("分","词缀类名:Inertia")-- 慣性
--设置物品操作("分","词缀类名:Careful Planning")-- 審慎計畫
--设置物品操作("分","词缀类名:Sacrificial Harvest")-- 原生祭儀
--设置物品操作("分","词缀类名:Atziri's Reign")-- 阿茲里之權
--设置物品操作("分","词缀类名:Vaal Sentencing")-- 瓦爾之訴
--设置物品操作("分","词缀类名:Poacher's Aim")-- 盜獵者的準心
--设置物品操作("分","词缀类名:Warlord's Reach")-- 督軍之力
--设置物品操作("分","词缀类名:Assassin's Haste")-- 刺殺者迷影
--设置物品操作("分","词缀类名:Conqueror's Efficiency")-- 征服者的迅捷
--设置物品操作("分","词缀类名:Replica Conqueror's Efficiency")-- 贗品．征服者的迅捷
--设置物品操作("分","词缀类名:Conqueror's Potency")-- 征服者的力量
--设置物品操作("分","词缀类名:Conqueror's Longevity")-- 征服者的長生
--设置物品操作("分","词缀类名:Ancient Waystones")-- 遠古基石
--设置物品操作("分","词缀类名:Chill of Corruption")-- 腐化寒息
--设置物品操作("分","词缀类名:Mutated Growth")-- 墮落異體
--设置物品操作("分","词缀类名:Hungry Abyss")-- 饑饉深淵
--设置物品操作("分","词缀类名:Zerphi's Youth")-- 澤佛伊的青春
--设置物品操作("分","词缀类名:Corrupted Energy")-- 腐化能量
--设置物品操作("分","词缀类名:Self-Flagellation")-- 殘虐之歡愉
--设置物品操作("分","词缀类名:Blood Sacrifice")-- 血犧
--设置物品操作("分","词缀类名:Replica Blood Sacrifice")-- 贗品．血犧
--设置物品操作("分","词缀类名:Brittle Barrier")-- 易碎屏障
--设置物品操作("分","词缀类名:Pacifism")-- 和平主義
--设置物品操作("分","词缀类名:Fragility")-- 虛弱
--设置物品操作("分","词缀类名:Powerlessness")-- 無力
--设置物品操作("分","词缀类名:Call of the Brotherhood")-- 意志呼喚
--设置物品操作("分","词缀类名:Pugilist")-- 迅擊者
--设置物品操作("分","词缀类名:Cold Steel")-- 冷鋼
--设置物品操作("分","词缀类名:Fireborn")-- 炎域
--设置物品操作("分","词缀类名:Energised Armour")-- 能量堅甲
--设置物品操作("分","词缀类名:Energy From Within")-- 潛能防護
--设置物品操作("分","词缀类名:Anatomical Knowledge")-- 真知灼見
--设置物品操作("分","词缀类名:Static Electricity")-- 靜電之源
--设置物品操作("分","词缀类名:Healthy Mind")-- 靈體轉換
--设置物品操作("分","词缀类名:Might in All Forms")-- 卓絕之力
设置物品操作("分","词缀类名:Kingsguard")-- 皇家衛甲
--设置物品操作("分","词缀类名:Goredrill")-- 血鑿
--设置物品操作("分","词缀类名:Bloodplay")-- 血謔
--设置物品操作("分","词缀类名:Replica Bloodplay")-- 贗品．血謔
--设置物品操作("分","词缀类名:Abberath's Horn")-- 艾貝拉斯之角
--设置物品操作("分","词缀类名:Realmshaper")-- 創域
--设置物品操作("分","词缀类名:Wildslash")-- 野性狂爪
--设置物品操作("分","词缀类名:The Deep One's Hide")-- 深淵絕壁
--设置物品操作("分","词缀类名:Dreadarc")-- 恐懼之鐮
--设置物品操作("分","词缀类名:Moonbender's Wing")-- 月嵐
--设置物品操作("分","词缀类名:The Princess")-- 女爵
--设置物品操作("分","词缀类名:Lakishu's Blade")-- 拉奇許之刃
--设置物品操作("分","词缀类名:Gorebreaker")-- 血裂
--设置物品操作("分","词缀类名:Lavianga's Wisdom")-- 拉維安加的智慧
--设置物品操作("分","词缀类名:Flesh-Eater")-- 血肉之嗜
--设置物品操作("分","词缀类名:The Stormheart")-- 風暴之眼
--设置物品操作("分","词缀类名:Brinerot Mark")-- 布琳洛特印記
--设置物品操作("分","词缀类名:Redblade Band")-- 紅刃之環
--设置物品操作("分","词缀类名:Mutewind Seal")-- 啞風封印
--设置物品操作("分","词缀类名:Brinerot Flag")-- 布琳洛特之旗
--设置物品操作("分","词缀类名:Redblade Banner")-- 紅刃旗幟
--设置物品操作("分","词缀类名:Mutewind Pennant")-- 啞風尖旗
--设置物品操作("分","词缀类名:Demigod's Beacon")-- 昇華之燈
--设置物品操作("分","词缀类名:Brinerot Whalers")-- 布琳洛特岸行者
--设置物品操作("分","词缀类名:Mutewind Whispersteps")-- 啞風輕步
--设置物品操作("分","词缀类名:Redblade Tramplers")-- 紅刃蹂躪靴
--设置物品操作("分","词缀类名:Trolltimber Spire")-- 巫木
--设置物品操作("分","词缀类名:Jorrhast's Blacksteel")-- 喬赫黑鋼
设置物品操作("分","词缀类名:Crown of the Pale King")-- 殞皇之冠
--设置物品操作("分","词缀类名:Ylfeban's Trickery")-- 伊芙班的詭計
--设置物品操作("分","词缀类名:Emberwake")-- 餘燼之痕
--设置物品操作("分","词缀类名:Replica Emberwake")-- 贗品．餘燼之痕
--设置物品操作("分","词缀类名:Slivers of Providence")-- 白銀恩典
--设置物品操作("分","词缀类名:Allure")-- 魅惑
--设置物品操作("分","词缀类名:Replica Allure")-- 贗品．魅惑
--设置物品操作("分","词缀类名:Steppan Eard")-- 絕地魔履
--设置物品操作("分","词缀类名:Broken Faith")-- 破碎信念
--设置物品操作("分","词缀类名:The Pariah")-- 草民
--设置物品操作("分","词缀类名:Coruscating Elixir")-- 閃耀精華
--设置物品操作("分","词缀类名:The Aylardex")-- 艾拉黛絲
--设置物品操作("分","词缀类名:Shattered Chains")-- 破碎之鍊
--设置物品操作("分","词缀类名:Weight of the Empire")-- 帝國重量
--设置物品操作("分","词缀类名:Pitch Darkness")-- 黯黑之調
--设置物品操作("分","词缀类名:Steel Spirit")-- 堅毅心靈
--设置物品操作("分","词缀类名:Growing Agony")-- 茁壯苦痛
--设置物品操作("分","词缀类名:Agnerod West")-- 西方雷霆聖杖
--设置物品操作("分","词缀类名:The Vinktar Square")-- 維克塔廣場
--设置物品操作("分","词缀类名:Feastbind")-- 盛宴之結
--设置物品操作("分","词缀类名:Faminebind")-- 饑荒之結
--设置物品操作("分","词缀类名:The Retch")-- 嘔吐
--设置物品操作("分","词缀类名:Bloodgrip")-- 鮮血支配
--设置物品操作("分","词缀类名:Hezmana's Bloodlust")-- 嗜血黑茲瑪娜
--设置物品操作("分","词缀类名:Vessel of Vinktar")-- 維克塔血器
--设置物品操作("分","词缀类名:Kongming's Stratagem")-- 孔明的神算
--设置物品操作("分","词缀类名:Skyforth")-- 空向
--设置物品操作("分","词缀类名:Reckless Defence")-- 魯莽防禦
--设置物品操作("分","词缀类名:Replica Reckless Defence")-- 贗品．魯莽防禦
--设置物品操作("分","词缀类名:Roth's Reach")-- 蘿絲之觸
--设置物品操作("分","词缀类名:Winds of Change")-- 昇華之風
--设置物品操作("分","词缀类名:Rotgut")-- 傷胃酒
--设置物品操作("分","词缀类名:The Vigil")-- 監視守夜
--设置物品操作("分","词缀类名:Rolling Flames")-- 滾動烈焰
--设置物品操作("分","词缀类名:Winter's Bounty")-- 冬季賞金
--设置物品操作("分","词缀类名:Spirited Response")-- 先祖回音
--设置物品操作("分","词缀类名:Femurs of the Saints")-- 聖徒脛骨
--设置物品操作("分","词缀类名:Cannot Die")-- 不朽之軀
--设置物品操作("分","词缀类名:Elemental Weapon")-- 元素武器
--设置物品操作("分","词缀类名:Attribute Override")-- 超越屬性
--设置物品操作("分","词缀类名:Ailment Durations")-- 延續病痛
--设置物品操作("分","词缀类名:De-Playerification")-- 玩家終結者
--设置物品操作("分","词缀类名:Obliteration")-- 抹滅
--设置物品操作("分","词缀类名:Wyrmsign")-- 龍族印記
--设置物品操作("分","词缀类名:Spine of the First Claimant")-- 先驅之脊
--设置物品操作("分","词缀类名:Izaro's Turmoil")-- 伊澤洛之亂
--设置物品操作("分","词缀类名:Chitus' Needle")-- 切特斯之針
--设置物品操作("分","词缀类名:Izaro's Dilemma")-- 伊澤洛之謎
--设置物品操作("分","词缀类名:Extractor Mentis")-- 心靈抽取
--设置物品操作("分","词缀类名:The Dancing Dervish")-- 狂舞德爾維希
--设置物品操作("分","词缀类名:Dead Reckoning")-- 死亡清算
--设置物品操作("分","词缀类名:Rapid Expansion")-- 急速擴張
--设置物品操作("分","词缀类名:Volley Fire")-- 怒火齊發
--设置物品操作("分","词缀类名:Spirit Guards")-- 精神守護
--设置物品操作("分","词缀类名:Iron Commander")-- 鋼鐵指揮
--设置物品操作("分","词缀类名:Replica Iron Commander")-- 贗品．鋼鐵指揮
--设置物品操作("分","词缀类名:Storm Prison")-- 禁錮暴風
--设置物品操作("分","词缀类名:Eclipse Solaris")-- 宇蝕
--设置物品操作("分","词缀类名:Disjunction")-- 分裂析取
--设置物品操作("分","词缀类名:Singularity")-- 奇異
--设置物品操作("分","词缀类名:Bitterdream")-- 苦夢
--设置物品操作("分","词缀类名:Replica Bitterdream")-- 贗品．苦夢
--设置物品操作("分","词缀类名:Soulthirst")-- 嗜魂
--设置物品操作("分","词缀类名:Night's Hold")-- 夜守
--设置物品操作("分","词缀类名:Essence Worm")-- 菁華蠕蟲
--设置物品操作("分","词缀类名:Star of Wraeclast")-- 瓦爾克拉斯之星
--设置物品操作("分","词缀类名:Blightwell")-- 枯井
--设置物品操作("分","词缀类名:Natural Hierarchy")-- 自然組織
--设置物品操作("分","词缀类名:Rigwald's Curse")-- 瑞佛詛咒
--设置物品操作("分","词缀类名:Eyes of the Greatwolf")-- 巨狼之眼
--设置物品操作("分","词缀类名:Rigwald's Crest")-- 瑞佛之冠
--设置物品操作("分","词缀类名:Rigwald's Savagery")-- 野性瑞佛
--设置物品操作("分","词缀类名:Rigwald's Command")-- 瑞佛統帥
--设置物品操作("分","词缀类名:Rigwald's Quills")-- 瑞佛之羽
--设置物品操作("分","词缀类名:Caer Blaidd, Wolfpack's Den")-- 塞爾．佈雷德狼穴
--设置物品操作("分","词缀类名:Winterheart")-- 冬之心
--设置物品操作("分","词缀类名:Replica Winterheart")-- 贗品．冬之心
--设置物品操作("分","词缀类名:Demigod's Dominance")-- 昇華統御
--设置物品操作("分","词缀类名:The Writhing Jar")-- 扭曲之罐
--设置物品操作("分","词缀类名:Malachai's Loop")-- 輪迴
--设置物品操作("分","词缀类名:Ngamahu's Flame")-- 里特拿馬乎
--设置物品操作("分","词缀类名:WIP Stone Flask")-- WIP Stone Flask
--设置物品操作("分","词缀类名:Borrowed Power")-- 力量借貸
--设置物品操作("分","词缀类名:Umbilicus Immortalis")-- 不朽繫命
--设置物品操作("分","词缀类名:Frost Unbroken")-- 不滅冰晶
--设置物品操作("分","词缀类名:Advancing Fortress")-- 超越壁壘
--设置物品操作("分","词缀类名:Replica Advancing Fortress")-- 贗品．超越壁壘
--设置物品操作("分","词缀类名:Xirgil's Crank")-- 舍吉的手柄
--设置物品操作("分","词缀类名:Deshret's Storm")-- 馬拉克斯花器
--设置物品操作("分","词缀类名:Ashes of the Condemned")-- 永恆帝國之甕
--设置物品操作("分","词缀类名:Mutewind Cache")-- 軍團的寶庫
--设置物品操作("分","词缀类名:Redblade Cache")-- 紅刃的寶庫
--设置物品操作("分","词缀类名:Brinerot Cache")-- 布琳洛特寶庫
--设置物品操作("分","词缀类名:Renegades Cache")-- 混沌軍團的寶庫
--设置物品操作("分","词缀类名:Trypanon")-- 裂顱
--设置物品操作("分","词缀类名:Replica Trypanon")-- 贗品．裂顱
--设置物品操作("分","词缀类名:Widowmaker")-- 寡婦
--设置物品操作("分","词缀类名:Clayshaper")-- 塑泥者
设置物品操作("分","词缀类名:Frostbreath")-- 霜息
--设置物品操作("分","词缀类名:Replica Frostbreath")-- 贗品．霜息
--设置物品操作("分","词缀类名:The Tempestuous Steel")-- 暴風之鋼
--设置物品操作("分","词缀类名:Replica Tempestuous Steel")-- 贗品．暴風之鋼
--设置物品操作("分","词缀类名:Daresso's Passion")-- 德瑞索的熱情
--设置物品操作("分","词缀类名:Ashcaller")-- 灰燼行者
--设置物品操作("分","词缀类名:Reefbane")-- 災禍之礁
--设置物品操作("分","词缀类名:The Sorrow of the Divine")-- 神聖哀悼
--设置物品操作("分","词缀类名:Replica Sorrow of the Divine")-- 贗品．神聖哀悼
--设置物品操作("分","词缀类名:Geofri's Sanctuary")-- 吉爾菲的聖殿
--设置物品操作("分","词缀类名:Axiom Perpetuum")-- 歷史公理
--设置物品操作("分","词缀类名:Varunastra")-- 黑鯊
--设置物品操作("分","词缀类名:Viper's Scales")-- 毒蛇之度
--设置物品操作("分","词缀类名:Abberath's Hooves")-- 艾貝拉斯之蹄
--设置物品操作("分","词缀类名:The Beast Fur Shawl")-- 獸毛披肩
--设置物品操作("分","词缀类名:Zerphi's Last Breath")-- 澤佛伊的終息
--设置物品操作("分","词缀类名:The Overflowing Chalice")-- 滿溢聖杯
--设置物品操作("分","词缀类名:Rive")-- 裂隙
--设置物品操作("分","词缀类名:Cheap Construction")-- 廉價建設
--设置物品操作("分","词缀类名:Replica Cheap Construction")-- 贗品．廉價建設
--设置物品操作("分","词缀类名:Glitterdisc")-- 七彩碟
--设置物品操作("分","词缀类名:Hair Trigger")-- 髮閘機關
--设置物品操作("分","词缀类名:Nuro's Harp")-- 努羅的豎琴
--设置物品操作("分","词缀类名:Coated Shrapnel")-- 榴星
--设置物品操作("分","词缀类名:Unstable Payload")-- 不穩定承載
--设置物品操作("分","词缀类名:Replica Unstable Payload")-- 贗品．不穩定承載
--设置物品操作("分","词缀类名:Heretic's Veil")-- 異教面紗
--设置物品操作("分","词缀类名:Emperor's Cunning")-- 帝王的詭計
--设置物品操作("分","词缀类名:Emperor's Wit")-- 帝王的智慧
--设置物品操作("分","词缀类名:Emperor's Might")-- 帝王的霸權
--设置物品操作("分","词缀类名:Emperor's Mastery")-- 帝王的純熟
--设置物品操作("分","词缀类名:Victario's Charity")-- 維多里奧的貢獻
--设置物品操作("分","词缀类名:Replica Victario's Charity")-- 贗品．維多里奧的貢獻
--设置物品操作("分","词缀类名:The Perandus Manor")-- 普蘭德斯莊園
--设置物品操作("分","词缀类名:Innsbury Edge")-- 茵斯布雷之刃
--设置物品操作("分","词缀类名:Replica Innsbury Edge")-- 贗品．茵斯布雷之刃
--设置物品操作("分","词缀类名:Duskwing")-- 黃昏之翼
--设置物品操作("分","词缀类名:Bloodletter")-- 血書
--设置物品操作("分","词缀类名:Three-step Assault")-- 三步突擊
--设置物品操作("分","词缀类名:Replica Three-step Assault")-- 贗品．三步突擊
--设置物品操作("分","词缀类名:The Rack")-- 架子
--设置物品操作("分","词缀类名:Cloak of Tawm'r Isley")-- 陶米兒艾斯理之袍
--设置物品操作("分","词缀类名:Grand Spectrum")-- 巨光譜
--设置物品操作("分","词缀类名:Ascent From Flesh")-- 血軀昇華
--设置物品操作("分","词缀类名:Mind of the Council")-- 議會之心
--设置物品操作("分","词缀类名:Hinekora's Sight")-- 悉妮蔻拉之眼
--设置物品操作("分","词缀类名:Kitava's Thirst")-- 奇塔弗之渴望
--设置物品操作("分","词缀类名:Scaeva")-- 食蚜
--设置物品操作("分","词缀类名:Saemus' Gift")-- 謝默斯的贈禮
--设置物品操作("分","词缀类名:Veruso’s Battering Rams")-- 維盧梭攻城槌
--设置物品操作("分","词缀类名:Kintsugi")-- 金繕
--设置物品操作("分","词缀类名:Rumblemarch")-- 奮勇進軍
--设置物品操作("分","词缀类名:Underdog's Fury")-- 犧牲者怒息
--设置物品操作("分","词缀类名:Touch of Anguish")-- 極度苦痛
--设置物品操作("分","词缀类名:Spiritskin")-- 精神之膚
--设置物品操作("分","词缀类名:Hiltless")-- 長卷
--设置物品操作("分","词缀类名:Ewar's Mirage")-- 伊沃幻像
设置物品操作("分","词缀类名:Lycosidae")-- 狼蛛
--设置物品操作("分","词缀类名:Voll's Vision")-- 福爾的遠見
--设置物品操作("分","词缀类名:Malachai's Vision")-- 瑪拉凱的遠見
--设置物品操作("分","词缀类名:Karui Charge")-- 卡魯充能
--设置物品操作("分","词缀类名:Wall of Brambles")-- 荊棘之牆
--设置物品操作("分","词缀类名:Shavronne's Gambit")-- 薛朗的詭計
--设置物品操作("分","词缀类名:Death's Opus")-- 死亡之作
--设置物品操作("分","词缀类名:Cospri's Will")-- 卡斯普里意志
--设置物品操作("分","词缀类名:The Ascetic")-- 苦行
--设置物品操作("分","词缀类名:Skirmish")-- 小會戰
--设置物品操作("分","词缀类名:The Learning Stone")-- 學習之石
--设置物品操作("分","词缀类名:Grip of the Council")-- 議會之握
--设置物品操作("分","词缀类名:Replica Grip of the Council")-- 贗品．議會之握
--设置物品操作("分","词缀类名:Kiara's Determination")-- 奇亞拉的決心
--设置物品操作("分","词缀类名:Tinkerskin")-- 焊匠之膚
--设置物品操作("分","词缀类名:Death's Door")-- 死亡大門
--设置物品操作("分","词缀类名:Reach of the Council")-- 議會之觸
--设置物品操作("分","词缀类名:Breath of the Council")-- 議會之息
--设置物品操作("分","词缀类名:Voidheart")-- 虛空心靈
--设置物品操作("分","词缀类名:Cragfall")-- 落石
--设置物品操作("分","词缀类名:The Signal Fire")-- 狼煙
--设置物品操作("分","词缀类名:Ngamahu Tiki")-- 拿瑪乎蒂基
--设置物品操作("分","词缀类名:Hrimburn")-- 李姆本
--设置物品操作("分","词缀类名:Martyr's Crown")-- 烈士之冠
--设置物品操作("分","词缀类名:Ezomyte Hold")-- 艾茲麥之握
--设置物品操作("分","词缀类名:Deidbellow")-- 喪吼
--设置物品操作("分","词缀类名:Thirst for Horrors")-- 顫慄之飢
--设置物品操作("分","词缀类名:The Oak")-- 橡樹
--设置物品操作("分","词缀类名:Kaltensoul")-- 冰霜之魂
--设置物品操作("分","词缀类名:The Gryphon")-- 獅鷲
--设置物品操作("分","词缀类名:The Cauteriser")-- 燒灼器
--设置物品操作("分","词缀类名:Doomfletch's Prism")-- 滅世之獄
--设置物品操作("分","词缀类名:Silverbough")-- 銀枝
--设置物品操作("分","词缀类名:The Tempest")-- 暴風雨
--设置物品操作("分","词缀类名:Hrimnor's Dirge")-- 雷姆諾的輓歌
--设置物品操作("分","词缀类名:Amplification Rod")-- 增幅杖
--设置物品操作("分","词缀类名:Realm Ender")-- 魂界終結
--设置物品操作("分","词缀类名:Queen's Escape")-- 逃亡女王
--设置物品操作("分","词缀类名:The Plaguemaw's Offering")-- 疫病之奉獻
--设置物品操作("分","词缀类名:Kaom's Way")-- 岡姆之路
--设置物品操作("分","词缀类名:Praxis")-- 普拉克斯
--设置物品操作("分","词缀类名:Kondo's Pride")-- 剛多的虛榮
--设置物品操作("分","词缀类名:Valyrium")-- 戰日
设置物品操作("分","词缀类名:The Brass Dome")-- 堅銅戰罩
设置物品操作("分","词缀类名:Brain Rattler")-- 腦亂者
--设置物品操作("分","词缀类名:Razor of the Seventh Sun")-- 七日鋒
--设置物品操作("分","词缀类名:Eye of Innocence")-- 無罪之眼
--设置物品操作("分","词缀类名:Slivertongue")-- 裂舌
--设置物品操作("分","词缀类名:Obscurantis")-- 朦朧詭面
--设置物品操作("分","词缀类名:Snakepit")-- 蛇巢
--设置物品操作("分","词缀类名:The Scourge")-- 災害
--设置物品操作("分","词缀类名:Cospri's Malice")-- 卡斯普里的怨恨
--设置物品操作("分","词缀类名:Starforge")-- 核星
--设置物品操作("分","词缀类名:Unending Hunger")-- 無盡飢餓
--设置物品操作("分","词缀类名:Voidwalker")-- 虛空行者
--设置物品操作("分","词缀类名:Replica Voidwalker")-- 贗品．虛空行者
--设置物品操作("分","词缀类名:Shaper's Touch")-- 塑者之觸
--设置物品操作("分","词缀类名:The Warden's Brand")-- 獄使之印
--设置物品操作("分","词缀类名:Witchfire Brew")-- 巫火秘釀
--设置物品操作("分","词缀类名:Dying Sun")-- 滅日
--设置物品操作("分","词缀类名:The Putrid Cloister")-- 腐臭迴廊
--设置物品操作("分","词缀类名:Atziri's Vessel")-- 阿茲里容器
--设置物品操作("分","词缀类名:Hallowed Ground")-- 萬聖之地
--设置物品操作("分","词缀类名:Breach Box")-- 裂痕匣盒
--设置物品操作("分","词缀类名:Primordial Harmony")-- 先祖和諧
--设置物品操作("分","词缀类名:Primordial Might")-- 先祖力量
--设置物品操作("分","词缀类名:Replica Primordial Might")-- 贗品．先祖力量
--设置物品操作("分","词缀类名:Primordial Eminence")-- 先祖卓越
--设置物品操作("分","词缀类名:The Anima Stone")-- 聚魂石
--设置物品操作("分","词缀类名:The Coming Calamity")-- 災難臨頭
--设置物品操作("分","词缀类名:Bisco's Collar")-- 畢斯寇的項圈
--设置物品操作("分","词缀类名:Inpulsa's Broken Heart")-- 印卜薩的心碎
--设置物品操作("分","词缀类名:Xoph's Nurture")-- 索伏的愛撫
--设置物品操作("分","词缀类名:Xoph's Inception")-- 索伏的始源
--设置物品操作("分","词缀类名:The Formless Flame")-- 無形火炬
--设置物品操作("分","词缀类名:The Formless Inferno")-- 無形煉獄
--设置物品操作("分","词缀类名:Xoph's Heart")-- 索伏之心
--设置物品操作("分","词缀类名:Xoph's Blood")-- 索伏之血
--设置物品操作("分","词缀类名:Tulborn")-- 托沃崩
--设置物品操作("分","词缀类名:Tulfall")-- 托沃臥
--设置物品操作("分","词缀类名:Replica Tulfall")-- 贗品．托沃臥
--设置物品操作("分","词缀类名:The Snowblind Grace")-- 雪盲恩惠
--设置物品操作("分","词缀类名:The Perfect Form")-- 完美姿態
--设置物品操作("分","词缀类名:Replica Perfect Form")-- 贗品．完美姿態
--设置物品操作("分","词缀类名:The Halcyon")-- 太平
--设置物品操作("分","词缀类名:The Pandemonius")-- 群魔殿
--设置物品操作("分","词缀类名:Hand of Thought and Motion")-- 思動之手
--设置物品操作("分","词缀类名:Hand of Wisdom and Action")-- 智行之手
--设置物品操作("分","词缀类名:Esh's Mirror")-- 艾許之鏡
--设置物品操作("分","词缀类名:Esh's Visage")-- 艾許之面
--设置物品操作("分","词缀类名:Voice of the Storm")-- 暴風之言
--设置物品操作("分","词缀类名:Choir of the Storm")-- 暴風之語
设置物品操作("分","词缀类名:The Infinite Pursuit")-- 無盡之距
--设置物品操作("分","词缀类名:The Red Trail")-- 赤紅蹤跡
--设置物品操作("分","词缀类名:Replica Red Trail")-- 贗品．赤紅蹤跡
--设置物品操作("分","词缀类名:Uul-Netol's Kiss")-- 烏爾尼多之吻
--设置物品操作("分","词缀类名:Uul-Netol's Embrace")-- 烏爾尼多的擁抱
--设置物品操作("分","词缀类名:The Anticipation")-- 懸念
--设置物品操作("分","词缀类名:The Surrender")-- 降伏
--设置物品操作("分","词缀类名:Severed in Sleep")-- 離異夢寐
--设置物品操作("分","词缀类名:United in Dream")-- 合流夢寐
--设置物品操作("分","词缀类名:Skin of the Loyal")-- 忠誠之膚
--设置物品操作("分","词缀类名:Skin of the Lords")-- 君主之膚
--设置物品操作("分","词缀类名:The Red Dream")-- 赤影夢境
--设置物品操作("分","词缀类名:The Red Nightmare")-- 赤影夢魘
--设置物品操作("分","词缀类名:The Green Dream")-- 青影夢境
--设置物品操作("分","词缀类名:The Green Nightmare")-- 青影夢魘
--设置物品操作("分","词缀类名:The Blue Dream")-- 碧影夢境
--设置物品操作("分","词缀类名:The Blue Nightmare")-- 碧影夢魘
--设置物品操作("分","词缀类名:Tukohama's Fortress")-- 圖克哈瑪堡壘
--设置物品操作("分","词缀类名:Replica Tukohama's Fortress")-- 贗品．圖克哈瑪堡壘
设置物品操作("分","词缀类名:Soul Tether")-- 靈魂束縛
--设置物品操作("分","词缀类名:Replica Soul Tether")-- 贗品．靈魂束縛
--设置物品操作("分","词缀类名:Angler's Plait")-- 漁夫之辮
--设置物品操作("分","词缀类名:Haemophilia")-- 逆凝之血
--设置物品操作("分","词缀类名:The Baron")-- 男爵
--设置物品操作("分","词缀类名:Ahn's Heritage")-- 漢恩的遺產
--设置物品操作("分","词缀类名:Shade of Solaris")-- 日耀之影
--设置物品操作("分","词缀类名:The Maelstrom Cell")-- 魔暴細胞
--设置物品操作("分","词缀类名:The Brine Crown")-- 海王冠冕
--设置物品操作("分","词缀类名:Sin's Rebirth")-- 再生的罪惡
--设置物品操作("分","词缀类名:Light of Lunaris")-- 月影之耀
--设置物品操作("分","词缀类名:Kitava's Feast")-- 奇塔弗之盛宴
--设置物品操作("分","词缀类名:Duskdawn")-- 宵曉
--设置物品操作("分","词缀类名:Replica Duskdawn")-- 贗品．宵曉
--设置物品操作("分","词缀类名:Perseverance")-- 恆毅意志
--设置物品操作("分","词缀类名:Arakaali's Fang")-- 艾爾卡莉之牙
--设置物品操作("分","词缀类名:Gruthkul's Pelt")-- 葛魯斯寇真皮
--设置物品操作("分","词缀类名:Presence of Chayula")-- 夏烏拉之印
--设置物品操作("分","词缀类名:Weylam's War Chest")-- 威廉戰匣
--设置物品操作("分","词缀类名:Collateral Damage")-- 戰殤
--设置物品操作("分","词缀类名:Sudden Ignition")-- 急遽點燃
--设置物品操作("分","词缀类名:Overwhelming Odds")-- 絕對壓制
--设置物品操作("分","词缀类名:First Snow")-- 初雪
--设置物品操作("分","词缀类名:Omen on the Winds")-- 乘風之兆
--设置物品操作("分","词缀类名:Wildfire")-- 燐火
--设置物品操作("分","词缀类名:Fight for Survival")-- 存戰
--设置物品操作("分","词缀类名:Might and Influence")-- 強權之勢
--设置物品操作("分","词缀类名:Frozen Trail")-- 跡凍
--设置物品操作("分","词缀类名:Ring of Blades")-- 環形刃
--设置物品操作("分","词缀类名:Boundless Grasp")-- 無邊抑制
--设置物品操作("分","词缀类名:Inevitability")-- 必然
--设置物品操作("分","词缀类名:Winter Burial")-- 冬葬
--设置物品操作("分","词缀类名:Bisco's Leash")-- 畢斯寇繫帶
--设置物品操作("分","词缀类名:Spreading Rot")-- 拓蝕
--设置物品操作("分","词缀类名:Garukhan's Flight")-- 卡洛翰之影
--设置物品操作("分","词缀类名:Prospero's Vault")-- 普洛斯彼羅金庫
--设置物品操作("分","词缀类名:Debeon's Dirge")-- 狄恩的輓歌
--设置物品操作("分","词缀类名:The Wise Oak")-- 哲櫟
--设置物品操作("分","词缀类名:Violent Dead")-- 亡者之殘
--设置物品操作("分","词缀类名:Hazardous Research")-- 危機學
--设置物品操作("分","词缀类名:Tidebreaker")-- 破浪者
--设置物品操作("分","词缀类名:Martyr of Innocence")-- 烈士之淨
--设置物品操作("分","词缀类名:Bloodbond")-- 血肉結合
--设置物品操作("分","词缀类名:Legacy Relic")-- 不朽遺產
--设置物品操作("分","词缀类名:Timeworn Relic")-- 古朽秘寶
--设置物品操作("分","词缀类名:Vaal Relic")-- 瓦爾資料庫
--设置物品操作("分","词缀类名:Forgotten Relic")-- 被遺忘的罪惡
--设置物品操作("分","词缀类名:Visceral Relic")-- 臟器殘骸
--设置物品操作("分","词缀类名:Shiny Relic")-- 閃亮的玩具盒
--设置物品操作("分","词缀类名:Archive Relic")-- 暫存文案
--设置物品操作("分","词缀类名:Oubliette Relic")-- 剩無
--设置物品操作("分","词缀类名:Cosmic Relic")-- 父愛
--设置物品操作("分","词缀类名:Decaying Relic")-- 沉默不朽
--设置物品操作("分","词缀类名:Voidborn Relic")-- 虛誕保險箱
--设置物品操作("分","词缀类名:Ryslatha's Coil")-- 瑞斯拉薩之纏
--设置物品操作("分","词缀类名:Speaker's Wreath")-- 預言家桂冠
--设置物品操作("分","词缀类名:Ahn's Contempt")-- 漢恩的蔑視
--设置物品操作("分","词缀类名:Ahn's Might")-- 漢恩的期許
--设置物品操作("分","词缀类名:Inya's Epiphany")-- 茵雅的頓悟
--设置物品操作("分","词缀类名:Replica Inya's Epiphany")-- 贗品．茵雅的頓悟
--设置物品操作("分","词缀类名:Volkuur's Guidance")-- 福庫爾的指引
--设置物品操作("分","词缀类名:Replica Volkuur's Guidance")-- 贗品．福庫爾的指引
--设置物品操作("分","词缀类名:Yriel's Fostering")-- 伊瑞的栽培
--设置物品操作("分","词缀类名:Eber's Unification")-- 希伯的統治
--设置物品操作("分","词缀类名:Pact of Skulls")-- 亡顱協議
--设置物品操作("分","词缀类名:Choking Ash")-- 窒息餘燼
--设置物品操作("分","词缀类名:Straight and True")-- 不變真理
--设置物品操作("分","词缀类名:Balefire")-- 野火
--设置物品操作("分","词缀类名:The Rippling Thoughts")-- 漣漪冥想
--设置物品操作("分","词缀类名:The Flow Untethered")-- 潺流不息
--设置物品操作("分","词缀类名:The Unshattered Will")-- 不滅意志
--设置物品操作("分","词缀类名:First Piece of Focus")-- 第一專注碎片
--设置物品操作("分","词缀类名:Second Piece of Focus")-- 第二專注碎片
--设置物品操作("分","词缀类名:Third Piece of Focus")-- 第三專注碎片
--设置物品操作("分","词缀类名:Fourth Piece of Focus")-- 第四專注碎片
--设置物品操作("分","词缀类名:The Fracturing Spinner")-- 裂斷蛛絲
--设置物品操作("分","词缀类名:The Tempest's Binding")-- 風暴的拘束
--设置物品操作("分","词缀类名:From Dust")-- 塵土歸來
--设置物品操作("分","词缀类名:To Dust")-- 塵埃落定
--设置物品操作("分","词缀类名:The Wasp Nest")-- 蜂巢浪湧
--设置物品操作("分","词缀类名:Taproot")-- 砥礪深根
--设置物品操作("分","词缀类名:Maligaro's Cruelty")-- 馬雷葛蘿的殘暴
--设置物品操作("分","词缀类名:Dendrobate")-- 箭毒蛙
--设置物品操作("分","词缀类名:The Embalmer")-- 福馬林
--设置物品操作("分","词缀类名:Allelopathy")-- 相生相剋
--设置物品操作("分","词缀类名:Replica Allelopathy")-- 贗品．相生相剋
--设置物品操作("分","词缀类名:The Enmity Divine")-- 惡言聖語
--设置物品操作("分","词缀类名:First Piece of Arcane")-- 第一奧術碎片
--设置物品操作("分","词缀类名:Second Piece of Arcane")-- 第二奧術碎片
--设置物品操作("分","词缀类名:Third Piece of Arcane")-- 第三奧術碎片
--设置物品操作("分","词缀类名:First Piece of Brutality")-- 第一暴虐碎片
--设置物品操作("分","词缀类名:Second Piece of Brutality")-- 第二暴虐碎片
--设置物品操作("分","词缀类名:Third Piece of Brutality")-- 第三暴虐碎片
--设置物品操作("分","词缀类名:First Piece of Time")-- 第一時空碎片
--设置物品操作("分","词缀类名:Second Piece of Time")-- 第二時空碎片
--设置物品操作("分","词缀类名:First Piece of Directions")-- 第一象限碎片
--设置物品操作("分","词缀类名:Second Piece of Directions")-- 第二象限碎片
--设置物品操作("分","词缀类名:Third Piece of Directions")-- 第三象限碎片
--设置物品操作("分","词缀类名:First Piece of Storms")-- 第一風暴碎片
--设置物品操作("分","词缀类名:Second Piece of Storms")-- 第二風暴碎片
--设置物品操作("分","词缀类名:Third Piece of Storms")-- 第三風暴碎片
--设置物品操作("分","词缀类名:The Beachhead")-- 神諭之殿
--设置物品操作("分","词缀类名:Doedre's Skin")-- 德瑞之膚
--设置物品操作("分","词缀类名:The Twilight Temple")-- 暮色神廟
--设置物品操作("分","词缀类名:Vix Lunaris")-- 波動月影
--设置物品操作("分","词缀类名:Invictus Solaris")-- 堅毅日耀
--设置物品操作("分","词缀类名:Doryani's Delusion")-- 多里亞尼的幻想
--设置物品操作("分","词缀类名:Doryani's Machinarium")-- 多里亞尼的機械迷城
--设置物品操作("分","词缀类名:Dialla's Malefaction")-- 達拉的罪刑
--设置物品操作("分","词缀类名:Malachai's Mark")-- 瑪拉凱之面
--设置物品操作("分","词缀类名:Book Stand Strongbox")-- 詩擋保險箱
--设置物品操作("分","词缀类名:Pillars of Arun")-- 艾倫之柱
--设置物品操作("分","词缀类名:Replica Pillars of Arun")-- 贗品．艾倫之柱
--设置物品操作("分","词缀类名:Stormcharger")-- 暴充
--设置物品操作("分","词缀类名:Giantsbane")-- 大屠殺
--设置物品操作("分","词缀类名:Wraithlord")-- 憤靈郡主
--设置物品操作("分","词缀类名:Cane of Unravelling")-- 初惡枝枒
--设置物品操作("分","词缀类名:Ralakesh's Impatience")-- 芮勒蓋許的急躁
--设置物品操作("分","词缀类名:The Hungry Loop")-- 惡鬼轉世
--设置物品操作("分","词缀类名:The Poet's Pen")-- 學富之筆
--设置物品操作("分","词缀类名:Coralito's Signature")-- 克拉里多的名印
--设置物品操作("分","词缀类名:The Long Winter")-- 凜冽久冬
--设置物品操作("分","词缀类名:Pure Talent")-- 純才
--设置物品操作("分","词缀类名:Replica Pure Talent")-- 贗品．純才
--设置物品操作("分","词缀类名:Oskarm")-- 厄斯根
--设置物品操作("分","词缀类名:Might of the Meek")-- 儒子可教
--设置物品操作("分","词缀类名:Sands of Shakari")-- 夏卡莉之沙
--设置物品操作("分","词缀类名:The Golden Rule")-- 黃金守則
--设置物品操作("分","词缀类名:Soul's Wick")-- 魂靈之芯
--设置物品操作("分","词缀类名:Oni-Goroshi")-- 西拉氣流殺
--设置物品操作("分","词缀类名:Memory Vault")-- 回憶寶庫
--设置物品操作("分","词缀类名:Cyclopean Coil")-- 巨岩之環
--设置物品操作("分","词缀类名:Magna Eclipsis")-- 堅毅之蝕
--设置物品操作("分","词缀类名:Leper's Alms")-- 痲瘋的醫款
--设置物品操作("分","词缀类名:Impresence")-- 不在場證明
--设置物品操作("分","词缀类名:Iron Heart")-- 鐵石心腸
--设置物品操作("分","词缀类名:Bubonic Trail")-- 布巴尼克的線索
--设置物品操作("分","词缀类名:White Wind")-- 白風
--设置物品操作("分","词缀类名:Arborix")-- 阿布里斯
--设置物品操作("分","词缀类名:Yoke of Suffering")-- 磨難之軛
--设置物品操作("分","词缀类名:Gorgon's Gaze")-- 戈耳戈的凝視
--设置物品操作("分","词缀类名:Tombfist")-- 陵拳
--设置物品操作("分","词缀类名:Darkness Enthroned")-- 夜惡降臨
--设置物品操作("分","词缀类名:Lightpoacher")-- 光明獵盜者
--设置物品操作("分","词缀类名:Shroud of the Lightless")-- 晦暗的屍布
--设置物品操作("分","词缀类名:Replica Shroud of the Lightless")-- 贗品．晦暗的屍布
--设置物品操作("分","词缀类名:Watcher's Eye")-- 看守之眼
--设置物品操作("分","词缀类名:Blasphemer's Grasp")-- 褻瀆者之握
--设置物品操作("分","词缀类名:Nebuloch")-- 銀河眾星
--设置物品操作("分","词缀类名:Hopeshredder")-- 破滅之希
--设置物品操作("分","词缀类名:Shimmeron")-- 低伏微光
--设置物品操作("分","词缀类名:Grelwood Shank")-- 沃德步伐
--设置物品操作("分","词缀类名:Beltimber Blade")-- 刀鋒禁材
--设置物品操作("分","词缀类名:Vulconus")-- 祝融鍛冶
--设置物品操作("分","词缀类名:Augyre")-- 相星占卜
--设置物品操作("分","词缀类名:Gloomfang")-- 憂愁獠根
--设置物品操作("分","词缀类名:Mark of the Elder")-- 尊師之印
--设置物品操作("分","词缀类名:Mark of the Shaper")-- 塑者之印
--设置物品操作("分","词缀类名:Indigon")-- 地印之環
--设置物品操作("分","词缀类名:Disintegrator")-- 滅碎獠杖
--设置物品操作("分","词缀类名:Voidforge")-- 核虛
--设置物品操作("分","词缀类名:Voidfletcher")-- 虛眼箭矢
--设置物品操作("分","词缀类名:Mark of the Red Covenant")-- 焰首支環
--设置物品操作("分","词缀类名:Soulwrest")-- 鑄影
--设置物品操作("分","词缀类名:Sinvicta's Mettle")-- 辛維塔之毅
--设置物品操作("分","词缀类名:Saqawal's Winds")-- 斯卡沃之翼
--设置物品操作("分","词缀类名:Saqawal's Nest")-- 斯卡沃之巢
--设置物品操作("分","词缀类名:Saqawal's Talons")-- 斯卡沃鷹爪
--设置物品操作("分","词缀类名:Saqawal's Flock")-- 斯卡沃之徒
--设置物品操作("分","词缀类名:Craiceann's Carapace")-- 奎爾珊硬甲
--设置物品操作("分","词缀类名:Craiceann's Chitin")-- 奎爾珊畸面
--设置物品操作("分","词缀类名:Craiceann's Pincers")-- 奎爾珊堅鉗
--设置物品操作("分","词缀类名:Craiceann's Tracks")-- 奎爾珊之跡
--设置物品操作("分","词缀类名:Farrul's Fur")-- 費爾羅羽衣
--设置物品操作("分","词缀类名:Replica Farrul's Fur")-- 贗品．費爾羅羽衣
--设置物品操作("分","词缀类名:Farrul's Bite")-- 費爾羅咥喙
--设置物品操作("分","词缀类名:Farrul's Pounce")-- 費爾羅鋒爪
--设置物品操作("分","词缀类名:Farrul's Chase")-- 費爾羅獵靴
--设置物品操作("分","词缀类名:Fenumus' Shroud")-- 菲恩絲魘甲
--设置物品操作("分","词缀类名:Fenumus' Toxins")-- 菲恩絲獠牙
--设置物品操作("分","词缀类名:Fenumus' Weave")-- 菲恩絲夜織
--设置物品操作("分","词缀类名:Fenumus' Spinnerets")-- 菲恩絲刺靴
--设置物品操作("分","词缀类名:Loreweave")-- 智者織衫
--设置物品操作("分","词缀类名:Replica Loreweave")-- 贗品．智者織衫
--设置物品操作("分","词缀类名:Unyielding Flame")-- 不屈惡火
--设置物品操作("分","词缀类名:Stormfire")-- 烈風暴
--设置物品操作("分","词缀类名:Gluttony")-- 貪食腰
--设置物品操作("分","词缀类名:Crystal Vault")-- 水晶寶庫
--设置物品操作("分","词缀类名:Greedtrap")-- 貪婪之跡
--设置物品操作("分","词缀类名:Wildwrap")-- 野變
--设置物品操作("分","词缀类名:Sunspite")-- 日咒
--设置物品操作("分","词缀类名:Windshriek")-- 風嘯
--设置物品操作("分","词缀类名:Duskblight")-- 日落破滅
--设置物品操作("分","词缀类名:Meginord's Vigour")-- 梅吉諾德的朝氣
--设置物品操作("分","词缀类名:Doedre's Malevolence")-- 德瑞的惡意
--设置物品操作("分","词缀类名:Frostferno")-- 霜獄
--设置物品操作("分","词缀类名:Timetwist")-- 時空扭曲
--设置物品操作("分","词缀类名:Atziri's Reflection")-- 阿茲里的映照
--设置物品操作("分","词缀类名:Panquetzaliztli")-- 噸擊之錘
--设置物品操作("分","词缀类名:Mirebough")-- 尼根
--设置物品操作("分","词缀类名:The Stormwall")-- 風暴堅牆
--设置物品操作("分","词缀类名:Fox's Fortune")-- 狐毛之富
--设置物品操作("分","词缀类名:Asenath's Chant")-- 安賽娜絲的歌頌
--设置物品操作("分","词缀类名:Honourhold")-- 榮耀之欲
--设置物品操作("分","词缀类名:Malachai's Awakening")-- 瑪拉凱的覺醒
--设置物品操作("分","词缀类名:Sidhebite")-- 斯拜特
--设置物品操作("分","词缀类名:The Effigon")-- 艾非根
--设置物品操作("分","词缀类名:The Tactician")-- 智勇軍師
--设置物品操作("分","词缀类名:The Nomad")-- 游牧
--设置物品操作("分","词缀类名:Winterweave")-- 冬織
--设置物品操作("分","词缀类名:Hyrri's Demise")-- 西里的死亡
--设置物品操作("分","词缀类名:Dreadsurge")-- 畏懼波動
--设置物品操作("分","词缀类名:Sanguine Gambol")-- 血腥之躍
--设置物品操作("分","词缀类名:Geofri's Devotion")-- 吉爾菲的奉獻
--设置物品操作("分","词缀类名:Cameria's Avarice")-- 卡美利亞的貪婪
--设置物品操作("分","词缀类名:Dreadbeak")-- 恐懼之喙
--设置物品操作("分","词缀类名:The Dancing Duo")-- 雙人舞
--设置物品操作("分","词缀类名:Corona Solaris")-- 日耀之冕
--设置物品操作("分","词缀类名:The Iron Fortress")-- 鋼鐵壁壘
--设置物品操作("分","词缀类名:Chains of Command")-- 統帥之鏈
--设置物品操作("分","词缀类名:Architect's Hand")-- 構築之手
--设置物品操作("分","词缀类名:Slavedriver's Hand")-- 奴役之手
--设置物品操作("分","词缀类名:Mask of the Spirit Drinker")-- 魂飲化面
--设置物品操作("分","词缀类名:Mask of the Stitched Demon")-- 惡縫之面
--设置物品操作("分","词缀类名:Apep's Slumber")-- 艾普之眠
--设置物品操作("分","词缀类名:Apep's Supremacy")-- 艾普霸權
--设置物品操作("分","词缀类名:Shadowstitch")-- 縫影
--设置物品操作("分","词缀类名:Sacrificial Heart")-- 犧牲之心
--设置物品操作("分","词缀类名:Zerphi's Heart")-- 澤佛伊之心
--设置物品操作("分","词缀类名:Tempered Flesh")-- 冶鍊之體
--设置物品操作("分","词缀类名:Tempered Spirit")-- 冶鍊之靈
--设置物品操作("分","词缀类名:Tempered Mind")-- 冶鍊之意
--设置物品操作("分","词缀类名:Transcendent Flesh")-- 超凡之體
--设置物品操作("分","词缀类名:Transcendent Spirit")-- 超凡之靈
--设置物品操作("分","词缀类名:Transcendent Mind")-- 超凡之意
--设置物品操作("分","词缀类名:Soul Catcher")-- 追魂者
--设置物品操作("分","词缀类名:Soul Ripper")-- 碎魂者
--设置物品操作("分","词缀类名:String of Servitude")-- 奴役之索
--设置物品操作("分","词缀类名:Dance of the Offered")-- 奉獻之舞
--设置物品操作("分","词缀类名:Omeyocan")-- 歐門悠根
--设置物品操作("分","词缀类名:Coward's Chains")-- 懦夫的鎖鏈
设置物品操作("分","词缀类名:Coward's Legacy")-- 懦夫的遺產
--设置物品操作("分","词缀类名:Story of the Vaal")-- 瓦爾之序
--设置物品操作("分","词缀类名:Fate of the Vaal")-- 瓦爾之命
--设置物品操作("分","词缀类名:Zeel's Amplifier")-- 薩爾的揚音
--设置物品操作("分","词缀类名:Earendel's Embrace")-- 伊爾多恩的擁抱
--设置物品操作("分","词缀类名:Replica Earendel's Embrace")-- 贗品．伊爾多恩的擁抱
--设置物品操作("分","词缀类名:Combat Focus")-- 專精作戰
--设置物品操作("分","词缀类名:Malachai's Brilliance")-- 瑪拉凱的聰慧
--设置物品操作("分","词缀类名:Unnatural Instinct")-- 神感
--设置物品操作("分","词缀类名:Lawbreaker")-- 破法者
--设置物品操作("分","词缀类名:Mark of Submission")-- 臣服之記
--设置物品操作("分","词缀类名:The Grey Spire")-- 斑駁蒼杖
--设置物品操作("分","词缀类名:The Primordial Chain")-- 先祖羈絆
--设置物品操作("分","词缀类名:Vixen's Entrapment")-- 雌狐的圈套
--设置物品操作("分","词缀类名:The Eternal Apple")-- 永恆的蘋果
--设置物品操作("分","词缀类名:Perquil's Toe")-- 珀奎爾的指頭
设置物品操作("分","词缀类名:Demon Stitcher")-- 縫魔
--设置物品操作("分","词缀类名:Command of the Pit")-- 闇核號令
--设置物品操作("分","词缀类名:Curtain Call")-- 華麗閉幕
--设置物品操作("分","词缀类名:Cerberus Limb")-- 獄犬殘肢
--设置物品操作("分","词缀类名:Hale Negator")-- 強彈辯駁
--设置物品操作("分","词缀类名:Crown of the Tyrant")-- 堂皇冠冕
--设置物品操作("分","词缀类名:Ahkeli's Mountain")-- 阿卡莉的山巒
--设置物品操作("分","词缀类名:Ahkeli's Meadow")-- 阿卡莉的草原
--设置物品操作("分","词缀类名:Ahkeli's Valley")-- 阿卡莉的峽谷
--设置物品操作("分","词缀类名:Uzaza's Mountain")-- 尤莎莎的山巒
--设置物品操作("分","词缀类名:Uzaza's Meadow")-- 尤莎莎的草原
--设置物品操作("分","词缀类名:Uzaza's Valley")-- 尤莎莎的峽谷
--设置物品操作("分","词缀类名:Putembo's Mountain")-- 普坦堡的山巒
--设置物品操作("分","词缀类名:Putembo's Meadow")-- 普坦堡的草原
--设置物品操作("分","词缀类名:Putembo's Valley")-- 普坦堡的峽谷
--设置物品操作("分","词缀类名:Precursor's Emblem")-- 先引之征
--设置物品操作("分","词缀类名:Aul's Uprising")-- 奧爾的崛起
--设置物品操作("分","词缀类名:Chaber Cairn")-- 忠誠之記
--设置物品操作("分","词缀类名:Ullr's Advent")-- 烏勒爾之誕
--设置物品操作("分","词缀类名:Geofri's Legacy")-- 吉爾菲的遺產
--设置物品操作("分","词缀类名:Unearth Threshold")-- 出土門閘
--设置物品操作("分","词缀类名:Toxic Vapours")-- 腐蝕之息
--设置物品操作("分","词缀类名:Waycarver")-- 刻劃精工
--设置物品操作("分","词缀类名:Worldcarver")-- 巧奪天工
--设置物品操作("分","词缀类名:Farsight")-- 遠視
--设置物品操作("分","词缀类名:Flamesight")-- 炎視
--设置物品操作("分","词缀类名:Galesight")-- 風視
--设置物品操作("分","词缀类名:Thundersight")-- 雷視
--设置物品操作("分","词缀类名:The Eternity Shroud")-- 永恆屍布
--设置物品操作("分","词缀类名:Replica Eternity Shroud")-- 贗品．永恆屍布
--设置物品操作("分","词缀类名:Solstice Vigil")-- 守夜之至
--设置物品操作("分","词缀类名:Vivinsect")-- 寄生惡魔
--设置物品操作("分","词缀类名:The Crimson Storm")-- 緋紅風暴
--设置物品操作("分","词缀类名:Paradoxica")-- 矛盾對決
--设置物品操作("分","词缀类名:Replica Paradoxica")-- 贗品．矛盾對決
--设置物品操作("分","词缀类名:Hyperboreus")-- 極地束腹
--设置物品操作("分","词缀类名:The Queen's Hunger")-- 女王的渴望
--设置物品操作("分","词缀类名:Cinderswallow Urn")-- 噬燼甕
设置物品操作("分","词缀类名:The Devouring Diadem")-- 吞噬之冠
--设置物品操作("分","词缀类名:Bitterbind Point")-- 苦綑畸點
--设置物品操作("分","词缀类名:Whakatutuki o Matua")-- 養育之恩
--设置物品操作("分","词缀类名:Nebulis")-- 銀河星雲
--设置物品操作("分","词缀类名:Replica Nebulis")-- 贗品．銀河星雲
--设置物品操作("分","词缀类名:Bottled Faith")-- 瓶中信仰
--设置物品操作("分","词缀类名:Offering to the Serpent")-- 蛇皮獻祭
--设置物品操作("分","词缀类名:Garb of the Ephemeral")-- 無常禮袍
--设置物品操作("分","词缀类名:Storm's Gift")-- 風暴之贈
--设置物品操作("分","词缀类名:Mask of the Tribunal")-- 審判莊嚴
--设置物品操作("分","词缀类名:Circle of Anguish")-- 煎熬之環
--设置物品操作("分","词缀类名:Circle of Fear")-- 恐懼之環
--设置物品操作("分","词缀类名:Circle of Regret")-- 遺憾之環
--设置物品操作("分","词缀类名:Circle of Nostalgia")-- 懷舊之環
--设置物品操作("分","词缀类名:Circle of Guilt")-- 愧疚之環
--设置物品操作("分","词缀类名:Hyrri's Truth")-- 西里的真理
--设置物品操作("分","词缀类名:Replica Hyrri's Truth")-- 贗品．西里的真理
--设置物品操作("分","词缀类名:Perepiteia")-- 極轉電刑
--设置物品操作("分","词缀类名:March of the Legion")-- 軍閥行軍
--设置物品操作("分","词缀类名:Maloney's Mechanism")-- 馬洛尼的機關
--设置物品操作("分","词缀类名:Replica Maloney's Mechanism")-- 贗品．馬洛尼的機關
--设置物品操作("分","词缀类名:Aukuna's Will")-- 奧庫納之意
--设置物品操作("分","词缀类名:Maw of Conquest")-- 雛鳥之征
--设置物品操作("分","词缀类名:Tavukai")-- 狂靈之怒
--设置物品操作("分","词缀类名:Fractal Thoughts")-- 異想
--设置物品操作("分","词缀类名:Reliquary of the Apex")-- 奉獻之贈
--设置物品操作("分","词缀类名:Reliquary of the Abyss")-- 赤紅皇后之贈
--设置物品操作("分","词缀类名:Demigod's Immortality ")-- 昇華不朽
--设置物品操作("分","词缀类名:Wreath of Phrecia")-- 費西亞之環
--设置物品操作("分","词缀类名:Sign of the Sin Eater")-- 罪孽嗜者之示
--设置物品操作("分","词缀类名:Glorious Vanity")-- 輝煌的虛榮
--设置物品操作("分","词缀类名:Lethal Pride")-- 致命的驕傲
--设置物品操作("分","词缀类名:Brutal Restraint")-- 殘酷的紀律
--设置物品操作("分","词缀类名:Militant Faith")-- 激進的信仰
--设置物品操作("分","词缀类名:Elegant Hubris")-- 優雅的高傲
--设置物品操作("分","词缀类名:Divide and Conquer")-- 沸騰之怒
--设置物品操作("分","词缀类名:Altered Distant Memory")-- 遙遠記憶：編造
--设置物品操作("分","词缀类名:Augmented Distant Memory")-- 遙遠記憶：增幅
--设置物品操作("分","词缀类名:Twisted Distant Memory")-- 遙遠記憶：扭曲
--设置物品操作("分","词缀类名:Rewritten Distant Memory")-- 遙遠記憶：改寫
--设置物品操作("分","词缀类名:Cortex")-- 深沉記憶
--设置物品操作("分","词缀类名:Replica Cortex")-- 贗品．深沉記憶
--设置物品操作("分","词缀类名:Triad Grip")-- 三弦指法
--设置物品操作("分","词缀类名:Venopuncture")-- 脈絡針刺
--设置物品操作("分","词缀类名:Icefang Orbit")-- 冰風軌跡
--设置物品操作("分","词缀类名:Rotting Legion")-- 腐敗軍團
--设置物品操作("分","词缀类名:Badge of the Brotherhood")-- 激情之章
--设置物品操作("分","词缀类名:Siegebreaker")-- 突圍
--设置物品操作("分","词缀类名:Replica Siegebreaker")-- 贗品．突圍
--设置物品操作("分","词缀类名:Torchoak Step")-- 火柳之步
--设置物品操作("分","词缀类名:Machina Mitts")-- 詭計魔手
--设置物品操作("分","词缀类名:Fortress Covenant")-- 堅壁誓約
--设置物品操作("分","词缀类名:Quickening Covenant")-- 復甦誓約
--设置物品操作("分","词缀类名:Cold Iron Point")-- 寒鋼之刃
--设置物品操作("分","词缀类名:Replica Cold Iron Point")-- 贗品．寒鋼之刃
--设置物品操作("分","词缀类名:The Stampede")-- 潰逃之靴
--设置物品操作("分","词缀类名:Replica Stampede")-- 贗品．潰逃之靴
--设置物品操作("分","词缀类名:Cowl of the Thermophile")-- 嗜炎斗篷
--设置物品操作("分","词缀类名:Cowl of the Cryophile")-- 酷寒斗篷
--设置物品操作("分","词缀类名:Cowl of the Ceraunophile")-- 狂雷斗篷
--设置物品操作("分","词缀类名:Breathstealer")-- 偷息
--设置物品操作("分","词缀类名:Sporeguard")-- 毒孢守衛
--设置物品操作("分","词缀类名:The Jinxed Juju")-- 惡咒護符
--设置物品操作("分","词缀类名:Fury Valve")-- 憤怒閉鎖
--设置物品操作("分","词缀类名:Crown of the Inward Eye")-- 暗眼之冠
--设置物品操作("分","词缀类名:The Ivory Tower")-- 象牙塔
--设置物品操作("分","词缀类名:Manastorm")-- 魔能暴風
--设置物品操作("分","词缀类名:Leash of Oblation")-- 祭品之繫
--设置物品操作("分","词缀类名:Mistwall")-- 迷霧之璧
--设置物品操作("分","词缀类名:Replica Mistwall")-- 贗品．迷霧之璧
--设置物品操作("分","词缀类名:Painseeker")-- 尋苦
--设置物品操作("分","词缀类名:The Black Cane")-- 黑藤
--设置物品操作("分","词缀类名:Hands of the High Templar")-- 聖宗神手
--设置物品操作("分","词缀类名:The Warlord's Annex")-- 總督軍的配件
--设置物品操作("分","词缀类名:Mother's Embrace")-- 母親的擁抱
--设置物品操作("分","词缀类名:Warrior's Legacy")-- 戰士遺物
--设置物品操作("分","词缀类名:Astral Projector")-- 星空之影
--设置物品操作("分","词缀类名:The Saviour")-- 救世主
--设置物品操作("分","词缀类名:Willowgift")-- 柳木之禮
--设置物品操作("分","词缀类名:Thread of Hope")-- 希望之絃
--设置物品操作("分","词缀类名:Eye of Malice")-- 邪眼
--设置物品操作("分","词缀类名:Terror")-- 惡懼
--设置物品操作("分","词缀类名:Stalwart Defenders")-- 忠誠護衛
--设置物品操作("分","词缀类名:Misinformation")-- 以訛傳訛
--设置物品操作("分","词缀类名:Irresistable Temptation")-- 無法抗拒
--设置物品操作("分","词缀类名:Territories Unknown")-- 未曉疆域
--设置物品操作("分","词缀类名:War Among the Stars")-- 星間戰爭
--设置物品操作("分","词缀类名:Booming Populace")-- 繁榮庶民
--设置物品操作("分","词缀类名:Algor Mortis")-- 阿爾戈．莫堤斯
--设置物品操作("分","词缀类名:Perfidy")-- 背信忘義
--设置物品操作("分","词缀类名:Assailum")-- 刺殺
--设置物品操作("分","词缀类名:Profane Proxy")-- 褻瀆之替
--设置物品操作("分","词缀类名:Kitava's Teachings")-- 奇塔弗的教學
--设置物品操作("分","词缀类名:Calamitous Visions")-- 悲慘幻視
--设置物品操作("分","词缀类名:Natural Affinity")-- 天性
--设置物品操作("分","词缀类名:The Interrogation")-- 審問
--设置物品操作("分","词缀类名:The Siege")-- 圍城
--设置物品操作("分","词缀类名:Child of Violence")-- 暴力之子
--设置物品操作("分","词缀类名:The Front Line")-- 前列的線
--设置物品操作("分","词缀类名:One With Nothing")-- 一無所有
--设置物品操作("分","词缀类名:Voices")-- 嗓音
--设置物品操作("分","词缀类名:Megalomaniac")-- 妄想症
--设置物品操作("分","词缀类名:Split Personality")-- 人格分裂
--设置物品操作("分","词缀类名:Beacon of Madness")-- 瘋癲之引
--设置物品操作("分","词缀类名:Usurper's Penance")-- 篡位者的懺悔
--设置物品操作("分","词缀类名:Storm Secret")-- 風暴之密
--设置物品操作("分","词缀类名:[UNUSED Magnetic Ward")-- [UNUSED] Magnetic Ward
--设置物品操作("分","词缀类名:Abhorrent Interrogation")-- 悖逆審訊
设置物品操作("分","词缀类名:Doryani's Prototype")-- 多里亞尼之型
--设置物品操作("分","词缀类名:Forbidden Shako")-- 禁忌軍帽
--设置物品操作("分","词缀类名:Replica Forbidden Shako")-- 贗品．禁忌軍帽
--设置物品操作("分","词缀类名:Great Old One's Tentacles")-- 偉大老者之觸
--设置物品操作("分","词缀类名:Scorpion's Call")-- 毒蠍之喚
--设置物品操作("分","词缀类名:Fleshcrafter")-- 人體匠師
--设置物品操作("分","词缀类名:Emperor’s Vigilance")-- 帝王的戒心
--设置物品操作("分","词缀类名:Retaliation Charm")-- 復仇誘惑
--设置物品操作("分","词缀类名:Law of the Wilds")-- 野性法則
--设置物品操作("分","词缀类名:Witchhunter’s Judgment")-- 獵巫者的審判
--设置物品操作("分","词缀类名:The Torrent's Reclamation")-- 奔流之開拓
--设置物品操作("分","词缀类名:The Shattered Divinity")-- 碎裂之神力
--设置物品操作("分","词缀类名:The Tempest's Liberation")-- 暴雨之解放
--设置物品操作("分","词缀类名:The Surging Thoughts")-- 湧浪之思想
--设置物品操作("分","词缀类名:The Yielding Mortality")-- 屈服之死相
--设置物品操作("分","词缀类名:The Immortal Will")-- 不朽之意志
--设置物品操作("分","词缀类名:The Felbog Fang")-- 費爾博格獠牙
--设置物品操作("分","词缀类名:Plume of Pursuit")-- 追逐之羽
--设置物品操作("分","词缀类名:Bear's Girdle")-- 熊之束
--设置物品操作("分","词缀类名:Infused Beachhead")-- 神域之殿．煉獄
--设置物品操作("分","词缀类名:[UNUSED] Unique Heist Contract")-- [UNUSED] Unique Heist Contract
--设置物品操作("分","词缀类名:The Iron Mass")-- 鐵塊
--设置物品操作("分","词缀类名:Expedition's End")-- 遠征之盡
--设置物品操作("分","词缀类名:The Ephemeral Bond")-- 短期債券
--设置物品操作("分","词缀类名:Corpsewalker")-- 行屍走肉
--设置物品操作("分","词缀类名:Mercenary’s Lot")-- 僱用兵之命
--设置物品操作("分","词缀类名:Chains of Emancipation")-- 解放鏈
--设置物品操作("分","词缀类名:Actum")-- 談判
--设置物品操作("分","词缀类名:Maw of Mischief")-- 頑皮裂齒獸
--设置物品操作("分","词缀类名:The Druggery")-- 純貨
--设置物品操作("分","词缀类名:Endless Misery")-- 無盡謎團
--设置物品操作("分","词缀类名:The Highwayman")-- 高尚之人
--设置物品操作("分","词缀类名:Fated End")-- 命運終結
--设置物品操作("分","词缀类名:The Hidden Blade")-- 隱藏之劍
--设置物品操作("分","词缀类名:The Admiral")-- 上將
--设置物品操作("分","词缀类名:Blunderbore")-- 失誤之孔
--设置物品操作("分","词缀类名:Crest of Desire")-- 慾望之冠
--设置物品操作("分","词缀类名:The Fulcrum")-- 支點
--设置物品操作("分","词缀类名:Willclash")-- 意志衝突
--设置物品操作("分","词缀类名:Font of Thunder")-- 雷霆聖器
--设置物品操作("分","词缀类名:Contract: Jamanra's Rest")-- 契約書：賈嫚拉之息
--设置物品操作("分","词缀类名:Contract: Breaking the Unbreakable")-- 契約書：攻破不破者
--设置物品操作("分","词缀类名:Contract: Heart of Glory")-- 榮譽之心
--设置物品操作("分","词缀类名:Contract: The Slaver King")-- 契約書：奴隸王
--设置物品操作("分","词缀类名:Contract: Death to Darnaw")-- 契約書：達爾奈之死
--设置物品操作("分","词缀类名:Contract: The Twins")-- 契約書：雙胞胎
--设置物品操作("分","词缀类名:Lord of Steel")-- 鋼鐵君主
--设置物品操作("分","词缀类名:Apex Mode")-- 巔峰模式
--设置物品操作("分","词缀类名:Nadir Mode")-- 深淵模式
--设置物品操作("分","词缀类名:Shattershard")-- 破碎之屑
--设置物品操作("分","词缀类名:The Ghastly Theatre")-- 恐怖劇院
--设置物品操作("分","词缀类名:The Fledgling")-- 幼雛
--设置物品操作("分","词缀类名:Pyroshock Clasp")-- 烈焰衝擊鉤
--设置物品操作("分","词缀类名:Leadership’s Price")-- 領導力的代價
--设置物品操作("分","词缀类名:Qotra's Regulator")-- 卡特拉的守則
设置物品操作("分","词缀类名:Blackflame")-- 黯炎
--设置物品操作("分","词缀类名:Hand of the Fervent")-- 熱情之手
--设置物品操作("分","词缀类名:Survivor's Guilt")-- 倖存者的原罪
--设置物品操作("分","词缀类名:Viridi's Veil")-- 維里迪的薄紗
--设置物品操作("分","词缀类名:Goblinedge")-- 妖精之緣
--设置物品操作("分","词缀类名:Doppelg?nger Guise")-- 達佩爾甘格偽裝
--设置物品操作("分","词缀类名:Arn's Anguish")-- 昂恩的煩惱
--设置物品操作("分","词缀类名:Olesya's Delight")-- 奧莉西亞的喜悅
--设置物品操作("分","词缀类名:Graven's Secret")-- 格雷文的秘密
--设置物品操作("分","词缀类名:Rotblood Promise")-- 敗血承諾
--设置物品操作("分","词缀类名:Ancient Skull")-- 遠古骷髏
--设置物品操作("分","词缀类名:Legacy of Fury")-- 傳承憤怒
--设置物品操作("分","词缀类名:Demigod's Authority")-- 半神權威
--设置物品操作("分","词缀类名:The Walls")-- 城牆
--设置物品操作("分","词缀类名:The Claim")-- 索取
--设置物品操作("分","词缀类名:The Builder")-- 建造者
--设置物品操作("分","词缀类名:The Vast Horizon")-- 廣闊平地
--设置物品操作("分","词缀类名:The Closest Peak")-- 近距高峰
--设置物品操作("分","词缀类名:Restless Cycles")-- 焦躁循環
--设置物品操作("分","词缀类名:The False Hope")-- 虛假希望
--设置物品操作("分","词缀类名:Atop the Atlas")-- 輿圖之巔
--设置物品操作("分","词缀类名:Mahuxotl's Machination")-- 瑪哈薩多的陰謀
--设置物品操作("分","词缀类名:Hateforge")-- 怨恨鍛造
--设置物品操作("分","词缀类名:Yaomac's Accord")-- 堯馬克之權
--设置物品操作("分","词缀类名:Temptation Step")-- 誘惑步伐
--设置物品操作("分","词缀类名:Glimpse of Chaos")-- 混沌一瞥
--设置物品操作("分","词缀类名:Relic of the Pact")-- 古典冥約
--设置物品操作("分","词缀类名:Atziri's Rule")-- 阿茲里的統御
--设置物品操作("分","词缀类名:Triumvirate Authority")-- 三體權威
--设置物品操作("分","词缀类名:Cane of Kulemak")-- 骷髏馬克的靈杖
--设置物品操作("分","词缀类名:Tecrod's Gaze")-- 特克羅德的邪眼
--设置物品操作("分","词缀类名:Ulaman's Gaze")-- 烏拉曼的邪眼
--设置物品操作("分","词缀类名:Kurgal's Gaze")-- 柯戈的邪眼
--设置物品操作("分","词缀类名:Amanamu's Gaze")-- 阿姆那姆的邪眼
--设置物品操作("分","词缀类名:Steelworm")-- 鐵幕蟲
--设置物品操作("分","词缀类名:The Scales of Justice")-- 正義天秤
--设置物品操作("分","词缀类名:Nightgrip")-- 夜之觸
--设置物品操作("分","词缀类名:Medved's Challenge")-- 梅德偉的挑戰
--设置物品操作("分","词缀类名:Faithguard")-- 信仰守護
--设置物品操作("分","词缀类名:Cadigan's Crown")-- 卡迪根皇冠
--设置物品操作("分","词缀类名:Vorana's March")-- 沃拉娜的軍隊
--设置物品操作("分","词缀类名:Olroth's Charge")-- 奧爾羅斯的衝刺
--设置物品操作("分","词缀类名:Olroth's Resolve")-- 奧爾羅斯的決心
--设置物品操作("分","词缀类名:Starlight Chalice")-- 星光聖杯
--设置物品操作("分","词缀类名:Elixir of the Unbroken Circle")-- 不破環之靈藥
--设置物品操作("分","词缀类名:Vorana's Preparation")-- 沃拉娜的醞釀
设置物品操作("分","词缀类名:Gravebind")-- 幽墓束縛
--设置物品操作("分","词缀类名:Stranglegasp")-- 扼殺之息
--设置物品操作("分","词缀类名:Mageblood")-- 魔血
--设置物品操作("分","词缀类名:Stasis Prison")-- 靜止牢籠
--设置物品操作("分","词缀类名:Uul-Netol's Vow")-- 烏爾尼多之誓
--设置物品操作("分","词缀类名:The Squire")-- 大地主
--设置物品操作("分","词缀类名:The Oppressor")-- 壓迫者
--设置物品操作("分","词缀类名:Melding of the Flesh")-- 血肉融合
--设置物品操作("分","词缀类名:Dissolution of the Flesh")-- 血肉溶解
--设置物品操作("分","词缀类名:Crystallised Omniscience")-- 晶化全知
--设置物品操作("分","词缀类名:Ashes of the Stars")-- 星塵
--设置物品操作("分","词缀类名:The Annihilating Light")-- 毀滅白光
--设置物品操作("分","词缀类名:The Gluttonous Tide")-- 饕餮浪潮
--设置物品操作("分","词缀类名:Black Zenith")-- 漆黑極頂
--设置物品操作("分","词缀类名:Sudden Dawn")-- 黎明驟起
--设置物品操作("分","词缀类名:Polaric Devastation")-- 極地毀滅
--设置物品操作("分","词缀类名:Ceaseless Feast")-- 無盡盛宴
--设置物品操作("分","词缀类名:Inextricable Fate")-- 無法掙脫之命
--设置物品操作("分","词缀类名:Dawnbreaker")-- 破曉
--设置物品操作("分","词缀类名:Forbidden Flame")-- 禁忌烈焰
--设置物品操作("分","词缀类名:Forbidden Flesh")-- 禁忌血肉
--设置物品操作("分","词缀类名:Divine Inferno")-- 神聖煉獄
--设置物品操作("分","词缀类名:The Burden of Truth")-- 真理負擔
--设置物品操作("分","词缀类名:Echoes of Creation")-- 創造迴聲
--设置物品操作("分","词缀类名:The Eternal Struggle")-- 永恆鬥爭
--设置物品操作("分","词缀类名:Call of the Void")-- 虛空呼喚
--设置物品操作("分","词缀类名:Impossible Escape")-- 逃脫不能
--设置物品操作("分","词缀类名:Sublime Vision")-- 崇高願景
--设置物品操作("分","词缀类名:The Hollow-Eyed Skull")-- 挖眼髏骨
--设置物品操作("分","词缀类名:The Basilisk")-- 咒怨蛇妖
--设置物品操作("分","词缀类名:The Angel of Vengeance")-- 復仇天使
--设置物品操作("分","词缀类名:The Narcissist")-- 孤芳自賞
--设置物品操作("分","词缀类名:The Epiphany")-- 頓悟
--设置物品操作("分","词缀类名:The Depraved")-- 墮落
--设置物品操作("分","词缀类名:The Twisted Trinity")-- 邪惡三體
--设置物品操作("分","词缀类名:The Raging Inferno")-- 憤怒煉獄
--设置物品操作("分","词缀类名:The Unbridled Tempest")-- 狂風暴雨
--设置物品操作("分","词缀类名:Insomnia")-- 失眠
--设置物品操作("分","词缀类名:The Megalomaniac")-- 自大狂
--设置物品操作("分","词缀类名:The Ancient Angler")-- 古代釣手
--设置物品操作("分","词缀类名:Escalation")-- 惡化
--设置物品操作("分","词缀类名:The Arbiter")-- 仲裁者
--设置物品操作("分","词缀类名:The Benefactor")-- 施主
--设置物品操作("分","词缀类名:The Infested")-- 感染
--设置物品操作("分","词缀类名:The Torturer")--  折磨者
--设置物品操作("分","词缀类名:Kaom's Spirit")-- 岡姆之魂
--设置物品操作("分","词缀类名:The Tower of Ordeals")-- 磨難之塔
--设置物品操作("分","词缀类名:Soul Ascension")-- 靈魂昇華
--设置物品操作("分","词缀类名:Dawnstrider")-- 晨行者
--设置物品操作("分","词缀类名:Victorious Fate")-- 勝利之運
--设置物品操作("分","词缀类名:Deadly Fate")-- 死局
--设置物品操作("分","词缀类名:Will of Chaos")-- 混沌意志
--设置物品操作("分","词缀类名:Ignominious Fate")-- 可恥之運
设置物品操作("分","词缀类名:Ghostwrithe")-- 鬧鬼
设置物品操作("分","词缀类名:Thrillsteel")-- 顫慄之鋼
设置物品操作("分","词缀类名:Elevore")-- 愛勒弗
--设置物品操作("分","词缀类名:Annihilation's Approach")-- 殲滅的方法
--设置物品操作("分","词缀类名:The Poised Prism")-- 優雅迷鏡
--设置物品操作("分","词缀类名:Kalandra's Touch")-- 卡蘭德之觸
--设置物品操作("分","词缀类名:Progenesis")-- 生育
--设置物品操作("分","词缀类名:Rational Doctrine")-- 理性主義
--设置物品操作("分","词缀类名:Nimis")-- 尼米斯
--设置物品操作("分","词缀类名:Entropic Devastation")-- 熵毀滅
--设置物品操作("分","词缀类名:Oriath's End")-- 奧瑞亞之終
--设置物品操作("分","词缀类名:Eternal Damnation")-- 永恆的詛咒
--设置物品操作("分","词缀类名:Wilma's Requital")-- 威爾瑪的報復
--设置物品操作("分","词缀类名:Firesong")-- 炔頌
--设置物品操作("分","词缀类名:Stormshroud")-- 風暴籠罩
--设置物品操作("分","词缀类名:Immutable Force")-- 不變之力
--设置物品操作("分","词缀类名:The Winds of Fate")-- 命定之風
--设置物品操作("分","词缀类名:Anathema")-- 咒詛
--设置物品操作("分","词缀类名:Doedre's Tongue")-- 德瑞的毒舌
--设置物品操作("分","词缀类名:Witchbane")-- 禍星女巫
--设置物品操作("分","词缀类名:Echoforge")-- 核聲
--设置物品操作("分","词缀类名:The Balance of Terror")-- 恐怖平衡
--设置物品操作("分","词缀类名:Sandstorm Visage")-- 沙瀑面紗
--设置物品操作("分","词缀类名:The Hour of Divinity")-- 神聖時刻
--设置物品操作("分","词缀类名:The Peacemaker's Draught")-- 和平使者藥水
--设置物品操作("分","词缀类名:The Desperate Alliance")-- 絕望的同盟
--设置物品操作("分","词缀类名:The Changing Seasons")-- 流轉的季節
--设置物品操作("分","词缀类名:The Remembered Tales")-- 被銘記的故事
--设置物品操作("分","词缀类名:The Burden of Leadership")-- 領袖的重擔
--设置物品操作("分","词缀类名:The Last Flame")-- 終焉烈焰
--设置物品操作("分","词缀类名:Original Sin")-- 原罪
--设置物品操作("分","词缀类名:The Blood of Innocence")-- 善之血
--设置物品操作("分","词缀类名:The Chains of Castigation")-- 懲戒鎖鏈
--设置物品操作("分","词缀类名:The Power and the Promise")-- 權力和誓約
--设置物品操作("分","词缀类名:Blood Price")-- 血償
--设置物品操作("分","词缀类名:Tainted Pact")-- 汙穢契約
--设置物品操作("分","词缀类名:Ancestral Vision")-- 先祖預視
--设置物品操作("分","词缀类名:Stormseeker")-- 風暴千尋
设置物品操作("分","词缀类名:Widowhail")-- 鰥寡之托
--设置物品操作("分","词缀类名:Chain of Endurance")-- 堅決鎖鏈
--设置物品操作("分","词缀类名:Tanu Ahi")-- 埋火
--设置物品操作("分","词缀类名:Orbala's Stand")-- 奧爾巴拉的姿態
--设置物品操作("分","词缀类名:Bloodnotch")-- 缺血症
--设置物品操作("分","词缀类名:The Fourth Vow")-- 第四誓願
--设置物品操作("分","词缀类名:Soulbound")-- 靈魂之絆
--设置物品操作("分","词缀类名:Bloodsoaked Medallion")-- 血染勳章
--设置物品操作("分","词缀类名:Ceinture of Benevolence")-- 仁愛之心
--设置物品操作("分","词缀类名:El'Abin's Visage")-- 伊蘭雅本的面紗
--设置物品操作("分","词缀类名:The Geomantic Gyre")-- 風水輪迴
--设置物品操作("分","词缀类名:The Redblade")-- 紅刃
--设置物品操作("分","词缀类名:Winter's Bite")-- 寒冬嚙蝕
--设置物品操作("分","词缀类名:Daevata's Wind")-- 德瓦塔之風
--设置物品操作("分","词缀类名:The Endless Night")-- 無盡之夜
设置物品操作("分","词缀类名:Oaksworn")-- 橡誓者
--设置物品操作("分","词缀类名:Greymake")-- 灰製
--设置物品操作("分","词缀类名:Bramblesiege")-- 刺藤之圍
--设置物品操作("分","词缀类名:Bluetongue")-- 藍舌
设置物品操作("分","词缀类名:The Black Doubt")-- 黑色之疑
--设置物品操作("分","词缀类名:Perandus' Cure-all")-- 普蘭德斯的萬能藥
设置物品操作("分","词缀类名:Candlemaker")-- 製燭者
设置物品操作("分","词缀类名:Infernoclasp")-- 地獄之握
设置物品操作("分","词缀类名:Deathrattle")-- 死亡之聲
设置物品操作("分","词缀类名:The Barrow Dweller")-- 遺塚居民
设置物品操作("分","词缀类名:Serpent's Lesson")-- 巨蛇教誨
设置物品操作("分","词缀类名:Blackbraid")-- 黑辮
设置物品操作("分","词缀类名:The Dark Defiler")-- 黑暗玷汙者
--设置物品操作("分","词缀类名:Skysliver")-- 天銀
设置物品操作("分","词缀类名:Doomgate")-- 末日之門
设置物品操作("分","词缀类名:The Knight-errant")-- 漂泊騎士
设置物品操作("分","词缀类名:Bristleboar")-- 鬃豬
--设置物品操作("分","词缀类名:Splinter of Loratta")-- 蘿拉塔裂片
--设置物品操作("分","词缀类名:Shadowstalk")-- 暗影枝稈
设置物品操作("分","词缀类名:Mask of the Sanguimancer")-- 占血之面
设置物品操作("分","词缀类名:Alkem Eira")-- 神諭
设置物品操作("分","词缀类名:Guiding Palm")-- 引導之掌
设置物品操作("分","词缀类名:Killjoy")-- 掃興之人
设置物品操作("分","词缀类名:Coat of Red")-- 腥紅外衣
设置物品操作("分","词缀类名:Painter's Servant")-- 畫家的侍從
设置物品操作("分","词缀类名:Thunderstep")-- 雷霆步伐
设置物品操作("分","词缀类名:Gloomform")-- 幽暗之衣
--设置物品操作("分","词缀类名:Solar Lance")-- 日耀長槍
设置物品操作("分","词缀类名:Innsmouth")-- 印斯茅斯
设置物品操作("分","词缀类名:Crown of the Victor")-- 勝者之冠
设置物品操作("分","词缀类名:Wandering Reliquary")-- 流浪寶庫
设置物品操作("分","词缀类名:Dustbloom")-- 塵土之花
设置物品操作("分","词缀类名:Pariah's Embrace")-- 草民之擁
设置物品操作("分","词缀类名:Quatl's Molt")-- 夸特之帶
--设置物品操作("分","词缀类名:Fear of the Embrace")-- 擁抱之懼
设置物品操作("分","词缀类名:The Dancing Mirage")-- 舞動幻影
设置物品操作("分","词缀类名:Radiant Grief")-- 聖光哀痛
设置物品操作("分","词缀类名:Bitterbloom")-- 苦心花
--设置物品操作("分","词缀类名:Sands of Silk")-- 絲綢之沙
设置物品操作("分","词缀类名:Sierran Inheritance")-- 錫耶拉的遺產
设置物品操作("分","词缀类名:The Smiling Knight")-- 微笑騎士
设置物品操作("分","词缀类名:Dionadair")-- 捍衛者
设置物品操作("分","词缀类名:Bronzebeard")-- 銅鬚
设置物品操作("分","词缀类名:Edyrn's Tusks")-- 埃狄恩的曲牙
设置物品操作("分","词缀类名:Prayers for Rain")-- 祈雨禱言
设置物品操作("分","词缀类名:The Immortan")-- 永生者
设置物品操作("分","词缀类名:Apron of Emiran")-- 埃米蘭之裙
设置物品操作("分","词缀类名:Legionstride")-- 帝國之靴
设置物品操作("分","词缀类名:Visage of Ayah")-- 艾雅面紗
设置物品操作("分","词缀类名:Necromantle")-- 亡者披肩
设置物品操作("分","词缀类名:Briarpatch")-- 薔薇眼罩
设置物品操作("分","词缀类名:Corpsewade")-- 屍骨之靴
--设置物品操作("分","词缀类名:Timberwolf")-- 灰狼之靈
设置物品操作("分","词缀类名:Forbidden Gaze")-- 禁忌凝視
设置物品操作("分","词缀类名:Gamblesprint")-- 豪賭
设置物品操作("分","词缀类名:Ironride")-- 鐵騎
设置物品操作("分","词缀类名:Treefingers")-- 樹木之指
设置物品操作("分","词缀类名:Horns of Bynden")-- 賓登之角
设置物品操作("分","词缀类名:Wings of Caelyn")-- 凱林之翼
设置物品操作("分","词缀类名:Northpaw")-- 北方之爪
--设置物品操作("分","词缀类名:Zerphi's Serape")-- 澤菲披肩
设置物品操作("分","词缀类名:Plaguefinger")-- 瘟疫之指
设置物品操作("分","词缀类名:Trampletoe")-- 踐踏之鞋
设置物品操作("分","词缀类名:Atsak's Sight")-- 阿札克之瞳
--设置物品操作("分","词缀类名:Garuk's Current")-- 加魯克之流
设置物品操作("分","词缀类名:Atziri's Disdain")-- 阿茲里的蔑視
设置物品操作("分","词缀类名:The Vile Knight")-- 惡劣騎士
--设置物品操作("分","词缀类名:Gravis Grimace")-- 面癱鬼臉
设置物品操作("分","词缀类名:Corona of the Red Sun")-- 紅日之冕
--设置物品操作("分","词缀类名:The Deepest Tower")-- 深邃尖塔
--设置物品操作("分","词缀类名:Nightscale")-- 夜鱗
--设置物品操作("分","词缀类名:Golden Atonement")-- 黃金救贖
设置物品操作("分","词缀类名:Myris Uxor")-- 米立斯之妻
--设置物品操作("分","词缀类名:Fidelio")-- 費德里歐
设置物品操作("分","词缀类名:Bushwhack")-- 突襲
设置物品操作("分","词缀类名:Irongrasp")-- 鐵握
设置物品操作("分","词缀类名:Titanrot Cataphract")-- 泰坦腐化重騎兵
设置物品操作("分","词缀类名:The Hollow Mask")-- 聖潔面具
设置物品操作("分","词缀类名:Enfolding Dawn")-- 晨曦之擁
设置物品操作("分","词缀类名:Husk of Dreams")-- 夢境軀殼
设置物品操作("分","词缀类名:Blueflame Bracers")-- 藍焰護腕
--设置物品操作("分","词缀类名:Benedictus Domini")-- 至高讚頌
设置物品操作("分","词缀类名:Tetzlapokal's Desire")-- 特沙波卡爾之慾
--设置物品操作("分","词缀类名:Dreadfist")-- 驚懼之拳
设置物品操作("分","词缀类名:Jarngreipr")-- 雅恩格利佩爾
--设置物品操作("分","词缀类名:Widow's Reign")-- 寡婦統治
--设置物品操作("分","词缀类名:The Mutable Star")-- 多變之星
--设置物品操作("分","词缀类名:Cornathaum")-- 科那索姆
设置物品操作("分","词缀类名:Grip of Winter")-- 凜冬之握
设置物品操作("分","词缀类名:Idle Hands")-- 遊手好閒
设置物品操作("分","词缀类名:Deathblow")-- 致命一擊
--设置物品操作("分","词缀类名:Morior Invictus")-- 不敗亡者
--设置物品操作("分","词缀类名:Solus Ipse")-- 唯我論
--设置物品操作("分","词缀类名:Sine Aequo")-- 無與倫比
--设置物品操作("分","词缀类名:Sacred Flame")-- 神聖烈焰
--设置物品操作("分","词缀类名:Ab Aeterno")-- 源於永恆
--设置物品操作("分","词缀类名:Temporalis")-- 時空之物
--设置物品操作("分","词缀类名:Mageguard")-- 巫術衛士
--设置物品操作("分","词缀类名:Herald of Wraeclast")-- 瓦爾克拉斯之兆
--设置物品操作("分","词缀类名:Waveshaper")-- 浪湧塑形器
设置物品操作("分","词缀类名:Brynabas")-- 布萊納巴斯
--设置物品操作("分","词缀类名:Shankgonne")-- 香克戈涅
--设置物品操作("分","词缀类名:Wings of Vastiri")-- 瓦斯提里之翼
--设置物品操作("分","词缀类名:Calgyra's Arc")-- 凱爾捷拉之弧
--设置物品操作("分","词缀类名:Sunsplinter")-- 烈日碎片
设置物品操作("分","词缀类名:Luminous Pace")-- 閃爍步伐
设置物品操作("分","词缀类名:Wulfsbane")-- 狼之禍
设置物品操作("分","词缀类名:Erian's Cobble")-- 埃里安的鵝卵石
设置物品操作("分","词缀类名:Arvil's Wheel")-- 阿瓦爾之輪
--设置物品操作("分","词缀类名:Bloodbarrier")-- 鮮血屏障
设置物品操作("分","词缀类名:The Wailing Wall")-- 哀嚎之牆
设置物品操作("分","词缀类名:Crest of Ardura")-- 阿杜拉之冠
设置物品操作("分","词缀类名:Merit of Service")-- 服役功績
--设置物品操作("分","词缀类名:Dunkelhalt")-- 唐克哈特
设置物品操作("分","词缀类名:Brynhand's Mark")-- 布林漢的印記
设置物品操作("分","词缀类名:Wylund's Stake")-- 威倫德的木樁
设置物品操作("分","词缀类名:The Sentry")-- 哨兵
--设置物品操作("分","词缀类名:Window to Paradise")-- 通往天堂之窗
--设置物品操作("分","词缀类名:Shyaba")-- 沙阿巴
--设置物品操作("分","词缀类名:Heartseeker")-- 刺心者
设置物品操作("分","词缀类名:Feathered Fortress")-- 羽毛堡壘
设置物品操作("分","词缀类名:Hoghunt")-- 獵豬
设置物品操作("分","词缀类名:Font of Power")-- 力量水晶塔
--设置物品操作("分","词缀类名:Rondel De Ezo")-- 隆德爾．德．艾佐
--设置物品操作("分","词缀类名:Silverthorne")-- 銀白索恩
--设置物品操作("分","词缀类名:Sibling Rivalry")-- 手足相爭
设置物品操作("分","词缀类名:Splinterheart")-- 裂心
设置物品操作("分","词缀类名:Redflare Conduit")-- 紅焰導體
--设置物品操作("分","词缀类名:The Black Crest")-- 黑峰
设置物品操作("分","词缀类名:Threaded Light")-- 縫紉之光
设置物品操作("分","词缀类名:Midnight Braid")-- 午夜護鏈
--设置物品操作("分","词缀类名:Spirit Link")-- 精魂連結
设置物品操作("分","词缀类名:Aerisvane's Wings")-- 艾瑞斯凡恩之翼
--设置物品操作("分","词缀类名:Falling Snow")-- 落雪
设置物品操作("分","词缀类名:Dusk Vigil")-- 暗暮守夜
--设置物品操作("分","词缀类名:The Velvet Orchestra")-- 天鵝絨交響樂團
设置物品操作("分","词缀类名:Couture of Crimson")-- 緋紅訂製服
设置物品操作("分","词缀类名:Keelhaul")-- 船拖刑
设置物品操作("分","词缀类名:Birthright Buckle")-- 天生權利扣環
设置物品操作("分","词缀类名:Seeing Stars")-- 見證群星
设置物品操作("分","词缀类名:Obern's Bastion")-- 歐伯恩的壁壘
--设置物品操作("分","词缀类名:Wind in the Sails")-- 航行之風
--设置物品操作("分","词缀类名:Ravenous Passion")-- 貪婪的激情
--设置物品操作("分","词缀类名:Gloamgown")-- 暮光長袍
--设置物品操作("分","词缀类名:Nocturne")-- 夜曲
--设置物品操作("分","词缀类名:Pulpit Pulper")-- 講壇絞碎機
设置物品操作("分","词缀类名:Trephina")-- 崔非那
--设置物品操作("分","词缀类名:Dealer's Hand")-- 商人之手
--设置物品操作("分","词缀类名:Perandus Seal")-- 普蘭德斯之印
--设置物品操作("分","词缀类名:Defiance of Destiny")-- 拒絕命運
--设置物品操作("分","词缀类名:The Flawed Refuge")-- 不完美的庇護所
--设置物品操作("分","词缀类名:Rhea's Rhythm")-- 蕾亞的旋律
设置物品操作("分","词缀类名:Carrion Call")-- 腐肉呼喚
设置物品操作("分","词缀类名:The Eternal Spark")-- 永恆火花
设置物品操作("分","词缀类名:Powertread")-- 動力圖樣
设置物品操作("分","词缀类名:Shavronne's Satchel")-- 薛朗的背包
--设置物品操作("分","词缀类名:Waistgate")-- 腰閥
--设置物品操作("分","词缀类名:Cat O' Nine Tails")-- 九尾貓
--设置物品操作("分","词缀类名:Twinclasp")-- 雙重鉤
--设置物品操作("分","词缀类名:Silverpoint")-- 銀點
--设置物品操作("分","词缀类名:Goregirdle")-- 血肉束腰
--设置物品操作("分","词缀类名:Circle of Protection")-- 守護之環
--设置物品操作("分","词缀类名:Effigy of Cruelty")-- 殘酷塑像
设置物品操作("分","词缀类名:Cracklecreep")-- 裂紋怪客
设置物品操作("分","词缀类名:Matsya")-- 摩蹉
--设置物品操作("分","词缀类名:The Empty Roar")-- 空洞怒吼
设置物品操作("分","词缀类名:Rampart Raptor")-- 壁壘猛禽
设置物品操作("分","词缀类名:Sanguine Diviner")-- 血色聖者
--设置物品操作("分","词缀类名:Rod of Enervation")-- 衰弱之杖
设置物品操作("分","词缀类名:Enezun's Charge")-- 艾尼尊的衝鋒
设置物品操作("分","词缀类名:Mist Whisper")-- 迷霧低語者
--设置物品操作("分","词缀类名:The Wicked Quill")-- 邪惡羽毛
--设置物品操作("分","词缀类名:Trenchtimbre")-- 壕溝之音
--设置物品操作("分","词缀类名:Sculpted Suffering")-- 雕刻苦難
--设置物品操作("分","词缀类名:Grimgrasp")-- 陰鬱之握
--设置物品操作("分","词缀类名:Ironbound")-- 鐵縛者
设置物品操作("分","词缀类名:Earthbound")-- 地縛者
--设置物品操作("分","词缀类名:Wax and Wane")-- 力量盛衰
设置物品操作("分","词缀类名:Birth of Fury")-- 憤怒的誕生
--设置物品操作("分","词缀类名:Prized Pain")-- 珍貴苦痛
设置物品操作("分","词缀类名:Glowswarm")-- 發光蟲群
设置物品操作("分","词缀类名:Seed of Cataclysm")-- 浩劫種子
设置物品操作("分","词缀类名:Blistering Bond")-- 極熱護環
--设置物品操作("分","词缀类名:Polcirkeln")-- 極圈
设置物品操作("分","词缀类名:Whisper of the Brotherhood")-- 意志低語
--设置物品操作("分","词缀类名:Levinstone")-- 浮游石
设置物品操作("分","词缀类名:The Burrower")-- 掘地者
--设置物品操作("分","词缀类名:Vigilant View")-- 警戒之視
--设置物品操作("分","词缀类名:Evergrasping Ring")-- 永恆之握戒指
--设置物品操作("分","词缀类名:Victario's Study")-- 維多里奧的研究
--设置物品操作("分","词缀类名:Nighthowl")-- 夜嚎
设置物品操作("分","词缀类名:Nazir's Judgement")-- 納齊爾的審判
--设置物品操作("分","词缀类名:Goldshaper")-- 塑金者
--设置物品操作("分","词缀类名:Constricting Command")-- 限制之令
--设置物品操作("分","词缀类名:Idol of Uldurn")-- 奧敦塑像
--设置物品操作("分","词缀类名:The Everlasting Gaze")-- 永恆凝視
设置物品操作("分","词缀类名:Surefooted Sigil")-- 穩健印記
--设置物品操作("分","词缀类名:Ligurium Talisman")-- 豐金巫符
设置物品操作("分","词缀类名:Rondel of Fragility")-- 弱化圓飾
设置物品操作("分","词缀类名:Fixation of Yix")-- 伊克斯的依戀
设置物品操作("分","词缀类名:Beacon of Azis")-- 阿基斯的信標
--设置物品操作("分","词缀类名:Fireflower")-- 火焰之花
--设置物品操作("分","词缀类名:Serpent's Egg")-- 毒蛇之卵
设置物品操作("分","词缀类名:Revered Resin")-- 崇敬樹脂
设置物品操作("分","词缀类名:Igniferis")-- 烈焰之擊
--设置物品操作("分","词缀类名:The Adorned")-- 朝氣之靈
--设置物品操作("分","词缀类名:Zerphi's Genesis")-- 澤菲的創世紀
--设置物品操作("分","词缀类名:Blessed Bonds")-- 祝福之絆
--设置物品操作("分","词缀类名:Sekhema's Resolve Fire")-- 絲克瑪的決意
--设置物品操作("分","词缀类名:Sekhema's Resolve Cold")-- 絲克瑪的決意
--设置物品操作("分","词缀类名:Sekhema's Resolve Lightning")-- 絲克瑪的決意
--设置物品操作("分","词缀类名:Svalinn")-- 斯佛林
--设置物品操作("分","词缀类名:Keeper of the Arc")-- 電弧守護者
--设置物品操作("分","词缀类名:Olrovasara")-- 歐洛瓦沙拉
--设置物品操作("分","词缀类名:The Burden of Shadows")-- 暗影重擔
--设置物品操作("分","词缀类名:Pragmatism")-- 務實主義
--设置物品操作("分","词缀类名:Melting Maelstrom")-- 融解漩渦
--设置物品操作("分","词缀类名:Collapsing Horizon")-- 崩塌的地平線
--设置物品操作("分","词缀类名:Beyond Reach")-- 無法到達
--设置物品操作("分","词缀类名:INCOMPLETE")-- 未完成
--设置物品操作("分","词缀类名:Heroic Tragedy")-- 英雄悲劇
--设置物品操作("分","词缀类名:Against the Darkness")-- 力抗黑暗
--设置物品操作("分","词缀类名:Beetlebite")-- 甲蟲噬咬
--设置物品操作("分","词缀类名:Ingenuity")-- 獨創
--设置物品操作("分","词缀类名:Prism of Belief")-- 信仰棱鏡
--设置物品操作("分","词缀类名:From Nothing")-- 從無到有
--设置物品操作("分","词缀类名:Controlled Metamorphosis")-- 受控的蛻變
--设置物品操作("分","词缀类名:Strugglescream")-- 掙扎吶喊



--设置高价值物品 一些玩法可以购买的物品中 如果出现这些物品 将会从上到下优先购买
设置物品操作("优","类名:Metadata/Items/Currency/CurrencyDuplicate")--卡蘭德的魔鏡
设置物品操作("优","词缀类名:Dream Fragments")--夢語之痕
设置物品操作("优","词缀类名:Headhunter")-- 獵首
设置物品操作("优","词缀类名:Choir of the Storm")-- 暴風之語
设置物品操作("优","词缀类名:Astramentis")-- 均衡之符
设置物品操作("优","词缀类名:Ingenuity")-- 獨創
设置物品操作("优","词缀类名:Polcirkeln")-- 極圈
设置物品操作("优","类名:Metadata/Items/MapFragments/CurrencyRitualBossFragment")--晉見帝王
设置物品操作("优","类名:Metadata/Items/Currency/CurrencyModValues")--神聖石
设置物品操作("优","类名:Metadata/Items/Currency/OmenOnChaosSuffix")--右旋抺除之兆
设置物品操作("优","类名:Metadata/Items/Currency/OmenOnAnnulRemovePrefixes")--左旋廢止之兆
设置物品操作("优","类名:Metadata/Items/Currency/OmenOnChaosPrefix")--左旋抺除之兆
设置物品操作("优","类名:Metadata/Items/Currency/OmenOnAnnulRemoveSuffixes")--右旋廢止之兆
设置物品操作("优","类名:Metadata/Items/Currency/OmenOnChaosLowestLevelMod")--削切之兆
设置物品操作("优","类名:Metadata/Items/Currency/OmenOnVaalRemoveDoNothingOutcome")--腐化之兆
设置物品操作("优","类名:Metadata/Items/Currency/OmenOnDeathPreventExpLoss")--改善之兆
设置物品操作("优","词缀类名:Ventor's Gamble")-- 賭神芬多
设置物品操作("优","词缀类名:Perandus Seal|Perandus Blazon")-- 普蘭德斯之印
设置物品操作("优","词缀类名:Andvarius")-- 貪慾之記
设置物品操作("优","词缀类名:Kalandra's Touch")-- 卡蘭德之觸
设置物品操作("优","词缀类名:Thief's Torment")-- 竊罪
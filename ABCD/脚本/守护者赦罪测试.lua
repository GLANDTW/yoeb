package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_changeHunDunLv=70         --多少级前不换C
g_zhuaShenLv=70             --多少级前不抓众神
g_yuyanCnt=99				--够多少银币去预言
g_needSuDiLv=99             --大于等于多少级打宿敌
g_needLieXiLv=99			--大於等于多少级打裂缝
g_needTaFangLv=99			--大于等于多少级打塔防
g_needMengYanLv=99          --大于等于多少级打梦魇
g_needChuanYueLv=99      	--大于等于多少级打穿越
g_yongHengShiBeiLv=99		--大于等于多少级打永恒
g_attackFreezeMonsterLv=75	--大于等于多少级打精髓
g_needZhuangYuanLv=75       --大于等于多少级打庄园
g_needLianMoLv=75			--大于等于多少级打炼魔
g_needZaFenLv=75		    --大于等于多少级打炸坟
g_needMiWuLv=75				--大于等于多少级打迷雾
--SetJiaoYiGoods(goodsType,name,className,wordName,wordClassName,color,chufaCnt,bossJiaoYiCnt,giveFaZhuang,baoliuCnt,lineSocketCnt,shuXingLimit,funcCheck)-- 设置要交易的物品
--goodsType 字符串型 操作的物品类型忽略类型请填 nil 支持以下种类 多种类型以|分开 --saveType 类型 支持以下种类 多种类型以|分开 生命药剂|魔力药剂|复合药剂|通货|项链|戒指|爪|匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤|主动技能宝石|辅助技能宝石|箭袋|腰带|手套|鞋子|衣服|头盔|盾|小型圣物|中型圣物|大型圣物|可堆叠通货|任务物品|短杖|功能药剂|暴击药剂|异界地图||鱼竿|地图碎片|藏身处装饰|商城物品|珠宝|命运卡|迷宫物品|迷宫饰品|异界迷宫物品|裂隙之石|赛季石|神灵之魂|传奇装备碎片|深渊珠宝|穿越通货|地心探索：可镶嵌的通货|孕育石|碎片|破碎之心|符文匕首|战杖|地心探索可堆叠可插入通货|
--name 字符串型 物品的名字
--className 字符串型 物品的类名
--wordName 字符串型 物品的词缀名
--wordClassName 字符串型 物品的词缀类名
--color 字符串型 颜色 0白 1蓝 2黄 3橙 多个用|隔开 nil为所有
--chufaCnt 数字型 触发交易的数量 0或nil 为不触发
--bossJiaoYiCnt 数字型 交易时仓库号交易给挂机号的数量
--giveFaZhuang 逻辑型 是否可以集给发装号 true为可以给发装号 false 或nil 为不需要
--baoliuCnt 数字型 挂机号交易时保留的数量
--lineSocketCnt 数字型 连洞数量 忽略请填nil
--shuXingLimit 字符串型 属性限制 自己想要的属性 格式为 "属性类名1,属性最小值1,是固定还是随机属性(0为忽略 基底属性为1 随机属性为2),起始范围(第几个属性 从1开始),结束范围(-1 为最大范围)" 可支持多个，多个时必须都满足了才算 中间用|隔开 忽略请填nil
--funcCheck 过滤函数，给作者预留的接口，不懂不要乱填，忽略请填nil
--SetNotUseMapLv(mapLv,roleLv)--按等级设置不使用、不捡多少阶及以上的地图 优先使用这里设置的地图等级 如果没设置将使用g_noUseMapLv设置的
-- SetNotUseMapLv(0,5)--0级以上打5阶及以下的图
-- SetNotUseMapLv(80,15)--80级打15阶级及以下的图
--roleLv 数字型 人物等级 满多少级将使用这设置的地图等级
--mapLv 数字型 地图等级

--SetMapGongYi(name)
--name 字符串型 地图工艺的名字 开图时会选择相符的地图工艺

g_useMoveSkillType=nil		--使用位移技能赶路场景 nil为一直都使用 0为剧情时使用 1为异界生产使用 2为从不使用
g_shengJiBaoShi=true		--自动升级宝石 true为升级 nil或false为不升级
g_notShuaBaiPao=true        --是否刷白袍 true为不刷 nil或false为刷
g_duobiHpVal=0.7            --打怪时HP少于多少躲避
g_yiJieLv=70				--够了多少级才去刷异界
--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",40)--做 到奇塔弗的受难 的时候刷纯净圣地到45级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",60)--滲血水道

--SetTaskMiGongData(taskClassName,taskIndex,migongIndex)--设置跑图时迷宫 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 migongIndex为迷宫索引填 1=第一次迷宫 2=第二次迷宫
SetTaskMiGongData("a5q2",nil,1)--在复活的梦魇这个任务时 做迷宫1
SetTaskMiGongData("a9q1",nil,2)--在复活的梦魇这个任务时 做迷宫2
--SetTaskMiGongDataByLv(lv,mgIndex)--设置到等级时做迷宫 lv 数字型 为大于等于多少级做 mgIndex=迷宫索引 数字型，只支持 1 2 3 对应3个迷宫
SetTaskMiGongDataByLv(75,3)

--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="圣堂武僧"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="守护者"
--SetUseWeapon(str)--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("法杖|盾")

--SetUseZhuangBeiTypeData(typeStr,pos)--设置自己用的装备类型 
--typeStr=类型("StrDex"为决斗者装+护甲闪避 "Str"为野蛮人装+护甲 "DexInt"为暗影装+闪避护盾 "Int"为女巫装+护盾 "Dex"为游侠装+闪避 "StrInt"为圣堂武僧装+力量护盾)
--pos=部位支持部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 不填或nil为设置所有
SetUseZhuangBeiTypeData("Str|StrInt","盾")
SetUseZhuangBeiTypeData("Int|StrInt","衣服")
SetUseZhuangBeiTypeData("Int|StrInt","头盔")
SetUseZhuangBeiTypeData("Int|StrInt","手套")
SetUseZhuangBeiTypeData("Int|StrInt","鞋子")

--SetNeedSkillLineData(val,str,invalidLv)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效

--剧情连法
SetNeedSkillLineData(10,"冰霜之錘,Metadata/Items/Gems/SkillGemGlacialHammer",5,nil,0)
SetNeedSkillLineData(77,"淨化烈焰,Metadata/Items/Gems/SkillGemSanctify|燃燒輔助,Metadata/Items/Gems/SupportGemChanceToIgnite|秘能波動輔助,Metadata/Items/Gems/SupportGemArcaneSurge",20,nil,0)
SetNeedSkillLineData(89,"赦免,Metadata/Items/Gems/SkillGemAbsolution,1|施放迴響輔助,Metadata/Items/Gems/SupportGemMulticast|召喚物傷害輔助,Metadata/Items/Gems/SupportGemMinionDamage|亢奮輔助,Metadata/Items/Gems/SupportGemOnslaughtOnSlayingShockedEnemy|召喚幻影輔助,Metadata/Items/Gems/SupportGemSummonGhostOnKill",nil,nil,0)
SetNeedSkillLineData(85,"召唤灵体,Metadata/Items/Gems/SkillGemRaiseSpectre,1|元素軍隊輔助,Metadata/Items/Gems/SupportGemSummonElementalResistance|豢養狂熱輔助,Metadata/Items/Gems/SupportGemFeedingFrenzy",nil,nil,0)
SetNeedSkillLineData(87,"殭屍復甦,Metadata/Items/Gems/SkillGemRaiseZombie,1|召喚巨石魔像,Metadata/Items/Gems/SkillGemSummonRockGolem|肉盾輔助,Metadata/Items/Gems/SupportGemMeatShield",nil,nil,0)
SetNeedSkillLineData(83,"元素淨化,Metadata/Items/Gems/SkillGemPurity|反抗之旗,Metadata/Items/Gems/SkillGemDefianceBanner|召唤圣物,Metadata/Items/Gems/SkillGemSummonRelic",nil,nil,0)
SetNeedSkillLineData(81,"烈焰冲刺,Metadata/Items/Gems/SkillGemFlameDash|號召,Metadata/Items/Gems/SkillGemConvocation|亵渎,Metadata/Items/Gems/SkillGemDesecrate",nil,nil,0)
SetNeedSkillLineData(79,"神聖火舌圖騰,Metadata/Items/Gems/SkillGemFlameTotem|钢铁之肤,Metadata/Items/Gems/SkillGemSteelskin",nil,nil,0)

--异界主力技能设置
SetNeedSkillLineData(100,"赦罪,Metadata/Items/Gems/SkillGemAbsolution,1|施放迴響輔助,Metadata/Items/Gems/SupportGemMulticast|召喚物傷害輔助,Metadata/Items/Gems/SupportGemMinionDamage|物理轉閃電輔助,Metadata/Items/Gems/SupportGemPhysicalToLightning|增加暴擊率輔助,Metadata/Items/Gems/SupportGemIncreasedCriticalStrikes|增加暴擊傷害輔助,Metadata/Items/Gems/SupportGemIncreasedCriticalDamage",nil,2,1)
SetNeedSkillLineData(96,"召唤灵体,Metadata/Items/Gems/SkillGemRaiseSpectre,1|施放迴響輔助,Metadata/Items/Gems/SupportGemMulticast|元素集中輔助,Metadata/Items/Gems/SupportGemElementalFocus|元素軍隊輔助,Metadata/Items/Gems/SupportGemSummonElementalResistance",nil,10,1)--鞋子
SetNeedSkillLineData(94,"殭屍復甦,Metadata/Items/Gems/SkillGemRaiseZombie,1|召喚巨石魔像,Metadata/Items/Gems/SkillGemSummonRockGolem|豢養狂熱輔助,Metadata/Items/Gems/SupportGemFeedingFrenzy|肉盾輔助,Metadata/Items/Gems/SupportGemMeatShield",nil,9,1)--手套
SetNeedSkillLineData(98,"召喚探測機獸,Metadata/Items/Gems/SkillGemSummonSkitterbots|暴风之盾,Metadata/Items/Gems/SkillGemTempestShield|反抗之旗,Metadata/Items/Gems/SkillGemDefianceBanner|召唤圣物,Metadata/Items/Gems/SkillGemSummonRelic",nil,5,1,nil,nil,nil,nil,nil,nil,nil,nil,true,nil)
SetNeedSkillLineData(92,"狂熱,Metadata/Items/Gems/SkillGemSpellDamageAura|精準,Metadata/Items/Gems/SkillGemPrecisionRoyale|重盾衝鋒,Metadata/Items/Gems/SkillGemShieldChargeRoyale",nil,4,1)--武器
SetNeedSkillLineData(90,"血肉奉獻,Metadata/Items/Gems/SkillGemFleshOffering|號召,Metadata/Items/Gems/SkillGemConvocation|亵渎,Metadata/Items/Gems/SkillGemDesecrate",nil,3,1)--盾牌

--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
--SetSkillLimitMaxLv("受伤时施放(辅)","Metadata/Items/Gems/SupportGemCastOnDamageTaken",1)
--SetSkillLimitMaxLv("虛無玉","Metadata/Items/Gems/SkillGemVoidSphere",1)
SetSkillLimitMaxLv("亵渎","Metadata/Items/Gems/SkillGemDesecrate",1)
SetSkillLimitMaxLv("精準","Metadata/Items/Gems/SkillGemPrecisionRoyale",1)

SetSkillUseWaEr("赦免","Metadata/Items/Gems/SkillGemAbsolution","瓦爾．赦免","Metadata/Items/Gems/SkillGemVaalAbsolution",1)
-- SetSkillUseWaEr("熔岩護盾","Metadata/Items/Gems/SkillGemMoltenShell","瓦爾．熔岩護盾","Metadata/Items/Gems/SkillGemVaalMoltenShell",1)

--AddAttackSkillData(name,className,noLine)--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
--AddAttackSkillData("电弧","arc")
AddAttackSkillData("赦罪","absolution")
AddAttackSkillData("淨化烈焰","purifying_flame")
AddAttackSkillData("冰霜之錘","glacial_hammer")
AddAttackSkillData("普通攻击","melee")

--SetNeedZhaoHuanMonster(name,className,val)--设置需要召唤的灵体会自动选择比重大的召唤 name=怪物名 className=怪物类名 val=比重
--SetNeedZhaoHuanMonster("霜寒自動巡守","Metadata/Monsters/LeagueHeist/Robot/RobotClockworkGolemCold",99999)
SetNeedZhaoHuanMonster("冷血酋长","Metadata/Monsters/BloodChieftain/MonkeyChiefBloodEnrage",1)
SetNeedZhaoHuanMonster("废墟地狱犬","Metadata/Monsters/Hellion/Hellion3",2)
SetNeedZhaoHuanMonster("驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver",8)
SetNeedZhaoHuanMonster("太阳军卫","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",7)
SetNeedZhaoHuanMonster("冰哨带","Metadata/Monsters/Guardians/GuardianFire_Blue",6)
SetNeedZhaoHuanMonster("火炎哨带","Metadata/Monsters/Guardians/GuardianFire",5)
SetNeedZhaoHuanMonster("诡异行者","Metadata/Monsters/WickerMan/WickerMan",4)
SetNeedZhaoHuanMonster("恶魔奴隶","Metadata/Monster/CageSpider/CageSpider2",3)

--bossName 字符串型 灵体仓库号的名字
--minLv 数字型 满多少级才会去仓库号家召唤 nil为忽略等级总是去
--SetNeedZhaoHuanMonster("Flayed Lookout","Metadata/Monsters/LeagueBetrayal/BetrayalSkeletonRangedSpectre",7)
--SetHaveLingTiBossName("短財疹嫌熟",70)--设置灵体仓库号 如果灵体号的灵体比身上的更好，他就会去灵体号所在位置召唤灵体
--SetNeedZhaoHuanMonster("强大的瓦尔堕灵","Metadata/Monsters/Skeletons/SkeletonMeleeKnightElementalSwordIncursionChampion",99)
--SetNeedZhaoHuanMonster("霜寒自動巡守","Metadata/Monsters/LeagueHeist/Robot/RobotClockworkGolemCold",99999)

--SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--设置异界时召唤的灵体数据 mapClassName=剧情图类名 name=灵体名 className=灵体类名
--SetYiJieZhaoHuanLingTiData("2_10_2","诡异行者","Metadata/Monsters/WickerMan/WickerMan")
SetYiJieZhaoHuanLingTiData("1_5_2","驱刑者","Metadata/Monsters/TemplarSlaveDriver/TemplarSlaveDriver")
--SetYiJieZhaoHuanLingTiData("2_7_7","冷血酋长","Metadata/Monsters/BloodChieftain/MonkeyChiefBloodEnrage")

--RemoveUseBuffSkill(name,className)--设置不使用的buff name=技能名 className=技能类名
--RemoveUseBuffSkill("召喚巨石魔像","summon_rock_golem")

---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","fire_and_cold_damage_resistance_%",0.2)--火焰与冰霜伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","fire_and_lightning_damage_resistance_%",0.2)--火焰与闪电伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","cold_and_lightning_damage_resistance_%",0.2)--冰霜与闪电伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_resist_all_elements_%",0.3)--全元素抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_fire_damage_resistance_%",0.1)--基础火焰伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_cold_damage_resistance_%",0.1)--基础冰霜伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","base_lightning_damage_resistance_%",0.1)--基础闪电伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","cold_damage_resistance_%",0.1)--冰霜抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","fire_damage_resistance_%",0.1)--火焰抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|盾","lightning_damage_resistance_%",0.1)--闪电抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","base_chaos_damage_resistance_%",0.15)--基础混沌伤害抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带","chaos_damage_resistance_%",0.15)--混沌抗性 %
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","base_movement_velocity_+%",10)--基础移动速度 +%
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","movement_velocity_+%",10)--移动速度 +%
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","手套|衣服|头盔","连洞",100)--每连一线加xx点比重
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","爪|盾|鞋子","总洞",100,1)--每连一线加xx点比重
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链|戒指|腰带","base_maximum_life",0.4,1)--加基礎最大生命
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","敏捷",0.5,0)--每点物理伤害加xx点比重
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","护甲",0.6)--加基礎最大生命
-- SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","爪","物理伤害",200,1)--每点物理伤害加xx点比重

SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","手套","sacrifice_%_maximum_life_to_gain_as_es_on_spell_cast",-99999)--减分 恶魔缝补者
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","头盔","you_cannot_have_non_spectre_minions",-99999)--减分 不能有非幽魂的召喚物
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","腰带","you_have_no_armour_or_energy_shield",-99999)--减分 你沒有護甲和能量護盾
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","腰带","FireResistance",-99999)--减分 戴亚迪安的晨曦
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","life_reserved_by_stat_%",-99999)--减分 冥约
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","衣服","local_has_no_sockets",-99999)--减分 岡姆

--剧情有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","护甲",5,1)                                                   --护甲
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","base_maximum_life",10,1)                                     --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_damage_+%",10,1)                                    --召唤伤害基底
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_attack_and_cast_speed_+%",5,1)                      --后缀施法速度
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","base_maximum_life",10,1)                                   --加基礎最大生命                 
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","base_resist_all_elements_%",5,1)                           --全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","base_resist_all_elements_%",10,1)                          --全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","fire_and_cold_damage_resistance_%",5,1)                    --火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","fire_and_lightning_damage_resistance_%",5,1)               --火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","cold_and_lightning_damage_resistance_%",4,1)               --冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_maximum_life",10,1)                 --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_damage_resistance_%",3,1)           --冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_damage_resistance_%",3,1)           --火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","lightning_damage_resistance_%",3,1)      --闪电抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子|手套|头盔|衣服|盾|法杖","总洞",30,1)                        --每加1孔加50点比重
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子|手套|头盔|衣服|盾|法杖","连洞",30,1)                        --每連1孔加40点比重

--异界有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","护甲",20,2)                                                 --护甲
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","盾","base_maximum_life",30,2)                                    --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","movement_velocity_+%",20,2)                               --移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","鞋子","base_movement_velocity_+%",30,2)                          --基础移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_attack_and_cast_speed_+%",777,2)                   --召唤攻擊和施放速度
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_critical_strike_multiplier_+",888,2)               --召唤暴击加成
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_critical_strike_chance_+%",999,2)                  --召唤暴击
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_damage_+%",7777,2)                                 --召唤伤害
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","spell_skill_gem_level_+%",8888,2)                         --全部法术等级+1
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","法杖","minion_skill_gem_leve_+%",9999,2)                         --召唤物等级+1
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","minion_damage_+%",7777,2)                                 --召唤伤害
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","minion_attack_and_cast_speed_+%",999,2)                   --召唤攻擊和施放速度
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","minion_movement_speed_+%",888,2)                          --召喚移動速度
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指","minion_elemental_resistance_%",777,2)                     --召唤抗性基底
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","base_maximum_life",10,2)                                  --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","项链","additional_strength",5,2)                                 --力量
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_maximum_life",10,2)    --加基礎最大生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_resist_all_elements_%",4,2)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_cold_damage_resistance_%",3,2)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_and_lightning_damage_resistance_%",3,2)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_and_lightning_damage_resistance_%",3,2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_fire_damage_resistance_%",2,2)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_cold_damage_resistance_%",2,2)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","base_lightning_damage_resistance_%",2,2)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","cold_damage_resistance_%",2,2)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","fire_damage_resistance_%",2,2)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔","lightning_damage_resistance_%",2,2)--闪电抗性 %

SetNeedFlaskData(1,"生命药剂","沸騰的,FlaskFullInstantRecovery1",60,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11")
SetNeedFlaskData(2,"生命药剂","受驚的,FlaskInstantRecoveryOnLowLife2",60,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11")
SetNeedFlaskData(3,"水银药剂","水晶之,FlaskBuffResistancesWhileHealing",1,"水银药剂","Metadata/Items/Flasks/FlaskUtility6")
SetNeedFlaskData(4,"坚岩药剂","鮑魚之,FlaskBuffArmourWhileHealing1",1,"堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5")
SetNeedFlaskData(5,"魔力药剂","密封之,FlaskBleedCorruptingBloodImmunity1",65,"永恆魔力藥劑","Metadata/Items/Flasks/FlaskMana12")

--SetZhengTiColorVarData(衣服,红孔数,绿孔数,蓝孔数,剧情0/异界1/无视nil),分值,连洞true/不连false/无视nil)
--衣服---
SetZhengTiColorVarData(2,1,0,5,nil,100000,true)
SetZhengTiColorVarData(2,1,0,4,nil,10000,true)
SetZhengTiColorVarData(2,1,0,3,nil,5000,true)
SetZhengTiColorVarData(2,0,0,4,nil,1000,true)
SetZhengTiColorVarData(2,1,0,2,nil,500,true)
SetZhengTiColorVarData(2,0,0,3,nil,400,true)
SetZhengTiColorVarData(2,2,0,2,nil,300,true)
SetZhengTiColorVarData(2,0,0,2,nil,200,true)
SetZhengTiColorVarData(2,1,0,1,nil,100,true)

--武器---绿蓝蓝
SetZhengTiColorVarData(3,1,1,1,1,500,true)--武器
SetZhengTiColorVarData(3,0,1,2,0,400,nil)
SetZhengTiColorVarData(3,1,0,2,0,300,nil)
SetZhengTiColorVarData(3,0,0,2,0,200,nil)
SetZhengTiColorVarData(3,1,1,1,0,100,nil)

--盾牌---红红红
SetZhengTiColorVarData(4,1,1,1,1,500,true)--盾牌
SetZhengTiColorVarData(4,2,1,0,0,400,nil)
SetZhengTiColorVarData(4,2,0,1,0,300,nil)
SetZhengTiColorVarData(4,2,0,0,0,200,nil)
SetZhengTiColorVarData(4,1,1,1,0,100,nil)

--头盔---蓝红红蓝--绿蓝
SetZhengTiColorVarData(5,1,0,3,1,500,true)
SetZhengTiColorVarData(5,1,0,3,0,400,true)
SetZhengTiColorVarData(5,0,0,4,0,300,true)
SetZhengTiColorVarData(5,0,0,3,0,200,true)
SetZhengTiColorVarData(5,2,0,2,0,100,true)

--手套---蓝蓝红红-蓝
SetZhengTiColorVarData(9,1,0,3,1,500,true)
SetZhengTiColorVarData(9,1,0,3,0,400,true)
SetZhengTiColorVarData(9,0,0,4,0,300,true)
SetZhengTiColorVarData(9,0,0,3,0,200,true)
SetZhengTiColorVarData(9,2,0,2,0,100,true)

--鞋子---蓝蓝蓝蓝-蓝
SetZhengTiColorVarData(10,0,0,4,1,500,true)
SetZhengTiColorVarData(10,1,0,3,0,400,true)
SetZhengTiColorVarData(10,0,0,4,0,300,true)
SetZhengTiColorVarData(10,0,0,3,0,200,true)
SetZhengTiColorVarData(10,2,0,2,0,100,true)

--圣堂武僧--主线
AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,40,0)--主线生效 超过50级就用点金点白色装备
AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,40,0)--主线生效 超过50级就用富豪点蓝色装备

---------------------------------------高级换装
--SetGaoJiHuanZhuangData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv,flaskPos,zbPos,color,nType,yxName,yxClassName,yxWordName,yxWordClassName,wxName,wxClassName,wxWordName,wxWordClassName,val) 高级换装设置 设置换指定的装备
--1职业，2物品名，3物品类名，4指定词缀，5指定词缀类名，6几连，7物等，8药剂位置12345，9部位限制，10颜色限制0白1蓝2金3橙，11有效场景nill无视0非异界1异界，nil，nil，nil，nil，nil，nil，nil，nil，20装备评分
--部位限制 如果两个部位要佩戴的装备不一样 但是两样装备都能佩戴这两个部位 就必须要填写 
--否则，可以填nil忽略 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带

--高级换装设置
--SetGaoJiHuanZhuangData(job,name,className,wordName,wordClassName,lineSocketCnt,goodsLv,flaskPos,zbPos,color,nType,yxName,yxClassName,yxWordName,yxWordClassName,wxName,wxClassName,wxWordName,wxWordClassName,val,tianFuZhuBaoPos,minLv,maxLv)-- 高级换装设置 设置换指定的装备
--1job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--2name 物品名
--3className 物品类名
--4wordName 指定词缀
--5wordClassName 指定词缀类名
--6lineSocketCnt 需要连的洞数量 比如设置4 他就会打到4连为止 nil为忽略
--7goodsLv 某些要打洞需要物品等级够了才能打那么多洞，如果定义了打洞数量 需要填这里 2洞要大于等于1级 3洞要大于等于15级 4洞要大于等于28级 5洞要大于等于35级 6洞要大于等于50级
--8flaskPos 药剂部位 装备的话可以忽略，药剂的时候才需要用 nil为忽略 1 2 3 4 5 对应5个药剂部位
--9zbPos 部位限制 如果两个部位要佩戴的装备不一样 但是两样装备都能佩戴这两个部位 就必须要填写 否则，可以填nil忽略 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--10color 颜色限制 nil为忽略 如果没有特殊需求可忽略 0为白 1为蓝 2为金 3为橙
--11nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效
--12yxName 身上或背包有指定装备时才有效 此为指定装备的名字 如果不需要此功能请填nil 
--13yxClassName 身上或背包有指定装备时才有效 此为指定装备的类名 如果不需要此功能请填nil
--14yxWordName 身上或背包有指定装备时才有效 此为指定装备的词缀名字 如果不需要此功能请填nil
--15yxWordClassName 身上或背包有指定装备时才有效 此为指定装备的词缀类名 如果不需要此功能请填nil
--16wxName 身上跟背包都有没有指定装备时才无效 此为指定装备的名字 如果不需要此功能请填nil 
--17wxClassName 身上跟背包都有没有指定装备时才无效 此为指定装备的类名 如果不需要此功能请填nil
--18wxWordName 身上跟背包都有没有指定装备时才无效 此为指定装备的词缀名字 如果不需要此功能请填nil
--19wxWordClassName 身上跟背包都有没有指定装备时才无效 此为指定装备的词缀类名 如果不需要此功能请填nil
--20val 分数 自己定义这件装给多少评分，填nil默认为9999分
--21tianFuZhuBaoPos 天赋珠宝部位
--22faZhuangLv 数字型 发装等级 满多少级才向发装号要装备 如果填了，就会按照设置的等级向发装号要 如果填nil的话 白袍从1级开始要，其他装备从进异界开始要
--23minLv 数字型 满多少级生效
--24maxLv 数字型 满多少级失效
SetGaoJiHuanZhuangData("圣堂武僧","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa",nil,nil,nil,2,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)
SetGaoJiHuanZhuangData("圣堂武僧","堅毅塔盾","Metadata/Items/Armours/Shields/ShieldStr17","獅眼的榮耀之盾","Lioneye's Remorse",3,15,nil,4,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--盾牌
SetGaoJiHuanZhuangData("圣堂武僧","三相戒指","Metadata/Items/Rings/Ring8","竊罪","Thief's Torment",nil,nil,nil,7,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--右戒指
SetGaoJiHuanZhuangData("圣堂武僧","飾布腰帶","Metadata/Items/Belts/Belt5","普蘭德斯之印","Perandus Blazon",nil,nil,nil,11,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--腰带
SetGaoJiHuanZhuangData("圣堂武僧","黃晶護身符","Metadata/Items/Amulets/Amulet10","惡咒護符","The Jinxed Juju",nil,nil,nil,6,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--项链
SetGaoJiHuanZhuangData("圣堂武僧","強化巨盔","Metadata/Items/Armours/Helmets/HelmetStrInt7","吉爾菲的榮光","Geofri's Crest",4,28,nil,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--头盔
SetGaoJiHuanZhuangData("圣堂武僧","軍團手套","Metadata/Items/Armours/Gloves/GlovesStrInt7","虛空","Null and Void",4,28,nil,9,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--手套
SetGaoJiHuanZhuangData("圣堂武僧","軍團長靴","Metadata/Items/Armours/Boots/BootsStrInt7","軍閥行軍","March of the Legion",4,28,nil,10,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--鞋子
--SetGaoJiHuanZhuangData("圣堂武僧","水银药剂","Metadata/Items/Flasks/FlaskUtility6","伤胃酒","Rotgut",nil,nil,3,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--药水
SetGaoJiHuanZhuangData("圣堂武僧","堅岩藥劑","Metadata/Items/Flasks/FlaskUtility5","魯米的靈藥","Rumi's Concoction",nil,nil,4,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--药水
SetGaoJiHuanZhuangData("圣堂武僧","大型复合药剂","Metadata/Items/Flasks/FlaskHybrid3","宝视精华","Divination Distillate",nil,nil,5,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,999999,nil,70,nil,nil)--药水

--SetNeedAddTianFu(tfStr)--设置天赋加点 tfStr=config.ini里设置好的天赋 如"女巫=name1-className1|name2-className2|
SetNeedAddTianFu("圣堂武僧=elemental_damage_mana_regen1893-傷害和魔力|intelligence889-智慧|intelligence940-智慧|intelligence885-智慧|spellcaster_notable1873-制裁|dexterity869-敏捷|intelligence882-智慧|strength828-力量|minion_duration2624_-召喚物傷害和持續時間|minion_duration2625-召喚物傷害和持續時間|minion_duration_notable2626-持久合作|mastery_minionoffence186-召喚物侵略專精-11723|intelligence918-智慧|savant901-奧術師之統御|minion_damage285-召喚物傷害|lord_of_the_dead1122-亡靈之主|life_mana1639-魔力和生命|life_mana_notable1638-心與靈|stun_ignore1680-施放時避免干擾和元素抗性|stun_ignore_str_dex1678-化虛為實|intelligence101-智慧|mana_spell_block2610-魔力和法術格擋|mana_spell_block_notable2611-神幻壁壘|mastery_mana162-魔力專精-64875|intelligence902-智慧|mana399-魔力|deep_thoughts383-沉靜思維|life1219-生命|divine_toughness1167-殘忍準備|mastery_life137-生命專精-47642|mana388-魔力回復和生命|mana397-魔力回復和生命|life_mana_notable1730-快速回復|minion_damage1152-召喚物生命|minion_life1124-召喚物生命|additional_minions1150-獻祭|mastery_miniondefence180-召喚物防禦專精-43400|minion_damage769-召喚物攻擊和施放速度|player_and_minion_notable2237-精神號令|life1407-生命|discipline_and_training1194-嚴峻訓練|physical_and_elemental_damage_2219-元素傷害|elementalist939-聖御|life1405-生命|melee_notable1874-聖潔之力|strength786-力量|dexterity973-敏捷|strength998-力量|strength1002-力量|agility876-超群身法|strength827-力量|strength814-力量|shield_block32-持盾元素抗性|shield_defences1063-盾牌格擋和持盾元素抗性|shield_mastery34-庇護聖所|mastery_shield212-盾牌專精-30612|life_reduced_mana_cost1934-生命與減少消耗|life_reduced_mana_cost1936-生命與減少消耗|life_reduced_mana_cost1935-生命與減少消耗|life_reduced_mana_notable1937-冷酷|damage_and_minion_damage2226-召喚物攻擊和施放速度|intelligence904-智慧|shield_damage_elemental2554-法術格擋|shield_damage_elemental2558-法術格擋|shield_damage_elemental_notable2557-庇護|life187-生命和能量護盾|life182-生命和能量護盾|life1161-生命和能量護盾|fitness1212-肉體之純潔|intelligence912-智慧|intelligence919-智慧|intelligence921-智慧|intelligence955-智慧|minion_life1125-召喚物生命和傷害|minion_damage1128-召喚物傷害|minion_damage1129-召喚物傷害|additional_spectre278-亡靈諧曲|aura_area_of_effect1205-光環效果範圍|reduced_mana_reservation1198-保留效用|reduced_mana_reservation1197-保留效用|aura_effect_reservation_cost_notable1559-主權|intelligence917-智慧|damage_and_minion_damage2228-召喚物傷害和生命|damage_and_minion_damage2227-召喚物傷害和生命|player_and_minion_notable2236-正義軍團|speed_and_minion_speed2231-召喚物傷害和攻擊和施放速度|speed_and_minion_speed2230-召喚物傷害和攻擊和施放速度|player_and_minion_notable2238-救贖|life_regeneration1573-生命回復|armour170-護甲和生命|life_regen_armour_notable1732-戰鬥精力|mastery_armour5_-護甲專精-48720|intelligence945-智慧|strength809-力量|strong_arm118-為戰而生|life599-生命|heart_of_the_gladiator825-戰士之心|minion_damage1126-召喚物傷害和命中|minion_damage1127-召喚物傷害和命中|minion_damage284-召喚物傷害和命中|additional_minions1123-亡靈之約|minion_area_of_effect2628-召喚物暴擊率|minion_area_of_effect2629-召喚物暴擊率|minion_area_of_effect_notable2630-恐怖之力|strength811-力量|strength824-力量|life1209-生命|fitness1186-奉獻|mastery_life136-生命專精-34242|life700-魔力和生命|deep_wisdom900-沉靜智慧|accuracy_minion_accuracy_and_resists2235-召喚物傷害|accuracy_minion_accuracy_and_resists2234-召喚物傷害|life1409-生命|life1210-生命|life600-生命|")
SetNeedAddTianFu("圣堂武僧升华=AscendancyGuardian15-护甲和能量护盾，召唤生物伤害|AscendancyGuardian14-光芒圣战军|AscendancyGuardian13-护甲和能量护盾，召唤生物伤害|AscendancyGuardian16-坚毅圣战军|AscendancyGuardian1-護甲和能量護盾、格擋恢復|AscendancyGuardian4-希望壁壘|")

-- 主刷炸坟神谕精华祭祀
SetNeedAddTianFu([[异界地图天赋=atlas_path_8-相鄰地圖掉落機率|atlas_essence_1_2-精髓稀有機率|atlas_essence_1_4-精髓稀有機率|atlas_essence_1_3-海量精華|atlas_alva_1_2-穿越物品數量|atlas_alva_1_3_-永久搜索|atlas_alva_1_1-穿越物品數量|atlas_path_6-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_ritual_1_1-祭祀機率|atlas_ritual_1_2-祭祀機率|atlas_ritual_1_3-祭祀機率|atlas_ritual_1_4-聖地|atlas_path_17-相鄰地圖掉落機率|atlas_map_drops_1-掉落複製地圖|atlas_wormhole_2_1-神秘大門|atlas_wormhole_2_2__-神秘大門|atlas_map_drops_20-掉落複製地圖|atlas_map_drops_3-掉落複製地圖|atlas_keystone_nofragments_1-意識流|atlas_path_28-相鄰地圖掉落機率|atlas_harbinger_1_1-額外神諭碎片|atlas_harbinger_1_2_-額外神諭碎片|atlas_harbinger_1_4-額外神諭碎片|atlas_harbinger_1_3-不祥到來|atlas_map_drops_2-掉落複製地圖|atlas_map_drops_4-掉落複製地圖|atlas_harbinger_3_1-額外神諭機率|atlas_harbinger_3_5-額外神諭碎片|atlas_harbinger_3_3-額外神諭碎片|atlas_harbinger_3_4-不可描述侵犯|atlas_map_drops_10-掉落複製地圖|atlas_map_drops_11-掉落複製地圖|atlas_path_88-掉落複製地圖|atlas_essence_4_3-禁錮怪物額外精髓機率|atlas_essence_4_2-禁錮怪物額外精髓機率|atlas_essence_4_1-禁錮怪物額外精髓機率|atlas_essence_4_4-水晶格|atlas_map_drops_16-掉落複製地圖|atlas_map_drops_15-掉落複製地圖|atlas_essence_3_1-精髓機率|atlas_essence_3_2-禁錮怪物額外精髓機率|atlas_essence_3_3-禁錮怪物額外精髓機率|atlas_essence_3_5-水晶共振|atlas_alva_2_2-穿越怪物群大小|atlas_alva_2_7-穿越怪物群大小|atlas_alva_2_1-穿越怪物群大小|atlas_path_32-物品數量|atlas_essence_2_3-精髓機率|atlas_essence_2_5-精髓機率|atlas_essence_2_2-精髓機率|atlas_essence_2_4-強化能量|atlas_path_40-物品數量|atlas_path_33-物品數量|atlas_path_81-掉落複製地圖|atlas_map_drops_6_-掉落複製地圖|atlas_mod_effect_2-地圖詞綴效果|atlas_keystone_quantity_converted_to_rarity-細膩鑑定師|atlas_mod_effect_3-地圖詞綴效果|atlas_ritual_2_6-祭祀機率|atlas_ritual_2_2_-祭祀特殊獎勵機率|atlas_ritual_2_1-祭祀特殊獎勵機率|atlas_ritual_2_5-神秘奉獻|atlas_path_82-掉落複製地圖|atlas_map_drops_14-掉落複製地圖|atlas_ritual_3_1-祭祀機率|atlas_ritual_3_2-重骰後免費獎勵機率|atlas_ritual_3_5-重骰後免費獎勵機率|atlas_ritual_3_4-貪財信徒|atlas_ritual_3_3-祭祀重骰消耗|atlas_ritual_3_6-祭祀重骰消耗|atlas_ritual_4253-靈活教條|atlas_path_85-掉落複製地圖|atlas_mod_effect_1-地圖詞綴效果|atlas_ritual_4267-祭祀機率|atlas_ritual_4268-增加祭祀延遲時間|atlas_ritual_4269-增加祭祀延遲時間|atlas_ritual_4254_-已答上訴|atlas_map_drops_12_-掉落複製地圖|atlas_ritual_4_1-祭祀機率|atlas_ritual_4263-增加祭祀強度|atlas_ritual_4_2-增加祭祀強度|atlas_ritual_4_5-增加祭祀碎片|atlas_ritual_4_4-增加祭祀碎片|atlas_expedition_3_2-探險商人重骰通貨機率|atlas_expedition_3_4-探險商人重骰通貨機率|atlas_expedition_3_5-古文|atlas_keystone_expedition_single_explosive-極限考古學|atlas_expedition_3_3_-探險機率|atlas_expedition_4_1-探險機率|atlas_expedition_1_4-傑出的拆遷專家|atlas_ritual_4264-增加祭祀重骰消耗和重骰後免費獎勵機率|atlas_harbinger_3_6-額外神諭機率|atlas_harbinger_3_2-額外神諭機率|]])

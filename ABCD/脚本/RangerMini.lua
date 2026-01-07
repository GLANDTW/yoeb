package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end
g_changeHunDunLv=84         --多少级前不换C
g_zhuaShenLv=99             --多少级前不抓众神
g_yuyanCnt=99				--够多少银币去预言
g_needSuDiLv=99             --大于等于多少级打宿敌
g_needLieXiLv=99			--大於等于多少级打裂缝
g_needTaFangLv=99			--大于等于多少级打塔防
g_needMengYanLv=99          --大于等于多少级打梦魇
g_needChuanYueLv=99      	--大于等于多少级打穿越
g_yongHengShiBeiLv=99		--大于等于多少级打永恒
g_attackFreezeMonsterLv=80	--大于等于多少级打精髓
g_needZhuangYuanLv=80       --大于等于多少级打庄园
g_needLianMoLv=80			--大于等于多少级打炼魔
g_needZaFenLv=80		    --大于等于多少级打炸坟
g_needMiWuLv=80				--大于等于多少级打迷雾
g_needYongBingLv=70         --满多少级打佣兵玩法

g_addTianFu=true			--自动按设定好的配置加天赋 true为加 nil或false为不加
g_needAutoChangeEquip=true		--开启自动换装 true为换 nil或false为不换
g_youXianMapLv=90                    --取图时人物满多少级就从高阶开始取
--SetMapGongYi("神諭聯盟")                   --每次开图时选择諭工艺
g_needAutoSetBaoShi=true		--开启自动换宝石 true为换 nil或false为不换

--===============================================
-- 【药瓶配置 - v2.0优化】
--===============================================

--药瓶摆放 - 基础设置
SetNeedFlaskData(1,"生命药剂")
SetNeedFlaskData(2,"生命药剂")
SetNeedFlaskData(3,"水银药剂")
SetNeedFlaskData(4,"紫晶药剂")
SetNeedFlaskData(5,"魔力药剂")

--药瓶摆放 - 高级词缀设置(异界阶段) - v2.0优化
-- 位置1: 生命藥劑 - 立即恢復 (保留)
SetNeedFlaskData(1,"生命药剂","沸騰的,FlaskFullInstantRecovery1",60,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11")

-- 位置2: 生命藥劑 - 低血觸發 + 冰凍/冰緩免疫 (v2.0新增)
SetNeedFlaskData(2,"生命药剂","受驚的,FlaskInstantRecoveryOnLowLife2|阿德里亞的,FlaskFreezeChillImmunity1",60,"不朽生命藥劑","Metadata/Items/Flasks/FlaskLife11")

-- 位置3: 水銀藥劑 - 移速 + 詛咒免疫 (v2.0優化)
SetNeedFlaskData(3,"水银药剂","水晶之,FlaskBuffResistancesWhileHealing|守護之,FlaskCurseImmunity1",1,"水银药剂","Metadata/Items/Flasks/FlaskUtility6")

-- 位置4: 紫晶藥劑 - 混沌抗 + 中毒免疫 (v2.0新增)
SetNeedFlaskData(4,"紫晶药剂","淨化的,FlaskPoisonImmunity1",1,"紫晶药剂","Metadata/Items/Flasks/FlaskUtility7")

-- 位置5: 魔力藥劑 - 流血/腐化血免疫 + 點燃免疫 (v2.0優化)
SetNeedFlaskData(5,"魔力药剂","密封之,FlaskBleedCorruptingBloodImmunity1|加熱的,FlaskIgniteImmunity1",65,"永恆魔力藥劑","Metadata/Items/Flasks/FlaskMana12")

--===============================================
-- 【游戏配置】
--===============================================
g_useMoveSkillType=nil		--使用位移技能赶路场景 nil为一直都使用 0为剧情时使用 1为异界生产使用 2为从不使用
g_shengJiBaoShi=true		--自动升级宝石 true为升级 nil或false为不升级
g_notShuaBaiPao=true        --是否刷白袍 true为不刷 nil或false为刷
g_attackDis=40			    --攻击距离
g_duobiHpVal=0.7            --打怪时HP少于多少躲避
g_yiJieLv=70				--够了多少级才去刷异界

--剧情升级地图设置
SetTaskShengJiData("a5q7",nil,"1_5_5",40)--做 到奇塔弗的受难 的时候刷纯净圣地到40级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",60)--滲血水道

--迷宫设置
SetTaskMiGongData("a5q2",nil,1)--在复活的梦魇这个任务时 做迷宫1
SetTaskMiGongData("a9q1",nil,2)--在复活的梦魇这个任务时 做迷宫2
SetTaskMiGongDataByLv(80,3)

--===============================================
-- 【职业与装备类型设置】
--===============================================
g_newRoleJob="游侠"
g_shengHuaJob="锐眼"
SetUseWeapon("弓|箭袋")

--装备基底偏好 (v2.2优化: 配合技能颜色需求)
SetUseZhuangBeiTypeData("StrDex|Dex","衣服")     -- 主技能: 红绿混或纯绿
SetUseZhuangBeiTypeData("DexInt|Dex","头盔")     -- Buff组: 绿蓝混合
SetUseZhuangBeiTypeData("DexInt|Int","手套")     -- 诅咒组: 绿蓝混合
SetUseZhuangBeiTypeData("Dex|DexInt","鞋子")     -- 碎片箭雨: 绿为主
SetUseZhuangBeiTypeData("Dex","箭袋")            -- 备选主技能位
--===============================================
-- 【优化后的技能连线配置 - v2.0修正】
--===============================================

-- ===== 剧情阶段技能 (1-70级) - 平滑过渡 =====
-- 1-2级: 燃烧箭矢起手
SetNeedSkillLineData(100,"燃燒箭矢,nil,1|氣勢輔助,nil",2,nil,nil)
SetNeedSkillLineData(110,"冰霜射擊,nil,1|氣勢輔助,nil",10,nil,nil)

-- 2-70级: 火炮砲塔辅助练级 (劇情階段主力輔助技能)
SetNeedSkillLineData(95,"火砲砲塔,nil,1|元素攻擊傷害輔助,nil|快速攻擊輔助,nil|多重圖騰輔助,nil",70,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,2)

-- 12-55级: 闪电箭矢主力培养期 (4连) - 添加主技能标记
SetNeedSkillLineData(98,"電流箭矢,nil,1|元素攻擊傷害輔助,nil|附加冰冷傷害輔助,nil|快速攻擊輔助,nil",90,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil)


-- 30级+: 弹片砲塔 (次要過渡技能,優先於魔改) - 權重89
SetNeedSkillLineData(89,"彈片砲塔,nil,1|快速攻擊輔助,nil|猛毒投射物輔助,nil|齊射輔助,nil",30,nil,nil)

-- 全阶段Buff技能组
SetNeedSkillLineData(96,"精準,nil|鋼筋鐵骨,nil|元素淨化,nil",nil,nil,nil)  -- 光环组
SetNeedSkillLineData(94,"狙擊者印記,nil|召喚寒冰魔像,nil|擊中時印記輔助,nil",nil,nil,nil)  -- 辅助组
SetNeedSkillLineData(88,"魔改箭矢輔助,nil|狂怒,nil|冰霜射擊,nil|暴擊獲得暴擊球輔助,nil",nil,nil,nil)  -- 爆发组 (權重降為88,低於彈片砲塔)


-- ===== 异界阶段技能 (70+级) - 终极形态 =====
-- 主力6连: 闪电箭矢 (衣服6连绿) - 主技能标记
SetNeedSkillLineData(100,"電流箭矢,nil,1|元素攻擊傷害輔助,nil|附加冰冷傷害輔助,nil|快速攻擊輔助,nil|三體輔助,nil|啟發輔助,nil",nil,2,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,55)

-- 头盔4连: Buff技能组
SetNeedSkillLineData(94,"鋼筋鐵骨,nil|元素淨化,nil|精準,nil|啟發輔助,nil",nil,5,1)

-- 手套4连: 辅助技能组
SetNeedSkillLineData(93,"精準,nil|狙擊者印記,nil|召喚寒冰魔像,nil|擊中時印記輔助,nil",nil,9,1)

-- 鞋子4连: 移动与防御 (彈片砲塔優先)
SetNeedSkillLineData(92,"彈片砲塔,nil,1|快速攻擊輔助,nil|猛毒投射物輔助,nil|齊射輔助,nil",nil,10,1)

--===============================================
-- 【技能等级限制与设置】
--===============================================
SetDebuffSkill(nil,"snipers_mark",nil,"curse_snipers_mark")--狙擊者印記
SetSkillLimitMaxLv("鋼筋鐵骨",nil,10)

--===============================================
-- 【攻击技能优先级】
--===============================================
AddAttackSkillData("電流箭矢","Galvanic Arrow",false,50,0)--单体Boss技能
AddAttackSkillData("閃電箭矢","Lightning Arrow",false,50,0)--主力技能
AddAttackSkillData("冰霜射擊","ice_shot",false,40,0)--主力技能
AddAttackSkillData("燃燒箭矢","Burning Arrow")
AddAttackSkillData("普通攻击","melee")

--===============================================
-- 【召唤灵体设置】(弓箭手不需要,保留原配置)
--===============================================
SetNeedZhaoHuanMonster(nil,"Metadata/Monsters/Revenant/RevenantMapBossStandalone_AtlasUber",99999)
SetNeedZhaoHuanMonster("冷血酋长","Metadata/Monsters/BloodChieftain/MonkeyChiefBloodEnrage",1)
SetNeedZhaoHuanMonster("废墟地狱犬","Metadata/Monsters/Hellion/Hellion3",2)
SetNeedZhaoHuanMonster("太阳军卫","Metadata/Monsters/HolyFireElemental/HolyFireElementalSolarisBeam",6)
SetNeedZhaoHuanMonster("冰哨带","Metadata/Monsters/Guardians/GuardianFire_Blue",8)
SetNeedZhaoHuanMonster("火炎哨带","Metadata/Monsters/Guardians/GuardianFire",5)
SetNeedZhaoHuanMonster("诡异行者","Metadata/Monsters/WickerMan/WickerMan",4)
SetNeedZhaoHuanMonster("恶魔奴隶","Metadata/Monster/CageSpider/CageSpider2",3)

SetHaveLingTiBossName("FAN_GOST",30)
SetNeedZhaoHuanMonster(nil,"Metadata/Monsters/Revenant/RevenantMapBossStandalone_AtlasUber",99999)

--===============================================
-- 【优化版装备评分系统】 - v2.11 简化版
--===============================================
-- 设计理念:
-- 1. 箭袋: 击中回复生命最高优先,没有就不换
-- 2. 戒指/腰带/项链: 只看生命+抗性
-- 3. 其他部位(衣服/头盔/手套/鞋子): 只需洞色正确,不管属性

-- ===== 负面属性过滤 =====
SetAtuoChangeEquipData("游侠","箭袋","sacrifice_%_maximum_life_to_gain_as_es_on_spell_cast",-99999)
SetAtuoChangeEquipData("游侠","头盔","you_cannot_have_non_spectre_minions",-99999)
SetAtuoChangeEquipData("游侠","手套","you_have_no_armour_or_energy_shield",-99999)
SetAtuoChangeEquipData("游侠","手套","FireResistance",-99999)
SetAtuoChangeEquipData("游侠","手套","life_reserved_by_stat_%",-99999)
SetAtuoChangeEquipData("游侠","衣服","local_has_no_sockets",-99999)

-- [重要] 排除召唤物相关属性
SetAtuoChangeEquipData("游侠","弓|箭袋|戒指|项链","minion_damage_+%",-99999)
SetAtuoChangeEquipData("游侠","弓|箭袋|戒指","minion_attack_and_cast_speed_+%",-99999)
SetAtuoChangeEquipData("游侠","弓|箭袋","minion_skill_gem_leve_+%",-99999)
SetAtuoChangeEquipData("游侠","弓|箭袋","spell_skill_gem_level_+%",-99999)
SetAtuoChangeEquipData("游侠","戒指","minion_movement_speed_+%",-99999)
SetAtuoChangeEquipData("游侠","戒指","minion_elemental_resistance_%",-99999)
SetAtuoChangeEquipData("游侠","项链","minion_critical_strike_multiplier_+",-99999)
SetAtuoChangeEquipData("游侠","项链","minion_critical_strike_chance_+%",-99999)


-- ===== 练级阶段 (0-70级) - 基础生存 =====
-- 抗性 (最高优先级) - 所有部位通用
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_resist_all_elements_%",35,0)
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_cold_damage_resistance_%",25,0)
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_lightning_damage_resistance_%",25,0)
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_and_lightning_damage_resistance_%",20,0)
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_fire_damage_resistance_%",15,0)
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_cold_damage_resistance_%",15,0)
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_lightning_damage_resistance_%",15,0)

-- 生命 (次高优先级)
SetAtuoChangeEquipData("游侠","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_maximum_life",25,0)


-- ===== 【箭袋】 - 击中回复生命最高优先 =====
-- 只有击中回血才换,没有这个属性就不换装
SetAtuoChangeEquipData("游侠","箭袋","life_gain_per_target",99999,2)  -- 击中回血 (必须有!)


-- ===== 【戒指】 - 只看生命+抗性 =====
SetAtuoChangeEquipData("游侠","戒指","base_maximum_life",50,2)
SetAtuoChangeEquipData("游侠","戒指","base_resist_all_elements_%",45,2)
SetAtuoChangeEquipData("游侠","戒指","fire_and_cold_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","戒指","fire_and_lightning_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","戒指","cold_and_lightning_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","戒指","base_fire_damage_resistance_%",25,2)
SetAtuoChangeEquipData("游侠","戒指","base_cold_damage_resistance_%",25,2)
SetAtuoChangeEquipData("游侠","戒指","base_lightning_damage_resistance_%",25,2)


-- ===== 【腰带】 - 只看生命+抗性 =====
SetAtuoChangeEquipData("游侠","腰带","base_maximum_life",50,2)
SetAtuoChangeEquipData("游侠","腰带","base_resist_all_elements_%",45,2)
SetAtuoChangeEquipData("游侠","腰带","fire_and_cold_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","腰带","fire_and_lightning_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","腰带","cold_and_lightning_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","腰带","base_fire_damage_resistance_%",25,2)
SetAtuoChangeEquipData("游侠","腰带","base_cold_damage_resistance_%",25,2)
SetAtuoChangeEquipData("游侠","腰带","base_lightning_damage_resistance_%",25,2)


-- ===== 【项链】 - 只看生命+抗性 =====
SetAtuoChangeEquipData("游侠","项链","base_maximum_life",50,2)
SetAtuoChangeEquipData("游侠","项链","base_resist_all_elements_%",45,2)
SetAtuoChangeEquipData("游侠","项链","fire_and_cold_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","项链","fire_and_lightning_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","项链","cold_and_lightning_damage_resistance_%",35,2)
SetAtuoChangeEquipData("游侠","项链","base_fire_damage_resistance_%",25,2)
SetAtuoChangeEquipData("游侠","项链","base_cold_damage_resistance_%",25,2)
SetAtuoChangeEquipData("游侠","项链","base_lightning_damage_resistance_%",25,2)


-- ===== 【衣服/头盔/手套/鞋子】 - 不设属性评分,只靠洞色 =====
-- 注意: 这些部位完全不设置属性评分
-- 系统会根据插槽颜色配置(SetZhengTiColorVarData)来选择装备
-- 只要洞色符合需求就会换装,不考虑任何属性


--===============================================
-- 【优化后的装备插槽颜色配置】 v2.2
--===============================================
-- 原则:
-- 1. 主技能支持两种配色: 2R2G (元素攻击+启发) 或 4G (纯绿辅助)
-- 2. 渐进式门槛: 1洞->2洞->3洞->4洞, 剧情阶段容易取得
-- 3. 主技能不限位置, 衣服/箭袋都可放

-- 衣服 (6洞) - 主技能位: 支持 2R3G1B / 2R2G / 4G
SetZhengTiColorVarData(2,2,3,1,nil,1000,true)  -- 2红3绿1蓝 (终极6连)
SetZhengTiColorVarData(2,2,4,0,nil,950,true)   -- 2红4绿 (6连备选)
SetZhengTiColorVarData(2,0,4,2,nil,900,true)   -- 4绿2蓝 (纯绿路线)
SetZhengTiColorVarData(2,2,3,0,nil,850,true)   -- 2红3绿 (5连)
SetZhengTiColorVarData(2,2,2,1,nil,800,true)   -- 2红2绿1蓝 (5连)
SetZhengTiColorVarData(2,0,4,1,nil,750,true)   -- 4绿1蓝
SetZhengTiColorVarData(2,2,2,0,nil,700,true)   -- 2红2绿 (4连核心)
SetZhengTiColorVarData(2,0,4,0,nil,650,true)   -- 4绿 (4连纯绿)
SetZhengTiColorVarData(2,1,3,0,nil,600,true)   -- 1红3绿
SetZhengTiColorVarData(2,0,3,1,nil,550,true)   -- 3绿1蓝
SetZhengTiColorVarData(2,1,2,1,nil,500,true)   -- 1红2绿1蓝
SetZhengTiColorVarData(2,0,3,0,nil,400,true)   -- 3绿
SetZhengTiColorVarData(2,1,2,0,nil,350,true)   -- 1红2绿
SetZhengTiColorVarData(2,0,2,1,nil,300,true)   -- 2绿1蓝
SetZhengTiColorVarData(2,0,2,0,nil,200,true)   -- 2绿
SetZhengTiColorVarData(2,1,1,0,nil,150,true)   -- 1红1绿
SetZhengTiColorVarData(2,0,1,0,nil,50)         -- 1绿

-- 箭袋 (6洞) - 备选主技能位: 同衣服配色
SetZhengTiColorVarData(3,2,3,1,nil,1000,true)  -- 2红3绿1蓝 (终极)
SetZhengTiColorVarData(3,2,4,0,nil,950,true)   -- 2红4绿
SetZhengTiColorVarData(3,0,4,2,nil,900,true)   -- 4绿2蓝
SetZhengTiColorVarData(3,2,2,0,nil,700,true)   -- 2红2绿 (4连核心)
SetZhengTiColorVarData(3,0,4,0,nil,650,true)   -- 4绿
SetZhengTiColorVarData(3,0,3,0,nil,400,true)   -- 3绿
SetZhengTiColorVarData(3,0,2,0,nil,200,true)   -- 2绿
SetZhengTiColorVarData(3,0,1,0,nil,50)         -- 1绿

-- 盾牌 (游侠用弓,此项保留但低优先)
SetZhengTiColorVarData(4,0,3,0,nil,300,true)   -- 3绿
SetZhengTiColorVarData(4,0,2,0,nil,200,true)   -- 2绿
SetZhengTiColorVarData(4,0,1,0,nil,100)        -- 1绿

-- 头盔 (4洞) - Buff组: 优雅(绿)+雷霆覆盖(蓝)+元素净化(蓝)+持续(蓝) = 1G3B
SetZhengTiColorVarData(5,0,1,3,nil,500,true)   -- 1绿3蓝 (最佳)
SetZhengTiColorVarData(5,0,2,2,nil,450,true)   -- 2绿2蓝
SetZhengTiColorVarData(5,0,1,2,nil,400,true)   -- 1绿2蓝
SetZhengTiColorVarData(5,0,2,1,nil,350,true)   -- 2绿1蓝
SetZhengTiColorVarData(5,0,1,1,nil,300,true)   -- 1绿1蓝
SetZhengTiColorVarData(5,0,0,2,nil,250,true)   -- 2蓝
SetZhengTiColorVarData(5,0,2,0,nil,200,true)   -- 2绿
SetZhengTiColorVarData(5,0,0,1,nil,100)        -- 1蓝
SetZhengTiColorVarData(5,0,1,0,nil,50)         -- 1绿

-- 手套 (4洞) - 诅咒组: 优雅(绿)+印记(蓝)+减咒(蓝)+施放时印记(蓝) = 1G3B
SetZhengTiColorVarData(9,0,1,3,nil,500,true)   -- 1绿3蓝 (最佳)
SetZhengTiColorVarData(9,0,2,2,nil,450,true)   -- 2绿2蓝
SetZhengTiColorVarData(9,0,1,2,nil,400,true)   -- 1绿2蓝
SetZhengTiColorVarData(9,0,2,1,nil,350,true)   -- 2绿1蓝
SetZhengTiColorVarData(9,0,1,1,nil,300,true)   -- 1绿1蓝
SetZhengTiColorVarData(9,0,0,2,nil,250,true)   -- 2蓝
SetZhengTiColorVarData(9,0,2,0,nil,200,true)   -- 2绿
SetZhengTiColorVarData(9,0,0,1,nil,100)        -- 1蓝
SetZhengTiColorVarData(9,0,1,0,nil,50)         -- 1绿

-- 鞋子 (4洞) - 碎片箭雨: 碎片(绿)+攻速(绿)+毒蛇(绿)+齐射(蓝) = 3G1B
SetZhengTiColorVarData(10,0,3,1,nil,500,true)  -- 3绿1蓝 (最佳)
SetZhengTiColorVarData(10,0,4,0,nil,480,true)  -- 4绿
SetZhengTiColorVarData(10,1,3,0,nil,450,true)  -- 1红3绿
SetZhengTiColorVarData(10,0,3,0,nil,400,true)  -- 3绿
SetZhengTiColorVarData(10,0,2,1,nil,350,true)  -- 2绿1蓝
SetZhengTiColorVarData(10,1,2,0,nil,300,true)  -- 1红2绿
SetZhengTiColorVarData(10,0,2,0,nil,200,true)  -- 2绿
SetZhengTiColorVarData(10,0,1,1,nil,150,true)  -- 1绿1蓝
SetZhengTiColorVarData(10,0,1,0,nil,50)        -- 1绿

--===============================================

--===============================================
-- 【升级装备通货设置 - 新手友好版本】
--===============================================
--===============================================
-- 【通货升级装备配置 - 新手友好版本】
--===============================================
-- 改进点: 将点金石/富豪石使用等级从40级改为1级
-- 目的: 让新手立即获得稀有装备,避免长期使用白装

-- 点金石: 白装 -> 黄装 (1级开始使用)
AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,1,0)

-- 富豪石: 蓝装 -> 黄装 (1级开始使用)
AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,1,0)

-- 重铸石: 黄装重洗 (如需要可在10级后启用)
-- AddShengJiZhuangBeiGoodsData("重铸石","Metadata/Items/Currency/CurrencyRerollRare",2,10,0)

-- 改造石: 蓝装重洗 (如需要可在10级后启用)
-- AddShengJiZhuangBeiGoodsData("改造石","Metadata/Items/Currency/CurrencyRerollMagic",1,10,0)

--===============================================
-- 【装备拾取策略说明】
--===============================================
-- 由于使用点金石1级升级,不需要额外的白装拾取配置
-- 系统会根据插槽颜色配置自动拾取合适的装备
-- 点金石会自动将白装升级为黄装

--===============================================
-- 【换装次数限制调整 - 允许更频繁换装】
--===============================================
-- 改进点: 将每个部位换装次数从2-3次提高到5次
-- 目的: 新手阶段需要频繁换装以适应等级提升

-- 套装收集数量限制 (用于贩售给NPC换取通貨)
SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",2)
SetChangeLimitCnt("腰带",3)
SetChangeLimitCnt("项链|戒指",3)

--===============================================


--===============================================
-- 【高级换装 - 特殊传奇装备】
--===============================================
SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","皮帽","Metadata/Items/Armours/Helmets/HelmetDex1","金缕帽","Goldrim",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,4000)
SetGaoJiHuanZhuangData("游侠","锻铁戒指","Metadata/Items/Rings/Ring1","英灵宝环","Le Heup of All",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","海灵戒指","Metadata/Items/Rings/Ring3","普兰德斯之记","Perandus Signet",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","素布腰带","Metadata/Items/Belts/Belt1","幻彩菱织","Prismweave",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","原矢箭袋","Metadata/Items/Quivers/QuiverNew13","平衡棱镜","The Poised Prism",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","熊首皮盔","Metadata/Items/Armours/Helmets/HelmetDex7","鼠巢","Rat's Nest",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","环带护手","Metadata/Items/Armours/Gloves/GlovesDexInt3","沙尘之影","Shadows and Dust",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","环带长靴","Metadata/Items/Armours/Boots/BootsDexInt3","日耀","Sundance",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

-- 换装次数限制已在上方新手友好配置区块中设置(已增加到5次)

--===============================================
-- 【天赋树配置】
--===============================================
SetNeedAddTianFu("游侠=attack_speed568-投射物傷害和命中|accuracy581-投射物傷害與攻擊速度|projectile_damage592-投射物傷害|projectile_damage593-投射物傷害|projectile_damage1485-投射物傷害|perfect_aim591-彈道學|dexterity995-敏捷|intelligence957-智慧|elemental_damage_es1615-獲得藥劑充能|elemental_reflect_2794-生命藥劑獲得充能|elemental_reflect_notable_2796-補藥|mana1479-魔力和藥劑效果|mana1478-原始精神|stun_recovery544-生命和避免暈眩|avoid_stun553-橡木之心|stun_recovery543-生命和避免暈眩|finesse993-嫻熟|one_handed_damage636-武器元素傷害|shield_mastery440-自然合一|dexterity984-敏捷|dexterity985-敏捷|dexterity874-敏捷|dexterity839-敏捷|bow_damage_accuracy2513-弓的傷害和命中|bow_damage_accuracy2511-弓的傷害和攻擊速度|bow_damage_accuracy_notable2514-遠視||mastery_bow37-弓專精-36967|verdant_precision_keystone2858-精準科技|dexterity877-敏捷|melee_evasion2029-胸甲、閃避和猛攻效果|melee_evasion2030-胸甲、閃避和猛攻效果|melee_evasion_notable2031-權貴攻擊|dexterity968-敏捷|point_blank1182-零點射擊|life1120-生命和避免元素異常狀態|thick_skin1157-強化之膚|life1156-生命和避免元素異常狀態|life1167-生命和避免元素異常狀態|dexterity861-敏捷|weapon_elemental_damage2163-武器元素傷害|weapon_elemental_damage2161-武器元素傷害，異常狀態機率|weapon_elemental_damage2162-武器元素傷害，異常狀態機率|weapon_elemental_damage_notable2165-太古之力|dexterity862-敏捷||accuracy582-命中與攻擊速度|accuracy589-命中和攻擊速度|deadeye590-心眼|mastery_accuracy3-命中專精-64775|life1216-生命|life1412-生命|alchemist532-藥草學|mastery_life146-生命專精-47642|dexterity856-敏捷|dexterity865-敏捷|dexterity860-敏捷|dexterity867-敏捷|damage_area_projectile_speed_2296-擊中時獲得生命和魔力|projectile_damage_projectile_speed1628-聰穎盜贼|mastery_leech127-偷取專精-62252|life1415-生命|life_life_leech1629-嗜血者|mark_generic1224-對標記敵人的傷害|mark_generic1225-對標記敵人的傷害|mark_generic_notable1226-標記獵物|mastery_mine178-印記專精-50841|")
--SetNeedAddTianFu("游侠升华=AscendancyDeadeye5-投射物傷害、命中率|AscendancyDeadeye4-彈射|AscendancyDeadeye17-投射物傷害、命中率|AscendancyDeadeye6-無限彈藥|AscendancyDeadeye3-投射物傷害、攻擊速度|AscendancyDeadeye14-集風|")

SetNeedAddTianFu("游侠升华=AscendancyDeadeye1-投射物傷害、印記施放速度|AscendancyDeadeye2-焦點|AscendancyDeadeye3-投射物傷害、攻擊速度|AscendancyDeadeye14-集風|AscendancyDeadeye19-投射物傷害、攻擊速度|AscendancyDeadeye20_-風之守衛|")
--异界地图天赋 - 舆图点速刷转EB
--===============================================
-- 【地图配置 - v2.0新增】
--===============================================

--------------------------------------------------
-- P0: 必须避免的地图词缀 (防止自杀!)
--------------------------------------------------
--AddAvoidMapAffixName("反射元素伤害")              -- 元素反射 (元素流必死!)
--AddAvoidMapAffixName("有反射物理伤害的时候")      -- 物理反射 (影響物理附加)
--AddAvoidMapAffixName("玩家无法再生生命")          -- 禁止回血 (危險)
--AddAvoidMapAffixName("玩家无法再生魔力")          -- 禁止回魔 (無法使用技能)
--AddAvoidMapAffixName("怪物有额外混沌伤害")        -- 額外混沌傷 (生存威脅)

--------------------------------------------------
-- P1: 地图刷图模式设置 (根据地图数量自动调整)
--------------------------------------------------
-- 模式说明:
-- 0 = 标准模式: 够完成度且打过Boss才算完成
-- 1 = 快速模式: 够完成度就算完成 (不用打Boss)
-- 2 = 速刷模式: 直奔Boss,打完就算完成

SetYiJieShuaTuModeByMapCnt(0, nil, 2)    -- 60张以上: 速刷Boss
SetYiJieShuaTuModeByMapCnt(0, 0.6, 2)    -- 20张以上: 刷60%+Boss
SetYiJieShuaTuModeByMapCnt(0, 0.8, 2)    -- 10张以上: 刷80%+Boss
SetYiJieShuaTuModeByMapCnt(0, 1, 2)       -- 10张以下: 全图+Boss

--------------------------------------------------
-- P1: 跳过复杂地图 (节省时间)
--------------------------------------------------
SetMapCfg(nil, "Metadata/Items/Maps/MapWorldsMalformation", true, true)      -- 畸形亡域
SetMapCfg(nil, "Metadata/Items/Maps/MapWorldsOvergrownRuin", true, true)     -- 长草遗迹
SetMapCfg(nil, "Metadata/Items/Maps/MapWorldsLaboratory", true, true)        -- 实验密室
SetMapCfg(nil, "Metadata/Items/Maps/MapWorldsCore", true, true)              -- 核心
SetMapCfg(nil, "Metadata/Items/Maps/MapWorldsVault", true, true, true)       -- 机关宝库 (拓天赋也不打)

--===============================================
SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_zana_1_11-偵查報告掉落機率|atlas_zana_1_3-偵查報告掉落機率|atlas_zana_1_6-重點偵察|atlas_zana_1_1-偵查報告掉落機率|atlas_zana_1_2-偵查報告掉落機率|atlas_path_96-聖甲蟲掉落率|atlas_map_tier_3_3-雕塑世界|atlas_map_tier_5_2-高階地圖機率|atlas_keystone_fortune_favours_doubled-大膽行動|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_5_1-高階地圖機率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-物品稀有度|atlas_map_drops_7-物品稀有度|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_1_3-雕塑山型|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_tier_2_3-雕塑天空|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|]])

--===============================================
SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_zana_1_11-偵查報告掉落機率|atlas_zana_1_3-偵查報告掉落機率|atlas_zana_1_6-重點偵察|atlas_zana_1_1-偵查報告掉落機率|atlas_zana_1_2-偵查報告掉落機率|atlas_path_96-聖甲蟲掉落率|atlas_map_tier_3_3-雕塑世界|atlas_map_tier_5_2-高階地圖機率|atlas_keystone_fortune_favours_doubled-大膽行動|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_5_1-高階地圖機率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-物品稀有度|atlas_map_drops_7-物品稀有度|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_1_3-雕塑山型|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_tier_2_3-雕塑天空|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|]])

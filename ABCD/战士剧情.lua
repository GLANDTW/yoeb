package.path = GetPackagePath();
local loadArr = {
    "work",
}
for i = 1, #loadArr
do
    package.loaded[loadArr[i]] = nil;
    require(loadArr[i]);
end

自动加天赋=true
自动换装=true
自动换技能=true
-- 走位时离怪物距离=50
攻击距离=40
身边满多少怪物翻滚=nil--数字型 周边怪物数量满多少翻滚 默认为3 填nil为不检测
设置任务时升级(nil,"TreeOfSouls",nil,"G1_2",4,0.8)--"黑暗中的秘密"
设置任务时升级(nil,"GraveyardFight",nil,"G1_9",10,0.6)--"石頭上的悲傷"
设置任务时升级(nil,"TheIronCount",nil,"G1_15",18,0.6)--"奧格姆的狂狼"
设置任务时升级(nil,"BurnTheWaterGoddess",8,"G2_4_3",28,0.6)--"七大水域之都"
设置任务时升级(nil,"OpenTheDesertGates",{5},"G2_12_1",36,0.7)--"腐化痕跡" 去無畏隊
-- 设置任务时升级(nil,"TheIronCount",nil,"C_G1_15",54,0.6,1)--"奧格姆的狂狼"


设置保护(0.65,0.18,0.3)
设置使用技能("寒霜爆", "frost_bomb", 75)
设置使用技能("電流印記", "thaumaturgist_mark", 60,"白|蓝",3000)
设置使用技能("陰爪", "rake", 60)
-- 设置使用技能("長鋒投擲", "player_ranged_spear", 75,nil,1000)
设置使用技能("長鋒刺擊", "player_melee_spear", 40)
设置使用技能("錘之打擊", "player_melee_1hmace", 40)


设置技能宝石("陰爪,Metadata/Items/Gem/SkillGemRake","重踏地面,Metadata/Items/Gem/SupportGemStompingGround|武術節奏,Metadata/Items/Gems/SupportGemMartialTempo|近身戰,Metadata/Items/Gems/SupportGemCloseCombat",3)
设置技能宝石("寒霜爆,Metadata/Items/Gems/SkillGemFrostBomb",nil,nil,1,10)
设置技能宝石("鮮血之捷,Metadata/Items/Gem/SkillGemHeraldOfBlood","血晶,Metadata/Items/Gem/SupportGemHaemocrystals|癱瘓,Metadata/Items/Gems/SupportGemMaim")
设置技能宝石("灰燼之捷11,Metadata/Items/Gems/SkillGemHeraldOfAsh","增幅效果,Metadata/Items/Gems/SupportGemMagnifiedEffect")
设置技能宝石("煉獄戰吼,Metadata/Items/Gems/SkillGemInfernalCry","預謀,Metadata/Items/Gems/SupportGemPremeditation|孜孜不倦 className:Metadata/Items/Gem/SupportGemTireless")
设置技能宝石("電流印記,Metadata/Items/Gem/SkillGemVoltaicMark","Outmaneuver,Metadata/Items/Gem/SupportGemOutmaneuver|Single Out,Metadata/Items/Gem/SupportGemSingleOut")
设置技能宝石("共鳴之盾,Metadata/Items/Gem/SkillGemResonatingShield","盛怒,Metadata/Items/Gems/SupportGemRage|爆破手,Metadata/Items/Gems/SupportGemDemolisher")
-- 设置技能宝石("骷髏風暴法師,Metadata/Items/Gems/SkillGemSkeletalStormMage","秘能節奏,Metadata/Items/Gems/SupportGemArcaneTempo|傳導,Metadata/Items/Gems/SupportGemConduction|豢養狂熱,Metadata/Items/Gems/SupportGemFeedingFrenzy",nil,nil,nil,100)
-- 设置技能宝石("骷髏風暴法師,Metadata/Items/Gems/SkillGemSkeletalStormMage")
-- -- 设置技能宝石("骷髏風暴法師,Metadata/Items/Gems/SkillGemSkeletalStormMage","秘能節奏,Metadata/Items/Gems/SupportGemArcaneTempo|豢養狂熱,Metadata/Items/Gems/SupportGemFeedingFrenzy|精準破壞,Metadata/Items/Gems/SupportGemControlledDestruction",nil,nil,nil,100)
-- -- 设置技能宝石("nil,Metadata/Items/Gems/SkillGemSkeletalSniper","散射,Metadata/Items/Gems/SupportGemScattershot|火焰灌注,Metadata/Items/Gems/SupportGemFireInfusion|出價,Metadata/Items/Gem/SupportGemBidding")
-- 设置技能宝石("怒炎之靈,Metadata/Items/Gem/SkillGemRagingSpirits","武術節奏,Metadata/Items/Gems/SupportGemMartialTempo|復仇之靈,Metadata/Items/Gem/SupportGemMinionInstability|煉獄軍團,Metadata/Items/Gems/SupportGemInfernalLegion")
-- 设置技能宝石("烈焰之牆,Metadata/Items/Gems/SkillGemFlameWall","堡壘,Metadata/Items/Gems/SupportGemFortress",4)--|秘能節奏,Metadata/Items/Gems/SupportGemArcaneTempo
-- 设置技能宝石("劇痛奉獻,Metadata/Items/Gems/SkillGemPainOffering","增幅效果,Metadata/Items/Gems/SupportGemMagnifiedEffect|堅持不懈,Metadata/Items/Gems/SupportGemPersistence")
-- -- 设置技能宝石("易燃,Metadata/Items/Gems/SkillGemFlammability","增強詛咒,Metadata/Items/Gems/SupportGemHeightenedCurse|集中效應,Metadata/Items/Gems/SupportGemConcentratedEffect")
-- 设置技能宝石("導電,Metadata/Items/Gems/SkillGemConductivity","增強詛咒,Metadata/Items/Gems/SupportGemHeightenedCurse|廣闊區域,Metadata/Items/Gems/SupportGemExpanse")
-- 设置技能宝石("屍術矢,Metadata/Items/Gem/SkillGemUnearth",nil,nil,1,11)




设置物品操作("捡", "类型类名:Active Skill Gem","工作状态:剧情") --捡所有已切割的技能宝石
设置物品操作("捡|存", "类型类名:UncutReservationGemStackable","工作状态:剧情") --精魂宝石
设置物品操作("捡|存", "类名:Metadata/Items/Gems/SkillGemUncut","工作状态:剧情")  --技能宝石
设置物品操作("捡|存", "类型类名:UncutSupportGemStackable","工作状态:剧情") --輔助寶石
设置物品操作("捡|存", "类型类名:SoulCore","工作状态:剧情") --符文
设置物品操作("捡|存|鉴", "类型类名:Jewel","工作状态:剧情") --符文

设置物品操作("丢|卖","工作状态:剧情","符合换装类型:1","已鉴定:1","比身上分高:<=0")--

--
--设置装备卖
local 首饰="Ring|Amulet|Belt|"
local 副武器="Quiver|Shield|"
local 防具="Boots|Gloves|Helmet|Body Armour|"
local 武器="TrapTool|Sceptre|Crossbow|Bow|Staff|Wand|Flail|Warstaff|Dagger|Claw|Spear|Two Hand Mace|One Hand Mace|Two Hand Axe|One Hand Axe|Two Hand Sword|One Hand Sword|Spear"
local 所有装备=首饰..副武器..防具..武器
设置物品操作("鉴|卖","类型类名:"..所有装备,"工作状态:剧情","自己金币:<50000")--
设置物品操作("捡|鉴|卖","类型类名:"..所有装备,"工作状态:剧情","颜色:>0","自己金币:<50000")--自己金币少于多少 捡卖所有垃圾

--这里加要留下多少评分或属性以上的物品 
设置物品操作("捡|存|鉴","类名:Metadata/Items/Rings/FourRing4&颜色:0")--藍玉戒指
设置物品操作("捡|存|鉴","类名:Metadata/Items/Amulets/FourAmulet8&颜色:0")--恆星項鍊
设置物品操作("捡|存|鉴","minion_skill_gem_level_+:>=2")--设置召唤物+2级以上的物品不卖不销毁
设置物品操作("捡|存|鉴","类型类名:!=LifeFlask","类型类名:!=ManaFlask","符合换装类型:1","换装评分:>300")
设置物品操作("捡|存","工作状态:剧情","颜色:>0","符合换装类型:1","已鉴定:1","比身上分高:>0")--
设置物品操作("捡|买|存","工作状态:剧情","颜色:>0","符合换装类型:1","符合使用最低需求:1","已鉴定:1","比身上分高:>0")--
设置物品操作("捡|鉴|卖","工作状态:剧情","颜色:>0","符合换装类型:1","符合使用最低需求:1","未鉴定:1")--捡、鉴定自己需要穿的未鉴定的物品
设置物品操作("捡|鉴|卖","工作状态:剧情","符合换装类型:1","符合使用最低需求:1","身上空闲:1")
设置使用武器("One Hand Mace","Shield",1,3)
设置使用武器("Spear","Shield",3)
设置装备按分数使用通货("Spear",100,"增幅|富豪")
设置装备按分数使用通货("Helmet",300,"增幅|富豪")
--武器
设置装备分数("战士","Spear","additional_strength:20")--额外力量
设置装备分数("战士","Spear","local_attack_speed_+%:20")--百分比攻速
设置装备分数("战士","Spear","local_physical_damage_+%:2")--百分比物理伤害
设置装备分数("战士","Spear","attack_maximum_added_physical_damage:2")--最大物理点伤
--衣服
设置装备分数("战士","Body Armour","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Body Armour","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Body Armour","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Body Armour","base_maximum_life:1")--生命
设置装备分数("战士","Body Armour","additional_strength:20")--额外力量
设置装备分数("战士","Body Armour","additional_all_attributes:30")--额外全能力
--头盔
设置装备分数("战士","Helmet","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Helmet","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Helmet","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Helmet","base_maximum_life:1")--生命
设置装备分数("战士","Helmet","additional_strength:20")--额外力量
设置装备分数("战士","Helmet","additional_all_attributes:30")--额外全能力
--手套
设置装备分数("战士","Gloves","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Gloves","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Gloves","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Gloves","base_maximum_life:1")--生命
设置装备分数("战士","Gloves","additional_strength:20")--额外力量
设置装备分数("战士","Gloves","additional_all_attributes:30")--额外全能力
--鞋子
设置装备分数("战士","Boots","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Boots","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Boots","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Boots","base_maximum_life:1")--生命
设置装备分数("战士","Boots","additional_strength:20")--额外力量
设置装备分数("战士","Boots","additional_all_attributes:30")--额外全能力
设置装备分数("战士","Boots","base_movement_velocity_+%:15")--移动速度
--项链
设置装备分数("战士","Amulet","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Amulet","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Amulet","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Amulet","base_maximum_life:1")--生命
设置装备分数("战士","Amulet","additional_strength:20")--额外力量
设置装备分数("战士","Amulet","additional_all_attributes:30")--额外全能力
--戒指 
设置装备分数("战士","Ring","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Ring","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Ring","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Ring","base_maximum_life:1")--生命
设置装备分数("战士","Ring","additional_strength:20")--额外力量
设置装备分数("战士","Ring","additional_all_attributes:30")--额外全能力
--腰带
设置装备分数("战士","Belt","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Belt","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Belt","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Belt","base_maximum_life:1")--生命
设置装备分数("战士","Belt","additional_strength:20")--额外力量
设置装备分数("战士","Belt","additional_all_attributes:30")--额外全能力
--盾
设置装备分数("战士","Shield","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("战士","Shield","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("战士","Shield","base_resist_all_elements_%:12")--全抗
设置装备分数("战士","Shield","base_maximum_life:1")--生命
设置装备分数("战士","Shield","additional_strength:20")--额外力量
设置装备分数("战士","Shield","additional_all_attributes:30")--额外全能力
--药品
设置装备分数("战士","LifeFlask","总红量:1")--
设置装备分数("战士","ManaFlask","总蓝量:1")--
设置装备分数("战士","ManaFlask","local_flask_removes_%_of_mana_recovery_from_life_on_use:-500")
设置天赋加点("战士=armour6-護甲,strength26-能力-2,strength25-能力-2,strength24_-能力-2,strength23-能力-2,strength22-能力-1,strength21-能力-1,strength15-能力-1,attributes32-能力-1,marauder_brute_notable2-冷酷無情,armour14-護甲,armour35-堅固金屬,one_handed17-單手武器傷害,one_handed18-單手武器傷害,one_handed19-單手武器傷害,one_handed20-損害,attack_speed6-攻擊速度,attack_speed32_-掠奪,strength105-力量,strength102-壯漢,strength104-力量,strength107-力量,strength106-力量,armour22-護甲,armour32-捕刃者,strength19-能力-1,fire10-對燃燒敵人的傷害,fire16-對燃燒敵人的傷害,fire38-灼熱打擊,jewel_slot1956-[Jewel|珠寶]插槽,strength61_-能力-1,attributes51-能力-1,attributes81-能力-1,passive_keystone_resolute_technique-堅毅之心,strength59_-能力-1,attributes50-能力-1,strength54-能力-1,physical26-物理傷害,physical28-物理傷害,physical29-物理傷害,physical37-戰鬥狂熱,attributes16-能力-1,shapeshifting17-變形,shapeshifting16-變形,shapeshifting15-變形,shapeshifting19-野性之力,shapeshifting4-變形,shapeshifting14-變形,shapeshifting18-野獸狂怒,stun_threshold25-暈眩門檻和力量,stun_threshold27-暈眩門檻和力量,stun_threshold31-永不屈服,strength68-能力-1,slow_attacks2_-攻擊傷害與減緩的攻擊速度,slow_attacks3-攻擊傷害與減緩的攻擊速度,slow_attacks5-攻擊傷害與減緩的攻擊速度,slow_attacks10-毀滅裁決,strength67-能力-1,attributes71-能力-1,strength69-能力-1,strength103-力量與減少魔力,strength101-力量與減少魔力,strength109-力量與減少魔力,strength108_-殘忍力量,strength42-能力-1,strength41-能力-1,rage8-擊中時獲得盛怒,rage7-擊中時獲得盛怒,rage9-擊中時獲得盛怒,rage10-經久之怒,strength40_-能力-1,strength39_-能力-1,armour_break28-護甲破壞與物理傷害,armour_break37-殘忍手段,strength38-能力-1,strength36-能力-1,strength37-能力-1,attributes30_-能力-1,dexterity13-能力-1,one_handed23-單手武器傷害,one_handed22-單手武器傷害,one_handed21-單手武器傷害,one_handed26-塗層武器,jewel_slot1975-[Jewel|珠寶]插槽,strength82-能力-1,dexterity79-能力-1,strength81-能力-1,all_attributes2-全部能力值,all_attributes14-全部能力值,all_attributes3-全部能力值,all_attributes1-全部能力值,all_attributes6-博學的")


function GetNeedWork()
    -- return ShuaTu:New("G3_6_1",nil,true)
	return ShuaTuTask:Create()
end
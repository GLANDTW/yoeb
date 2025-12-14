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
走位时离怪物距离=60
设置任务时升级(nil,"TreeOfSouls",nil,"G1_2",4,0.8)--"黑暗中的秘密"
-- 设置任务时升级(nil,"GraveyardFight",nil,"G1_9",8,0.6)--"石頭上的悲傷"
设置任务时升级(nil,"TheIronCount",nil,"G1_14",16,0.6)--"奧格姆的狂狼"
--设置任务时升级(nil,"BurnTheWaterGoddess",8,"G1_4_3",28,0.6)--"七大水域之都"
--设置任务时升级(nil,"OpenTheDesertGates",{5},"G1_12_2",36,0.8)--"腐化痕跡" 去無畏隊

--设置技能宝石(主动技能物品, 辅助技能物品, 技能最大等级, 生效人物等级, 失效人物等级, 优先值)
--主动技能物品类名 字符串型 主动技能的物品类名 格式为 "宝石物品名,宝石物品类名"
--辅助技能物品类名 字符串型 辅助技能的物品类名 格式为 "辅助宝石物品名1,辅助宝石物品类名1|辅助宝石物品名2,辅助宝石物品类名2" 支持多个，中间用|隔开
--技能最大等级 字符串型 技能满多少级不升级 可填nil忽略 为不限制升级
--生效人物等级 数字型 人物等级满多少级生效 可填nil忽略 为一直生效
--失效人物等级 数字型 人物等级满多少级失效 可填nil忽略 为一直不失效
--优先值 数字型 优先级 越大越优先 填nil为默认0

设置保护(0.7,0.2,0.3)

设置使用技能("元素要害", "elemental_weakness",80,"蓝|金|橙",8000)
设置使用技能("劇痛獻祭", "pain_offering", 80, "蓝|金|橙",8000)
设置使用技能("毒氣箭矢","sniper_gas_shot", 80,nil,800)
设置使用技能("烈焰之牆", "firewall", 80,nil,800)
设置使用技能("寒霜爆", "frost_bomb", 80)
设置使用技能("屍術矢", "unearth", 80)
设置使用技能("混沌弩箭", "weapon_granted_chaosbolt", 80)

设置技能宝石("nil,Metadata/Items/Gems/SkillGemSkeletalSniper","多重射擊 II,Metadata/Items/Gems/SupportGemScattershotTwo|出價 I,Metadata/Items/Gems/SupportGemBidding|臨終恐息,Metadata/Items/Gems/SupportGemLastGasp")
设置技能宝石("怒炎之靈,Metadata/Items/Gem/SkillGemRagingSpirits","火焰同調,Metadata/Items/Gem/SupportGemFireInfusion|豢養狂熱,Metadata/Items/Gems/SupportGemFeedingFrenzy")
设置技能宝石("寒霜爆,Metadata/Items/Gems/SkillGemFrostBomb","快速前進,Metadata/Items/Gems/SupportGemFastForward|增幅光環 I,Metadata/Items/Gems/SupportGemMagnifiedEffect")
设置技能宝石("屍術矢,Metadata/Items/Gem/SkillGemUnearth","野性殘暴 I,Metadata/Items/Gem/SupportGemBrutality|復仇之靈,Metadata/Items/Gem/SupportGemMinionInstability")
设置技能宝石("劇痛奉獻,Metadata/Items/Gems/SkillGemPainOffering","延長持續時間 I,Metadata/Items/Gems/SupportGemPersistence|元素大军,Metadata/Items/Gems/SupportGemElementalArmy")
设置技能宝石("元素要害,Metadata/Items/Gems/SkillGemElementalWeakness","增強詛咒,Metadata/Items/Gems/SupportGemHeightenedCurse|廣闊區域,Metadata/Items/Gems/SupportGemExpanse")
设置技能宝石("烈焰之牆,Metadata/Items/Gems/SkillGemFlameWall","堡壘,Metadata/Items/Gems/SupportGemFortress|點燃,Metadata/Items/Gems/SupportGemIgnition")
--设置技能宝石("骷髏風暴法師,Metadata/Items/Gems/SkillGemSkeletalStormMage","秘能節奏,Metadata/Items/Gems/SupportGemArcaneTempo|精準破壞,Metadata/Items/Gems/SupportGemControlledDestruction|豢養狂熱,Metadata/Items/Gems/SupportGemFeedingFrenzy",nil,nil,nil,20)

设置物品操作("捡|存", "类型类名:UncutSkillGemStackable","工作状态:剧情") --捡所有已切割的技能宝石
设置物品操作("捡|存", "类型类名:UncutReservationGemStackable","工作状态:剧情") --精魂宝石
设置物品操作("捡|存", "类型类名:UncutSkillGemStackableStackable","工作状态:剧情")  --技能宝石
设置物品操作("捡|存", "类型类名:UncutSupportGemStackable","工作状态:剧情") --輔助寶石
设置物品操作("捡|存", "类名:Metadata/Items/Currency/CurrencyAddSkillGemSocket3","工作状态:剧情") --低階工匠石
设置物品操作("捡|存", "类名:Metadata/Items/Currency/CurrencyAddSkillGemSocket4","工作状态:剧情") --高階工匠石
--设置物品操作("捡|存", "类型类名:SoulCore","工作状态:剧情") --符文
--设置物品操作("捡|存|鉴", "类型类名:Jewel","工作状态:剧情") --珠宝

设置物品操作("丢|卖","工作状态:剧情","符合换装类型:1","已鉴定:1","比身上分高:<=0")--

--设置装备卖
local 首饰="Ring|Amulet|Belt|"
local 副武器="Quiver|Shield|Focus|"
local 防具="Boots|Gloves|Helmet|Body Armour|"
local 武器="TrapTool|Sceptre|Crossbow|Bow|Staff|Wand|Flail|Warstaff|Dagger|Claw|Spear|Two Hand Mace|One Hand Mace|Two Hand Axe|One Hand Axe|Two Hand Sword|One Hand Sword|"
local 所有装备=首饰..副武器..防具..武器
设置物品操作("鉴|卖","类型类名:"..所有装备,"工作状态:剧情")--
设置物品操作("捡|鉴|卖","类型类名:"..所有装备,"工作状态:剧情","颜色:>0","自己金币:<20000")--自己金币少于多少 捡卖所有垃圾

--这里加要留下多少评分或属性以上的物品 
-- 设置物品操作("捡|存|鉴","类名:Metadata/Items/Rings/FourRing4&颜色:0")--藍玉戒指
-- 设置物品操作("捡|存|鉴","类名:Metadata/Items/Amulets/FourAmulet8&颜色:0")--恆星項鍊
设置物品操作("捡|鉴|存","minion_skill_gem_level_+:>=2")--设置召唤物+2级以上的物品不卖不销毁
设置物品操作("捡|鉴|存","类型类名:!=LifeFlask","类型类名:!=ManaFlask","符合换装类型:1","换装评分:>2000")
设置物品操作("捡|鉴","工作状态:剧情","颜色:>0","符合换装类型:1","已鉴定:1","比身上分高:>0")--
设置物品操作("捡|买|存","工作状态:剧情","颜色:>0","符合换装类型:1","符合使用最低需求:1","已鉴定:1","比身上分高:>0")--
设置物品操作("捡|鉴|卖","工作状态:剧情","颜色:>0","符合换装类型:1","符合使用最低需求:1","未鉴定:1")--捡、鉴定自己需要穿的未鉴定的物品
设置物品操作("捡|鉴|卖","工作状态:剧情","符合换装类型:1","符合使用最低需求:1","身上空闲:1")
设置使用武器("Wand","Sceptre",1,3)
设置使用武器("Sceptre","Focus",3)
设置装备按分数使用通货("Sceptre",300,"增幅|富豪")
设置装备按分数使用通货("Helmet",300,"增幅|富豪")
设置物品操作("捡|存|鉴|交", "颜色:3")--设置橙色装备

--武器 权杖
设置装备分数("女巫","Sceptre","minion_skill_gem_level_+:1000")--召唤物技能+1 就加100分
设置装备分数("女巫","Sceptre","local_spirit_+%:20")--额外每点精魂
设置装备分数("女巫","Sceptre","allies_in_presence_damage_+%:2")--每点友方额外伤害
设置装备分数("女巫","Sceptre","allies_in_presence_attack_speed_+%:5")--每点友方攻击速度
设置装备分数("女巫","Sceptre","allies_in_presence_attack_maximum_added_fire_damage:1")--友方额外火焰伤害
设置装备分数("女巫","Sceptre","allies_in_presence_attack_maximum_added_physical_damage:1")--友方额外物理伤害
--设置装备分数("女巫","Sceptre","allies_in_presence_critical_strike_chance_+%:1")--友方额外暴击率
--衣服
设置装备分数("女巫","Body Armour","base_spirit_from_equipment:200")--精魂
设置装备分数("女巫","Body Armour","fire_damage_resistance_%:6|cold_damage_resistance_%:6|lightning_damage_resistance_%:5")--火、冰、电抗
设置装备分数("女巫","Body Armour","base_fire_damage_resistance_%:6|base_cold_damage_resistance_%:6|base_lightning_damage_resistance_%:5")--基础火、冰、电抗
设置装备分数("女巫","Body Armour","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Body Armour","base_maximum_life:1")--生命
设置装备分数("女巫","Body Armour","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
设置装备分数("女巫","Body Armour","local_energy_shield_+%:5")--百分比护盾
--设置装备分数("女巫","Body Armour","additional_all_attributes:10")--额外全能力
--头盔
设置装备分数("女巫","Helmet","minion_skill_gem_level_+:1000")--召唤物技能
设置装备分数("女巫","Helmet","fire_damage_resistance_%:6|cold_damage_resistance_%:6|lightning_damage_resistance_%:5")--火、冰、电抗
设置装备分数("女巫","Helmet","base_fire_damage_resistance_%:6|base_cold_damage_resistance_%:6|base_lightning_damage_resistance_%:5")--基础火、冰、电抗
设置装备分数("女巫","Helmet","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Helmet","base_maximum_life:1")--生命
设置装备分数("女巫","Helmet","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
设置装备分数("女巫","Helmet","local_energy_shield_+%:5")--百分比护盾
--设置装备分数("女巫","Helmet","additional_all_attributes:10")--额外全能力
--手套
设置装备分数("女巫","Gloves","fire_damage_resistance_%:10|cold_damage_resistance_%:10|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Gloves","base_fire_damage_resistance_%:10|base_cold_damage_resistance_%:10|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Gloves","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Gloves","base_maximum_life:1")--生命
设置装备分数("女巫","Gloves","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
设置装备分数("女巫","Gloves","local_energy_shield_+%:5")--百分比护盾
--设置装备分数("女巫","Gloves","additional_all_attributes:10")--额外全能力
--鞋子
设置装备分数("女巫","Boots","fire_damage_resistance_%:6|cold_damage_resistance_%:6|lightning_damage_resistance_%:5")--火、冰、电抗
设置装备分数("女巫","Boots","base_fire_damage_resistance_%:6|base_cold_damage_resistance_%:6|base_lightning_damage_resistance_%:5")--基础火、冰、电抗
设置装备分数("女巫","Boots","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Boots","base_maximum_life:1")--生命
设置装备分数("女巫","Boots","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
设置装备分数("女巫","Boots","local_energy_shield_+%:5")--百分比护盾
设置装备分数("女巫","Boots","base_movement_velocity_+%:1000")--移动速度
--设置装备分数("女巫","Boots","additional_all_attributes:10")--额外全能力
--项链
设置装备分数("女巫","Amulet","minion_skill_gem_level_+:1000")--召唤物技能
设置装备分数("女巫","Amulet","base_spirit_from_equipment:20")--精魂
设置装备分数("女巫","Amulet","fire_damage_resistance_%:12|cold_damage_resistance_%:10|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Amulet","base_fire_damage_resistance_%:12|base_cold_damage_resistance_%:10|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Amulet","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Amulet","base_maximum_life:1")--生命
设置装备分数("女巫","Amulet","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
-- 设置装备分数("女巫","Amulet","base_item_found_rarity_+%:5")--稀有度
--戒指 
设置装备分数("女巫","Ring","fire_damage_resistance_%:10|cold_damage_resistance_%:10|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Ring","base_fire_damage_resistance_%:10|base_cold_damage_resistance_%:10|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Ring","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Ring","base_maximum_life:1")--生命
设置装备分数("女巫","Ring","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧力
-- 设置装备分数("女巫","Ring","base_item_found_rarity_+%:5")--稀有度
--腰带
设置装备分数("女巫","Belt","fire_damage_resistance_%:8|cold_damage_resistance_%:10|lightning_damage_resistance_%:12")--火、冰、电抗
设置装备分数("女巫","Belt","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:10|base_lightning_damage_resistance_%:12")--基础火、冰、电抗
设置装备分数("女巫","Belt","base_maximum_life:1")--生命
设置装备分数("女巫","Belt","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
--盾
设置装备分数("女巫","Shield","base_spirit_from_equipment:20")--精魂
设置装备分数("女巫","Shield","fire_damage_resistance_%:8|cold_damage_resistance_%:10|lightning_damage_resistance_%:12")--火、冰、电抗
设置装备分数("女巫","Shield","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:10|base_lightning_damage_resistance_%:12")--基础火、冰、电抗
设置装备分数("女巫","Shield","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Shield","base_maximum_life:1")--生命
设置装备分数("女巫","Shield","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
--法器
设置装备分数("女巫","Focus","base_spirit_from_equipment:20")--精魂
设置装备分数("女巫","Focus","fire_damage_resistance_%:8|cold_damage_resistance_%:10|lightning_damage_resistance_%:12")--火、冰、电抗
设置装备分数("女巫","Focus","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:10|base_lightning_damage_resistance_%:12")--基础火、冰、电抗
设置装备分数("女巫","Focus","base_resist_all_elements_%:15")--全抗
设置装备分数("女巫","Focus","base_maximum_life:1")--生命
设置装备分数("女巫","Focus","additional_dexterity:3|additional_intelligence:3|additional_strength:2")--额外力量、敏捷、智慧
--药品
设置装备分数("女巫","LifeFlask","总红量:1")--
设置装备分数("女巫","ManaFlask","总蓝量:1")--
设置装备分数("女巫","LifeFlask|ManaFlask","local_flask_removes_%_of_mana_recovery_from_life_on_use:-1000")--會扣除魔力恢復值
设置装备分数("女巫","LifeFlask|ManaFlask","local_flask_removes_%_of_life_recovery_from_mana_on_use:-1000")--會扣除生命恢復值
设置装备分数("女巫","LifeFlask|ManaFlask","local_flask_removes_%_of_life_recovery_from_life_on_use:-1000")--會扣除生命恢復值
设置装备分数("女巫","Helmet","local_all_attributes_-_per_level:-10000")--會扣除生命恢復值
设置天赋加点("女巫=spells18-法術傷害,spells15-法術傷害,spell_criticals2__-法術傷害,spell_criticals1-法術傷害,witch_sorceress_notable1-原始力量,elemental14-元素傷害,cold2-冰冷傷害,cold34-凜冬之途,sorcerer_start2-Elemental Damage,elemental15-元素傷害,intelligence15-能力-1,intelligence35_-能力-2,intelligence83-能力-3,intelligence37-能力-1,intelligence38-能力-3,intelligence2-能力-3,intelligence49-能力-3,attributes14-能力-3,attributes13-能力-3,jewel_slot1969-[Jewel|珠寶]插槽,intelligence51-能力-3,minion_offence7-召喚物傷害,minion_offence9-召喚物傷害,minion_offence10_-召喚物傷害,minion_offence11-召喚物傷害,minion_offence12_-召喚物傷害,minion_offence14-恐懼領主,intelligence16-能力-3,intelligence86-能力-3,minion_defence20-召喚物生命,minion_defence18-召喚物防禦,minion_defence13-召喚物生命,minion_defence15-亡者之軀,minion_offence25-召喚物傷害,minion_offence21_-無情殞落者,minion_offence18-召喚物攻擊和施放速度,minion_offence19-召喚物攻擊和施放速度,minion_defence21-結晶血肉,minion_offence17-召喚物攻擊和施放速度,minion_offence39-殞落狂熱,minion_offence6-召喚物傷害,minion_offence5-召喚物傷害,minion_offence3-召喚物傷害,minion_offence40-人海戰術,attributes53-能力-3,auras8-存在範圍,auras6-存在範圍,auras19-草根指揮官,intelligence41__-能力-3,intelligence71-能力-3,attributes3-能力-3,intelligence72-能力-3,intelligence8-能力-3,attributes4-能力-3,strength46-能力-3,strength47-能力-3,sentinels5-守望,sentinels4-守望,sentinels1-守望,sentinels2-守望,sentinels10-秩序使者,sentinels9-無聲守護者,sentinels3-守望,sentinels11-神聖保護者,intelligence52-能力-3,intelligence53_-能力-3,intelligence54-能力-3,intelligence45-能力-3,intelligence58-能力-3,intelligence59-能力-3,minion_defence28-召喚物抗性,minion_defence30-召喚物抗性,minion_defence42-行屍走肉,intelligence60-能力-3,attributes1-能力-3,energy_shield12-能量護盾,energy_shield16-能量護盾,energy_shield35-融合,intelligence102-智慧,energy_shield46_-能量護盾,energy_shield33_-堅忍屏障")

function GetNeedWork()
    -- return ShuaTu:New("G3_9")
	return ShuaTuTask:Create()
end
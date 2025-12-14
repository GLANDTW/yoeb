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
走位时离怪物距离=50

设置任务时升级("石頭上的悲傷","GraveyardFight",nil,"G1_9",10,0.6)
设置任务时升级("奧格姆的狂狼","TheIronCount",nil,"G1_14",18,0.6)
设置任务时升级("七大水域之都","BurnTheWaterGoddess",8,"G2_4_3",28,0.6)
设置任务时升级("腐化痕跡","OpenTheDesertGates",{5},"G2_12_1",36,0.7)--去無畏隊
设置任务时升级("奧格姆的狂狼","TheIronCount",nil,"C_G1_15",54,0.6,1)

设置保护(0.65,0.18,0.3)

设置使用技能("劇痛獻祭", "pain_offering", 75, "金|橙",6000)
设置使用技能("易燃", "fire_weakness",75,"金|橙",6000)
设置使用技能("寒霜爆", "frost_bomb", 75)
设置使用技能("烈焰之牆", "firewall", 75)
设置使用技能("瘟疫", "contagion", 75,nil,3000)
设置使用技能("靈魂吸取","essence_drain",75)
设置使用技能("破墳術", "bone_cone", 75)
设置使用技能("混沌弩箭", "weapon_granted_chaosbolt", 75)


设置技能宝石("寒霜爆,Metadata/Items/Gems/SkillGemFrostBomb","快速前進,Metadata/Items/Gems/SupportGemFastForward")
设置技能宝石("骷髏縱火者,Metadata/Items/Gems/SkillGemSkeletalArsonist","散射,Metadata/Items/Gems/SupportGemScattershot|武術節奏,Metadata/Items/Gems/SupportGemMartialTempo|豢養狂熱,Metadata/Items/Gems/SupportGemFeedingFrenzy")
设置技能宝石("怒炎之靈,Metadata/Items/Gem/SkillGemRagingSpirits","火焰灌注,Metadata/Items/Gems/SupportGemFireInfusion|復仇之靈,Metadata/Items/Gem/SupportGemMinionInstability|煉獄軍團,Metadata/Items/Gems/SupportGemInfernalLegion")
设置技能宝石("烈焰之牆,Metadata/Items/Gems/SkillGemFlameWall","堡壘,Metadata/Items/Gems/SupportGemFortress|秘能節奏,Metadata/Items/Gems/SupportGemArcaneTempo",4)
设置技能宝石("劇痛奉獻,Metadata/Items/Gems/SkillGemPainOffering","增幅效果,Metadata/Items/Gems/SupportGemMagnifiedEffect|堅持不懈,Metadata/Items/Gems/SupportGemPersistence")
设置技能宝石("易燃,Metadata/Items/Gems/SkillGemFlammability","增強詛咒,Metadata/Items/Gems/SupportGemHeightenedCurse|集中效應,Metadata/Items/Gems/SupportGemConcentratedEffect")

设置技能宝石("屍術矢,Metadata/Items/Gem/SkillGemUnearth",nil,nil,1,11)



设置物品操作("捡", "类型类名:Active Skill Gem","工作状态:剧情") --捡所有已切割的技能宝石
设置物品操作("捡|存", "类型类名:UncutReservationGemStackable","工作状态:剧情") --精魂宝石
设置物品操作("捡|存", "类型类名:UncutSkillGemStackable","工作状态:剧情")  --技能宝石
设置物品操作("捡|存", "类型类名:UncutSupportGemStackable","工作状态:剧情") --輔助寶石
设置物品操作("捡|存", "类型类名:SoulCore","工作状态:剧情") --符文
设置物品操作("捡|存|鉴", "类型类名:Jewel","工作状态:剧情") --符文

设置物品操作("丢|卖","工作状态:剧情","符合换装类型:1","已鉴定:1","比身上分高:<=0")--

--
--设置装备卖
local 首饰="Ring|Amulet|Belt|"
local 副武器="Quiver|Shield|"
local 防具="Boots|Gloves|Helmet|Body Armour|"
local 武器="TrapTool|Sceptre|Crossbow|Bow|Staff|Wand|Flail|Warstaff|Dagger|Claw|Spear|Two Hand Mace|One Hand Mace|Two Hand Axe|One Hand Axe|Two Hand Sword|One Hand Sword|"
local 所有装备=首饰..副武器..防具..武器
设置物品操作("鉴|卖","类型类名:"..所有装备,"工作状态:剧情")--
设置物品操作("捡|鉴|卖","类型类名:"..所有装备,"工作状态:剧情","颜色:>0","自己金币:<50000")--自己金币少于多少 捡卖所有垃圾

--这里加要留下多少评分或属性以上的物品 
-- 设置物品操作("捡|存|鉴","类名:Metadata/Items/Rings/FourRing4&颜色:0")--藍玉戒指
-- 设置物品操作("捡|存|鉴","类名:Metadata/Items/Amulets/FourAmulet8&颜色:0")--恆星項鍊
设置物品操作("捡|存|鉴","minion_skill_gem_level_+:>=2")--设置召唤物+2级以上的物品不卖不销毁
设置物品操作("捡|存|鉴","类型类名:!=LifeFlask","类型类名:!=ManaFlaskFlask","符合换装类型:1","换装评分:>300")
设置物品操作("捡|存","工作状态:剧情","颜色:>0","符合换装类型:1","已鉴定:1","比身上分高:>0")--
设置物品操作("捡|买|存","工作状态:剧情","颜色:>0","符合换装类型:1","符合使用最低需求:1","已鉴定:1","比身上分高:>0")--
设置物品操作("捡|鉴","工作状态:剧情","颜色:>0","符合换装类型:1","符合使用最低需求:1","未鉴定:1")--捡、鉴定自己需要穿的未鉴定的物品
设置物品操作("捡|鉴","工作状态:剧情","符合换装类型:1","符合使用最低需求:1","身上空闲:1")
设置使用武器("Wand","Sceptre",1,3)
设置使用武器("Sceptre","Shield",3)
设置装备按分数使用通货("Sceptre",100,"增幅|富豪")
设置装备按分数使用通货("Helmet",300,"增幅|富豪")
--武器 权杖
设置装备分数("女巫","Sceptre","minion_skill_gem_level_+:100")--召唤物技能+1 就加100分
设置装备分数("女巫","Sceptre","local_spirit_+%:4")--额外每点精魂
设置装备分数("女巫","Sceptre","allies_in_presence_damage_+%:2")--每点友方额外伤害
设置装备分数("女巫","Sceptre","allies_in_presence_attack_speed_+%:5")--每点友方攻击速度
设置装备分数("女巫","Sceptre","allies_in_presence_attack_maximum_added_fire_damage:1")--友方额外火焰伤害
设置装备分数("女巫","Sceptre","allies_in_presence_attack_maximum_added_physical_damage:1")--友方额外物理伤害
设置装备分数("女巫","Sceptre","allies_in_presence_critical_strike_chance_+%:1")--友方额外暴击率
--衣服
设置装备分数("女巫","Body Armour","base_spirit_from_equipment:20")--精魂
设置装备分数("女巫","Body Armour","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Body Armour","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Body Armour","base_resist_all_elements_%:12")--全抗
设置装备分数("女巫","Body Armour","base_maximum_life:2")--生命
设置装备分数("女巫","Body Armour","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
设置装备分数("女巫","Body Armour","local_energy_shield_+%:1")--百分比护盾
设置装备分数("女巫","Body Armour","additional_all_attributes:9")--额外全能力
--头盔
设置装备分数("女巫","Helmet","minion_skill_gem_level_+:300")--召唤物技能
设置装备分数("女巫","Helmet","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Helmet","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Helmet","base_resist_all_elements_%:12")--全抗
设置装备分数("女巫","Helmet","base_maximum_life:2")--生命
设置装备分数("女巫","Helmet","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
-- 设置装备分数("女巫","Helmet","base_item_found_rarity_+%:5")--稀有度
设置装备分数("女巫","Helmet","local_energy_shield_+%:1")--百分比护盾
设置装备分数("女巫","Helmet","additional_all_attributes:9")--额外全能力
--手套
设置装备分数("女巫","Gloves","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Gloves","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
-- 设置装备分数("女巫","Gloves","base_resist_all_elements_%:12")--全抗
设置装备分数("女巫","Gloves","base_maximum_life:2")--生命
设置装备分数("女巫","Gloves","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
-- 设置装备分数("女巫","Gloves","base_item_found_rarity_+%:5")--稀有度
设置装备分数("女巫","Gloves","local_energy_shield_+%:1")--百分比护盾
设置装备分数("女巫","Gloves","additional_all_attributes:9")--额外全能力
--鞋子
设置装备分数("女巫","Boots","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Boots","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
-- 设置装备分数("女巫","Boots","base_resist_all_elements_%:12")--全抗
设置装备分数("女巫","Boots","base_maximum_life:2")--生命
设置装备分数("女巫","Boots","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
-- 设置装备分数("女巫","Boots","base_item_found_rarity_+%:5")--稀有度
设置装备分数("女巫","Boots","local_energy_shield_+%:1")--百分比护盾
设置装备分数("女巫","Boots","base_movement_velocity_+%:15")--移动速度
设置装备分数("女巫","Boots","additional_all_attributes:9")--额外全能力
--项链
设置装备分数("女巫","Amulet","minion_skill_gem_level_+:300")--召唤物技能
设置装备分数("女巫","Amulet","base_spirit_from_equipment:20")--精魂
设置装备分数("女巫","Amulet","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Amulet","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Amulet","base_resist_all_elements_%:12")--全抗
设置装备分数("女巫","Amulet","base_maximum_life:2")--生命
设置装备分数("女巫","Amulet","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
-- 设置装备分数("女巫","Amulet","base_item_found_rarity_+%:5")--稀有度
设置装备分数("女巫","Amulet","local_energy_shield_+%:1")--百分比护盾
设置装备分数("女巫","Amulet","additional_all_attributes:9")--额外全能力
--戒指 
设置装备分数("女巫","Ring","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Ring","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Ring","base_resist_all_elements_%:12")--全抗
设置装备分数("女巫","Ring","base_maximum_life:2")--生命
设置装备分数("女巫","Ring","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
设置装备分数("女巫","Ring","additional_all_attributes:9")--额外全能力
-- 设置装备分数("女巫","Ring","base_item_found_rarity_+%:5")--稀有度
设置装备分数("女巫","Ring","local_energy_shield_+%:1")--百分比护盾
--腰带
设置装备分数("女巫","Belt","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Belt","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Belt","base_maximum_life:2")--生命
设置装备分数("女巫","Belt","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
设置装备分数("女巫","Belt","additional_all_attributes:9")--额外全能力
--盾
设置装备分数("女巫","Shield","base_spirit_from_equipment:20")--精魂
设置装备分数("女巫","Shield","fire_damage_resistance_%:8|cold_damage_resistance_%:8|lightning_damage_resistance_%:8")--火、冰、电抗
设置装备分数("女巫","Shield","base_fire_damage_resistance_%:8|base_cold_damage_resistance_%:8|base_lightning_damage_resistance_%:8")--基础火、冰、电抗
设置装备分数("女巫","Shield","base_resist_all_elements_%:12")--全抗
设置装备分数("女巫","Shield","base_maximum_life:2")--生命
设置装备分数("女巫","Shield","additional_dexterity:3|additional_intelligence:3|additional_strength:3")--额外力量、敏捷、智慧
-- 设置装备分数("女巫","Ring","base_item_found_rarity_+%:5")--稀有度
设置装备分数("女巫","Shield","local_energy_shield_+%:1")--百分比护盾
--药品
设置装备分数("女巫","LifeFlask","总红量:1")--
设置装备分数("女巫","ManaFlask","总蓝量:1")--
设置装备分数("女巫","ManaFlask","local_flask_removes_%_of_mana_recovery_from_life_on_use:-500")
设置天赋加点("女巫=spells18-法術傷害,spells15-法術傷害,spell_criticals2__-法術傷害,spell_criticals1-法術傷害,witch_sorceress_notable1-原始力量,elemental14-元素傷害,cold2-冰冷傷害,cold34-凜冬之途,elemental15-元素傷害,intelligence15-能力-1,intelligence16-能力-1,intelligence86-能力-2,minion_defence20-召喚物生命,minion_defence18-召喚物防禦,minion_defence13-召喚物生命,minion_defence15-亡者之軀,minion_offence25-召喚物傷害,minion_offence21_-無情殞落者,minion_offence26-召喚物傷害,minion_offence20-召喚物傷害,intelligence6-能力-2,attributes21-能力-3,intelligence45-能力-3,intelligence46-能力-3,intelligence47-能力-3,minion_reservation1-召喚物傷害,minion_reservation5-召喚物傷害,minion_reservation4-召喚物傷害,intelligence57-能力-1,intelligence56-能力-1,jewel_slot1972-[Jewel|珠寶]插槽,minion_offence35-召喚物傷害,minion_offence34-亡者之觸,intelligence54-能力-3,intelligence53_-能力-3,intelligence52-能力-3,minion_offence7-召喚物傷害,minion_offence9-召喚物傷害,minion_offence10_-召喚物傷害,minion_offence11-召喚物傷害,minion_offence12_-召喚物傷害,minion_offence14-恐懼領主,jewel_slot1969-[Jewel|珠寶]插槽,intelligence41__-能力-3,intelligence71-能力-3,attributes3-能力-3,intelligence72-能力-3,sentinels5-守望,sentinels4-守望,sentinels1-守望,sentinels2-守望,sentinels10-秩序使者,sentinels3-守望,jewel_slot1978-[Jewel|珠寶]插槽,energy_shield29-能量護盾,energy_shield41-能量護盾,energy_shield38-重裝緩衝,energy_shield43-能量護盾,energy_shield42__-能量護盾,intelligence2-能力-1,minion_offence18-召喚物攻擊和施放速度,minion_offence17-召喚物攻擊和施放速度,minion_offence39-殞落狂熱,minion_offence6-召喚物傷害,minion_offence5-召喚物傷害,minion_offence3-召喚物傷害,minion_offence40-人海戰術,intelligence58-能力-1,intelligence59-能力-1,intelligence102-智慧,intelligence101_-獨創,召喚物攻擊和施放速度,minion_defence21-結晶血肉,energy_shield46_-能量護盾,energy_shield33_-堅忍屏障,energy_shield9-能量護盾,energy_shield22-能量護盾,energy_shield36-強化屏障,intelligence17-能力-3,energy_shield11-能量護盾充能,energy_shield37-抑制護盾,energy_shield10_-能量護盾充能,witch_sorceress_notable2-純淨能量,intelligence84-能力-3,energy_shield12-能量護盾,energy_shield16-能量護盾,energy_shield35-融合")



function GetNeedWork()
    -- return ShuaTu:New("G3_7")
	return ShuaTuTask:Create()
end
package.path = GetPackagePath();
local loadArr={"自动任务"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--指定职业  野蛮人、女巫、贵族、游侠、决斗者、暗影、圣堂武僧、
g_newRoleJob="野蛮人"
--升华职业 勇士、暴徒、酋长、侠客、锐眼、追猎者、秘术家、元素使、召唤师、处刑者、卫士、冠军、判官、圣宗、守护者、暗影大师、欺诈师、破坏者、升华使徒、
g_shengHuaJob="暴徒"
--设置使用的武器 支持(盾}箭袋}爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 如果需要用两样中间用|分开
SetUseWeapon("双手斧")
--设置自己用的装备类型 
SetUseZhuangBeiTypeData("Str|StrDex","衣服")
SetUseZhuangBeiTypeData("Str|StrInt","头盔")
SetUseZhuangBeiTypeData("Str|StrInt","手套")
SetUseZhuangBeiTypeData("Str|StrDex","鞋子")
SetUseZhuangBeiTypeData("StrInt|StrDex|DexInt","项链")

g_attackDis=5			--攻击距离
g_duobiHpVal=0.2
g_useMoveSkillType=nil

--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效


SetNeedSkillLineData(93,"沉重之擊,nil|殘暴輔助,nil",2,nil,nil)
SetNeedSkillLineData(94,"裂地之擊,nil|殘暴輔助,nil|機率流血輔助,nil",12,nil,nil)
SetNeedSkillLineData(95,"灰燼之捷,nil|純淨之捷,nil|撲殺輔助,nil",nil,nil,nil)
SetNeedSkillLineData(96,"威嚇戰吼,nil|緊急詔令輔助,nil",nil,72,nil)
SetNeedSkillLineData(97,"鮮血狂怒,nil|受傷時施放輔助,nil|不朽怒嚎,nil",nil,nil,nil)
SetNeedSkillLineData(98,"躍擊,nil|快速攻擊輔助,nil|脆弱詛咒,nil",nil,nil,nil)
SetNeedSkillLineData(99,"閃現打擊,nil|殘暴輔助,nil|近身戰輔助,nil|多重打擊輔助,nil|護體輔助,nil|近戰物理傷害輔助,nil",nil,nil,nil)
SetNeedSkillLineData(99,"大地震擊,nil|殘暴輔助,nil|近身戰輔助,nil|近戰物理傷害輔助,nil|拳霸輔助,nil|機率流血輔助,nil",nil,72,nil)

--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
AddAttackSkillData("大地震擊","Sunder",false,60,0)--添加攻击技能
AddAttackSkillData("閃現打擊","Flicker Strike",false,50,0)--添加攻击技能
AddAttackSkillData("裂地之擊","Ground Slam",false,40,0)--添加攻击技能
AddAttackSkillData("沉重之擊","Heavy Strike",false,30,0)
AddAttackSkillData("普通攻击","melee")

--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
SetSkillLimitMaxLv("不朽怒嚎",nil,3)
SetSkillLimitMaxLv("受傷時施放輔助",nil,1)
SetSkillLimitMaxLv("脆弱","Metadata/Items/Gems/SkillGemVulnerability",20)

-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--设置异界时召唤的灵体数据 mapClassName=剧情图类名 name=灵体名 className=灵体类名

--药瓶摆放
--SetNeedFlaskData(pos,flask,modsData,minLv)--设置药瓶摆放
SetNeedFlaskData(1,"生命药剂","熱情洋溢的,FlaskPartialInstantRecovery3|密封之,FlaskBleedCorruptingBloodImmunity1",90)
SetNeedFlaskData(2,"魔力药剂","耐久的,FlaskEffectNotRemovedOnFullMana1|奧術師之FlaskBuffReducedManaCostWhileHealing4",90)
SetNeedFlaskData(3,"宝钻药剂","nil")
SetNeedFlaskData(4,"紫晶药剂","nil")
SetNeedFlaskData(5,"水银药剂","nil")


g_addHpVal=0.7--HP低于多少吃红药
g_addMpVal=0.2--MP低于多少吃蓝药

---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_cold_damage_resistance_%",0.25)--火焰与冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_and_lightning_damage_resistance_%",0.25)--火焰与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_and_lightning_damage_resistance_%",0.2)--冰霜与闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_resist_all_elements_%",0.35)--全元素抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_fire_damage_resistance_%",0.3)--基础火焰伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_cold_damage_resistance_%",0.3)--基础冰霜伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_lightning_damage_resistance_%",0.3)--基础闪电伤害抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","cold_damage_resistance_%",0.3)--冰霜抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","fire_damage_resistance_%",0.3)--火焰抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","lightning_damage_resistance_%",0.3)--闪电抗性 %
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_movement_velocity_+%",0.3)--基础移动速度 +%
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","base_maximum_life",0.3)--生命
SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|箭袋","movement_velocity_+%",0.3)--移动速度 +%

SetAtuoChangeEquipData("野蛮人","项链","additional_strength",0.2)--
SetAtuoChangeEquipData("野蛮人","项链","additional_intelligence",0.2)--
SetAtuoChangeEquipData("野蛮人","项链","additional_strength_and_intelligence",0.3)--
SetAtuoChangeEquipData("野蛮人","双手斧","local_maximum_added_fire_damage",5)--
SetAtuoChangeEquipData("野蛮人","双手斧","local_maximum_added_cold_damage",5)--
SetAtuoChangeEquipData("野蛮人","双手斧","local_maximum_added_lightning_damage",5)--
SetAtuoChangeEquipData("野蛮人","双手斧","local_maximum_added_physical_damage",15)--每点物理伤害加xx点比重


--野蛮人


--野蛮人--孔色

--衣服
SetZhengTiColorVarData(2,4,2,0,nil,900,true)
SetZhengTiColorVarData(2,6,0,0,nil,800,true)
SetZhengTiColorVarData(2,5,1,0,nil,700,true)
SetZhengTiColorVarData(2,4,2,0,nil,600,true)
SetZhengTiColorVarData(2,4,1,1,nil,500,true)
SetZhengTiColorVarData(2,3,1,0,nil,400,true)
SetZhengTiColorVarData(2,3,0,1,nil,300,true)
SetZhengTiColorVarData(2,3,1,1,nil,250,true)
SetZhengTiColorVarData(2,3,0,0,nil,200,true)
SetZhengTiColorVarData(2,2,1,0,nil,150,true)
SetZhengTiColorVarData(2,1,0,0,nil,100)
SetZhengTiColorVarData(2,0,1,0,nil,60)
SetZhengTiColorVarData(2,0,0,1,nil,50)

--Weapon
SetZhengTiColorVarData(3,6,0,0,nil,800,true)
SetZhengTiColorVarData(3,5,1,0,nil,700,true)
SetZhengTiColorVarData(3,4,2,0,nil,600,true)
SetZhengTiColorVarData(3,4,1,1,nil,500,true)
SetZhengTiColorVarData(3,3,1,0,nil,400,true)
SetZhengTiColorVarData(3,3,0,1,nil,300,true)
SetZhengTiColorVarData(3,3,1,1,nil,250,true)
SetZhengTiColorVarData(3,3,0,0,nil,200,true)
SetZhengTiColorVarData(3,2,1,0,nil,150,true)
SetZhengTiColorVarData(3,1,0,0,nil,100)
SetZhengTiColorVarData(3,0,1,0,nil,60)
SetZhengTiColorVarData(3,0,0,1,nil,50)


--头盔

SetZhengTiColorVarData(5,3,1,0,nil,500,true)
SetZhengTiColorVarData(5,3,0,1,nil,400,true)
SetZhengTiColorVarData(5,3,0,0,nil,300,true)
SetZhengTiColorVarData(5,2,1,0,nil,200,true)
SetZhengTiColorVarData(5,1,1,0,nil,100)

--手套

SetZhengTiColorVarData(9,4,0,0,nil,700,true)
SetZhengTiColorVarData(9,3,0,1,nil,600,true)
SetZhengTiColorVarData(9,3,1,0,nil,500,true)
SetZhengTiColorVarData(9,2,2,0,nil,400,true)
SetZhengTiColorVarData(9,2,1,0,nil,300,true)
SetZhengTiColorVarData(9,2,0,0,nil,200,true)
SetZhengTiColorVarData(9,1,0,0,nil,100)

--鞋子

SetZhengTiColorVarData(10,4,0,0,nil,700,true)
SetZhengTiColorVarData(10,3,1,0,nil,600,true)
SetZhengTiColorVarData(10,3,0,1,nil,500,true)
SetZhengTiColorVarData(10,2,2,0,nil,400,true)
SetZhengTiColorVarData(10,2,1,0,nil,300,true)
SetZhengTiColorVarData(10,2,0,0,nil,200,true)
SetZhengTiColorVarData(10,1,0,0,nil,100)



AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,50,0)--主线生效 超过50级就用点金点白色装备
AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,50,0)--主线生效 超过50级就用富豪点蓝色装备

--掉落率+稀有率 异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_rarity_+%",0.5,2)--基礎物品掉落品質 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_quantity_+%",1.5,2)--物品掉落數量增加 %

--高级换装设置
SetGaoJiHuanZhuangData("游侠","簡易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","無盡之衣","Tabula Rasa",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("游侠","皮帽","Metadata/Items/Armours/Helmets/HelmetDex1","金縷帽","Goldrim",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--做 到風暴飛刃 的时候刷滲血水道到68级再进行下一任务

SetTaskMiGongData("a8q7",nil,1)--大于等于a8q7级 做迷宫1
SetTaskMiGongData("a10q1",nil,2)--大于等于a10q1 做迷宫2
SetTaskMiGongDataByLv(76,3)--大于等于80级 做迷宫3

SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",2)
SetChangeLimitCnt("腰带",3)
SetChangeLimitCnt("项链|戒指",3)


--SetNeedAddTianFu(tfStr)--设置天赋加点 


SetNeedAddTianFu("野蛮人=melee_damage687-近戰傷害和生命|melee_damage707-近戰傷害|melee_physical_damage1593-近戰物理傷害|melee_physical_damage1592-近戰物理傷害|melee_physical_damage1591-近戰物理傷害|strong_arm118-為戰而生|accuracy1144-命中|versatility1146-俊敏|weapon_damage1883-近戰傷害|two_handed_weapon_damage603-雙手武器近戰傷害|butchery641-屠戮|two_handed_weapon_damage12-雙手武器近戰傷害|attack_speed1889-近戰攻擊速度|strength822-力量|life_resistances1898-生命與元素抗性|life_resistances_notable1900-野蠻|life_resistances1899-生命與元素抗性|strength806-力量|strength791-力量|resolute_technique1138-堅毅之心|rage2100-擊中時獲得盛怒|rage2101-擊中時獲得盛怒|rage_notable2104-戰鬥冥想|strength787-力量|axe_damage_and_accuracy106-斧的傷害|axe_damage_and_attack_speed97-斧的傷害和攻擊速度|axe_damage_and_attack_speed98-斧的傷害和攻擊速度|axe_damage521-斧的傷害和攻擊速度|timberwolf105-屠殺 |strength782-力量|strength785-力量|warcry_empowered2710-竭盡攻擊傷害|warcry_empowered2711-戰吼冷卻時間恢復和竭盡攻擊傷害|warcry_empowered_notable2713-縝密狂怒|mastery_warcry251-戰吼專精-14206|strength792-力量|life_leech142-生命偷取和攻擊速度|life_gain_on_hit146-生命偷取速度和攻擊速度|blood_drinker143-汲血者|strength818-力量|strength820-力量|strength778-力量|agility863-熟能生巧|savant954-靜修|life1195-生命|life1221-生命|life1169-生命|bloodless156-無血之體|strength793-力量|fortify_2387-最大護體|fortify_20664-護體持續時間|fortify_20665-護體持續時間|fortify_notable_2388-堅貞不渝|mastery_fortify8-護體專精-28469|strength794-力量|strength802-力量|two_handed_damage642-雙手武器近戰傷害|two_handed_weapon_attack_speed15-雙手武器近戰傷害和攻擊速度|two_hand_attack_speed1864-雙手武器傷害和攻擊速度|wrecking_ball435-崩雷|strikes_damage2731_-近戰傷害|strikes_range2732-近戰傷害和打擊範圍|strikes_range2733-近戰傷害和打擊範圍|blight_special_notable6-部落之怒|mastery_attack17-攻擊專精-39154|strength777-力量|warcry_speed2705-戰吼速度|warcry_speed2704-戰吼速度|warcry_notable1-告誡者|strength774-力量|intelligence947-智慧|attack_mana_cost_node_2914-攻擊魔力消耗|attack_mana_cost_notable_2916-戰爭之靈|mastery_mana_287-魔力專精-64875|strength832-力量|strength1005-力量|life1213-生命|golem's_blood1088-魔像血統 |dexterity838-敏捷|dexterity1990_-敏捷|maximum_frenzy_charges527-野性之心|endurance_charges2423-每顆耐力球護甲|endurance_charges2422-每顆耐力球暈眩持續時間|endurance_charges2424-每顆耐力球範圍效果|endurance_charges_notable2425-不屈之徒|axe_damage109-斧的傷害|axe_damage110-斧的傷害|axe_damage1079-斧的傷害|cleaving611-劈砍|strength775-力量|rage2112-擊中時獲得盛怒|rage2113-最大盛怒|rage2114_-最大盛怒|life599-生命|heart_of_the_gladiator825-戰士之心|strength809-力量|intelligence945-智慧|warcry_cooldown2707-戰吼冷卻時間恢復|warcry_damage2716-戰吼冷卻時間恢復|warcry_damage2715-戰吼冷卻時間恢復|warcry_cooldown_notable2709_-深呼吸|strength998-力量|strength1002-力量|agility876-超群身法|")

SetNeedAddTianFu("野蛮人升华=AscendancyBerserker4-物理傷害、擊中獲得盛怒機率|AscendancyBerserker11-屠戮之慾|AscendancyBerserker3-物理傷害，近戰打擊範圍|AscendancyBerserker10-先祖之怒|") 


SetNeedAddTianFu([[异界地图天赋=atlas_path_22-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_zana_1_11-偵查報告掉落機率|atlas_zana_1_3-偵查報告掉落機率|atlas_zana_1_6-重點偵察|atlas_zana_1_1-偵查報告掉落機率|atlas_zana_1_2-偵查報告掉落機率|atlas_path_96-聖甲蟲掉落率|atlas_map_tier_3_3-雕塑世界|atlas_map_tier_5_2-高階地圖機率|atlas_keystone_fortune_favours_doubled-大膽行動|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_5_1-高階地圖機率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-物品稀有度|atlas_map_drops_7-物品稀有度|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_1_3-雕塑山型|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_tier_2_3-雕塑天空|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|]])
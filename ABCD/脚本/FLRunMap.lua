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
SetUseZhuangBeiTypeData("StrDex","衣服")
SetUseZhuangBeiTypeData("Dex","头盔")
SetUseZhuangBeiTypeData("Str|StrInt|Int","手套")
SetUseZhuangBeiTypeData("Str|StrDex|Dex","鞋子")
SetUseZhuangBeiTypeData("StrInt","项链")


g_needMinimizeGame=false			--最小化遊戲窗口 true为最小化 false或nil为不最小化
g_imBoss=false					--如果是仓库号要为true 挂机号为false
g_attackDis=10					--攻击距离
g_yiJieTimeOut=15*60			--异界地图内的超时时间 单位为秒 如果未设置就会用g_timeOut *是乘号 这里为15乘以60=15分钟
g_timeOut=25*60					--在一个地图呆的时间超过设置的 就重新开图重新 单位为秒
g_addTianFu=true				--自动按设定好的配置加天赋 true为加 nil或false为不加
g_shengJiBaoShi=true			--自动升级宝石 true为升级 nil或false为不升级
g_sellSkillGem=false				--自动卖超过40品质的技能宝石
g_notHuanYaoLv=90				--大于等于多少级只捡蓝色以上药 
g_needAutoChangeEquip=false		--开启自动换装 true为换 nil或false为不换
g_needAutoSetBaoShi=false		--开启自动换宝石 true为换 nil或false为不换
g_bossGiveZhuangBei=false		--交易时仓库号给予缺少的高级换装中的装备 true为给 false为不给 是对仓库号设置的
g_xiaoHaoGetZhuangBei=false		--挂机号向发装仓库号申请领高级换装中的装备 true为申请 false为不申请 


g_yiJieLv=70				--够了多少级才去刷异界
g_checkSellMapCnt=40		--地图超过这个数量才会检测出售地图
g_destroyNoUseMap=false		--销毁上面设置不使用的地图 nil或false为不销毁
g_mapUseFuHaoLv=75			--大于等于多少级对蓝图使用富豪石 nil为永远不使用
g_mapUseZengFuLv=nil			--大于等于多少级对蓝图使用增幅石 nil为永远不使用
g_mapUseDianJingLv=75		--大于等于多少级对白图使用点金石 nil为永远不使用
g_mapUseTuiBianLv=60		--大于等于多少级对白图使用蜕变石 nil为永远不使用
g_mapUseJiHuiLv=nil			--大于等于多少级对白图使用机会石 nil为永远不使用
g_mapUseWaErLv=80			--大于等于多少级对白、蓝地图使用瓦尔宝珠 nil为永远不使用
g_mapUseDingZiLv=nil			--大于等于多少级使用制图钉 nil为永远不使用
g_noUseMapLv=0				--不使用、不捡多少阶及以上的地图 nil或0为忽略 设置优先的地图除外

g_openQlkMaxMapTianFuCnt=nil--数值型 满多少天赋后不开奇拉克任务nil为一直开
g_useMinLvMapTianFuCnt=100--地图天赋满多少点后 就从低阶地图开始取
SetYiJieShuaTuModeByMapCnt(60,nil,2)--)--根据仓库里的地图数量设置异界刷图模式 可添加多个 他是从地图数量多到少来判断的
SetOpenMapMasterData(3)
g_notShuaBaiPao=true


SetNoUseMapShuXing("map_monsters_reflect_%_physical_damage")--设置不打Physical反射属性
SetNoUseMapShuXing("map_monsters_reflect_%_elemental_damage")--设置不打魔法反射属性
SetNoUseMapShuXing("map_players_no_regeneration_including_es")--无法回复
SetNoUseMapShuXing("is_blighted_map")--凋落地图


g_duobiHpVal=0.3
g_useMoveSkillType=nil --使用位移

--SetNeedSkillLineData(val,str,invalidLv,pos)--设置换技能宝石数据 
--val=每块宝石的比重值
--str="宝石1,宝石1类名|宝石2,宝石2类名|宝石3,宝石3类名" 名与类名之间用,隔开 宝石之间用|隔开
--invalidLv=失效等级 超过这个等级就不会需要他了
--pos=指定位置 nil为自动选择 2为衣服 3为主武器 4为副武器 5为头盔 6为项链 7为左戒指 8为右戒指 9为护手 10为鞋子 11为腰带
--nType 有效场景 nil为无论何时都有效 0为没在刷异界才有效 1为只在刷异界才有效


--添加攻击技能 name=技能名 className=技能类名 noLine=不在直线就能攻击 挑选攻击技能会从上到下寻找，要把厉害的技能加在前面
AddAttackSkillData("碎地重擊","Earthshatter",false,100,0)--添加攻击技能
AddAttackSkillData("大地震擊","Sunder",false,50,0)--添加攻击技能
AddAttackSkillData("裂地之擊","Ground Slam",false,40,0)--添加攻击技能
AddAttackSkillData("沉重之擊","Heavy Strike",false,30,0)
AddAttackSkillData("普通攻击","melee")


--SetSkillLimitMaxLv(name,className,maxLv)--设置技能宝石最大等级 name=技能宝石物品名 className=技能宝石物品类名 maxLv=限制的最大等级
-- SetSkillLimitMaxLv("鋼筋鐵骨",nil,8)

-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--设置异界时召唤的灵体数据 mapClassName=剧情图类名 name=灵体名 className=灵体类名

--SetNeedFlaskData(pos,flask,modsData,minLv)--设置药瓶摆放
SetNeedFlaskData(1,"生命药剂","nil")
SetNeedFlaskData(2,"生命药剂","nil")
SetNeedFlaskData(3,"魔力药剂","nil")
SetNeedFlaskData(4,"紫晶药剂","nil")
SetNeedFlaskData(5,"水银药剂","nil")



g_addHpVal=0.7--HP低于多少吃红药
g_addMpVal=0.15--MP低于多少吃蓝药

---------------------------------------换装设置
--SetAtuoChangeEquipData(job,pos,name,val,yijie) 计算方式如下 定义过的属性值乘以比重值  哪样装备高就会用哪样
--job 职业 支持(暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧) 可填多个，中间用|隔开
--pos 部位 支持(戒指|项链|腰带|鞋子|手套|衣服|头盔|盾|箭袋|爪}匕首|法杖|单手剑|细剑|单手斧|单手锤|符文匕首|短杖|战杖|弓|长杖|双手剑|双手斧|双手锤) 可填多个，中间用|隔开
--name 属性名 支持游戏内的装备属性名 还有其他的自定义名(物理伤害、护甲、护盾、闪避、连洞、总洞)
--val 比重值 支持小数
--nType 换装类型 0或nil或不填为一直有效 1为跑图时才有效 2为异界时才有效

--


--萬用換裝--孔色

--SetGaoJiHuanZhuangData("游侠","简易之袍","Metadata/Items/Armours/BodyArmours/BodyInt1","无尽之衣","Tabula Rasa")
--SetGaoJiHuanZhuangData("游侠","金缕帽","Metadata/Items/Armours/Helmets/HelmetDex1","金缕帽","Goldrim")
--SetGaoJiHuanZhuangData("游侠","骤雨之弦","Metadata/Items/Weapons/TwoHandWeapons/Bows/Bow2","骤雨之弦","Quill Rain")


--AddShengJiZhuangBeiGoodsData("点金石","Metadata/Items/Currency/CurrencyUpgradeToRare",0,30,0)--主线生效 超过50级就用点金点白色装备
--AddShengJiZhuangBeiGoodsData("富豪石","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,30,0)--主线生效 超过50级就用富豪点蓝色装备

--掉落率+稀有率 异界时才有效
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_rarity_+%",0.5,2)--基礎物品掉落品質 +%
--SetAtuoChangeEquipData("暗影|野蛮人|决斗者|女巫|游侠|圣堂武僧","戒指|项链|腰带|鞋子|手套|衣服|头盔|法杖|盾","base_item_found_quantity_+%",1.5,2)--物品掉落數量增加 %

--高级换装设置


--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--设置跑图时升级 taskClassName=任务类名 taskIndex=任务索引 nil为忽略，只匹配任务类名 shengjiMapClassName=要刷的地图类名 needLv=升级到多少级为止
SetTaskShengJiData("a5q7",nil,"1_5_5",44,true)--做 到奇塔弗的受难 的时候刷纯净圣地到50级再进行下一任务
SetTaskShengJiData("a9q3",nil,"2_9_1",63,true)--做 到風暴飛刃 的时候刷滲血水道到68级再进行下一任务

SetTaskMiGongData("a8q7",nil,1)--大于等于a8q7级 做迷宫1
SetTaskMiGongData("a10q1",nil,2)--大于等于a10q1 做迷宫2
SetTaskMiGongDataByLv(81,3)--大于等于80级 做迷宫3

SetChangeLimitCnt("武器|衣服|头盔|手套|鞋子",0)
SetChangeLimitCnt("腰带",0)
SetChangeLimitCnt("项链|戒指",0)


--SetNeedAddTianFu(tfStr)--设置天赋加点 

SetNeedAddTianFu("野蛮人=melee_damage687-近戰傷害和生命|melee_damage707-近戰傷害|melee_physical_damage1593-近戰物理傷害|melee_physical_damage1592-近戰物理傷害|melee_physical_damage1591-近戰物理傷害|strong_arm118-為戰而生|accuracy1144-命中|versatility1146-俊敏|weapon_damage1883-近戰傷害|two_handed_weapon_damage603-雙手武器近戰傷害|butchery641-屠戮|two_handed_weapon_damage12-雙手武器近戰傷害|attack_speed1889-近戰攻擊速度|strength822-力量|life_resistances1898-生命與元素抗性|life_resistances_notable1900-野蠻|life_resistances1899-生命與元素抗性|strength806-力量|strength791-力量|resolute_technique1138-堅毅之心|rage2100-擊中時獲得盛怒|rage2101-擊中時獲得盛怒|rage_notable2104-戰鬥冥想|strength787-力量|axe_damage_and_accuracy106-斧的傷害|axe_damage_and_attack_speed97-斧的傷害和攻擊速度|axe_damage_and_attack_speed98-斧的傷害和攻擊速度|axe_damage521-斧的傷害和攻擊速度|timberwolf105-屠殺 |strength781-力量|strength775-力量|strength793-力量|fortify_2387-最大護體|fortify_2386-最大護體|fortify_2385-最大護體|fortify_notable_2388-堅貞不渝|mastery_fortify8-護體專精-28469|strength794-力量|strength802-力量|two_handed_damage642-雙手武器近戰傷害|two_handed_weapon_attack_speed15-雙手武器近戰傷害和攻擊速度|two_hand_attack_speed1864-雙手武器傷害和攻擊速度|wrecking_ball435-崩雷|mastery_twohand242-雙手武器專精-27095|life599-生命|heart_of_the_gladiator825-戰士之心|life600-生命|troll's_blood203-戰士之血|strength829-力量|dexterity971-敏捷|strength774-力量|two_handed_weapon_damage13-雙手武器近戰傷害和偷取|two_handed_weapon_damage_and_accuracy9-雙手武器近戰傷害和偷取|two_hand_damage_notable1733-武術經驗|intelligence947-智慧|attack_mana_cost_node_2914-攻擊魔力消耗|attack_mana_cost_notable_2916-戰爭之靈|axe_damage_and_accuracy2470-元素抗性|axe_damage_and_accuracy2469-最大火焰抗性|axe_damage_and_accuracy_notable2471-稜彩之膚|strength809-力量|intelligence945-智慧|warcry_cooldown2707-戰吼冷卻時間恢復|warcry_damage2716-戰吼冷卻時間恢復|warcry_damage2715-戰吼冷卻時間恢復|warcry_cooldown_notable2709_-深呼吸|mastery_warcry254-戰吼專精-60034|life_and_armour1902-生命與護甲|life_armour_flask_life_notable1903-戰神|life_and_armour1901-生命與護甲|strength785-力量|warcry_empowered2710-竭盡攻擊傷害|warcry_empowered2712-戰吼速度和竭盡攻擊傷害|warcry_empowered_notable2713-縝密狂怒|life1169-生命|bloodless156-無血之體|life1221-生命|life1195-生命|strength820-力量|armour91-護甲和元素抗性|armour93-護甲和元素抗性|steel_skin1275-堅鋼之靈|strength832-力量|strength1005-力量|dexterity838-敏捷|endurance_charges2423-每顆耐力球護甲|endurance_charges2422-每顆耐力球暈眩持續時間|endurance_charges2424-每顆耐力球範圍效果|endurance_charges_notable2425-不屈之徒|life1213-生命|golem's_blood1088-魔像血統 |")
SetNeedAddTianFu("野蛮人升华=AscendancyBerserker4-物理傷害、擊中獲得盛怒機率|AscendancyBerserker11-屠戮之慾|AscendancyBerserker6-物理傷害、戰吼速度|AscendancyBerserker7-戰爭使者|") 
野蛮人=atlas_boss_adjacent_maps_2-相鄰地圖掉落機率|atlas_path_23_-相鄰地圖掉落機率|atlas_boss_adjacent_maps_1-相鄰地圖掉落機率|atlas_boss_adjacent_maps_8-相鄰地圖掉落機率|atlas_zana_1_11-偵查報告掉落機率|atlas_zana_1_3-偵查報告掉落機率|atlas_zana_1_6-重點偵察|atlas_zana_1_1-偵查報告掉落機率|atlas_zana_1_2-偵查報告掉落機率|atlas_path_96-聖甲蟲掉落率|atlas_map_tier_3_3-雕塑世界|atlas_map_tier_5_2-高階地圖機率|atlas_keystone_fortune_favours_doubled-大膽行動|atlas_map_tier_4_1-高階地圖機率|atlas_map_tier_5_1-高階地圖機率|atlas_path_61-物品數量|atlas_path_44-物品數量|atlas_path_35-物品數量|atlas_path_39-物品數量|atlas_path_34-物品數量|atlas_path_80-物品稀有度|atlas_map_drops_7-物品稀有度|atlas_mod_effect_6-地圖詞綴效果|atlas_keystone_nofragments_1-堅定不移的遠見|atlas_map_tier_3_2-高階地圖機率|atlas_map_tier_3_1-高階地圖機率|atlas_path_38-相鄰地圖掉落機率|atlas_path_21-相鄰地圖掉落機率|atlas_path_27-相鄰地圖掉落機率|atlas_path_28-相鄰地圖掉落機率|atlas_map_tier_1_2_-高階地圖機率|atlas_map_tier_1_1-高階地圖機率|atlas_map_tier_1_3-雕塑山型|atlas_path_37-相鄰地圖掉落機率|atlas_path_30-相鄰地圖掉落機率|atlas_path_18-相鄰地圖掉落機率|atlas_path_17-相鄰地圖掉落機率|atlas_map_tier_2_1-高階地圖機率|atlas_map_tier_2_2-高階地圖機率|atlas_map_tier_2_3-雕塑天空|atlas_path_15-相鄰地圖掉落機率|atlas_path_2-相鄰地圖掉落機率|atlas_path_10-相鄰地圖掉落機率|atlas_path_19-相鄰地圖掉落機率|atlas_path_1-相鄰地圖掉落機率|atlas_path_20-相鄰地圖掉落機率|atlas_path_9-相鄰地圖掉落機率|atlas_path_6-相鄰地圖掉落機率|atlas_path_8-相鄰地圖掉落機率|atlas_path_13-相鄰地圖掉落機率|atlas_path_22-相鄰地圖掉落機率|atlas_path_12-相鄰地圖掉落機率|atlas_path_24_-相鄰地圖掉落機率|atlas_path_16-相鄰地圖掉落機率|atlas_path_25_-相鄰地圖掉落機率|atlas_path_5-相鄰地圖掉落機率|atlas_path_14-相鄰地圖掉落機率|atlas_path_26-相鄰地圖掉落機率|
package.path = GetPackagePath();
local loadArr = {
    "work",
}
for i = 1, #loadArr
do
    package.loaded[loadArr[i]] = nil;
    require(loadArr[i]);
end
--自动换技能=true
自动加天赋=true
--function 设置使用技能(技能名,技能类名,技能距离,怪物颜色,使用间隔,护盾比重满多少)
--技能名 字符串型 技能名 可填nil为忽略 但必须填下面的类名
--技能类名 字符串型 技能类名 可填nil为忽略 但必须填上面的名字
--技能距离 数字型 技能距离 
--怪物颜色 字符串型 对什么颜色的怪物使用 取值为(白|蓝|金|橙) 可填多个中间用|隔开 填nil为忽略颜色 
--使用间隔 数字型 单位为毫秒 填nil为不限制使用间隔 符合就放
--护盾比重满多少 数字型 护盾比重满多少时才释放 取值1以下的小数 1为满值 填nil为不限制护盾比重
--设置保护(生命比重, 魔法比重, 瞬时少血翻滚比重, 红药间隔, 护盾比重)
--生命比重 数字型 取值为1以下的小数 1为满值 填nil默认为0.7
--魔法比重 数字型 取值为1以下的小数 1为满值 填nil默认为0.3
--瞬时少血翻滚比重 数字型 取值为1以下的小数 1为满值 填nil默认为0.3
--红药间隔 数字型 单位为毫秒 填nil为忽略
--护盾比重 数字型 护盾少于多少比例时吃红药  取值为1以下的小数 1为满值 填nil为忽略
设置保护(0.6,0.6,0.6,300,0.6)--,200,0.8
设置增益技能("恢復期", "convalescence",nil,"convalescence_energy_shield",function(sk,me) return me:GetHdVal():GetValF()<0.6 end)
-- 设置使用技能("劇痛獻祭", "pain_offering", 60, "蓝|金|橙",nil)
-- 设置使用技能("急凍", "cold_weakness",60,"金|橙",6000)
-- 设置使用技能("寒霜爆", "frost_bomb",60,"金|橙",6000)
-- 设置使用技能("烈焰之牆", "firewall", 60)
-- 设置使用技能("凜冬之眼", "eye_of_winter", 80)
-- 设置使用技能("寒霜爆", "frost_bomb", 80)
-- 设置使用技能("寒冰彈", "frost_bolt", 80)
设置使用技能("恢復期", "convalescence",60,nil,6000,nil,function(sk,me) return me:GetHdVal():GetValF()<0.6 end)
设置使用技能("元素要害", "elemental_weakness",80,"蓝|金|橙",8000)
设置使用技能("劇痛獻祭", "pain_offering",80,"蓝|金|橙",8000)
设置使用技能("破墳術", "bone_cone",80)

-- 设置技能宝石("骷髏縱火者,Metadata/Items/Gems/SkillGemSkeletalArsonist","火焰同調,Metadata/Items/Gems/SupportGemFireInfusion|多重射擊 II,Metadata/Items/Gems/SupportGemScattershotTwo|疾速攻擊 II,Metadata/Items/Gems/SupportGemMartialTempoTwo|豢養狂熱 II,Metadata/Items/Gems/SupportGemFeedingFrenzyTwo")
-- 设置技能宝石("怒炎之靈,Metadata/Items/Gem/SkillGemRagingSpirits","元素武裝 II,Metadata/Items/Gem/SupportGemPrimalArmamentTwo|豢養狂熱,Metadata/Items/Gems/SupportGemFeedingFrenzy")
-- 设置技能宝石("寒霜爆,Metadata/Items/Gems/SkillGemFrostBomb","快速前進,Metadata/Items/Gems/SupportGemFastForward|增幅光環 I,Metadata/Items/Gems/SupportGemMagnifiedEffect")
-- 设置技能宝石("屍術矢,Metadata/Items/Gem/SkillGemUnearth","野性殘暴 I,Metadata/Items/Gem/SupportGemBrutality|復仇之靈,Metadata/Items/Gem/SupportGemMinionInstability")
-- 设置技能宝石("劇痛奉獻,Metadata/Items/Gems/SkillGemPainOffering","延長持續時間 I,Metadata/Items/Gems/SupportGemPersistence|肉盾 II,Metadata/Items/Gems/SupportGemMeatShieldTwo")
-- 设置技能宝石("元素要害,Metadata/Items/Gems/SkillGemElementalWeakness","增強詛咒,Metadata/Items/Gems/SupportGemHeightenedCurse|廣闊區域,Metadata/Items/Gems/SupportGemExpanse")
-- 设置技能宝石("烈焰之牆,Metadata/Items/Gems/SkillGemFlameWall","堡壘,Metadata/Items/Gems/SupportGemFortress|疾速施法 II,Metadata/Items/Gems/SupportGemArcaneTempoTwo")

添加优先碑牌("祭祀碑牌","Metadata/Items/TowerAugment/RitualAugment",1)
添加优先碑牌("先行者碑牌","Metadata/Items/TowerAugment/GenericAugment",1)
添加优先碑牌("譫妄碑牌","Metadata/Items/TowerAugment/DeliriumAugment",1)

设置天赋加点("女巫=energy_shield15-能量護盾,energy_shield14-能量護盾,energy_shield21-能量護盾,energy_shield27-能量護盾,witch_sorceress_notable2-純淨能量,energy_shield10_-能量護盾充能,energy_shield37-抑制護盾,energy_shield11-能量護盾充能,intelligence17-能力-3,intelligence16-能力-3,intelligence6-能力-3,attributes21-能力-3,jewel_slot1972-[Jewel|珠寶]插槽,intelligence57-能力-3,intelligence56-能力-3,intelligence45-能力-3,intelligence54-能力-3,intelligence53_-能力-3,intelligence52-能力-3,intelligence51-能力-3,minion_offence7-召喚物傷害,minion_offence9-召喚物傷害,minion_offence10_-召喚物傷害,minion_offence11-召喚物傷害,minion_offence12_-召喚物傷害,minion_offence14-恐懼領主,jewel_slot1969-[Jewel|珠寶]插槽,attributes13-能力-3,attributes14-能力-3,intelligence49-能力-3,attributes53-能力-3,auras8-存在範圍,auras6-存在範圍,auras19-草根指揮官,intelligence86-能力-3,minion_defence20-召喚物生命,minion_defence18-召喚物生命,minion_defence13-召喚物生命,minion_defence15-亡者之軀,minion_offence25-召喚物傷害,minion_offence21_-無情殞落者,intelligence15-能力-3,elemental15-元素傷害,sorcerer_start2-元素傷害,cold34-元素之力,cold2-元素傷害,elemental14-元素傷害,witch_sorceress_notable1-原始力量,intelligence2-能力-3,minion_offence18-召喚物攻擊和施放速度,minion_offence19-召喚物攻擊和施放速度,minion_defence21-結晶血肉,minion_offence17-召喚物攻擊和施放速度,minion_offence39-殞落狂熱,intelligence41__-能力-3,intelligence71-能力-3,attributes3-能力-3,intelligence72-能力-3,intelligence8-能力-3,attributes4-能力-3,strength46-能力-3,strength47-能力-3,sentinels5-守望,sentinels4-守望,sentinels1-守望,sentinels9-無聲守護者,sentinels2-守望,sentinels10-秩序使者,sentinels3-守望,sentinels11-神聖保護者,intelligence84-能力-3,energy_shield12-能量護盾,energy_shield16-能量護盾,energy_shield35-融合,intelligence76-能力-3,energy_shield2_-能量護盾,energy_shield1-能量護盾和魔力回復,energy_shield4_-能量護盾和魔力回復,energy_shield30-校準,energy_shield9-能量護盾,energy_shield22-能量護盾,energy_shield36-強化屏障,intelligence58-能力-3,intelligence59-能力-3,intelligence102-智慧,energy_shield46_-能量護盾,energy_shield33_-堅忍屏障,intelligence101_-獨創,intelligence60-能力-3,attributes1-能力-3,jewel_slot1979-[Jewel|珠寶]插槽,intelligence69-能力-3,passive_keystone_chaos_inoculation-異靈之體,energy_shield7-能量護盾和魔力回復,energy_shield13-能量護盾和魔力回復,energy_shield34_-明察秋毫,intelligence35_-能力-3,energy_shield_recovery21-能量護盾延遲,energy_shield_recovery31-能量護盾延遲,energy_shield_recovery30__-能量護盾延遲,energy_shield_recovery16-精髓灌注,energy_shield_recovery32_-能量護盾延遲,energy_shield_recovery33-能量護盾延遲,energy_shield_recovery18-穩固護盾,energy_shield_recovery26-能量護盾延遲,energy_shield_recovery27-能量護盾延遲,energy_shield_recovery28-能量護盾延遲,energy_shield_recovery22-恢復期,minion_defence28-召喚物抗性,minion_defence30-召喚物抗性,minion_defence42-行屍走肉,energy_shield_recovery29-能量護盾延遲,energy_shield_recovery14-快速充能,minion_offence35-召喚物傷害,minion_offence34-亡者之觸,minion_offence16-亡者之舞,energy_shield23-能量護盾,energy_shield24-能量護盾,energy_shield44-能量護盾")
设置天赋加点("异界地图=AtlasGenericSmall3-物品稀有度,AtlasGenericSmall1-物品稀有度,AtlasGenericNotable16-連續叉路,AtlasGenericSmall6-物品稀有度,AtlasGenericNotable11-幸運之道,AtlasGenericSmall23-換界石數量,AtlasGenericSmall15-換界石數量,AtlasGenericNotable18-當地知識,AtlasGenericSmall34-碑牌效果,AtlasGenericNotable25-神秘增強,AtlasGenericSmall33-碑牌效果,AtlasGenericNotable21-先行者勢力,AtlasGenericSmall32-碑牌效果,AtlasGenericNotable23-力量的殘骸,AtlasGenericSmall5-物品數量,AtlasGenericSmall50-物品數量,AtlasGenericNotable12-崇高之路,AtlasGenericSmall8-怪物群大小,AtlasGenericSmall11-怪物群大小,AtlasGenericNotable7-富足血統,AtlasGenericSmall7-怪物群大小,AtlasGenericNotable1-危機湧現,AtlasGenericSmall35-怪物群大小,AtlasGenericSmall37-怪物群大小,AtlasGenericNotable2-擴張部落,AtlasGenericSmall39_-怪物群大小,AtlasGenericSmall38-怪物群大小,AtlasGenericNotable6-雙重威脅,AtlasGenericSmall47-換界石詞綴效果,AtlasGenericSmall52-怪物群大小,AtlasGenericSmall53-怪物群大小,AtlasGenericKeystone2-不穩定的能量,AtlasGenericSmall54-怪物群大小,AtlasGenericSmall25-增加怪物群,AtlasGenericSmall24-增加怪物群,AtlasGenericSmall43-物品稀有度,AtlasGenericSmall41-物品稀有度,AtlasGenericNotable15_-艱辛旅程,AtlasRitualSmall4-斷片堆疊大小,AtlasRitualNotable4-誘人提案,AtlasRitualSmall5-斷片堆疊大小,AtlasRitualNotable6-不祥之兆,AtlasRitualSmall8-斷片堆疊大小,AtlasRitualNotable8-承諾的忠誠,AtlasRitualSmall1-斷片堆疊大小,AtlasRitualNotable1-來自迷霧,AtlasDeliriumSmall1-斷片堆疊大小,AtlasDeliriumNotable1-從我的頭裡滾出去！,AtlasBossSmall2-地圖頭目難度,AtlasBossNotable3-戰利品,AtlasBossSmall6-地圖頭目難度,AtlasBossNotable13-光輝換界石,AtlasBossSmall3-地圖頭目難度,AtlasBossNotable6-老海盜的技倆,AtlasBossSmall12_-地圖頭目難度,AtlasBossNotable8-有條不紊的部隊,AtlasExpeditionSmall7-日誌機率,AtlasExpeditionNotable7_-極限考古學,AtlasBreachSmall1-保險箱斷片數量,AtlasBreachNotable8-瘋狂入侵,AtlasBreachSmall6-保險箱斷片數量,AtlasBreachNotable5-烈焰崛起,AtlasBreachSmall8-保險箱斷片數量,AtlasBreachNotable4-跨維度襲擊,AtlasBreachSmall2_-保險箱斷片數量,AtlasBreachNotable7-崩毀高牆")


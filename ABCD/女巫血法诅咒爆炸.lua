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
不躲龙卷风等级=80 --数字型 满多少级不躲避龙卷风

设置保护(0.6,0.6,0.1,100)
设置使用技能("靈魂獻祭", "power_offering",100,"金|橙",6000)
设置使用技能("元素要害", "elemental_weakness",100)
--设置使用技能("時空鎖鏈", "temporal_chains",20,nil,5,nil)
--设置使用技能("絕望", "despair",80)

添加优先碑牌("祭祀碑牌","Metadata/Items/TowerAugment/RitualAugment",1)
添加优先碑牌("先行者碑牌","Metadata/Items/TowerAugment/GenericAugment",1)
添加优先碑牌("譫妄碑牌","Metadata/Items/TowerAugment/DeliriumAugment",1)

设置天赋加点("女巫=spells18-法術傷害,intelligence11-能力-3,intelligence12-能力-3,intelligence13-能力-3,witch_sorceress_notable1-原始力量,cast_speed10-施放速度,cast_speed36_-熟練符印,spell_criticals10-法術暴擊率,spell_criticals3-法術暴擊傷害,spell_criticals14-暴擊超載,spell_criticals4-法術暴擊傷害,intelligence16-能力-3,intelligence86-能力-3,intelligence84-能力-3,intelligence85-能力-3,intelligence79-能力-3,curses8-詛咒範圍,curses9-詛咒範圍,curses7-詛咒範圍,curses6-區域控制,criticals22-暴擊率,criticals21-暴擊率,criticals24-暴擊率,criticals30-弱點善用,intelligence6-能力-3,attributes21-能力-3,spell_criticals8-法術暴擊傷害,spell_criticals13-法術暴擊率,spell_criticals11_-突發升級,jewel_slot1972-[Jewel|珠寶]插槽,intelligence57-能力-3,intelligence56-能力-3,intelligence45-能力-3,intelligence54-能力-3,intelligence53_-能力-3,intelligence52-能力-3,intelligence51-能力-3,jewel_slot1969-[Jewel|珠寶]插槽,attributes13-能力-3,attributes14-能力-3,passive_keystone_mind_over_matter-心靈昇華,elemental1-元素穿透,elemental2-元素穿透,elemental33-雷霆充能,intelligence58-能力-3,lightning17-閃電傷害,lightning19-閃電傷害,lightning20__-閃電傷害,lightning21-閃電傷害,lightning22-閃電傷害,lightning29-純粹電能,intelligence59-能力-3,mana32-魔力回復,mana31-魔力回復,mana38-原始魔力,mana29-魔力回復,mana34-魔力回復,attributes61-能力-3,passive_keystone_eldritch_battery__-異能魔力,mana30-魔力回復,mana37-秘能強化,intelligence102-智慧,intelligence101_-獨創,intelligence60-能力-3,spell_criticals12_-法術暴擊率,spell_criticals16-法術暴擊率,spell_criticals15-操控魔法,attributes1-能力-3,jewel_slot1979-[Jewel|珠寶]插槽,intelligence69-能力-3,intelligence68-能力-3,criticals86-暴擊率,criticals85-暴擊率,criticals84-謹慎的刺客,attributes12-能力-3,intelligence67-能力-3,dexterity7-能力-3,monkelemental2-能量和暴擊率,monkelemental4-暴擊率,monkelemental3-能量和暴擊率,monkelemental6-喚起施行者,dexterity9-能力-3,intelligence25-能力-3,jewel_slot1961-[Jewel|珠寶]插槽,intelligence66-能力-3,criticals17-暴擊率,criticals28-真實之擊,criticals45-暴擊傷害,criticals29-直擊要害,criticals19-暴擊率,criticals50-致命武力,dexterity46-能力-3,dexterity47-能力-3,attributes11-能力-3,dexterity48-能力-3,jewel_slot1976-[Jewel|珠寶]插槽,dexterity50-能力-3,criticals52-暴擊傷害,criticals58-暴擊傷害,criticals54_-裂心,criticals56-暴擊率,criticals53-心寒,attributes10-能力-3,dexterity51-能力-3,dexterity52-能力-3,dexterity55-能力-3,dexterity54-能力-3,dexterity12_-能力-3,jewel_slot1960-[Jewel|珠寶]插槽,dexterity34-能力-3,criticals46-暴擊傷害,criticals92-暴擊率,criticals47-暴擊率,criticals49-熟透,criticals87-暴擊傷害,criticals88_-暴擊傷害,criticals90-割喉者")
设置天赋加点("异界地图=AtlasGenericSmall3-物品稀有度,AtlasGenericSmall1-物品稀有度,AtlasGenericNotable16-連續叉路,AtlasGenericSmall6-物品稀有度,AtlasGenericNotable11-幸運之道,AtlasGenericSmall23-換界石數量,AtlasGenericSmall15-換界石數量,AtlasGenericNotable18-當地知識,AtlasGenericSmall34-碑牌效果,AtlasGenericNotable25-神秘增強,AtlasGenericSmall33-碑牌效果,AtlasGenericNotable21-先行者勢力,AtlasGenericSmall32-碑牌效果,AtlasGenericNotable23-力量的殘骸,AtlasGenericSmall5-物品數量,AtlasGenericSmall50-物品數量,AtlasGenericNotable12-崇高之路,AtlasGenericSmall8-怪物群大小,AtlasGenericSmall11-怪物群大小,AtlasGenericNotable7-富足血統,AtlasGenericSmall7-怪物群大小,AtlasGenericNotable1-危機湧現,AtlasGenericSmall35-怪物群大小,AtlasGenericSmall37-怪物群大小,AtlasGenericNotable2-擴張部落,AtlasGenericSmall39_-怪物群大小,AtlasGenericSmall38-怪物群大小,AtlasGenericNotable6-雙重威脅,AtlasGenericSmall47-換界石詞綴效果,AtlasGenericSmall52-怪物群大小,AtlasGenericSmall53-怪物群大小,AtlasGenericKeystone2-不穩定的能量,AtlasGenericSmall54-怪物群大小,AtlasGenericSmall25-增加怪物群,AtlasGenericSmall24-增加怪物群,AtlasGenericSmall43-物品稀有度,AtlasGenericSmall41-物品稀有度,AtlasGenericNotable15_-艱辛旅程,AtlasRitualSmall4-斷片堆疊大小,AtlasRitualNotable4-誘人提案,AtlasRitualSmall5-斷片堆疊大小,AtlasRitualNotable6-不祥之兆,AtlasRitualSmall8-斷片堆疊大小,AtlasRitualNotable8-承諾的忠誠,AtlasRitualSmall1-斷片堆疊大小,AtlasRitualNotable1-來自迷霧,AtlasDeliriumSmall1-斷片堆疊大小,AtlasDeliriumNotable1-從我的頭裡滾出去！,AtlasBossSmall2-地圖頭目難度,AtlasBossNotable3-戰利品,AtlasBossSmall6-地圖頭目難度,AtlasBossNotable13-光輝換界石,AtlasBossSmall3-地圖頭目難度,AtlasBossNotable6-老海盜的技倆,AtlasBossSmall12_-地圖頭目難度,AtlasBossNotable8-有條不紊的部隊,AtlasExpeditionSmall7-日誌機率,AtlasExpeditionNotable7_-極限考古學,AtlasBreachSmall1-保險箱斷片數量,AtlasBreachNotable8-瘋狂入侵,AtlasBreachSmall6-保險箱斷片數量,AtlasBreachNotable5-烈焰崛起,AtlasBreachSmall8-保險箱斷片數量,AtlasBreachNotable4-跨維度襲擊,AtlasBreachSmall2_-保險箱斷片數量,AtlasBreachNotable7-崩毀高牆")



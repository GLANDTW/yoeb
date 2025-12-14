package.path = GetPackagePath();
local loadArr = {
    "work",
}
for i = 1, #loadArr
do
    package.loaded[loadArr[i]] = nil;
    require(loadArr[i]);
end

设置不打怪物(80,true,"白")

设置保护(0.65,0.3,0.3,400,0.9)
设置增益技能("惡魔變身","demon_transformation",nil,"demon_form_buff")

设置使用技能("屏障祈願","barrier_invocation",75,nil,300,0.8)
设置使用技能("急凍","cold_weakness",75,nil,1000)


--设置丢的地图
-- 设置物品操作("丢","map_player_charges_gained_+%:<0")--玩家獲得的藥劑充能增加 {0}%
设置物品操作("丢","map_player_life_and_es_recovery_speed_+%_final:<0")--玩家有 {0}% 更多生命和能量護盾恢復率
设置物品操作("丢","map_player_status_recovery_speed_+%:<0")--玩家有 {0}% 更多生命、魔力和能量護盾恢復率
设置物品操作("丢","map_additional_player_maximum_resistances_%:<0")--玩家 {0}% 最大抗性

-- 设置物品操作("丢","map_monsters_penetrate_elemental_resistances_%:>0")--怪物傷害穿透 {0}% 元素抗性
-- 设置物品操作("丢","map_monsters_reflect_%_physical_damage:>0")--怪物反射 {0}% 物理傷害
-- 设置物品操作("丢","map_monsters_reflect_%_elemental_damage:>0")--怪物反射 {0}% 元素傷害
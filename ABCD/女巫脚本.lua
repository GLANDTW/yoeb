package.path = GetPackagePath();
local loadArr = {
    "work",
}
for i = 1, #loadArr
do
    package.loaded[loadArr[i]] = nil;
    require(loadArr[i]);
end

设置保护(0.7,0.3,0.3)
设置使用技能("劇痛獻祭", "pain_offering", 75, "金|橙",6000)
设置使用技能("易燃", "fire_weakness",60,"金|橙",6000)
设置使用技能("烈焰之牆", "firewall", 60)

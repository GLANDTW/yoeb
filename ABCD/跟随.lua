package.path = GetPackagePath();
local loadArr = {
    "work",
}
for i = 1, #loadArr
do
    package.loaded[loadArr[i]] = nil;
    require(loadArr[i]);
end



设置保护(0.65,0.18,0.3)
队长名字="aaaaa"
function GetNeedWork()
    -- return ShuaTu:New("G3_9")
	return FollowCaptain:New(队长名字)
end
package.path = GetPackagePath();
local loadArr={"�Զ�����"};
for i=1,#loadArr
do
	package.loaded[loadArr[i]]=nil;
	require(loadArr[i]);
end

--ָ��ְҵ  Ұ���ˡ�Ů�ס����塢�����������ߡ���Ӱ��ʥ����ɮ��
g_newRoleJob="Ұ����"
--����ְҵ ��ʿ����ͽ�����������͡����ۡ�׷���ߡ������ҡ�Ԫ��ʹ���ٻ�ʦ�������ߡ���ʿ���ھ����й١�ʥ�ڡ��ػ��ߡ���Ӱ��ʦ����թʦ���ƻ��ߡ�����ʹͽ��
g_shengHuaJob="��ͽ"
--����ʹ�õ����� ֧��(��}����}צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) �����Ҫ�������м���|�ֿ�
SetUseWeapon("˫�ָ�")
--�����Լ��õ�װ������ 
SetUseZhuangBeiTypeData("Str|StrDex","�·�")
SetUseZhuangBeiTypeData("Str|StrInt","ͷ��")
SetUseZhuangBeiTypeData("Str|StrInt","����")
SetUseZhuangBeiTypeData("Str|StrDex","Ь��")
SetUseZhuangBeiTypeData("StrInt|StrDex|DexInt","����")

g_attackDis=5			--��������
g_duobiHpVal=0.2
g_useMoveSkillType=nil

--SetNeedSkillLineData(val,str,invalidLv,pos)--���û����ܱ�ʯ���� 
--val=ÿ�鱦ʯ�ı���ֵ
--str="��ʯ1,��ʯ1����|��ʯ2,��ʯ2����|��ʯ3,��ʯ3����" ��������֮����,���� ��ʯ֮����|����
--invalidLv=ʧЧ�ȼ� ��������ȼ��Ͳ�����Ҫ����
--pos=ָ��λ�� nilΪ�Զ�ѡ�� 2Ϊ�·� 3Ϊ������ 4Ϊ������ 5Ϊͷ�� 6Ϊ���� 7Ϊ���ָ 8Ϊ�ҽ�ָ 9Ϊ���� 10ΪЬ�� 11Ϊ����
--nType ��Ч���� nilΪ���ۺ�ʱ����Ч 0Ϊû��ˢ������Ч 1Ϊֻ��ˢ������Ч


SetNeedSkillLineData(93,"����֮��,nil|�����o��,nil",2,nil,nil)
SetNeedSkillLineData(94,"�ѵ�֮��,nil|�����o��,nil|�C����Ѫ�o��,nil",12,nil,nil)
SetNeedSkillLineData(95,"�Ҡa֮��,nil|���Q֮��,nil|�䚢�o��,nil",nil,nil,nil)
SetNeedSkillLineData(96,"�������,nil|�o���t���o��,nil",nil,nil,nil)
SetNeedSkillLineData(97,"�rѪ��ŭ,nil|�܂��rʩ���o��,nil|����ŭ��,nil",nil,nil,nil)
SetNeedSkillLineData(98,"�S��,nil|���ٹ����o��,nil|�����{��,nil",nil,nil,nil)
SetNeedSkillLineData(99,"������,nil|�����o��,nil|������o��,nil|������������o��,nil|ȭ���o��,nil|�C����Ѫ�o��,nil",nil,nil,nil)


--��ӹ������� name=������ className=�������� noLine=����ֱ�߾��ܹ��� ��ѡ�������ܻ���ϵ���Ѱ�ң�Ҫ�������ļ��ܼ���ǰ��
AddAttackSkillData("����ؓ�","Earthshatter",false,100,0)--��ӹ�������
AddAttackSkillData("������","Sunder",false,50,0)--��ӹ�������
AddAttackSkillData("�ѵ�֮��","Ground Slam",false,40,0)--��ӹ�������
AddAttackSkillData("����֮��","Heavy Strike",false,30,0)
AddAttackSkillData("��ͨ����","melee")

--SetSkillLimitMaxLv(name,className,maxLv)--���ü��ܱ�ʯ���ȼ� name=���ܱ�ʯ��Ʒ�� className=���ܱ�ʯ��Ʒ���� maxLv=���Ƶ����ȼ�
SetSkillLimitMaxLv("����ŭ��",nil,3)
SetSkillLimitMaxLv("�܂��rʩ���o��",nil,1)
SetSkillLimitMaxLv("����","Metadata/Items/Gems/SkillGemVulnerability",20)

-- SetYiJieZhaoHuanLingTiData(mapClassName,name,className)--�������ʱ�ٻ����������� mapClassName=����ͼ���� name=������ className=��������

--ҩƿ�ڷ�
--SetNeedFlaskData(pos,flask,modsData,minLv)--����ҩƿ�ڷ�
SetNeedFlaskData(1,"����ҩ��","���������,FlaskPartialInstantRecovery3|�ܷ�֮,FlaskBleedCorruptingBloodImmunity1",90)
SetNeedFlaskData(2,"ħ��ҩ��","�;õ�,FlaskEffectNotRemovedOnFullMana1|�W�g��֮FlaskBuffReducedManaCostWhileHealing4",90)
SetNeedFlaskData(3,"����ҩ��","nil")
SetNeedFlaskData(4,"�Ͼ�ҩ��","nil")
SetNeedFlaskData(5,"ˮ��ҩ��","nil")


g_addHpVal=0.7--HP���ڶ��ٳԺ�ҩ
g_addMpVal=0.2--MP���ڶ��ٳ���ҩ

---------------------------------------��װ����
--SetAtuoChangeEquipData(job,pos,name,val,yijie) ���㷽ʽ���� �����������ֵ���Ա���ֵ  ����װ���߾ͻ�������
--job ְҵ ֧��(��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ) ���������м���|����
--pos ��λ ֧��(��ָ|����|����|Ь��|����|�·�|ͷ��|��|����|צ}ذ��|����|���ֽ�|ϸ��|���ָ�|���ִ�|����ذ��|����|ս��|��|����|˫�ֽ�|˫�ָ�|˫�ִ�) ���������м���|����
--name ������ ֧����Ϸ�ڵ�װ�������� �����������Զ�����(�����˺������ס����ܡ����ܡ��������ܶ�)
--val ����ֵ ֧��С��
--nType ��װ���� 0��nil����Ϊһֱ��Ч 1Ϊ��ͼʱ����Ч 2Ϊ���ʱ����Ч
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_cold_damage_resistance_%",0.25)--�������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_and_lightning_damage_resistance_%",0.25)--�����������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_and_lightning_damage_resistance_%",0.2)--��˪�������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_resist_all_elements_%",0.35)--ȫԪ�ؿ��� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_fire_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_cold_damage_resistance_%",0.3)--������˪�˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_lightning_damage_resistance_%",0.3)--���������˺����� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","cold_damage_resistance_%",0.3)--��˪���� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","fire_damage_resistance_%",0.3)--���濹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","lightning_damage_resistance_%",0.3)--���翹�� %
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_movement_velocity_+%",0.3)--�����ƶ��ٶ� +%
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","base_maximum_life",0.3)--����
SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����","movement_velocity_+%",0.3)--�ƶ��ٶ� +%

SetAtuoChangeEquipData("Ұ����","����","additional_strength",0.2)--
SetAtuoChangeEquipData("Ұ����","����","additional_intelligence",0.2)--
SetAtuoChangeEquipData("Ұ����","����","additional_strength_and_intelligence",0.3)--
SetAtuoChangeEquipData("Ұ����","˫�ָ�","local_maximum_added_fire_damage",5)--
SetAtuoChangeEquipData("Ұ����","˫�ָ�","local_maximum_added_cold_damage",5)--
SetAtuoChangeEquipData("Ұ����","˫�ָ�","local_maximum_added_lightning_damage",5)--
SetAtuoChangeEquipData("Ұ����","˫�ָ�","local_maximum_added_physical_damage",5)--ÿ�������˺���xx�����


--Ұ����


--Ұ����--��ɫ

--�·�
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


--ͷ��

SetZhengTiColorVarData(5,3,1,0,nil,500,true)
SetZhengTiColorVarData(5,3,0,1,nil,400,true)
SetZhengTiColorVarData(5,3,0,0,nil,300,true)
SetZhengTiColorVarData(5,2,1,0,nil,200,true)
SetZhengTiColorVarData(5,1,1,0,nil,100)

--����

SetZhengTiColorVarData(9,4,0,0,nil,700,true)
SetZhengTiColorVarData(9,3,0,1,nil,600,true)
SetZhengTiColorVarData(9,3,1,0,nil,500,true)
SetZhengTiColorVarData(9,2,2,0,nil,400,true)
SetZhengTiColorVarData(9,2,1,0,nil,300,true)
SetZhengTiColorVarData(9,2,0,0,nil,200,true)
SetZhengTiColorVarData(9,1,0,0,nil,100)

--Ь��

SetZhengTiColorVarData(10,4,0,0,nil,700,true)
SetZhengTiColorVarData(10,3,1,0,nil,600,true)
SetZhengTiColorVarData(10,3,0,1,nil,500,true)
SetZhengTiColorVarData(10,2,2,0,nil,400,true)
SetZhengTiColorVarData(10,2,1,0,nil,300,true)
SetZhengTiColorVarData(10,2,0,0,nil,200,true)
SetZhengTiColorVarData(10,1,0,0,nil,100)



AddShengJiZhuangBeiGoodsData("���ʯ","Metadata/Items/Currency/CurrencyUpgradeToRare",0,50,0)--������Ч ����50�����õ����ɫװ��
AddShengJiZhuangBeiGoodsData("����ʯ","Metadata/Items/Currency/CurrencyUpgradeMagicToRare",1,50,0)--������Ч ����50�����ø�������ɫװ��

--������+ϡ���� ���ʱ����Ч
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_rarity_+%",0.5,2)--���A��Ʒ����Ʒ�| +%
--SetAtuoChangeEquipData("��Ӱ|Ұ����|������|Ů��|����|ʥ����ɮ","��ָ|����|����|Ь��|����|�·�|ͷ��|����|��","base_item_found_quantity_+%",1.5,2)--��Ʒ���䔵������ %

--�߼���װ����
SetGaoJiHuanZhuangData("����","����֮��","Metadata/Items/Armours/BodyArmours/BodyInt1","�o�M֮��","Tabula Rasa",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)
SetGaoJiHuanZhuangData("����","Ƥñ","Metadata/Items/Armours/Helmets/HelmetDex1","��|ñ","Goldrim",nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,5000)

--SetTaskShengJiData(taskClassName,taskIndex,shengjiMapClassName,needLv)--������ͼʱ���� taskClassName=�������� taskIndex=�������� nilΪ���ԣ�ֻƥ���������� shengjiMapClassName=Ҫˢ�ĵ�ͼ���� needLv=���������ټ�Ϊֹ
SetTaskShengJiData("a5q7",nil,"1_5_5",46,true)--�� �������������� ��ʱ��ˢ����ʥ�ص�50���ٽ�����һ����
SetTaskShengJiData("a9q3",nil,"2_9_1",68,true)--�� ���L���w�� ��ʱ��ˢ�BѪˮ����68���ٽ�����һ����

SetTaskMiGongData("a8q7",nil,1)--���ڵ���a8q7�� ���Թ�1
SetTaskMiGongData("a10q1",nil,2)--���ڵ���a10q1 ���Թ�2
SetTaskMiGongDataByLv(76,3)--���ڵ���80�� ���Թ�3

SetChangeLimitCnt("����|�·�|ͷ��|����|Ь��",2)
SetChangeLimitCnt("����",3)
SetChangeLimitCnt("����|��ָ",3)


--SetNeedAddTianFu(tfStr)--�����츳�ӵ� 


SetNeedAddTianFu("Ұ����=melee_damage687-��������������|melee_damage707-��������|melee_physical_damage1593-�����������|melee_physical_damage1592-�����������|melee_physical_damage1591-�����������|strong_arm118-������|accuracy1144-����|versatility1146-����|weapon_damage1883-��������|two_handed_weapon_damage603-�p��������������|butchery641-��¾|two_handed_weapon_damage12-�p��������������|attack_speed1889-���𹥓��ٶ�|strength822-����|life_resistances1898-�����cԪ�ؿ���|life_resistances_notable1900-Ұ�U|life_resistances1899-�����cԪ�ؿ���|strength806-����|strength791-����|resolute_technique1138-����֮��|rage2100-���Еr�@��ʢŭ|rage2101-���Еr�@��ʢŭ|rage_notable2104-���Yڤ��|life599-����|heart_of_the_gladiator825-��ʿ֮��|life600-����|troll's_blood203-��ʿ֮Ѫ|strength829-����|dexterity971-����|strength774-����|two_handed_weapon_damage13-�p����������������͵ȡ|two_handed_weapon_damage_and_accuracy9-�p����������������͵ȡ|two_hand_damage_notable1733-���g���|intelligence947-�ǻ�|attack_mana_cost_node_2914-����ħ������|attack_mana_cost_notable_2916-��֮�`|strength787-����|axe_damage_and_accuracy106-���Ă���|axe_damage_and_attack_speed97-���Ă����͹����ٶ�|axe_damage_and_attack_speed98-���Ă����͹����ٶ�|axe_damage521-���Ă����͹����ٶ�|timberwolf105-���� |strength781-����|strength775-����|strength793-����|fortify_2387-����o�w|fortify_2386-����o�w|fortify_2385-����o�w|fortify_notable_2388-��ؑ����|strength794-����|strength802-����|two_handed_damage642-�p��������������|two_handed_weapon_attack_speed15-�p���������������͹����ٶ�|two_hand_attack_speed1864-�p�����������͹����ٶ�|wrecking_ball435-����|strength832-����|strength1005-����|life1213-����|golem's_blood1088-ħ��Ѫ�y |dexterity838-����|endurance_charges2423-ÿ�w�������o��|endurance_charges2422-ÿ�w������ѣ���m�r�g|endurance_charges2424-ÿ�w�����򹠇�Ч��|endurance_charges_notable2425-����֮ͽ|unwavering_stance1139-��ʿ��־|axe_damage_and_accuracy2470-Ԫ�ؿ���|axe_damage_and_accuracy2469-�����濹��|axe_damage_and_accuracy_notable2471-����֮�w|life1169-����|bloodless156-�oѪ֮�w|life1221-����|life1195-����|strength820-����|armour91-�o�׺�Ԫ�ؿ���|armour93-�o�׺�Ԫ�ؿ���|steel_skin1275-���֮�`|life_and_armour1902-�����c�o��|life_armour_flask_life_notable1903-����|life_and_armour1901-�����c�o��|strength809-����|intelligence945-�ǻ�|warcry_cooldown2707-�����s�r�g�֏�|warcry_damage2716-�����s�r�g�֏�|warcry_damage2715-�����s�r�g�֏�|warcry_cooldown_notable2709_-�����|strength785-����|warcry_empowered2710-�߱M�������|warcry_empowered2712-����ٶȺͽ߱M�������|warcry_empowered_notable2713-�b�ܿ�ŭ|")

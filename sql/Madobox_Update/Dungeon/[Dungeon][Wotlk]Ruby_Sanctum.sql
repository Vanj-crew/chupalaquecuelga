/* Ruby Sanctum template updates */
SET @EquiEntry = 2466; -- (creature_equip_template.entry - need 7)

-- Template
UPDATE `creature_template` SET `exp`=2,`equipment_id`=@EquiEntry+0 WHERE `entry`=39746; -- General Zarithrian
UPDATE `creature_template` SET `exp`=2 WHERE `entry`=39747; -- Saviana Ragefire
UPDATE `creature_template` SET `exp`=2,`equipment_id`=@EquiEntry+1 WHERE `entry`=39751; -- Baltharus the Warborn
UPDATE `creature_template` SET `exp`=2,`minlevel`=80,`maxlevel`=80,`unit_flags`=`unit_flags`|0x2000000,`speed_run`=0.99206 WHERE `entry`=39794; -- Zarithrian Spawn Stalker
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x8000,`equipment_id`=@EquiEntry+2 WHERE `entry`=39814; -- Onyx Flamecaller (flying)
UPDATE `creature_template` SET `baseattacktime`=1500,`unit_flags`=`unit_flags`|0x8040 WHERE `entry`=39863; -- Halion
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x40,`equipment_id`=@EquiEntry+1 WHERE `entry`=39899; -- Baltharus the Warborn (clone)
UPDATE `creature_template` SET `exp`=2,`unit_flags`=`unit_flags`|0x2000000,`unit_class`=1 WHERE `entry`=40001; -- Combustion
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2000000,`unit_class`=2 WHERE `entry`=40029; -- Meteor Strike
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2000000,`unit_class`=2 WHERE `entry`=40041; -- Meteor Strike
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2000000,`unit_class`=2 WHERE `entry`=40042; -- Meteor Strike
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2000000,`unit_class`=2 WHERE `entry`=40043; -- Meteor Strike
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2000000,`unit_class`=2 WHERE `entry`=40044; -- Meteor Strike
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2000000,`unit_class`=2 WHERE `entry`=40055; -- Meteor Strike
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x2000100,`speed_run`=0.42857 WHERE `entry`=40081; -- Orb Carrier (vehicle)
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x2000000,`speed_run`=0.85714 WHERE `entry`=40083; -- Shadow Orb
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|0x2000100,`speed_run`=0.78571 WHERE `entry`=40091; -- Orb Rotation Focus
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x2000000,`speed_run`=0.85714 WHERE `entry`=40100; -- Shadow Orb
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=1500,`unit_flags`=`unit_flags`|0x88840,`dynamicflags`=`dynamicflags`|0xC WHERE `entry`=40142; -- Halion (P2)
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|0x2000100 WHERE `entry`=40146; -- Halion Controller
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x8040,`equipment_id`=@EquiEntry+3,`unit_class`=8 WHERE `entry`=40417; -- Charscale Invoker
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x8040,`equipment_id`=@EquiEntry+4 WHERE `entry`=40419; -- Charscale Assaulter
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=1250,`unit_flags`=`unit_flags`|0x8040,`equipment_id`=@EquiEntry+5 WHERE `entry`=40421; -- Charscale Elite
UPDATE `creature_template` SET `exp`=2,`baseattacktime`=2000,`unit_flags`=`unit_flags`|0x8040,`equipment_id`=@EquiEntry+6 WHERE `entry`=40423; -- Charscale Commander
UPDATE `creature_template` SET `exp`=2,`unit_flags`=`unit_flags`|0x8000,`unit_class`=8 WHERE `entry`=40429; -- Sanctum Guardian Xerestrasza
UPDATE `creature_template` SET `exp`=2,`unit_flags`=`unit_flags`|0x22040300 WHERE `entry`=40626; -- Ruby Drakonid
UPDATE `creature_template` SET `exp`=2,`unit_flags`=`unit_flags`|0x22040300 WHERE `entry`=40627; -- Ruby Drake
UPDATE `creature_template` SET `exp`=2,`unit_flags`=`unit_flags`|0x22040300 WHERE `entry`=40628; -- Ruby Scalebane
UPDATE `creature_template` SET `exp`=2,`unit_flags`=`unit_flags`|0x22040300 WHERE `entry`=40870; -- Ruby Dragon

-- Equips
DELETE FROM `creature_equip_template` WHERE `entry` BETWEEN @EquiEntry AND @EquiEntry+6;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES 
(@EquiEntry+0,43111,0,0),
(@EquiEntry+1,28365,0,0),
(@EquiEntry+2,19355,0,0),
(@EquiEntry+3,43114,0,0),
(@EquiEntry+4,5597,0,0),
(@EquiEntry+5,49737,49737,0),
(@EquiEntry+6,40608,0,0);

-- Model
UPDATE `creature_model_info` SET `bounding_radius`=1.75,`combat_reach`=1,`gender`=0 WHERE `modelid`=32179; -- General Zarithrian
UPDATE `creature_model_info` SET `bounding_radius`=2.625,`combat_reach`=5.25,`gender`=1 WHERE `modelid`=31577; -- Saviana Ragefire
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=9,`gender`=0 WHERE `modelid`=31761; -- Baltharus the Warborn
UPDATE `creature_model_info` SET `bounding_radius`=1.8,`combat_reach`=1,`gender`=2 WHERE `modelid`=31952; -- Halion
UPDATE `creature_model_info` SET `bounding_radius`=2,`combat_reach`=4,`gender`=2 WHERE `modelid`=16946; -- Combustion
UPDATE `creature_model_info` SET `bounding_radius`=1.5,`combat_reach`=5,`gender`=0 WHERE `modelid`=14308; -- Charscale Assaulter
UPDATE `creature_model_info` SET `bounding_radius`=0.67025,`combat_reach`=2.625,`gender`=1 WHERE `modelid`=31962; -- Sanctum Guardian Xerestrasza
UPDATE `creature_model_info` SET `bounding_radius`=1.875,`combat_reach`=6.25,`gender`=0 WHERE `modelid`=32105; -- Ruby Drakonid
UPDATE `creature_model_info` SET `bounding_radius`=3.75,`combat_reach`=4.375,`gender`=0 WHERE `modelid`=32104; -- Ruby Scalebane
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=1,`gender`=1 WHERE `modelid`=2718; -- Ruby Dragon

-- Addon
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40626; -- Ruby Drakonid (Permanent Feing Death)
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40627; -- Ruby Drake (Permanent Feing Death)
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40628; -- Ruby Scalebane (Permanent Feing Death)
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=0x1,`mount`=0,`emote`=0,`auras`='29266' WHERE `entry`=40870; -- Ruby Dragon (Permanent Feing Death)
DELETE FROM `creature_template_addon` WHERE `entry` IN (39746,39747,39751,39794,39814,39863,40001,40029,40041,40042,40043,40044,40055,40081,40083,40091,40100,40142,40146,40417,40419,40421,40423,40429);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(39746,0,0,0x1,0, NULL), -- General Zarithrian
(39747,0,0,0x1,0, NULL), -- Saviana Ragefire
(39751,0,0,0x1,0, NULL), -- Baltharus the Warborn
(39794,0,0,0x1,0, NULL), -- Zarithrian Spawn Stalker
(39814,0,0,0x1,0, NULL), -- Onyx Flamecaller
(39863,0,0,0x1,0, NULL), -- Halion
(40001,0,0,0x1,0, NULL), -- Combustion
(40029,0,0,0x1,0, NULL), -- Meteor Strike
(40041,0,0,0x1,0, NULL), -- Meteor Strike
(40042,0,0,0x1,0, NULL), -- Meteor Strike
(40043,0,0,0x1,0, NULL), -- Meteor Strike
(40044,0,0,0x1,0, NULL), -- Meteor Strike
(40055,0,0,0x1,0, NULL), -- Meteor Strike
(40081,0,0x3000000,0x1,0, NULL), -- Orb Carrier
(40083,0,0x2000000,0x1,0, NULL), -- Shadow Orb
(40091,0,0,0x1,0, NULL), -- Orb Rotation Focus
(40100,0,0x2000000,0x1,0, NULL), -- Shadow Orb
(40142,0,0,0x1,0, NULL), -- Halion
(40146,0,0,0x1,0, NULL), -- Halion Controller
(40417,0,0,0x1,0, NULL), -- Charscale Invoker
(40419,0,0,0x1,0, NULL), -- Charscale Assaulter
(40421,0,0,0x1,0, NULL), -- Charscale Elite
(40423,0,0,0x1,0, NULL), -- Charscale Commander
(40429,0,0,0x1,0, NULL); -- Sanctum Guardian Xerestrasza

-- GOs
UPDATE `gameobject_template` SET `flags`=`flags`|0x30 WHERE `entry`=203007; -- Ruby Sanctum Halion Flame Ring

-- Ruby sanctum
UPDATE `instance_template` SET `Script`='instance_ruby_sanctum' WHERE `map`=724;
-- Halion
UPDATE `creature_template` SET `ScriptName`='boss_halion_real', `AIName` ='' WHERE `entry`=39863;
UPDATE `creature_template` SET `ScriptName`='boss_halion_twilight', `AIName` ='' WHERE `entry`=40142;
UPDATE `creature_template` SET `ScriptName`='mob_halion_meteor', `AIName` ='' WHERE `entry` = 40029;
UPDATE `creature_template` SET `ScriptName`='mob_halion_flame', `AIName` ='' WHERE `entry` IN (40041);
UPDATE `creature_template` SET `ScriptName`='mob_halion_control', `AIName` ='' WHERE `entry` IN (40146);
UPDATE `creature_template` SET `ScriptName`='mob_halion_orb', `AIName` ='' WHERE `entry` IN (40083,40100);
UPDATE `creature_template` SET `ScriptName`='mob_orb_rotation_focus', `AIName` ='' WHERE `entry` = 40091;
UPDATE `creature_template` SET `ScriptName`='mob_orb_carrier', `AIName` ='' WHERE `entry` = 40081;
UPDATE `creature_template` SET `ScriptName`='mob_fiery_combustion', `AIName` ='' WHERE `entry` = 40001;
UPDATE `creature_template` SET `ScriptName`='mob_soul_consumption', `AIName` ='' WHERE `entry` = 40135;
UPDATE `creature_template` SET `ScriptName`='', `AIName` ='' WHERE `entry` IN (40143, 40144, 40145);

-- spell_halion_fiery_combustion 74562
DELETE FROM `spell_script_names` WHERE `spell_id`=74562 AND `ScriptName`='spell_halion_fiery_combustion';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74562,'spell_halion_fiery_combustion');

-- spell_halion_soul_consumption 74792
DELETE FROM `spell_script_names` WHERE `spell_id`=74792 AND `ScriptName`='spell_halion_soul_consumption';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (74792,'spell_halion_soul_consumption');


UPDATE `gameobject_template` SET `data10` = 74807, `faction` = '0', `ScriptName` = 'go_halion_portal_twilight' WHERE `gameobject_template`.`entry` IN (202794,202795);
UPDATE `gameobject_template` SET `faction` = '0', `ScriptName` = 'go_halion_portal_real' WHERE `gameobject_template`.`entry` IN (202796);

-- Baltharus
UPDATE `creature_template` SET `ScriptName`='boss_baltharus', `AIName` ='', `dmg_multiplier` = 80  WHERE `entry`=39751;
UPDATE `creature_template` SET `ScriptName`='mob_baltharus_clone', `AIName` ='', `dmg_multiplier` = 80  WHERE `entry`=39899;

-- zarithrian
UPDATE `creature_template` SET `ScriptName`='boss_zarithrian', `AIName` ='' WHERE `entry`=39746;
UPDATE `creature` SET `position_x` = '3008.552734',`position_y` = '530.471680',`position_z` = '89.195290',`orientation` = '6.16' WHERE `id` = 39746;
UPDATE `creature_template` SET `ScriptName`='mob_flamecaller_ruby', `AIName` ='' WHERE `entry`=39814;

-- Saviana Ragefire
UPDATE `creature_template` SET `ScriptName`='boss_ragefire', `AIName` ='' WHERE `entry`=39747;
DELETE FROM `conditions` WHERE `SourceEntry`=74455;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES 
(13,0,74455,0,18,1,39747,0,0, '', 'Ragefire - Conflagration');

-- Xerestrasza
UPDATE `creature_template` SET `ScriptName`='mob_xerestrasza', `AIName` ='' WHERE `entry`=40429;
-- sound / text
DELETE FROM `script_texts` WHERE `entry` BETWEEN -1666406 AND -1666000;

-- xerestrasza
INSERT INTO `script_texts` (`entry`, `content_default`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
('-1666000','Help! I am trapped within this tree! I require aid!','???????! ? ??? ???? ???????. ??? ????? ??????!','17490','6','0','0','SAY_XERESTRASZA_YELL_1'),
('-1666001','Thank you! I could have not held out for much longer. A terrible thing has happened here.','???????! ??? ??? ? ?? ????? ?? ????????????... ????? ????????? ???????? ???????...','17491','0','0','0','SAY_XERESTRASZA_YELL_2'),
('-1666002','We believed that the Sanctum was well fortified, but we were not prepareted for the nature of this assault.','????????? ????????? ????????????, ?? ?? ??? ??? ??? ?? ???????????? ?????? ??????...','17492','0','0','0','SAY_XERESTRASZA_SAY_1'),
('-1666003','The Black Dragonkin materialized from thin air, and set upon us before we could react.','?????? ??????? ??????? ?? ????????. ?? ???? ?? ?????? ?????? ??? ??????????...','17493','0','0','0','SAY_XERESTRASZA_SAY_2'),
('-1666004','We did not stand a chance. As my brethren perished around me, I managed to retreat hear and bar the entrance.','???? ???? ???????, ??? ?????? ????? ???? ?? ??????. ? ? ?????????? ????? ? ?????????? ????.','17494','0','0','0','SAY_XERESTRASZA_SAY_3'),
('-1666005','They slaughtered us with cold efficiency, but the true focus of their interest seemed to be the eggs kept here in the sanctum.','??? ??????? ? ??????????? ???????????, ?? ???????? ????? ????? ???? ?????? ??? ? ?????????.','17495','0','0','0','SAY_XERESTRASZA_SAY_4'),
('-1666006','The commander of the forces on the ground here is a cruel brute named Zarithrian. But I fear there are greater powers at work.',' ?????? ????????? ??????????? ?????????, ??, ?????, ??? ???????? ? ????? ?????????????? ???.','17496','0','0','0','SAY_XERESTRASZA_SAY_5'),
('-1666007','In their initial assault I caught a glimpse of their true leader, a fearsome full-grown Twilight Dragon.','? ????? ?????? ? ??????? ??????????? ?? ?????????? ?????? - ????????? ??????????? ???????.','17497','0','0','0','SAY_XERESTRASZA_SAY_6'),
('-1666008','I know not the extent of their plans heroes, but I know this: they cannot be allowed to succeed!','?????, ??? ?? ?????? ???? ?????????? ??? ??????????. ???? ? ???? ????? - ?? ????? ??????????!','17498','0','0','0','SAY_XERESTRASZA_SAY_7'),

-- Halion
('-1666100','Meddlesome insects, you\'re too late! The Ruby Sanctum is lost.','?????????? ???????! ?? ????????. ????????? ????????? ????!','17499','6','0','0','SAY_HALION_SPAWN'),
('-1666101','Your world teeters on the brink of annihilation. You will all bear witness to the coming of a new age of destruction!','???? ??? ???-??? ??????????? ? ??????. ??? ?????? ????? ?????? ?????? ??? ??????????!','17500','6','0','0','SAY_HALION_AGGRO'),
('-1666102','Another hero falls.','??????? ??? ????? ???????','17501','6','0','0','SAY_HALION_SLAY_1'),
('-1666103','Ha Ha Ha!','','17502','6','0','0','SAY_HALION_SLAY_2'),
('-1666104','Relish this victory mortals, for it will be your last. This world will burn with the Master\'s return!','??? ???? ????????? ??????. ??????????? ?????? ?? ??????. ??? ????? ???????? ??? ????????, ???? ??? ?????? ? ????!','17503','6','0','0','SAY_HALION_DEATH'),
('-1666105','Not good enough!','???????!','17504','6','0','0','SAY_HALION_BERSERK'),
('-1666106','The heavens burn!','?????? ? ????!','17505','6','0','0','SAY_HALION_SPECIAL_1'),
('-1666107','Beware the shadow!','','17506','6','0','0','SAY_HALION_SPECIAL_2'),
('-1666108','You will find only suffering within the realm of Twilight. Enter if you dare.','?? ??????? ?????? ???? ? ???? ???????. ???????, ???? ????????.','17507','6','0','0','SAY_HALION_PHASE_2'),
('-1666109','I am the light AND the darkness! Cower mortals before the Herald of Deathwing!','? ???? ???? ? ? ???? ????! ?????????, ?????????, ????? ??????????? ???????????!','17508','6','0','0','SAY_HALION_PHASE_3'),
('-1666110','<need translate>','?? ??????????? ?????? ?????????? ?????? ???????!','0','3','0','0',''),
('-1666111','<need translate>','???? ???????? ??????????? ??????? ?????? ? ?????????? ???!','0','3','0','0',''),
('-1666112','<need translate>','???? ???????? ??????????? ??????? ?????? ? ???????? ???!','0','3','0','0',''),
('-1666113','<need translate>','???????? ? ????? ? ????? ?? ?????, ?????? ??????????????? ????????? ????.','0','3','0','0',''),

-- Zarthrian
('-1666200','Alexstrasza has chosen capable allies. A pity that I must end you!','?????????? ??????? ????????? ?????????... ????, ??? ???????? ?????????? ???!','17512','6','0','0','SAY_ZARITHRIAN_AGGRO'),
('-1666201','You thought you stood a chance?','????? ???? ? ?????????!','17513','6','0','0','SAY_ZARITHRIAN_SLAY_1'),
('-1666202','It\'s for the best.','??? ?????? ? ???????!','17514','6','0','0','SAY_ZARITHRIAN_SLAY_2'),
('-1666203','Halion! I\'m...aah!','??????! ?...','17515','6','0','0','SAY_ZARITHRIAN_DEATH'),
('-1666204','Turn them to ash, minions!','?????! ???????? ?? ? ?????!','17516','6','0','0','SAY_ZARITHRIAN_SPECIAL_1'),

-- baltharus
('-1666300','Ah, the entertainment has arrived...','?-?-?, ???? ???????.','17520','6','0','0','SAY_BALTHARUS_AGGRO'),
('-1666301','Baltharus leaves no survivors!','?????? ?? ????????? ?????!','17521','6','0','0','SAY_BALTHARUS_SLAY_1'),
('-1666302','This world has enough heroes!','? ???? ??????? ?????? ? ??? ????...','17522','6','0','0','SAY_BALTHARUS_SLAY_2'),
('-1666303','I...didn\'t see that coming...','???… ??? ????? ??????????..','17523','1','0','0','SAY_BALTHARUS_DEATH'),
('-1666304','Twice the pain and half the fun!','????? ??????? ?????????.','17524','6','0','0','SAY_BALTHARUS_SPECIAL_1'),
('-1666305','Your power wanes, ancient one! Soon, you will join your friends!','???? ???? ?? ??????, ??????????! ????? ?? ?????????????? ? ????? ???????!','17525','6','0','0','SAY_BALTHARUS_YELL'),

-- saviana
('-1666400','You will suffer for this intrusion...','???-?-?? ???? ?-c????? ?????? ?? ??? ?????????!','17528','6','0','0','SAY_SAVIANA_AGGRO'),
('-1666401','As it should be!','??? ? ?????? ????!','17529','6','0','0','SAY_SAVIANA_SLAY_1'),
('-1666402','Halion will be pleased...','?????? ????? ???????!','17530','6','0','0','SAY_SAVIANA_SLAY_2'),
('-1666403','<screaming>','?...','17531','6','0','0','SAY_SAVIANA_DEATH'),
('-1666404','Burn in the master\'s flame!','?????? ? ???? ???????!','17532','6','0','0','SAY_SAVIANA_SPECIAL_1'),
('-1666405','<need translate>','|3-3(%s) ??????? ? ???????????!','0','3','0','0','');


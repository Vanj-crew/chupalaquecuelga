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
DELETE FROM `script_texts` WHERE `entry` <= -1752008 AND `entry` >= -1752016;
DELETE FROM `script_texts` WHERE `entry` <= -1752001 AND `entry` >= -1752006;
DELETE FROM `script_texts` WHERE `entry` <= -1752017 AND `entry` >= -1752036;

INSERT INTO `script_texts` (`entry`, `content_default`, `npc_entry`, `content_loc3`, `sound`, `type`, `language`) VALUES
('-1752008', 'Help! I am trapped within this tree! I require aid!', '0', '', '17490', '1', '0'),        
('-1752009', 'Thank you! I could not have held out for much longer.... A terrible thing has happened here.', '0', '', '17491', '1', '0'),       
('-1752010', 'We believed the Sanctum was well-fortified, but we were not prepared for the nature of this assault.', '0', '', '17492', '0', '0'),       
('-1752011', 'The Black dragonkin materialized from thin air, and set upon us before we could react.', '0', '', '17493', '0', '0'),     
('-1752012', 'We did not stand a chance. As my brethren perished around me, I managed to retreat here and bar the entrance.', '0', '', '17494', '0', '0'),      
('-1752013', 'They slaughtered us with cold efficiency, but the true focus of their interest seemed to be the eggs kept here in the Sanctum.', '0', '', '17495', '0', '0'),     
('-1752014', 'The commander of the forces on the ground here is a cruel brute named Zarithrian, but I fear there are greater powers at work.', '0', '', '17496', '0', '0'),     
('-1752015', 'In their initial assault, I caught a glimpse of their true leader, a fearsome full-grown twilight dragon.', '0', '', '17497', '0', '0'),  
('-1752016', 'I know not the extent of their plans, heroes, but I know this: They cannot be allowed to succeed!', '0', '', '17498', '0', '0'),

( -1752001, "Ah, the entertainment has arrived.", 0, "", 17520, 1, 0),
( -1752002, "Baltharus leaves no survivors!", 0, "", 17521, 1, 0),
( -1752003, "This world has enough heroes.", 0, "", 17522, 1, 0),
( -1752004, "I..Didn''t saw...that coming...", 0, "", 17523, 1, 0),
( -1752005, "Twice the pain and half the fun.", 0, "", 17524, 1, 0),
( -1752006, "Your power wanes, ancient one.... Soon you will join your friends.", 0, "", 17525, 1, 0),

( -1752017, "Alexstrasza has chosen capable allies... A pity that I must END YOU!", 0, "", 17512, 1, 0),
( -1752018, "You thought you stood a chance?", 0, "", 17513, 1, 0),
( -1752019, "It''s for the best.", 0, "", 17514, 1, 0),
( -1752020, "HALION! I...", 0, "", 17515, 1, 0),
( -1752021, "Turn them to ashes, minions!", 0, "", 17516, 1, 0),

( -1752022, "You will sssuffer for this intrusion!", 0, "", 17528, 1, 0),
( -1752023, "As it should be...", 0, "", 17529, 1, 0),
( -1752024, "Halion will be pleased", 0, "", 17530, 1, 0),
( -1752025, "Hhrr...Grr..", 0, "", 17531, 1, 0),
( -1752026, "Burn in the master's flame!", 0, "", 17532, 1, 0),

(-1752027, 'Insects! You''re too late. The Ruby Sanctum is lost.',NULL,NULL,17499,0,0),
(-1752028, 'Your world teeters on the brink of annihilation. You will ALL bear witness to the coming of a new age of DESTRUCTION!',NULL,NULL,17500,0,0),
(-1752029, 'Another hero falls.',NULL,NULL,17501,0,0),
(-1752030, 'Hahahahaha.',NULL,NULL,17502,0,0),
(-1752031, 'Relish this victory, mortals, for it will be your last! This world will burn with the master''s return!',NULL,NULL,17503,0,0),
(-1752032, 'Not good enough.',NULL,NULL,17504,0,0),
(-1752033, 'The heavens burn!',NULL,NULL,17505,0,0),
(-1752034, 'Beware the shadow!',NULL,NULL,17506,0,0),
(-1752035, 'You will find only suffering within the realm of twilight! Enter if you dare!',NULL,NULL,17507,0,0),
(-1752036, 'I am the light and the darkness! Cower, mortals, before the herald of Deathwing!',NULL,NULL,17508,0,0);


UPDATE `instance_template` SET `script`='instance_ruby_sanctum' WHERE (`map`='724');
UPDATE `creature_template` SET `ScriptName` = 'boss_baltharus' WHERE `entry` = '39751';
UPDATE `creature_template` SET `ScriptName` = 'boss_baltharus_summon' WHERE `entry` = '39899';
UPDATE `creature_template` SET `ScriptName` = 'npc_xerestrasza' WHERE `entry` = '40429';
UPDATE `creature_template` SET `ScriptName` = 'boss_zarithrian' WHERE `entry` = '39746';
UPDATE `creature_template` SET `ScriptName` = 'boss_ragefire' WHERE `entry` = '39747';
UPDATE `creature_template` SET `ScriptName` = 'boss_halion' WHERE `entry`= '39863';
UPDATE `creature_template` SET `ScriptName` = 'boss_twilight_halion' WHERE `entry` = '40142';
UPDATE `creature_template` SET `ScriptName` = 'npc_onyx_flamecaller' WHERE `entry` = '39814';
UPDATE `creature_template` SET `ScriptName` = 'npc_meteor_strike', `flags_extra`=128 WHERE `entry` = '40041';
UPDATE `creature_template` SET `ScriptName` = 'npc_meteor_flame', `flags_extra`=128 WHERE `entry` = '40042';
UPDATE `creature_template` SET `ScriptName` = 'npc_spell_meteor_strike', `flags_extra`=128 WHERE `entry` = '40029';
UPDATE `creature_template` SET `ScriptName` = 'npc_summon_halion', `flags_extra`=128 WHERE `entry` = '40044';


DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-74562') AND (`spell_effect`='74610');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-74792') AND (`spell_effect`='74800');
INSERT INTO `spell_linked_spell` VALUES (-74562, 74610, 0, 'Fiery Combustion removed -> Combustion');
INSERT INTO `spell_linked_spell` VALUES (-74792, 74800, 0, 'Soul Consumption removed -> Consumption');

-- Spawn Halion 39863
DELETE FROM `creature` WHERE `id`=39863 AND `map`=724;
INSERT INTO `creature` VALUES (null,39863,724,15,65535,0,0,3144.93,527.233,72.8887,0.110395,604800,0,0,11156000,0,0,0,0,0,0);

DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_halion_portal';
INSERT INTO `spell_script_names` VALUES (74812,'spell_halion_portal');

UPDATE `gameobject_template` SET `data10`=74807 WHERE `entry`=202794;
UPDATE `gameobject_template` SET `data10`=74812 WHERE `entry`=202796;

-- Trash Mobs and Boss SELECT distinct `id` FROM `creature` WHERE `map`=724
-- 26712,40417,40419,40421,40423,40626,40627,40628,40870 Trash
-- 39746,39899,39747,39751,40429,39863 Boss
-- 39794 Spawn Zeriathian Trash
-- SELECT `entry` , `difficulty_entry_1` , `difficulty_entry_2` , `difficulty_entry_3` FROM `creature_template` WHERE `entry` IN ( 39746, 39899, 39747, 39751, 40429, 39863 );
-- IDS HEROIC BOSS
-- 39746,39805,39747,39823,39751,39920,39863,39864,39944,39945,39899,39922,40429
-- ID HEROIC TRASH
-- 26712,40417,40419,40421,40423,40626,40627,40628,40870,39794,40418,40420,40422,40424

-- Update damage boss SELECT `entry`,`mindmg`,`maxdmg`,`attackpower`,`dmg_multiplier`,`baseattacktime` FROM `creature_template` WHERE `entry` IN (39746,39805,39747,39823,39751,39920,39863,39864,39944,39945,39899,39922,40429);
UPDATE FROM `creature_template` SET `mindmg`='590',`maxdmg`='783',`attackpower`='905',`dmg_multiplier`='35', `baseattacktime`='2000' WHERE `entry` IN (39746,39805,39747,39823,39751,39920,39863,39864,39944,39945,39899,39922,40429);

-- Update Damage Trash
UPDATE FROM `creature_template` SET `mindmg`='425',`maxdmg`='602',`attackpower`='670',`dmg_multiplier`='7.5', `baseattacktime`='2000' WHERE `entry` IN (26712,40417,40419,40421,40423,40626,40627,40628,40870,39794,40418,40420,40422,40424);

-- Inmunidades
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|67108864|536870912 WHERE `entry` IN 
(26712,40417,40419,40421,40423,40626,40627,40628,40870,39794,40418,40420,40422,40424,39746,39805,39747,39823,39751,39920,39863,39864,39944,39945,39899,39922,40429);

-- For Achievement Champion/Conqueror of Ulduar
DELETE FROM achievement_criteria_data WHERE `type` = 18 AND criteria_id IN
(10042,10342,10340,10341,10598,10348,10351,10439,
10403,10582,10347,10349,10350,
10352,10355,10353,10354,10599,10357,10363,10719,
10404,10583,10361,10362,10364);

INSERT INTO achievement_criteria_data (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10042,18,0,0,''),
(10342,18,0,0,''),
(10340,18,0,0,''),
(10341,18,0,0,''),
(10598,18,0,0,''),
(10348,18,0,0,''),
(10351,18,0,0,''),
(10439,18,0,0,''),
(10403,18,0,0,''),
(10582,18,0,0,''),
(10347,18,0,0,''),
(10349,18,0,0,''),
(10350,18,0,0,''),
(10352,18,0,0,''),
(10355,18,0,0,''),
(10353,18,0,0,''),
(10354,18,0,0,''),
(10599,18,0,0,''),
(10357,18,0,0,''),
(10363,18,0,0,''),
(10719,18,0,0,''),
(10404,18,0,0,''),
(10583,18,0,0,''),
(10361,18,0,0,''),
(10362,18,0,0,''),
(10364,18,0,0,'');

DELETE FROM disables WHERE sourceType = 4 AND entry IN 
(10042,10342,10340,10341,10598,10348,10351,10439,
10403,10582,10347,10349,10350,
10352,10355,10353,10354,10599,10357,10363,10719,
10404,10583,10361,10362,10364);

-- ##########################################################
-- Ignis
-- ##########################################################
DELETE FROM conditions WHERE SourceEntry IN (62488);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,62488,0,18,1,33121,0,0,'','Effekt on Constructs');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=62343;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,62343,18,1,33121);

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=33121);
DELETE FROM `creature` WHERE `id`=33121;

DELETE FROM `spell_linked_spell` WHERE `spell_effect`=-65667;
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(62373,-65667,2, 'Iron Construct - immune to Heat when Molten'),
(62382,-65667,2, 'Iron Construct - immune to Heat when Brittle'),
(67114,-65667,2, 'Iron Construct - immune to Heat when Brittle');

DELETE FROM `conditions` WHERE `SourceEntry`=62711 AND `SourceTypeOrReferenceId`=13 AND `ConditionTypeOrReference`=18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,62711,18,1,33118,'Ingis - Grab');


-- ##########################################################
-- Razorscale
-- ##########################################################
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `ConditionValue2`=0 AND `SourceEntry` IN (63317,64021);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,63317,18,1,0,'Flame Breath - Players'),
(13,64021,18,1,0,'Flame Breath - Players');

-- ##########################################################
-- Assembly of Iron
-- ##########################################################
-- Loot
DELETE FROM `reference_loot_template` WHERE `entry`=34122 AND `lootmode`=4;
DELETE FROM `creature_loot_template` WHERE `entry`=32867 AND `lootmode`=4;

UPDATE `creature_loot_template` SET `lootmode`=1 WHERE `entry` IN (32867,32927) AND `lootmode`=2;

DELETE FROM `creature_loot_template` WHERE `entry`=32867 AND `groupid`=1;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
(32867,45447,0,1,1,1,1),
(32867,45448,0,1,1,1,1),
(32867,45449,0,1,1,1,1),
(32867,45455,0,1,1,1,1),
(32867,45456,0,1,1,1,1);

UPDATE `creature_loot_template` SET `item`=45857, `lootmode`=1 WHERE `entry` IN (33692,33693) AND `lootmode`=2;
UPDATE `creature_loot_template` SET `lootmode`=1 WHERE `entry`=33693 AND `lootmode`=4;

-- Limit Supercharge targets
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=61920;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,61920,18,1,32857),
(13,61920,18,1,32867),
(13,61920,18,1,32927);

-- Lightning Tendrils Visual
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (61887,63486);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(61887,61883,2, 'Lightning Tendrils - Visual'),
(63486,61883,2, 'Lightning Tendrils - Visual');

-- trigger Electrical Charge on Meltdown
DELETE FROM `spell_script_names` WHERE `spell_id`=61889;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(61889, 'spell_meltdown');

-- ##########################################################
-- Kologarn
-- ##########################################################
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (32930);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(32930,46598,0,0,0,1,0,0,0); -- Kologarn - Arm - Ride Vehicle Hardcoded

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (64224,64225,63766,63983);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,64224,18,1,32934, 'Stone Grip Absorb'),
(13,64225,18,1,32934, 'Stone Grip Absorb'),
(13,63766,18,1,32933, 'Arm Sweep (10N) Target'),
(13,63983,18,1,32933, 'Arm Sweep (25N) Target');

UPDATE `creature_template` SET `ScriptName`='npc_kologarn_arm' WHERE `entry` IN (32933,32934);
UPDATE `creature_template` SET `flags_extra`='flags_extra'|2 WHERE `entry`=33661;
UPDATE `creature_template` SET `minlevel`=83, `maxlevel`=83 WHERE `entry`=33909;

-- Swap trigger model ids
UPDATE `creature_template` SET `modelid1`=1126, `modelid2`=11686 WHERE `entry` IN (33906,33907);

-- Rubble AI
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=33768;
DELETE FROM `smart_scripts` WHERE `entryorguid`=33768;
INSERT INTO `smart_scripts` VALUES 
(33768,0,0,0,0,0,100,0x02,5000,15000,5000,15000,11,63818,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rubble - Cast Rumble (10N)'),
(33768,0,1,0,0,0,100,0x04,5000,15000,5000,15000,11,63978,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Rubble - Cast Stone Nova (25N)');

-- ##########################################################
-- Auriaya
-- ##########################################################
UPDATE creature_template SET ScriptName = "boss_auriaya" WHERE Entry = 33515;
UPDATE creature_template SET ScriptName = "mob_feral_defender" WHERE Entry = 34035;
UPDATE creature_template SET ScriptName = "mob_sanctum_sentry" WHERE Entry = 34014;
UPDATE creature_template SET ScriptName = "mob_seeping_essence_stalker" WHERE Entry = 34098;

-- Strength of the Pack
DELETE FROM `spell_script_names` WHERE `spell_id`=64381;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(64381, 'spell_strength_of_the_pack');

-- ##########################################################
-- Hodir
-- ##########################################################
-- Hodir
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_hodir' WHERE `entry` = 32845;
UPDATE `creature_template` SET `equipment_id` = 1843, `mechanic_immune_mask` = 650854239, `flags_extra` = 1 WHERE `entry` = 32846;

-- Hodir npcs
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_priest' WHERE `entry` IN (32897, 33326, 32948, 33330);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_shaman' WHERE `entry` IN (33328, 32901, 33332, 32950);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_druid' WHERE `entry` IN (33325, 32900, 32941, 33333);
UPDATE `creature_template` SET `ScriptName` = 'npc_hodir_mage' WHERE `entry` IN (32893, 33327, 33331, 32946);
UPDATE `creature_template` SET `ScriptName` = 'npc_toasty_fire' WHERE `entry` = 33342;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle' WHERE `entry` = 33169;
UPDATE `creature_template` SET `ScriptName` = 'npc_icicle_snowdrift' WHERE `entry` = 33173;
UPDATE `creature_template` SET `ScriptName` = 'npc_snowpacked_icicle' WHERE `entry` = 33174;
UPDATE `creature_template` SET `difficulty_entry_1` = 33352, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32926;
UPDATE `creature_template` SET `difficulty_entry_1` = 33353, `mechanic_immune_mask` = 612597599, `ScriptName` = 'npc_flash_freeze' WHERE `entry` = 32938;
UPDATE `creature_template` SET `mechanic_immune_mask` = 612597599 WHERE `entry` IN (33352, 33353);
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 194173;

DELETE FROM spell_script_names WHERE spell_id IN (62038,62039);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(62038,'spell_biting_cold'),
(62039,'spell_biting_cold');

-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32950, 32941, 32948, 32946, 32938);

-- ##########################################################
-- Freya
-- ##########################################################
UPDATE creature_template SET ScriptName = "boss_freya" WHERE Entry = 32906;
UPDATE creature_template SET ScriptName = "mob_detonating_lasher" WHERE Entry = 32918;
UPDATE creature_template SET ScriptName = "mob_ancient_water_spirit" WHERE Entry = 33202;
UPDATE creature_template SET ScriptName = "mob_storm_lasher" WHERE Entry = 32919;
UPDATE creature_template SET ScriptName = "mob_snaplasher" WHERE Entry = 32916;
UPDATE creature_template SET ScriptName = "mob_ancient_conservator" WHERE Entry = 33203;
UPDATE creature_template SET ScriptName = "mob_healthy_spore" WHERE Entry = 33215;
UPDATE creature_template SET ScriptName = "mob_elder_brightleaf" WHERE Entry = 32915;
UPDATE creature_template SET ScriptName = "mob_elder_ironbranch" WHERE Entry = 32913;
UPDATE creature_template SET ScriptName = "mob_elder_stonebark" WHERE Entry = 32914;
UPDATE creature_template SET ScriptName = "mob_unstable_sunbeam" WHERE Entry = 33050;
UPDATE creature_template SET ScriptName = "mob_eonars_gift" WHERE Entry = 33228;
UPDATE creature_template SET ScriptName = "mob_natural_bomb" WHERE entry = 34129;
UPDATE creature_template SET ScriptName = "mob_iron_roots" WHERE Entry = 33168;
UPDATE creature_template SET ScriptName = "mob_iron_roots" WHERE Entry = 33088;
UPDATE creature_template SET ScriptName = "mob_freya_sunbeam" WHERE Entry = 33170;
UPDATE creature_template SET unit_flags = 4 WHERE ENTRY = 33168;
UPDATE creature_template SET unit_flags = 4 WHERE ENTRY = 33088;
UPDATE creature_template SET faction_A = 16 WHERE Entry = 33168;
UPDATE creature_template SET faction_H = 16 WHERE Entry = 33168;
UPDATE `creature_template` SET `dmg_multiplier`=3.2 WHERE `entry`=32918;
UPDATE `creature_template` SET `dmg_multiplier`=6.4 WHERE `entry`=33399;

DELETE FROM spell_script_names WHERE spell_id IN (62623,62872);
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(62623, "spell_freya_sunbeam"),
(62872, "spell_freya_sunbeam");
DELETE FROM spell_script_names WHERE spell_id = 64648;
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES (64648,"spell_freya_natural_bomb_spell");
DELETE FROM spell_script_names WHERE spell_id IN (62524,62525,62521);
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES
(62524,"spell_attuned_to_nature_remove"),
(62525,"spell_attuned_to_nature_remove"),
(62521,"spell_attuned_to_nature_remove");
DELETE FROM spell_script_names WHERE spell_id = 62688;
INSERT INTO spell_script_names (spell_id,ScriptName) VALUES (62688,"spell_summon_wave_effect_10mob");

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62968,65761,62713);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62968, 'spell_elder_essence_targeting'),
(65761, 'spell_elder_essence_targeting'),
(62713, 'spell_elder_essence_targeting');

-- ##########################################################
-- Mimiron
-- ##########################################################
-- Mimiron Tram
UPDATE `gameobject_template` SET `flags` = 32, `data2` = 3000, `ScriptName` = 'go_call_tram' WHERE `entry` IN (194914, 194912, 194437);
DELETE FROM gameobject WHERE id = '194437';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('194437','603','1','1','2306.87','274.237','424.288','1.52255','0','0','0.689847','0.723956','300','0','1');
DELETE FROM gameobject_template WHERE entry = '194438';
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194438','1','8504','Activate Tram','','','','0','32','1','0','0','0','0','0','0','0','0','3000','0','0','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','go_call_tram','11159');
DELETE FROM gameobject WHERE id = '194438';
INSERT INTO `gameobject` (`id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(194438, 603, 1,1,2306.99, 2589.35, 424.382, 4.71676, 0, 0, 0.705559, -0.708651, 300, 0, 1);

-- Mimiron
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_mimiron' WHERE `entry` = 33350;
-- Leviathan MKII
UPDATE `creature_template` SET `vehicleid` = 370, `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk' WHERE `entry` = 33432;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34106;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `ScriptName` = 'boss_leviathan_mk_turret' WHERE `entry` = 34071;
DELETE FROM vehicle_template_accessory WHERE entry = 33432;
INSERT INTO vehicle_template_accessory VALUE (33432, 34071, 3, 1, 'Leviathan Mk II turret', 8, 0);
UPDATE creature_template SET ScriptName = 'npc_proximity_mine' WHERE entry = 34362;
DELETE FROM `creature_model_info` WHERE `modelid`=28831;
INSERT INTO `creature_model_info` (`modelid`, `bounding_radius`, `combat_reach`, `gender`, `modelid_other_gender`) VALUES
(28831, 0.5, 7, 2, 0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (33432,33651);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(33432,46598,0,0,0,1,0,0,0), -- Leviatan MKII - Ride Vehicle Hardcoded
(33651,46598,0,0,0,1,0,0,0); -- VX 001 - Ride Vehicle Hardcoded

-- VX-001
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `vehicleid` = 371, `ScriptName` = 'boss_vx_001' WHERE `entry` = 33651;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34108;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 34050;
UPDATE `creature_template` SET `unit_flags` = 33686020, `flags_extra` = 2 WHERE `entry` = 34211;
UPDATE `creature_template` SET `ScriptName` = 'npc_rocket_strike' WHERE `entry` = 34047;

-- Aerial Command Unit
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854235, `flags_extra` = 1, `ScriptName` = 'boss_aerial_unit', `vehicleid` = 372 WHERE `entry` = 33670;
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `mechanic_immune_mask` = 650854235, `flags_extra` = 1 WHERE `entry` = 34109;
UPDATE `creature_template` SET `ScriptName` = 'npc_magnetic_core' WHERE `entry` = 34068;
UPDATE `creature_template` SET `ScriptName` = 'npc_assault_bot' WHERE `entry` = 34057;
UPDATE `creature_template` SET `difficulty_entry_1` = 34148, `ScriptName` = 'npc_emergency_bot' WHERE `entry` = 34147;

-- HardMode
UPDATE `gameobject_template` SET `flags` = 32, `ScriptName` = 'go_not_push_button' WHERE `entry` = 194739;
UPDATE `creature_template` SET `difficulty_entry_1` = 34361, `ScriptName` = 'npc_frost_bomb' WHERE `entry` = 34149;
UPDATE `creature_template` SET `speed_walk` = 0.15, `speed_run` = 0.15, `ScriptName` = 'npc_mimiron_flame_trigger' WHERE `entry` = 34363;
UPDATE `creature_template` SET `ScriptName` = 'npc_mimiron_flame_spread' WHERE `entry` = 34121;
UPDATE `creature_template` SET `ScriptName` = 'npc_mimiron_bomb_bot' WHERE `entry` = 33836;

-- CleanUp
DELETE FROM creature WHERE id IN (34071, 33856);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 34143;

-- Leviathan Hitpoints
UPDATE `creature_template` SET `exp`=0 WHERE `entry` IN (33432,34071,34106);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=63414;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,63414,18,1,33651);

DELETE FROM `spell_script_names` WHERE `spell_id`=63382;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(63382, 'spell_rapid_burst');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (64570,65192,64626,65333,64619);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,64570,18,1,34121),
(13,64570,18,1,34363),
(13,65192,18,1,34121),
(13,65192,18,1,34363),
(13,64626,18,1,34121),
(13,64626,18,1,34363),
(13,65333,18,1,34121),
(13,65333,18,1,34363),
(13,64619,18,1,34121),
(13,64619,18,1,34363);

UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14 WHERE `entry` IN (34149,34361);

-- Junk Bot
UPDATE `creature_template` SET `difficulty_entry_1`=34114 WHERE `entry`=33855;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `dmg_multiplier`=15 WHERE `entry`=34114;

-- ##########################################################
-- Thorim
-- ##########################################################
-- Thorim
UPDATE `creature_template` SET `speed_walk` = 1.66667, `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'boss_thorim' WHERE `entry` = 32865;
UPDATE `creature_template` SET `speed_walk` = 1.66667, `baseattacktime` = 1500, `equipment_id` = 1844, `mechanic_immune_mask` = 650854239 WHERE `entry` = 33147;
DELETE FROM `creature` WHERE `id`=32865;
INSERT INTO `creature` (`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(32865, 603, 3, 1, 28977, 0, 2134.967, -298.962, 438.331, 1.57, 604800, 0, 0, 4183500, 425800, 0, 1);
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=62042;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
('62042','62470','1','Thorim: Deafening Thunder');

-- Charge Orb
DELETE FROM conditions WHERE SourceEntry = 62016;
INSERT INTO `conditions` VALUES
('13','0','62016','0','18','1','33378','0','0','',NULL);
UPDATE `creature_template` SET `unit_flags` = 33685508 WHERE `entry` = 33378;

-- Gate
DELETE FROM `gameobject_scripts` WHERE `id`=55194;
INSERT INTO `gameobject_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(55194, 0, 11, 34155, 15, '0', 0, 0, 0, 0);
DELETE FROM `gameobject_template` WHERE `entry`=194265;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`, `WDBVerified`) VALUES
('194265','1','295','Lever','','','','35','48','3','0','0','0','0','0','0','0','0','6000','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','0');
UPDATE `gameobject` SET `id` = 194265, `rotation2` = 1, `rotation3` = 0, `spawntimesecs` = 7200, `animprogress` = 100 WHERE `guid` = 55194;

-- Cleanup
DELETE FROM `creature` WHERE `id` IN (32885, 32883, 32908, 32907, 32882, 33110, 32886, 32879, 32892, 33140, 33141, 33378, 32874, 32875)
OR guid IN (136694, 136695, 136666, 136706, 136754, 136653, 136756, 136757, 136725, 136718);

-- Pre adds
UPDATE `creature_template` SET `equipment_id` = 1849, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32885;
UPDATE `creature_template` SET `equipment_id` = 1849 WHERE `entry` = 33153;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32883;
UPDATE `creature_template` SET `equipment_id` = 1847 WHERE `entry` = 33152;
UPDATE `creature_template` SET `equipment_id` = 1850, `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32908;
UPDATE `creature_template` SET `equipment_id` = 1850 WHERE `entry` = 33151;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32907;
UPDATE `creature_template` SET `equipment_id` = 1852 WHERE `entry` = 33150;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32882;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_pre_phase' WHERE `entry` = 32886;
UPDATE `creature_template` SET `modelid1` = 16925, `modelid2` = 0 WHERE `entry`IN (33378, 32892);

-- Thorim Mini bosses
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_runic_colossus' WHERE `entry` = 32872;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_ancient_rune_giant' WHERE `entry` = 32873;
UPDATE `creature_template` SET `mechanic_immune_mask` = 650854239, `flags_extra` = 1, `ScriptName` = 'npc_sif' WHERE `entry` = 33196;
UPDATE `creature_template` SET `ScriptName` = 'npc_thorim_arena_phase' WHERE `entry` IN (32876, 32904, 32878, 32877, 32874, 32875, 33110);
DELETE FROM `creature_addon` WHERE `guid`IN (136059, 136816);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
('136059','0','0','0','1','0','40775 0'),
('136816','0','0','0','1','0','40775 0');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62942,62466,62976,64098);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13, 62942, 18, 1, 33110),
(13, 62942, 18, 1, 32874),
(13, 62942, 18, 1, 32872),
(13, 62942, 18, 1, 32875),
(13, 62466, 18, 1, 32780),
(13, 64098, 18, 1, 32865),
(13, 62976, 18, 1, 34055);

UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35 WHERE `entry`=34055;

DELETE FROM `spell_script_names` WHERE `spell_id`=62042;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62042, 'spell_stormhammer_targeting');

-- ##########################################################
-- General Vezax
-- ##########################################################
UPDATE creature_template SET scriptname = 'boss_general_vezax' WHERE entry = 33271;
UPDATE creature_template SET scriptname = 'mob_saronit_varpor' WHERE entry = 33488;
UPDATE creature_template SET scriptname = 'mob_saronit_animus' WHERE entry = 33524;
DELETE FROM spell_script_names WHERE spell_id = 62692;
INSERT INTO spell_script_names VALUE (62692,'spell_general_vezax_aura_of_despair_aura');
DELETE FROM spell_script_names WHERE spell_id = 63276;
INSERT INTO spell_script_names VALUE (63276,'spell_general_vezax_mark_of_the_faceless_aura');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=63322;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,63322,18,1,0);

-- DELETE FROM spell_script_names WHERE spell_id = 63278;
-- INSERT INTO spell_script_names VALUE (63278,'spell_general_vezax_mark_of_the_faceless_spell');

-- ##########################################################
-- Yogg-Saron
-- ##########################################################

UPDATE creature_template SET scriptname = 'boss_sara' WHERE entry = 33134;
UPDATE script_texts SET npc_entry = 33134 WHERE npc_entry = 33288 AND entry IN (-1603330,-1603331,-1603332,-1603333);
UPDATE script_texts SET content_default = "Help me! Please get them off me!" WHERE npc_entry = 33134 AND entry = -1603310;
UPDATE script_texts SET content_default = "What do you want from me? Leave me alone!" WHERE npc_entry = 33134 AND entry = -1603311;
UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` = 33134;
UPDATE creature_template SET scriptname = 'npc_ominous_cloud' WHERE entry = 33292;
UPDATE creature_template SET scriptname = 'npc_guardian_of_yogg_saron' WHERE entry = 33136;
UPDATE creature_template SET scriptname = 'npc_yogg_saron_tentacle' WHERE entry in (33966,33985,33983);
UPDATE creature_template SET scriptname = 'npc_descend_into_madness' WHERE entry = 34072;
UPDATE creature_template SET scriptname = 'npc_brain_of_yogg_saron' WHERE entry = 33890;
UPDATE creature_template SET scriptname = 'boss_yogg_saron' WHERE entry = 33288;
UPDATE creature_template SET scriptname = 'npc_influence_tentacle' WHERE entry in (33716,33720,33719,33717,33433,33567);
UPDATE creature_template SET scriptname = 'npc_immortal_guardian' WHERE entry = 33988;
UPDATE creature_template SET scriptname = 'npc_support_keeper' WHERE entry in (33410,33411,33412,33413);
UPDATE creature_template SET scriptname = 'npc_sanity_well' WHERE entry = 33991;
UPDATE creature_template SET modelid1 = 11686, modelid2 = 11686 WHERE entry = 33991;
UPDATE creature_template SET scriptname = 'npc_death_orb' WHERE entry = 33882;
UPDATE creature_template SET modelid1 = 16946, modelid2 = 16946 WHERE entry = 33882;
UPDATE creature_template SET scriptname = 'npc_death_ray' WHERE entry = 33881;
UPDATE creature_template SET modelid1 = 17612, modelid2 = 17612 WHERE entry = 33881;
UPDATE creature_template SET minlevel = 80, maxlevel = 80, scriptname = 'npc_laughting_skull' WHERE entry = 33990;
UPDATE creature_template SET modelid1 = 15880, modelid2 = 15880 WHERE entry = 33990;
UPDATE creature_template SET scriptname = 'npc_keeper_help' WHERE entry IN(33241,33244,33242,33213);
UPDATE `creature_template` SET `minlevel`=80  , `maxlevel`=80 WHERE `entry` = 33943;
UPDATE gameobject_template SET scriptname = 'go_flee_to_surface' WHERE entry = 194625;
UPDATE item_template SET scriptname = 'item_unbound_fragments_of_valanyr' WHERE entry = 45896;

UPDATE creature_template SET RegenHealth = 0 WHERE entry IN (33134,34332,33890,33954);

-- Secound Damage Effekt of ShadowNova only on other Guardians or Sara
DELETE FROM conditions WHERE SourceEntry = 65209;
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,65209,0,18,1,33136,0,0,'','Effekt only for Guardian of YoggSaron'),
(13,0,65209,0,18,1,33134,0,0,'','Effekt only for Sara');

DELETE FROM gameobject WHERE id = 194625;
INSERT INTO gameobject 
(guid, id, map, spawnMask, phaseMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state)
VALUES 
(603001, 194625, 603, 3, 1, 2001.40, -59.66, 245.07, 0, 0, 0, 0, 0, 60, 100, 1),
(603002, 194625, 603, 3, 1, 1941.61, -25.88, 244.98, 0, 0, 0, 0, 0, 60, 100, 1),
(603003, 194625, 603, 3, 1, 2001.18,  9.409, 245.24, 0, 0, 0, 0, 0, 60, 100, 1);

-- Auren shouldnt hit other friendly NPCs
DELETE FROM spell_script_names WHERE spell_id IN (62670,62671,62702,62650);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(62670,'spell_keeper_support_aura_targeting'),
(62671,'spell_keeper_support_aura_targeting'),
(62702,'spell_keeper_support_aura_targeting'),
(62650,'spell_keeper_support_aura_targeting');

-- Script for Target Faces Caster
DELETE FROM spell_script_names WHERE spell_id IN (64164,64168);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64164,'spell_lunatic_gaze_targeting'),
(64168,'spell_lunatic_gaze_targeting');

-- Trigger Effekt on Near Player with Brain Link 
DELETE FROM spell_script_names WHERE spell_id IN (63802);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63802,'spell_brain_link_periodic_dummy');

-- Needed for Titanic Storm
-- Script for Target have Weakened Aura
DELETE FROM spell_script_names WHERE spell_id IN (64172);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64172,'spell_titanic_storm_targeting');

-- Condition because NPCs need this else no hit
DELETE FROM conditions WHERE SourceEntry = 64172;
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,64172,0,18,1,33988,0,0,'','Effekt only for Immortal Guardians');

-- Hodir Secound Aura Script
DELETE FROM spell_script_names WHERE spell_id IN (64174);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64174,'spell_hodir_protective_gaze');

-- Insane Death trigger on Remove
DELETE FROM spell_script_names WHERE spell_id IN (63120);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(63120,'spell_insane_death_effekt');

-- Deathray Effekt on Death Orb
DELETE FROM conditions WHERE SourceEntry IN (63882,63886);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,63882,0,18,1,33882,0,0,'','Effekt on Death Orb'),
(13,0,63886,0,18,1,33882,0,0,'','Effekt on Death Orb');

-- Correct Summon Position of Tentacle
DELETE FROM spell_script_names WHERE spell_id IN (64139,64143,64133);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64139,'spell_summon_tentacle_position'),
(64143,'spell_summon_tentacle_position'),
(64133,'spell_summon_tentacle_position');

-- Heal Trigger for Empowering Shadows
DELETE FROM spell_script_names WHERE spell_id IN (64466);
INSERT INTO spell_script_names (spell_id,Scriptname)
VALUES
(64466,'spell_empowering_shadows');

-- Create Val'anyr on Yogg-Saron
DELETE FROM conditions WHERE SourceEntry IN (64184);
INSERT INTO conditions
(SourceTypeOrReferenceId,SourceGroup,SourceEntry,ElseGroup,
 ConditionTypeOrReference,ConditionValue1,ConditionValue2,ConditionValue3,
 ErrorTextId,ScriptName,COMMENT)
VALUES
(13,0,64184,0,18,1,33288,0,0,'','Effekt on YoggSaron');

-- Missing Says Vision
DELETE FROM script_texts WHERE entry BETWEEN -1603360 AND -1603342;
INSERT INTO script_texts (`npc_entry`,`entry`,`content_default`,`sound`,`type`,`language`,`emote`,`comment`)
VALUES
(33436,-1603342,'Bad news sire.',15538,0,0,0,'Garona KingLlaneVision_Say1'),
(33436,-1603343,'The clans are united under Blackhand in this assault. They will stand together until Stormwind has fallen.',15539,0,0,0,'Garona KingLlaneVision_Say2'),
(33436,-1603344,'Gul\'dan is bringing up his warlocks by nightfall. Until then, the Blackrock clan will be trying to take the Eastern Wall.',15540,0,0,0,'Garona KingLlaneVision_Say3'),
(33288,-1603345,'A thousand deaths... or one murder.',15762,0,0,0,'YoggSaron KingLlaneVision_Say1'),
(33288,-1603346,'',15763,0,0,0,'YoggSaron KingLlianeVision_Say2'),
(33437,-1603347,'We will hold until the reinforcements come. As long as men with stout hearts are manning the walls and throne Stormwind will hold.',15585,0,0,0,'KingLlane KingLlaneVision_Say'),
(33436,-1603348,'The orc leaders agree with your assessment.',15541,0,0,0,'Garona KingLlaneVision_Say4'),
(33288,-1603349,'Your petty quarrels only make me stronger!',15764,0,0,0,'YoggSaron KingLlaneVision_Say3'),

(33441,-1603350,'Your resilience is admirable.',15598,0,0,0,'TheLichKing LichKingVision_Say1'),
(33442,-1603351,'Arrrrrrgh!',15470,1,0,0,'ImmolatedChampion LichKingVision_Say1'),
(33442,-1603352,'I\'m not afraid of you!',15471,0,0,0,'ImmolatedChampion LichKingVision_Say2'),
(33441,-1603353,'I will break you as I broke him.',15599,0,0,0,'TheLichKing LichKingVision_Say2'),
(33288,-1603354,'Yrr n\'lyeth... shuul anagg!',15766,0,0,0,'YoggSaron LichKingVision_Say1'),
(33288,-1603355,'He will learn... no king rules forever, only death is eternal!',15767,0,0,0,'YoggSaron LichKingVision_Say2'),

(33523,-1603356,'It is done... All have been given that which must be given. I now seal the Dragon Soul forever...',15631,0,0,0,'Neltharion DragonSoulVision_Say1'),
(33495,-1603357,'That terrible glow... should that be?',15702,0,0,0,'Ysera DragonSoulVision_Say'),
(33523,-1603358,'For it to be as it must, yes.',15632,0,0,0,'Neltharion DragonSoulVision_Say2'),
(33535,-1603359,'It is a weapon like no other. It must be like no other.',15610,0,0,0,'Malygos DragonSoulVision_Say'),
(33288,-1603360,'His brood learned their lesson before too long, you shall soon learn yours!',15765,0,0,0,'YoggSaron DragonSoulVision_Say1');

-- For Achievement In his House he waits dreaming
DELETE FROM achievement_criteria_data WHERE `type` = 18 AND criteria_id IN
(10321,10322,10323,10324,10325,10326);

INSERT INTO achievement_criteria_data (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10321,18,0,0,''),(10322,18,0,0,''),
(10323,18,0,0,''),(10324,18,0,0,''),
(10325,18,0,0,''),(10326,18,0,0,'');

DELETE FROM disables WHERE sourceType = 4 AND entry IN 
(10321,10322,10323,10324,10325,10326);


-- ##########################################################
-- Algalon
-- ##########################################################

-- For Achievement He Feeds on your Tears
DELETE FROM achievement_criteria_data WHERE `type` = 18 AND criteria_id IN
(10568,10570);

INSERT INTO achievement_criteria_data (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(10568,18,0,0,''),
(10570,18,0,0,'');

DELETE FROM disables WHERE sourceType = 4 AND entry IN 
(10568,10570);

-- spawn algalon
DELETE FROM `creature` WHERE `id`=32871;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('302616','32871','603','3','1','0','0','1632.36','-310.093','417.321','1.8445','604800','0','0','34862500','0','0','0','0','0','0');

-- set to friendly by default
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `flags_extra`=1 WHERE `entry` IN (32871,33070);

UPDATE `creature_template` SET `ScriptName`='npc_black_hole' WHERE `entry`=32953;
UPDATE `creature_template` SET `ScriptName`='npc_living_constellation' WHERE `entry`=33052;

-- spawn 'Celestial Planetarium Access'
DELETE FROM `gameobject` WHERE `id`= 194628;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES (400002, 194628, 603, 3, 1, 1649.49, -174.711, 427.257, 1.5708, 0, 0, 0, 0, 180, 0, 1);

UPDATE `gameobject_template` SET `data0`=0, `ScriptName`='go_planetarium_access' WHERE `entry`=194628;

DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN (62169,-64412);
INSERT INTO `spell_linked_spell` (`spell_trigger`,`spell_effect`,`type`,`comment`) VALUES
(64417,62169,2, 'Phase Punch - Trigger Black Hole Dot'),
(62168,62169,2, 'Black Hole - Trigger Black Hole Dot'),
(64417,-64412,1, 'Phase Punch - Remove Phase Punch');

UPDATE `gameobject` SET `phaseMask`=17 WHERE `id` IN (194910,194715,194148);

UPDATE `creature_template` SET `faction_A`=14, `faction_H`=14, `unit_flags`=6, `InhabitType`=7, `AIName`='SmartAI', `flags_extra`=130 WHERE `entry`=33104;
UPDATE `creature_template` SET `unit_flags`=512, `flags_extra`=130 WHERE `entry`=33105;
UPDATE `creature_template` SET `minlevel`=83, `maxlevel`=83 WHERE `entry` IN (33104,33070);

DELETE FROM `smart_scripts` WHERE `entryorguid`=33104;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(33104,0,0,0,1,0,100,3,4000,4000,0,0,11,62304,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Algalon Asteroid - Cast Cosmic Smash 10N'),
(33104,0,1,0,1,0,100,5,4000,4000,0,0,11,64597,2,0,0,0,0,1,0,0,0,0,0,0,0, 'Algalon Asteroid - Cast Cosmic Smash 25N');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (62304,64597,64996);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`) VALUES
(13,62304,18,1,33105),
(13,64597,18,1,33105),
(13,64996,18,1,34246);

DELETE FROM `spell_script_names` WHERE `spell_id` IN (62301,64598,62293,62295,62311,64596,64597,64445);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(62301, 'spell_cosmic_smash'),
(64598, 'spell_cosmic_smash'),
(62293, 'spell_cosmic_smash_summon_trigger'),
(62295, 'spell_cosmic_smash_summon_target'),
(62311, 'spell_cosmic_smash_dmg'),
(64596, 'spell_cosmic_smash_dmg'),
(64597, 'spell_cosmic_smash_missile_target'),
(64445, 'spell_remove_player_from_phase');

-- Add passive Flag to various Ulduar triggers
UPDATE creature_template SET unit_flags = unit_flags|512 WHERE entry IN (
33054, -- Thorim Trap Bunny
33500, -- Vezax Bunny
33575, -- Channel Stalker Freya
33661, -- Armsweep Stalker Kologarn
34188, -- Razorscale Devouring Flame Stalker
34189, -- Razorscale Devouring Flame Stalker (heroic)
34098, -- Auriaya Seeping Essence Stalker
34174  -- Auriaya Seeping Essence Stalker (heroic)
);

-- Remove NON_SELECTABLE from Clockwork Mechanic
UPDATE creature_template SET unit_flags = unit_flags &~ 33554432 WHERE entry = 34184;


DELETE FROM `spell_script_names` WHERE `spell_id` IN (63025,64233,63024,64234,63018,65121);
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(63024, 'spell_xt002_bomb_select_target'),
(64234, 'spell_xt002_bomb_select_target'),
(63018, 'spell_xt002_bomb_select_target'),
(65121, 'spell_xt002_bomb_select_target');
-- Junk Bot
UPDATE `creature_template` SET `difficulty_entry_1`=34114 WHERE `entry`=33855;
UPDATE `creature_template` SET `faction_A`=16, `faction_H`=16, `dmg_multiplier`=15 WHERE `entry`=34114;

?DELETE FROM `conditions` WHERE `SourceEntry`=62834 AND `SourceTypeOrReferenceId`=13 AND `ConditionTypeOrReference`=18;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,62834,18,1,0, 'Boombot Boom - Player target'),
(13,62834,18,1,33343, 'Boombot Boom - Scrapbot target'),
(13,62834,18,1,33344, 'Boombot Boom - Pummeler target'),
(13,62834,18,1,33346, 'Boombot Boom - Boombot target'),
(13,62834,18,1,33329, 'Boombot Boom - Heart of the Deconstructor target'),
(13,62834,18,1,33293, 'Boombot Boom - XT-002 target');


-- set 25N chopper spells
UPDATE `creature_template` SET `spell1`=62974, `spell2`=62286, `spell3`=62299, `spell4`=64660 WHERE `entry`=34045;

-- longer steelforged defender respawn timer (should not be DB spawned at all?)
UPDATE `creature` SET `spawntimesecs`=1800 WHERE `id`=33236;


-- Flame Leviathan (10) (0 Tower)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33113 AND `item`=47241;
-- Flame Leviathan (25) (0 Tower)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=34003 AND `item`=47241;

-- Ignis (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33118 AND `item`=47241;
-- Ignis (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33190 AND `item`=47241;

-- Razorscale (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33186 AND `item`=47241;
-- Razorscale (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33724 AND `item`=47241;

-- XT-002 (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33293 AND `item`=47241;
DELETE FROM `reference_loot_template` WHERE `entry`=34121 AND `lootmode`=2;
DELETE FROM `creature_loot_template` WHERE `entry`=33293 AND `lootmode`=2;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('33293','45624','100','2','0','1','1'),
('33293','45867','0','2','1','1','1'),
('33293','45868','0','2','1','1','1'),
('33293','45869','0','2','1','1','1'),
('33293','45870','0','2','1','1','1'),
('33293','45871','0','2','1','1','1');
-- XT-002 (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33885 AND `item`=47241;

-- Stormcaller Brundir (10)
UPDATE `creature_loot_template` SET `item`=40753, `mincountOrRef`=2, `maxcount`=2 WHERE `entry`=32857 AND `item`=47241;
-- Stormcaller Brundir (25)
UPDATE `creature_loot_template` SET `item`=45624, `mincountOrRef`=2, `maxcount`=2 WHERE `entry`=33694 AND `item`=47241;

-- Runemaster Molgeim (10)
UPDATE `creature_loot_template` SET `item`=40753, `mincountOrRef`=2, `maxcount`=2 WHERE `entry`=32927 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=32927 AND `item`=45624;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('32927','45624','100','1','0','1','1');
-- Runemaster Molgeim (25)
UPDATE `creature_loot_template` SET `item`=45624, `mincountOrRef`=3, `maxcount`=3 WHERE `entry`=33692 AND `item`=47241;

-- Steelbreaker (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=32867 AND `item`=47241;
DELETE FROM `creature_loot_template` WHERE `entry`=32867 AND `item`=45624;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('32867','45624','100','1','0','2','2');
-- Steelbreaker (25)
UPDATE `creature_loot_template` SET `item`=45624, `mincountOrRef`=3, `maxcount`=3 WHERE `entry`=33693 AND `item`=47241;

-- Auriaya (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33515 AND `item`=47241;
-- Auriaya (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=34175 AND `item`=47241;

-- Kologarn (10)
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27061 AND `item`=47241;
-- Kologarn (25)
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=26929 AND `item`=47241;

-- Freya (25)
DELETE FROM `reference_loot_template` WHERE `entry` IN (12020,12021,12022);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- t8.5
('12020','45653','0','1','1','1','1'),
('12020','45654','0','1','1','1','1'),
('12020','45655','0','1','1','1','1'),
-- 1 elder alive emblems
('12021','45624','100','2','0','1','1'),
-- 2 elder alive emblems
('12022','45624','100','4','0','1','1'),
('12022','45087','100','4','0','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (27079,26962);
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
-- Freya (25) normal
('27079','1','100','1','0','1','1'),
('27079','2','100','1','0','-34154','1'),
('27079','3','100','1','0','-12020','2'),
('27079','4','100','2','0','-12021','1'),
('27079','5','100','4','0','-12022','1'),
('27079','45038','18','1','0','1','1'),
('27079','45087','100','1','0','1','1'),
('27079','45479','0','1','1','1','1'),
('27079','45480','0','1','1','1','1'),
('27079','45481','0','1','1','1','1'),
('27079','45482','0','1','1','1','1'),
('27079','45483','0','1','1','1','1'),
('27079','45624','100','1','0','1','1'),
('27079','46110','100','1','0','1','1'),
-- Freya (25) hard
('26962','1','100','1','0','-34154','1'),
('26962','2','100','1','0','-12020','2'),
('26962','45038','18','1','0','1','1'),
('26962','45087','100','1','0','3','3'),
('26962','45479','0','1','1','1','1'),
('26962','45480','0','1','1','1','1'),
('26962','45481','0','1','1','1','1'),
('26962','45482','0','1','1','1','1'),
('26962','45483','0','1','1','1','1'),
('26962','45484','0','2','2','1','1'),
('26962','45485','0','2','2','1','1'),
('26962','45486','0','2','2','1','1'),
('26962','45487','0','2','2','1','1'),
('26962','45488','0','2','2','1','1'),
('26962','45613','0','2','2','1','1'),
('26962','45624','100','1','0','5','5'),
('26962','45814','-100','1','0','1','1'),
('26962','46110','100','1','0','1','1');

-- Mimiron (10) normal
UPDATE `gameobject_template` SET `size`=1.5 WHERE `entry`=194956;
DELETE FROM `reference_loot_template` WHERE `entry`=34129 AND `lootmode`=2;
DELETE FROM `gameobject_loot_template` WHERE `entry`=27085 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27085 AND `item`=47241;
-- Mimiron (10) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=27086;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('27086','1','100','1','0','-34129','1'),
('27086','45982','0','1','2','1','1'),
('27086','45988','0','1','2','1','1'),
('27086','45989','0','1','2','1','1'),
('27086','45990','0','1','2','1','1'),
('27086','45993','0','1','2','1','1'),
('27086','45647','0','1','1','1','1'),
('27086','45648','0','1','1','1','1'),
('27086','45649','0','1','1','1','1'),
('27086','45787','-100','1','0','1','1'),
('27086','40753','100','1','0','1','1'),
('27086','45624','100','1','0','1','1');

-- Mimiron (25) normal
DELETE FROM `gameobject_loot_template` WHERE `entry`=26963 AND (`lootmode`=2 OR `groupid`=3);
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=26963 AND `item`=47241;

DELETE FROM `reference_loot_template` WHERE `entry`=34180;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34180','45641','0','1','1','1','1'),
('34180','45642','0','1','1','1','1'),
('34180','45643','0','1','1','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry`=26963 AND `mincountOrRef`=-34180;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26963','2','100','1','0','-34180','2');

-- Mimiron (25) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=26967;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26967','1','10','1','0','-34154','1'),
('26967','2','100','1','0','-34180','2'),
('26967','45038','18','1','0','1','1'),
('26967','45087','75','1','0','1','1'),
('26967','45489','0','1','1','1','1'),
('26967','45490','0','1','1','1','1'),
('26967','45491','0','1','1','1','1'),
('26967','45492','0','1','1','1','1'),
('26967','45493','0','1','1','1','1'),
('26967','45494','0','1','2','1','1'),
('26967','45495','0','1','2','1','1'),
('26967','45496','0','1','2','1','1'),
('26967','45497','0','1','2','1','1'),
('26967','45620','0','1','2','1','1'),
('26967','45624','100','1','0','2','2'),
('26967','45663','0','1','2','1','1'),
('26967','45816','-100','1','0','1','1');

-- Thorim (10) normal
UPDATE `gameobject_template` SET `faction`=0, `flags`=0 WHERE `entry`=194312;
UPDATE `gameobject_template` SET `size`=3, `data1`=40000 WHERE `entry`=194315;
DELETE FROM `reference_loot_template` WHERE `entry`=34130 AND `lootmode`=2;
DELETE FROM `gameobject_loot_template` WHERE `entry`=27073 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27073 AND `item`=47241;
-- Thorim (10) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=27074;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('27074','1','100','1','0','-34130','1'),
('27074','45928','0','1','2','1','1'),
('27074','45929','0','1','2','1','1'),
('27074','45930','0','1','2','1','1'),
('27074','45931','0','1','2','1','1'),
('27074','45933','0','1','2','1','1'),
('27074','45659','0','1','1','1','1'),
('27074','45660','0','1','1','1','1'),
('27074','45661','0','1','1','1','1'),
('27074','45784','-100','1','0','1','1'),
('27074','40753','100','1','0','1','1'),
('27074','45624','100','1','0','1','1');

-- Thorim (25) normal
DELETE FROM `reference_loot_template` WHERE `entry`=34181;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34181','45638','0','1','1','1','1'),
('34181','45639','0','1','1','1','1'),
('34181','45640','0','1','1','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry`=40000;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('40000','1','10','1','0','-34154','1'),
('40000','2','100','1','0','-34181','2'),
('40000','45038','18','1','0','1','1'),
('40000','45087','75','1','0','1','1'),
('40000','45463','0','1','1','1','1'),
('40000','45466','0','1','1','1','1'),
('40000','45467','0','1','1','1','1'),
('40000','45468','0','1','1','1','1'),
('40000','45469','0','1','1','1','1'),
('40000','45624','100','1','0','1','1');

-- Thorim (25) hard
DELETE FROM `gameobject_loot_template` WHERE `entry`=26955;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26955','1','10','1','0','-34154','1'),
('26955','2','100','1','0','-34181','2'),
('26955','45038','18','1','0','1','1'),
('26955','45087','75','1','0','1','1'),
('26955','45463','0','1','1','1','1'),
('26955','45466','0','1','1','1','1'),
('26955','45467','0','1','1','1','1'),
('26955','45468','0','1','1','1','1'),
('26955','45469','0','1','1','1','1'),
('26955','45470','0','1','2','1','1'),
('26955','45471','0','1','2','1','1'),
('26955','45472','0','1','2','1','1'),
('26955','45473','0','1','2','1','1'),
('26955','45474','0','1','2','1','1'),
('26955','45570','0','1','2','1','1'),
('26955','45624','100','1','0','2','2'),
('26955','45817','-100','1','0','1','1');

-- Hodir (10) normal
UPDATE `gameobject_template` SET `flags`=16 WHERE `entry`=194201;
UPDATE `gameobject_loot_template` SET `item`=40753 WHERE `entry`=27068 AND `item`=47241;
-- Hodir (10) hard
UPDATE `gameobject_loot_template` SET `lootmode`=1 WHERE `entry`=27069 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=27069 AND `item`=47241;

-- Hodir (25) normal
DELETE FROM `reference_loot_template` WHERE `entry`=34182;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('34182','45632','0','1','1','1','1'),
('34182','45633','0','1','1','1','1'),
('34182','45634','0','1','1','1','1');

DELETE FROM `gameobject_loot_template` WHERE `entry`=26946;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('26946','1','10','1','0','-34154','1'),
('26946','2','100','1','0','-34182','2'),
('26946','45038','8','1','0','1','1'),
('26946','45087','75','1','0','1','1'),
('26946','45450','0','1','1','1','1'),
('26946','45451','0','1','1','1','1'),
('26946','45452','0','1','1','1','1'),
('26946','45453','0','1','1','1','1'),
('26946','45454','0','1','1','1','1'),
('26946','45624','100','1','0','1','1');

-- Hodir (25) hard
UPDATE `gameobject_loot_template` SET `lootmode`=1 WHERE `entry`=26950 AND `lootmode`=2;
UPDATE `gameobject_loot_template` SET `item`=45624 WHERE `entry`=26950 AND `item`=47241;

-- Vezax (10)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33271 AND `item`=47241;
DELETE FROM `reference_loot_template` WHERE `entry`=34131 AND `lootmode`=2;
DELETE FROM `creature_loot_template` WHERE `entry`=33271 AND `lootmode`=2;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) VALUES
('33271','45624','100','2','0','1','1'),
('33271','46032','0','2','1','1','1'),
('33271','46033','0','2','1','1','1'),
('33271','46034','0','2','1','1','1'),
('33271','46035','0','2','1','1','1'),
('33271','46036','0','2','1','1','1');
-- Vezax (25)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33449 AND `item`=47241;
-- Yogg-Saron (10) (4 Keeper)
UPDATE `creature_loot_template` SET `item`=40753 WHERE `entry`=33288 AND `item`=47241;
-- Yogg-Saron (25) (4 Keeper)
UPDATE `creature_loot_template` SET `item`=45624 WHERE `entry`=33955 AND `item`=47241;

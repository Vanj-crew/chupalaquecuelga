-- [DK]Anti-Magic_Zone_spell.sql
-- Dummie invisible para players
UPDATE creature_template SET flags_extra = 128 WHERE entry = 28306;

-- [DK]Bloodworm.sql
-- Bloodworm AI
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 28017;
INSERT INTO `creature_ai_scripts` VALUES 
(2801700, 28017, 4, 0, 100, 0, 0, 0, 0, 0, 11, 50453, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodworm - Health Leech');

-- [DK]Cinderglacier.sql
-- Cinderglacier
UPDATE `spell_proc_event` SET `SpellFamilyName` = '15', `SpellFamilyMask0` = 0x42002, `SpellFamilyMask1` = 0x6, `SpellFamilyMask2` = 0x80 WHERE `entry` = 53386;

-- [Hunter]Explosive_Shot_bonus_data.sql
-- Fix Explosive shot from spd scaling
DELETE FROM `spell_bonus_data` WHERE `entry`='53352';
INSERT INTO `spell_bonus_data`(`entry`,`direct_bonus`,`dot_bonus`,`ap_bonus`,`ap_dot_bonus`,`comments`) VALUES ( '53352','0','0','0.14','0','Hunter - Explosive Shot (triggered)');

-- [Paladin]Blessed_Life.sql
DELETE FROM `spell_dbc` WHERE `id` = 31934;
INSERT INTO `spell_dbc` (`Id`,`CastingTimeIndex`,`ProcFlags`,`ProcChance`,`ProcCharges`,`DurationIndex`,`RangeIndex`,`Effect1`,`EffectBasePoints1`,`EffectImplicitTargetA1`,`EffectApplyAuraName1`,`EffectMiscValue1`,`SpellFamilyName`,`Comment`) VALUES
(31934,1,1048576,100,1,21,1,6,-50,1,87,127,10,'Blessed Life Helper (SERVERSIDE)');

-- [Paladin]Divine_Storrm.sql
DELETE FROM `spell_dbc` WHERE `Id` IN ('199997');
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
('199997','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','1','0','-1','0','0','6','0','0','0','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','10','0','0','0','0','0','0','0','0','0','0','0','Divine Storm Helper (SERVERSIDE)');
DELETE FROM `spell_proc_event` WHERE `entry` IN ('199997');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('199997','0','10','0','131072','0','16','0','0','100','0');
DELETE FROM `spell_bonus_data` WHERE `entry` IN ('54172');
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `dot_bonus`, `ap_bonus`, `ap_dot_bonus`, `comments`) VALUES
('54172','0','0','0','0','Paladin - Divine Storm');

-- [Paladin]Improved_Concetration_Aura_Devotion_Sanctified_Retribution.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = -31869;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`)  
VALUES (-31869,-63531,0,'Sanctified Retribution at talent reset');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-20254,-20255,-20256);
DELETE FROM `spell_linked_spell` WHERE `spell_effect` IN (-63510, 63510);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) 
VALUES
(-20254,-63510,0,'Improved Concentration Aura at talent reset'),
(-20255,-63510,0,'Improved Concentration Aura at talent reset'),
(-20256,-63510,0,'Improved Concentration Aura at talent reset');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` IN (-20138,-20139,-20140);
INSERT INTO `spell_linked_spell`(`spell_trigger`, `spell_effect`, `type`, `comment`) 
 VALUES
(-20138,-63514,0,'Improved Devotion Aura at talent reset'),
(-20139,-63514,0,'Improved Devotion Aura at talent reset'),
(-20140,-63514,0,'Improved Devotion Aura at talent reset');

UPDATE `spell_group` SET `spell_id` = 63514 WHERE `id` = 1095;

-- [Priest]Holy_Concentration.sql
UPDATE `spell_proc_event` SET `SpellFamilyMask2`=0x00001000 WHERE `entry` IN (34753,34859,34860);

-- [Rogue]Master_Poisoner.sql
DELETE FROM `spell_dbc` WHERE `Id` IN ('45176');
INSERT INTO `spell_dbc` (`Id`, `Dispel`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `Stances`, `StancesNot`, `Targets`, `CastingTimeIndex`, `AuraInterruptFlags`, `ProcFlags`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `RangeIndex`, `StackAmount`, `EquippedItemClass`, `EquippedItemSubClassMask`, `EquippedItemInventoryTypeMask`, `Effect1`, `Effect2`, `Effect3`, `EffectDieSides1`, `EffectDieSides2`, `EffectDieSides3`, `EffectRealPointsPerLevel1`, `EffectRealPointsPerLevel2`, `EffectRealPointsPerLevel3`, `EffectBasePoints1`, `EffectBasePoints2`, `EffectBasePoints3`, `EffectMechanic1`, `EffectMechanic2`, `EffectMechanic3`, `EffectImplicitTargetA1`, `EffectImplicitTargetA2`, `EffectImplicitTargetA3`, `EffectImplicitTargetB1`, `EffectImplicitTargetB2`, `EffectImplicitTargetB3`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectRadiusIndex3`, `EffectApplyAuraName1`, `EffectApplyAuraName2`, `EffectApplyAuraName3`, `EffectAmplitude1`, `EffectAmplitude2`, `EffectAmplitude3`, `EffectMultipleValue1`, `EffectMultipleValue2`, `EffectMultipleValue3`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectMiscValue3`, `EffectMiscValueB1`, `EffectMiscValueB2`, `EffectMiscValueB3`, `EffectTriggerSpell1`, `EffectTriggerSpell2`, `EffectTriggerSpell3`, `EffectSpellClassMaskA1`, `EffectSpellClassMaskA2`, `EffectSpellClassMaskA3`, `EffectSpellClassMaskB1`, `EffectSpellClassMaskB2`, `EffectSpellClassMaskB3`, `EffectSpellClassMaskC1`, `EffectSpellClassMaskC2`, `EffectSpellClassMaskC3`, `MaxTargetLevel`, `SpellFamilyName`, `SpellFamilyFlags1`, `SpellFamilyFlags2`, `SpellFamilyFlags3`, `MaxAffectedTargets`, `DmgClass`, `PreventionType`, `DmgMultiplier1`, `DmgMultiplier2`, `DmgMultiplier3`, `AreaGroupId`, `SchoolMask`, `Comment`) VALUES
('45176','0','0','0','0','0','0','0','0','0','0','0','1','0','0','0','0','1','1','1','0','1','0','-1','0','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','0','6','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','8','0','0','0','0','0','0','0','0','0','0','1','Master Poisoner Trigger (SERVERSIDE)');
DELETE FROM `spell_proc_event` WHERE `entry` IN ('31226', '31227', '58410');
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
('31226','0','8','0','524288','0','0','0','0','0','0'), -- Master Poisoner (Rank 1)
('31227','0','8','0','524288','0','0','0','0','0','0'), -- Master Poisoner (Rank 2)
('58410','0','8','0','524288','0','0','0','0','0','0'); -- Master Poisoner (Rank 3)

-- [Spell_Generic]Blade_Warding_proc.sql
-- Blade Warding proc
UPDATE `spell_proc_event` SET `Cooldown` = '0' WHERE `entry` = 64440;

-- Spell_Bonus_Exploit_Fix.sql
-- Druid
UPDATE `spell_bonus_data` SET `direct_bonus` = 0, `dot_bonus` = 0 WHERE `entry` IN (779,1822,60089);
DELETE FROM `spell_bonus_data` WHERE `entry` IN (1079,9007,22568);
INSERT INTO `spell_bonus_data` VALUES
(1079,0,0,-1,-1,'Druid - Rip'),
(9007,0,0,-1,-1,'Druid - Pounce Bleed'),
(22568,0,0,-1,-1,'Druid - Ferocious Bite');

-- Hunter
UPDATE `spell_bonus_data` SET `direct_bonus` = 0, `dot_bonus` = 0 WHERE `entry` IN (3044,3674,53352,13812,13797,1978,42243);
UPDATE `spell_bonus_data` SET `ap_dot_bonus` = 0.1 WHERE `entry` = 13812;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (24131,53353);
INSERT INTO `spell_bonus_data` VALUES
(24131,0,0,-1,-1,'Hunter - Wyvern Sting (triggered)'),
(53353,0,0,-1,-1,'Hunter - Chimera Shot (Serpent)');
DELETE FROM `spell_ranks` WHERE `first_spell_id` = 24131;
INSERT INTO `spell_ranks` VALUES
(24131,24131,1),
(24131,24134,2),
(24131,24135,3),
(24131,27069,4),
(24131,49009,5),
(24131,49010,6);

-- Rogue
UPDATE `spell_bonus_data` SET `direct_bonus` = 0, `dot_bonus` = 0 WHERE `entry` IN (2818,2819,11353,11354,25349,26968,27187,57969,57970);

-- [Rogue]Killin_spree.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 51690;
INSERT INTO `spell_linked_spell` VALUES (51690,61851,0,'Killing Spree');

-- [Rogue]Blade_Twisting.sql
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 0 WHERE `entry` IN (31124,31126);

-- [Hunter]Wyvern_Sting.sql
DELETE FROM `spell_linked_spell` WHERE `comment` = 'Wyvern Sting';

-- [Priest]Vampiric_Touch.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 64085;
INSERT INTO `spell_bonus_data` VALUES
(64085,1.2,-1,-1,-1,"Priest - Vampiric Touch (Dispelled)");

-- [Rogue]Quick_Recovery.sql
UPDATE `spell_proc_event` SET `procEx`=`procEx`|0x00000030 WHERE `entry` IN (31244,31245);

-- [Spell_Generic]Blade_Warding_proc.sql
-- Blade Warding proc
UPDATE `spell_proc_event` SET `Cooldown` = '0' WHERE `entry` = 64440;

-- Ancestral Healing and Inspiration.sql
UPDATE `spell_group` SET `spell_id` = 14893 WHERE `id` = 1097;
UPDATE `spell_group` SET `spell_id` = 16177 WHERE `id` = 1098;

-- blessing_of_sanctuary.sql
DELETE FROM `spell_dbc` WHERE `id` = 20912;
INSERT INTO `spell_dbc` (`Id`,`CastingTimeIndex`,`DurationIndex`,`RangeIndex`,`Effect1`,`EffectBasePoints1`,`EffectImplicitTargetA1`,`EffectApplyAuraName1`,`EffectMiscValue1`,`SpellFamilyName`,`Comment`) VALUES
(20912,1,21,1,6,-3,1,87,127,10,'Blessing of Sanctuary Helper (SERVERSIDE)');
-- Blessing of Sanctuary vs Vigilance
UPDATE `spell_group` SET `spell_id` = 68066 WHERE `id` = 1091 and `spell_id` = 47930;
UPDATE `spell_group` SET `spell_id` = 20912 WHERE `id` = 1092 and `spell_id` = 20911;

-- Blood Boil.sql
UPDATE `spell_bonus_data` SET `ap_bonus` = 0.06 WHERE `entry` = 48721;
DELETE FROM `spell_bonus_data` WHERE `entry` = 49941;

-- Deadly Poison.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 2818;
INSERT INTO `spell_bonus_data` VALUES
(2818,-1,-1,-1,0.03,'Rogue - Deadly Poison Rank 1($AP*0.12 / number of ticks)');
DELETE FROM `spell_script_names` WHERE `spell_id` = -2818;
INSERT INTO `spell_script_names` VALUES
(-2818,'spell_rog_deadly_poison');

-- Death Coil.sql
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.2143 WHERE `entry` = 6789;

-- desolation.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (66799,66814,66815,66816,66817);
INSERT INTO `spell_proc_event` (`entry`,`SpellFamilyName`,`SpellFamilyMask0`) VALUES
(66799,15,0x00400000),
(66814,15,0x00400000),
(66815,15,0x00400000),
(66816,15,0x00400000),
(66817,15,0x00400000);

-- Divine Hymn.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 64844;
INSERT INTO `spell_bonus_data` VALUES 
(64844, 0.5483, -1, -1, -1, 'Priest - Divine Hymn');

-- Empowered Imp.sql
UPDATE `spell_proc_event` set `procFlags` = 0x00010004 WHERE `entry` = 54278;

-- enchant Blood Draining.sql
DELETE FROM `spell_proc_event` WHERE `entry` = 64568;
UPDATE `spell_proc_event` SET `cooldown` = 10 WHERE `entry` = 64571;

-- Focus Magic.sql
DELETE FROM `spell_group` WHERE `id` = 1044 OR `spell_id` = -1044;

-- Glyph of Flash of Light.sql
DELETE FROM `spell_proc_event` WHERE `entry` = 54936;

-- glyph_of_shadowflame.sql
DELETE FROM `spell_linked_spell` where `spell_trigger` IN (-47960, -61291);
INSERT INTO `spell_linked_spell` VALUES
(-47960,-63311, 0, 'Glyph of Shadowflame Rank 1 (Dispel)'),
(-61291,-63311, 0, 'Glyph of Shadowflame Rank 2 (Dispel)');

-- glyph_of_succubus.sql
DELETE FROM `spell_proc_event` WHERE entry = 56250;
INSERT INTO `spell_proc_event` values
(56250,0,5,0,0x10000000,0,0x10000,0,0,0,0);

-- hand_of_reckoning.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 67485;
INSERT INTO `spell_bonus_data` VALUES
(67485, 0, -1, 0.5, -1, 'Paladin - Hand of Reckoning triggered');

-- healing_stream_totem.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 52042;

-- heart_of_the_crusader.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN (20335,20336,20337);
INSERT INTO `spell_proc_event` VALUES
(20335,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0.000000,100.000000,0),
(20336,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0.000000,100.000000,0),
(20337,0x00,10,0x00800000,0x00000000,0x00000008,0x00000100,0x00000000,0.000000,100.000000,0);

-- heroic_presence.sql
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 2007;
INSERT INTO `spell_group_stack_rules` VALUES (2007, 1);
DELETE FROM `spell_group` WHERE `id` = 2007;
INSERT INTO `spell_group` VALUES (2007, 6562),(2007, 28878);

-- hot_streak.sql
UPDATE `spell_proc_event` SET `SpellFamilyMask1`=`SpellFamilyMask1`|0x00010000 WHERE `entry` IN (44445,44446,44448);

-- Improved Water Shield.sql
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.473 WHERE `entry` = 974;

-- improved_health_funel.sql
DELETE FROM `spell_ranks` WHERE `first_spell_id` = 60955;
INSERT INTO `spell_ranks` VALUES
(60955, 60955, 1),
(60955, 60956, 2);

-- infernal.sql
DELETE FROM `spell_bonus_data` WHERE `entry` = 20153;
INSERT INTO `spell_bonus_data` VALUES
(20153,1,-1,-1,-1,'Warlock - Immolation (Infernal)');
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 89;
INSERT INTO `creature_ai_scripts` VALUES
(8900, 89, 7, 0, 100, 0, 0, 0, 0, 0, 11, 19483, 0, 48, 0, 0, 0, 0, 0, 0, 0, 0, 'Inferno - Immolation');

-- lock_and_load.sql
DELETE FROM `conditions` WHERE `SourceEntry` = 56453;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`Comment`) VALUES
(17,56453,11,67544,'Lock and Load - Lock and Load Marker');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 56453;
INSERT INTO `spell_linked_spell` VALUES
(56453,67544,0,'Lock and Load Marker');

-- mana_regen_bufs_stack.sql
DELETE FROM `spell_group` WHERE `id` IN (2005,2006);
INSERT INTO `spell_group` VALUES
(2005,5677),(2006,-1005),(2006,-2005);
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 2006;
INSERT INTO `spell_group_stack_rules` VALUES (2006,1);

-- Master of Elements.sql
UPDATE `spell_proc_event` SET `SchoolMask`=`SchoolMask`|0x40 WHERE `entry` IN (29074,29075,29076);

-- nature_grasp.sql
DELETE FROM `spell_proc_event` WHERE `entry` IN
(16689,16810,16811,16812,16813,17329,27009,53312);
INSERT INTO `spell_proc_event` (`entry`,`cooldown`) VALUES
(16689,2),(16810,2),(16811,2),(16812,2),
(16813,2),(17329,2),(27009,2),(53312,2);

-- Omen of Clarity.sql
UPDATE `spell_proc_event` SET `procEx`=0x0010000 WHERE `entry` = 16864;

-- pct_dmg_auras_stack.sql
DELETE FROM `spell_group` WHERE `id` < 2018 and `id` > 2010;
INSERT INTO `spell_group` VALUES
(2011,49016), -- Hysteria
(2012,57933), -- Tricks of the Trade
-- 12880
(2013,12292), -- Death Wish
(2014,12042), -- Arcane Power
-- 48391
(2015,34471), -- The Beast Within
(2016,31884), -- Avenging Wrath
(2017,-2011),
(2017,-2012),
(2017,-2013),
(2017,-2014),
(2017,-2015),
(2017,-2016);
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 2017;
INSERT INTO `spell_group_stack_rules` VALUES (2017,1);
DELETE FROM `spell_group` WHERE `spell_id` IN (57386,-2010);
INSERT INTO `spell_group` VALUES (2010,57386),(1033,-2010);
DELETE FROM `spell_group` WHERE `spell_id` IN (8042,-2009);
INSERT INTO `spell_group` VALUES (2009,8042),(1064,-2009);
DELETE FROM `spell_group` WHERE `spell_id` IN (67,-2008);
INSERT INTO `spell_group` VALUES (2008,67),(1079,-2008);

-- scent_of_blood.sql
INSERT INTO `spell_proc_event` (`entry`,`procEx`) VALUES
(49004,0x00000033),
(49508,0x00000033),
(49509,0x00000033);

-- Seal of Vengeance.sql
DELETE FROM `spell_proc_event` WHERE `entry` = 31801;

-- Seed of Corruption.sql
UPDATE `spell_bonus_data` SET `direct_bonus` = -1 WHERE `entry` = 27243;
DELETE FROM `spell_bonus_data` WHERE `entry` = 27285;
INSERT INTO `spell_bonus_data` VALUES (27285, 0.2129, -1, -1, -1,'Seed of Corruption Proc');
DELETE FROM `spell_ranks` WHERE `first_spell_id` = 27285;
INSERT INTO `spell_ranks` VALUES
(27285, 27285, 1),
(27285, 47833, 2),
(27285, 47834, 3);

-- Sentry Totem.sql
DELETE FROM `spell_dbc` WHERE `id` IN (6494,6496);
INSERT INTO `spell_dbc` (`Id`,`CastingTimeIndex`,`DurationIndex`,`RangeIndex`,`Effect1`,`EffectBasePoints1`,`EffectImplicitTargetA1`,`EffectImplicitTargetB1`,`EffectApplyAuraName1`,`SpellFamilyName`,`Comment`) VALUES
(6494,1,5,1,6,1,1,27,4,11,'Sentry Totem Helper 1 (SERVERSIDE)'),
(6496,1,5,1,6,1,25,0,1,11,'Sentry Totem Helper 2 (SERVERSIDE)');
UPDATE `creature_template` SET `spell1` = 6494 WHERE `entry` = 3968;
DELETE FROM `conditions` WHERE `SourceEntry` = 6196;
INSERT INTO `conditions` VALUES
(17,0,6196,0,11,6495,1,0,24,'','Far Sight - Sentry Totem');

-- Shadow Sight.sql
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 34709;
INSERT INTO `spell_linked_spell` VALUES
(34709,-1784,1,'Shadow Sight - Stealth'),
(34709,-5215,1,'Shadow Sight - Prowl');

-- spell_aura_damage_shield.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (467,7294);
INSERT INTO `spell_bonus_data` VALUES
(467,0.033,-1,-1,-1,'Druid - Thorns'),
(7294,0.033,-1,-1,-1,'Paladin - Retribution Aura');

-- Spell_Bonus_Exploit_Fix.sql
-- Druid
UPDATE `spell_bonus_data` SET `direct_bonus` = 0, `dot_bonus` = 0 WHERE `entry` IN (779,1822,60089);
DELETE FROM `spell_bonus_data` WHERE `entry` IN (1079,9007,22568);
INSERT INTO `spell_bonus_data` VALUES
(1079,0,0,-1,-1,'Druid - Rip'),
(9007,0,0,-1,-1,'Druid - Pounce Bleed'),
(22568,0,0,-1,-1,'Druid - Ferocious Bite');
-- Hunter
UPDATE `spell_bonus_data` SET `direct_bonus` = 0, `dot_bonus` = 0 WHERE `entry` IN (3044,3674,53352,13812,13797,1978,42243);
UPDATE `spell_bonus_data` SET `ap_dot_bonus` = 0.1 WHERE `entry` = 13812;
DELETE FROM `spell_bonus_data` WHERE `entry` IN (24131,53353);
INSERT INTO `spell_bonus_data` VALUES
(24131,0,0,-1,-1,'Hunter - Wyvern Sting (triggered)'),
(53353,0,0,-1,-1,'Hunter - Chimera Shot (Serpent)');
DELETE FROM `spell_ranks` WHERE `first_spell_id` = 24131;
INSERT INTO `spell_ranks` VALUES
(24131,24131,1),
(24131,24134,2),
(24131,24135,3),
(24131,27069,4),
(24131,49009,5),
(24131,49010,6);
-- Rogue
UPDATE `spell_bonus_data` SET `direct_bonus` = 0, `dot_bonus` = 0 WHERE `entry` IN (2818,2819,11353,11354,25349,26968,27187,57969,57970);

-- spirit_wolf_leap.sql
DELETE FROM `spell_script_names` WHERE `spell_id` = -58861;
INSERT INTO `spell_script_names` VALUES (-58861, 'spell_sha_bash');

-- starfall.sql
DELETE FROM `spell_bonus_data` WHERE `entry` IN (50294,53188,53189,53190,50288,53191,53194,53195);
INSERT INTO `spell_bonus_data` VALUES
(50288,0.3,-1,-1,-1,'Druid - Starfall (DIRECT)'),
(50294,0.13,-1,-1,-1,'Druid - Starfall (AOE)');

-- warrior_enrage_stack.sql
DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (12880,57518,57514);
INSERT INTO `spell_ranks` VALUES
(12880,12880,1),
(12880,14201,2),
(12880,14202,3),
(12880,14203,4),
(12880,14204,5),
(57514,57514,1),
(57514,57516,2),
(57518,57518,1),
(57518,57519,2),
(57518,57520,3),
(57518,57521,4),
(57518,57522,5);
DELETE FROM `spell_group` WHERE `id` = 2004;
INSERT INTO `spell_group` VALUES
(2004,12880),
(2004,57514),
(2004,57518);
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = 2004;
INSERT INTO `spell_group_stack_rules` VALUES
(2004,1);






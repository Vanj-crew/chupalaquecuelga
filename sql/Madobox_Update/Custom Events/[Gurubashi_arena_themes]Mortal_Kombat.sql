DELETE FROM `creature_template` WHERE `entry` IN (151000, 151001, 151002, 151003);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `WDBVerified`) VALUES
('151000','0','0','0','0','0','4877','0','0','0','MK Arena Master',NULL,NULL,'0','80','80','0','35','35','1','1','1.14286','1.5','0','4','5','0','30','1','2000','0','1','0','0','0','0','0','0','0','2','3','100','7','0','38','38','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2','7','','1','3','1','1','1','0','752','0','0','0','0','0','100','1','0','0','0','mk_arena_master',NULL),
('151001','0','0','0','0','0','11686','0','0','0','Damage Bonus','Increase Damage Done',NULL,'0','80','80','0','16','16','0','1','1.14286','1','0','4','5','0','30','1','2000','0','1','0','0','0','0','0','0','0','2','3','100','7','0','38','38','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2','7','','1','3','1','1','1','0','752','0','0','0','0','0','100','1','0','0','0','npc_mk_bonus',NULL),
('151002','0','0','0','0','0','11686','0','0','0','Mana Bonus','Increase Mana',NULL,'0','80','80','0','16','16','0','1','1.14286','1','0','4','5','0','30','1','2000','0','1','0','0','0','0','0','0','0','2','3','100','7','0','38','38','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2','7','','1','3','1','1','1','0','752','0','0','0','0','0','100','1','0','0','0','npc_mk_bonus',NULL),
('151003','0','0','0','0','0','11686','0','0','0','Health Bonus','Restore Health',NULL,'0','80','80','0','16','16','0','1','1.14286','1','0','4','5','0','30','1','2000','0','1','0','0','0','0','0','0','0','2','3','100','7','0','38','38','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','2','7','','1','3','1','1','1','0','752','0','0','0','0','0','100','1','0','0','0','npc_mk_bonus',NULL);

DELETE FROM `creature` WHERE `id` = '151000';
INSERT INTO `creature` VALUES (NULL,151000,0,1,1,0,0,-13203.5,275.29,35,4.24,300,0,0,5342,0,0,0);-- Visible Solo para Gm's

INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`)
VALUES
('151000','0','1','1','0','0','-13203.5','275.29','35','4.24','300','0','0','5342','0','0','0','0','0','0');
-- MK Arena Teams
DELETE FROM `script_texts` WHERE `npc_entry`= 151000;
INSERT INTO `script_texts` (`npc_entry`, `entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(151000,-1500000,"No se encontró el equipo!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 0'),
(151000,-1500001,"Hermandad de los Caballos",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 1'),
(151000,-1500002,"Legion Ardiente",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 2'),
(151000,-1500003,"La Alianza de Lordaeron",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 3'),
(151000,-1500004,"Orden de la Mano de Plata",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 4'),
(151000,-1500005,"Consejo de las Sombras",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 5'),
(151000,-1500006,"Caballeros de la Muerte",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 6'),
(151000,-1500007,"Brujos del concilio de las sombras",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 7'),
(151000,-1500008,"Guerreros de Lothar",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 8'),
(151000,-1500009,"Magos de Kirintor",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 9'),
(151000,-1500010,"Clan Shadowmoon",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 10'),
(151000,-1500011,"Vampíricos Señores del Terror",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 11'),
(151000,-1500012,"Clan Warsong",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 12'),
(151000,-1500013,"Clan Blackrock",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 13'),
(151000,-1500014,"Orden de Tirisfal",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 14'),
(151000,-1500015,"Legion MadBoxpc",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 15'),
(151000,-1500016,"Los Forsaken",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0','1','0','0','MK Team 16');
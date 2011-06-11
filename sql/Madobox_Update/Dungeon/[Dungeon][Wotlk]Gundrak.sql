UPDATE `creature_template` set `faction_A` = '16', `faction_H` = '16' WHERE `entry` in ('29573','31367','29680','29713','30940','30943');
UPDATE `creature_template` set `faction_A` = '7', `faction_H` = '7' WHERE `entry` = '29932';
DELETE FROM `creature` WHERE `id` = '29932';
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) values ('29932','604','2','1','26644','0','1640.008423','931.781738','107.357620','0.668432','86400','0','0','431392','0','0','0');
UPDATE `creature` set `spawnMask` = '0' WHERE `guid` in ('127071','127072','127073','127074','127075');
-- DELETE FROM `creature_linked_respawn` WHERE `guid` in ('127071','127072','127073','127074','127075');
UPDATE `creature_template` set `ScriptName` = 'mob_rhino_spirit' WHERE `entry` = '29791';
UPDATE `creature_template` set `VehicleId` = '169' WHERE `entry` in ('29306','31368');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '55814';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) values ('55814','55817','1','Eck Spit - Apply Eck Residue');
DELETE FROM `script_texts` WHERE `entry` between '-1604030' and '-1604000';
INSERT INTO script_texts (npc_entry,entry,content_default,sound,type,language,emote,comment) VALUES
(29304,-1604000,'Drakkari gonna kill anybody who trespass on these lands!',14443,1,0,0,'sladran SAY_AGGRO'),
(29304,-1604001,'Minions of the scale, heed my call!',14444,1,0,0,'sladran SAY_SUMMON_SNAKE'),
(29304,-1604002,'Our thousand fangs gonna rend your flesh! ',14445,1,0,0,'sladran SAY_SUMMON_CONSTRICTOR'),
(29304,-1604003,'Ye not breathin\'! Good.',14446,1,0,0,'sladran SAY_SLAY_1'),
(29304,-1604004,'You scared now?',14447,1,0,0,'sladran SAY_SLAY_2'),
(29304,-1604005,'I\'ll eat you next, mon!',14448,1,0,0,'sladran SAY_SLAY_3'),
(29304,-1604006,'I sssee now... Ssscourge wasss not... our greatessst enemy...',14449,1,0,0,'sladran SAY_DEATH'),
(29304,-1604007,'%s begins to cast Poison Nova!',0,3,0,0,'sladran EMOTE_NOVA'),
(29307,-1604008,'%s surges forward!',0,2,0,0,'colossus EMOTE_SURGE'),
(29307,-1604009,'%s seep into the ground.',0,2,0,0,'colossus EMOTE_SEEP'),
(29307,-1604010,'%s begins to glow faintly.',0,2,0,0,'colossus EMOTE_GLOW'),
(29305,-1604011,'We fought back da Scourge. What chance joo be thinkin\' JOO got?',14721,1,0,0,'moorabi SAY_AGGRO'),
(29305,-1604012,'Da ground gonna swallow you up! ',14723,1,0,0,'moorabi SAY_QUAKE'),
(29305,-1604013,'Get ready for somethin\'... much... BIGGAH!',14722,1,0,0,'moorabi SAY_TRANSFORM'),
(29305,-1604014,'I crush you, cockroaches!',14725,1,0,0,'moorabi SAY_SLAY_1'),
(29305,-1604015,'Who gonna stop me; you?',14726,1,0,0,'moorabi SAY_SLAY_2'),
(29305,-1604016,'Not so tough now.',14727,1,0,0,'moorabi SAY_SLAY_3'),
(29305,-1604017,'If our gods can die... den so can we...',14728,1,0,0,'moorabi SAY_DEATH'),
(29305,-1604018,'%s begins to transform!',0,3,0,0,'moorabi EMOTE_TRANSFORM'),
(29306,-1604019,'I\'m gonna spill your guts, mon!',14430,1,0,0,'galdarah SAY_AGGRO'),
(29306,-1604020,'Ain\'t gonna be nottin\' left after this!',14431,1,0,0,'galdarah SAY_TRANSFORM_1'),
(29306,-1604021,'You wanna see power? I\'m gonna show you power!',14432,1,0,0,'galdarah SAY_TRANSFORM_2'),
(29306,-1604022,'Gut them! Impale them!',14433,1,0,0,'galdarah SAY_SUMMON_1'),
(29306,-1604023,'Kill them all!',14434,1,0,0,'galdarah SAY_SUMMON_2'),
(29306,-1604024,'Say hello to my BIG friend!',14435,1,0,0,'galdarah SAY_SUMMON_3'),
(29306,-1604025,'What a rush!',14436,1,0,0,'galdarah SAY_SLAY_1'),
(29306,-1604026,'Who needs gods, when WE ARE GODS!',14437,1,0,0,'galdarah SAY_SLAY_2'),
(29306,-1604027,'I told ya so!',14438,1,0,0,'galdarah SAY_SLAY_3'),
(29306,-1604028,'Even the mighty... can fall.',14439,1,0,0,'galdarah SAY_DEATH'),
(29305,-1604029,'%s transforms into a Mammoth!',14724,2,0,0,'moorabi EMOTE_TRANSFORMED');
UPDATE `creature_template` set `lootid` = '0', `skinloot` = '80103' WHERE `entry` in ('29307','31365');
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` in ('29307','31365');
UPDATE `creature_template` set `mechanic_immune_mask` = `mechanic_immune_mask`|1|2|8|16|32|64|128|256|512|1024|2048|4096|8192|65536|131072|524288|4194304|8388608|33554432|67108864|536870912 WHERE `entry` in (29304,31370,29307,31365,29573,31367,29306,31368,29932,29305,30530);
UPDATE `creature_template` set `mechanic_immune_mask` = `mechanic_immune_mask` &~ 256 &~ 2048 &~ 33554432 WHERE `entry` in (29305,30530); 
UPDATE `creature_template` set `mechanic_immune_mask` = `mechanic_immune_mask` &~ 2097152 WHERE `entry` in (29304,31370,29307,31365,29573,31367,29306,31368,29932,29305,30530);
UPDATE `creature_template` set `faction_A` = '16', `faction_H` = '16' WHERE `entry` in ('29742','32218');
UPDATE `creature_template` set `ScriptName` = 'mob_snake_wrap' WHERE `entry` = '29742';
UPDATE `creature_template` set `minlevel` = '78', `maxlevel` = '82' WHERE `entry` = '29791';
DELETE FROM `creature_ai_scripts` WHERE `creature_id` IN ('29774','2982607','2982608');
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) 
VALUES
('2977401','29774','4','0','100','2','0','0','0','0','11','55700','1','0','0','0','0','0','0','0','0','0','Spitting Cobra (Normal) - Cast Venom Spit on Aggro'),
('2977402','29774','4','0','100','4','0','0','0','0','11','59019','1','0','0','0','0','0','0','0','0','0','Spitting Cobra (Heroic) - Cast Venom Spit on Aggro'),
('2977403','29774','9','0','100','3','5','30','2300','5000','11','55700','1','0','0','0','0','0','0','0','0','0','Spitting Cobra (Normal) - Cast Venom Spit'),
('2977404','29774','9','0','100','5','5','30','2300','5000','11','59019','1','0','0','0','0','0','0','0','0','0','Spitting Cobra (Heroic) - Cast Venom Spit'),
('2977405','29774','9','0','100','3','0','5','5000','9000','11','55703','1','0','0','0','0','0','0','0','0','0','Spitting Cobra (Normal) - Cast Cobra Strike'),
('2977406','29774','9','0','100','5','0','5','5000','9000','11','59020','1','0','0','0','0','0','0','0','0','0','Spitting Cobra (Heroic) - Cast Cobra Strike'),
('2982607','29826','2','0','100','3','75','0','10000','16000','11','55597','0','0','0','0','0','0','0','0','0','0','Drakkari Medecine Man (Normal) - Cast Healing Wave on Self'),
('2982608','29826','2','0','100','5','75','0','10000','16000','11','58980','0','0','0','0','0','0','0','0','0','0','Drakkari Medecine Man (Heroic) - Cast Healing Wave on Self');
UPDATE `creature_template` SET `dmg_multiplier` = 17 WHERE `entry` IN (30936,30925,31370,31367,30942,30941,30932,30927,30930,30938,30929,30926,30933,30939);
UPDATE `creature_template` SET `dmg_multiplier` = 22 WHERE `entry` IN (29932,31368);
UPDATE `creature_template` SET `dmg_multiplier` = 30 WHERE `entry` = 31365;
UPDATE `creature_template` SET `baseattacktime` = 1000 WHERE `entry` IN (29305,30530);
UPDATE `creature_template` SET `baseattacktime` = 3500 WHERE `entry` IN (29307,31365);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`&~512 WHERE `entry` IN (29307,31365);
DELETE FROM `spell_script_names` WHERE `spell_id`=59452;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(59452, 'spell_mojo_volley_targeting');

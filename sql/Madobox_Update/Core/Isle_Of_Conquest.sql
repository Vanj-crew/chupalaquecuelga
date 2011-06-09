-- Fix Exploit Isle Of conquest 
UPDATE `creature_template` SET `ScriptName`='bosses_isle_of_conquest' WHERE `entry` IN (34924,34922);

-- Isle of Conquest bosses aggro through wall fix
UPDATE `creature_template` SET `unit_flags` = 256 WHERE `entry` = 34924;
UPDATE `creature_template` SET `unit_flags` = 256 WHERE `entry` = 34922;
UPDATE `creature_template` SET `unit_flags` = 256 WHERE `entry` = 34918;
UPDATE `creature_template` SET `unit_flags` = 256 WHERE `entry` = 34919;
UPDATE `creature_template` SET `unit_flags` = 0  WHERE `entry` in (34924,35403, 34922,35405);
UPDATE `creature_template` SET `faction_A` = 84, `faction_H` = 84 WHERE `entry` IN (34924,35403);


/* IOC */

 -- Template updates for creature 34775 (Demolisher)
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|16384,`speed_walk`=3.2 WHERE `entry` IN (35273,35421); -- Glaive Thrower
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|16777216,`unit_flags`=`unit_flags`|16384,`speed_walk`=1.2,`speed_run`=0.98571 WHERE `entry` IN (34775,35415); -- Demolisher
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|16777216,`unit_flags`=`unit_flags`|33570816,`speed_run`=1 WHERE `entry` IN (34935,35427); -- Horde Gunship Cannon
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|16640,`unit_class`=4,`speed_walk`=1.2,`speed_run`=1 WHERE `entry` IN (34776,35431); -- Siege Engine
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|16384,`unit_class`=4 WHERE `entry` IN (34793,35413); -- Catapult
UPDATE `creature_template` SET `baseattacktime`=2000,`npcflag`=`npcflag`|16777216,`unit_flags`=`unit_flags`|33570816,`unit_class`=4,`speed_walk`=1.2,`VehicleId`=436 WHERE `entry` IN (36355,36357); -- Siege Turret
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|16640,`unit_class`=4 WHERE `entry` IN (35069,35433); -- Siege Engine

 -- Model data 29489 (creature 34935 (Horde Gunship Cannon))
UPDATE `creature_model_info` SET `bounding_radius`=1.9,`combat_reach`=0,`gender`=2 WHERE `modelid`=29489; -- Horde Gunship Cannon
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=7.7,`gender`=2 WHERE `modelid`=25292; -- Siege Engine
UPDATE `creature_model_info` SET `bounding_radius`=0.305,`combat_reach`=5,`gender`=2 WHERE `modelid`=28106; -- Siege Turret
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=7.7,`gender`=2 WHERE `modelid`=26403; -- Siege Engine
UPDATE `creature_model_info` SET `bounding_radius`=1,`combat_reach`=7.7,`gender`=2 WHERE `modelid`=25292; -- Siege Engine
UPDATE `creature_model_info` SET `bounding_radius`=0.381875,`combat_reach`=1.25,`gender`=2 WHERE `modelid`=29734; -- Glaive Thrower

 -- Addon data for creature 34775 (Demolisher)
DELETE FROM `creature_template_addon` WHERE `entry` IN (34775,34935,34776,34793,36355,35069,35273, 34802);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(34775,0,0,257,0, NULL), -- Demolisher
(34935,0,0,1,0, NULL), -- Horde Gunship Cannon
(34776,0,0,1,0, NULL), -- Siege Engine
(34793,0,0,257,0, NULL), -- Catapult
(36355,0,0,257,0, NULL), -- Siege Turret
(35069,0,0,1,0, NULL), -- Siege Engine
(35273,0,0,257,0, NULL), -- Glaive Thrower
(34802,0,0,257,0, NULL); -- Glaive Thrower

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (35273,34775,34935,34793,36355,35069, 34802);
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`quest_start`,`quest_start_active`,`quest_end`,`cast_flags`,`aura_required`,`aura_forbidden`,`user_type`) VALUES
(35273,68503,0,0,0,1,0,0,0), -- Glaive Thrower - Isle of Conquest
(35421,68503,0,0,0,1,0,0,0), -- Glaive Thrower - Isle of Conquest(1)
(34802,68503,0,0,0,1,0,0,0), -- Glaive Thrower - Isle of Conquest
(35419,68503,0,0,0,1,0,0,0), -- Glaive Thrower - Isle of Conquest(1)
(34775,66245,0,0,0,1,0,0,0), -- Demolisher - Isle of Conquest
(35415,66245,0,0,0,1,0,0,0), -- Demolisher - Isle of Conquest(1)
(34935,43671,0,0,0,1,0,0,0), -- Horde Gunship Cannon - Isle of Conquest
(35427,43671,0,0,0,1,0,0,0), -- Horde Gunship Cannon - Isle of Conquest(1)
(34793,66245,0,0,0,1,0,0,0), -- Catapult - Isle of Conquest
(35413,66245,0,0,0,1,0,0,0), -- Catapult - Isle of Conquest(1)
(36355,46598,0,0,0,1,0,0,0), -- Siege Turret - Isle of Conquest
(36357,46598,0,0,0,1,0,0,0), -- Siege Turret - Isle of Conquest(1)
(35069,46598,0,0,0,1,0,0,0), -- Siege Engine - Isle of Conquest
(35433,46598,0,0,0,1,0,0,0), -- Siege Engine - Isle of Conquest(1)
(34776,46598,0,0,0,1,0,0,0), -- Siege Engine - Isle of Conquest
(35431,46598,0,0,0,1,0,0,0); -- Siege Engine - Isle of Conquest(1)

UPDATE creature_template SET speed_run=0 WHERE entry IN (36355,36357);
UPDATE creature_template SET npcflag=16777216 WHERE entry IN (34793,35273,35069,34776,34802,35431,35413,35419,35433,35421);
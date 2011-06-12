DELETE FROM `spell_script_names` WHERE `spell_id`=47731;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`) VALUES
(47731, 'spell_nexus_critter_targeting');

UPDATE creature_template SET AIName = '', ScriptName = 'boss_magus_telestra_arcane' WHERE entry = 26929;
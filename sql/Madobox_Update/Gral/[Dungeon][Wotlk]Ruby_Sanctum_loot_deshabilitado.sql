-- Ruby Sanctum Loot deshabilitado
-- SELECT* from creature_template where lootid > 0 and entry in (SELECT id from creature where map = 724)
UPDATE creature_template SET lootid = 0 WHERE entry IN (39863, 39864, 39944, 39945);
/*
-- Revert
UPDATE creature_template set lootid = 39863 where entry = 39863; -- Halion
UPDATE creature_template SET lootid = 39864 WHERE entry = 39864; -- Halion (1)
UPDATE creature_template SET lootid = 39944 WHERE entry = 39944; -- Halion (2)
UPDATE creature_template SET lootid = 39945 WHERE entry = 39945; -- Halion (3)
*/

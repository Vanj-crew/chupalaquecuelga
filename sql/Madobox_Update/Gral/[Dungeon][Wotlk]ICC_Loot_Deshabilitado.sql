/*
SELECT entry, NAME, lootid, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3 FROM creature_template WHERE lootid > 0 AND entry IN (SELECT id FROM creature WHERE map = 631)
SELECT NAME, entry, lootid, difficulty_entry_1, difficulty_entry_2, difficulty_entry_3 FROM creature_template WHERE lootid > 0 AND difficulty_entry_1 > 0 AND difficulty_entry_2 > 0 AND difficulty_entry_3 > 0 AND entry IN (SELECT id FROM creature WHERE map = 631)
SELECT NAME, entry, data1 FROM gameobject_template WHERE NAME LIKE 'Gunship Armory' 
SELECT NAME, entry, data1 FROM gameobject_template WHERE NAME LIKE 'Cache of the Dreamwalker'
SELECT NAME, entry, data1 FROM gameobject_template WHERE NAME LIKE 'Deathbringer\'s Cache'
*/
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN
(10404,
36612,
36724,
36725,
36805,
36807,
36808,
36811,
36829,
36855,
36998,
37003,
37004,
37007,
37011,
37012,
37016,
37017,
37021,
37026,
37027,
37030,
37031,
37032,
37033,
37035,
37144,
37148,
37544,
37545,
37546,
36626,
36627,
36678,
36880,
37022,
37023,
37025,
37038,
37098,
37217,
37571,
37595,
37662,
37663,
37664,
37665,
37666,
37955,
37970,
38494,
37126,
38490,
36597,
37531,
37532,
37957,
37958,
37959,
38106,
38296,
38297,
37504,
37505,
37506,
38390,
38549,
38550,
38431,
38585,
38586,
38434,
38435,
38436,
38401,
38784,
38785,
39166,
39167,
39168);

-- Loot objects Icecrown Citadel http://old.wowhead.com/zone=4812#objects
UPDATE `gameobject_template` SET `data1` = 0 WHERE `entry` IN
(202178,
202180,
201873,
201874,
201872,
202177,
201875,
202179,
201959,
202339,
202338,
202340,
202239,
202240,
202238,
202241);
/*
-- revert
--Creatures
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 10404;
UPDATE `creature_template` SET `lootid` = 36612 WHERE `entry` = 36612;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36724;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36725;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36805;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36807;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36808;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36811;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36829;
UPDATE `creature_template` SET `lootid` = 36855 WHERE `entry` = 36855;
UPDATE `creature_template` SET `lootid` = 36998 WHERE `entry` = 36998;
UPDATE `creature_template` SET `lootid` = 37003 WHERE `entry` = 37003;
UPDATE `creature_template` SET `lootid` = 37004 WHERE `entry` = 37004;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37007;
UPDATE `creature_template` SET `lootid` = 37011 WHERE `entry` = 37011;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37012;
UPDATE `creature_template` SET `lootid` = 37016 WHERE `entry` = 37016;
UPDATE `creature_template` SET `lootid` = 37017 WHERE `entry` = 37017;
UPDATE `creature_template` SET `lootid` = 37021 WHERE `entry` = 37021;
UPDATE `creature_template` SET `lootid` = 37026 WHERE `entry` = 37026;
UPDATE `creature_template` SET `lootid` = 37027 WHERE `entry` = 37027;
UPDATE `creature_template` SET `lootid` = 37030 WHERE `entry` = 37030;
UPDATE `creature_template` SET `lootid` = 37031 WHERE `entry` = 37031;
UPDATE `creature_template` SET `lootid` = 37032 WHERE `entry` = 37032;
UPDATE `creature_template` SET `lootid` = 37033 WHERE `entry` = 37033;
UPDATE `creature_template` SET `lootid` = 37035 WHERE `entry` = 37035;
UPDATE `creature_template` SET `lootid` = 37144 WHERE `entry` = 37144;
UPDATE `creature_template` SET `lootid` = 37148 WHERE `entry` = 37148;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37544;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37545;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37546;
UPDATE `creature_template` SET `lootid` = 36626 WHERE `entry` = 36626;
UPDATE `creature_template` SET `lootid` = 36627 WHERE `entry` = 36627;
UPDATE `creature_template` SET `lootid` = 36678 WHERE `entry` = 36678;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 36880;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37022;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37023;
UPDATE `creature_template` SET `lootid` = 37025 WHERE `entry` = 37025;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37038;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37098;
UPDATE `creature_template` SET `lootid` = 37217 WHERE `entry` = 37217;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37571;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37595;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37662;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37663;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37664;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37665;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37666;
UPDATE `creature_template` SET `lootid` = 37955 WHERE `entry` = 37955;
UPDATE `creature_template` SET `lootid` = 37970 WHERE `entry` = 37970;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 38494;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37126;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 38490;
UPDATE `creature_template` SET `lootid` = 36597 WHERE `entry` = 36597;
UPDATE `creature_template` SET `lootid` = 100002 WHERE `entry` = 37531;
UPDATE `creature_template` SET `lootid` = 37532 WHERE `entry` = 37532;
UPDATE `creature_template` SET `lootid` = 37957 WHERE `entry` = 37957;
UPDATE `creature_template` SET `lootid` = 37958 WHERE `entry` = 37958;
UPDATE `creature_template` SET `lootid` = 37959 WHERE `entry` = 37959;
UPDATE `creature_template` SET `lootid` = 38106 WHERE `entry` = 38106;
UPDATE `creature_template` SET `lootid` = 38296 WHERE `entry` = 38296;
UPDATE `creature_template` SET `lootid` = 38297 WHERE `entry` = 38297;
UPDATE `creature_template` SET `lootid` = 37504 WHERE `entry` = 37504;
UPDATE `creature_template` SET `lootid` = 37505 WHERE `entry` = 37505;
UPDATE `creature_template` SET `lootid` = 37506 WHERE `entry` = 37506;
UPDATE `creature_template` SET `lootid` = 38390 WHERE `entry` = 38390;
UPDATE `creature_template` SET `lootid` = 38549 WHERE `entry` = 38549;
UPDATE `creature_template` SET `lootid` = 38550 WHERE `entry` = 38550;
UPDATE `creature_template` SET `lootid` = 38431 WHERE `entry` = 38431;
UPDATE `creature_template` SET `lootid` = 38585 WHERE `entry` = 38585;
UPDATE `creature_template` SET `lootid` = 38586 WHERE `entry` = 38586;
UPDATE `creature_template` SET `lootid` = 38434 WHERE `entry` = 38434;
UPDATE `creature_template` SET `lootid` = 38435 WHERE `entry` = 38435;
UPDATE `creature_template` SET `lootid` = 38436 WHERE `entry` = 38436;
UPDATE `creature_template` SET `lootid` = 38401 WHERE `entry` = 38401;
UPDATE `creature_template` SET `lootid` = 38784 WHERE `entry` = 38784;
UPDATE `creature_template` SET `lootid` = 38785 WHERE `entry` = 38785;
UPDATE `creature_template` SET `lootid` = 39166 WHERE `entry` = 39166;
UPDATE `creature_template` SET `lootid` = 39167 WHERE `entry` = 39167;
UPDATE `creature_template` SET `lootid` = 39168 WHERE `entry` = 39168;
--Objects
UPDATE `gameobject_template` SET `data1` = 28045 WHERE `entry` = 202178;
UPDATE `gameobject_template` SET `data1` = 28072 WHERE `entry` = 202180;
UPDATE `gameobject_template` SET `data1` = 28045 WHERE `entry` = 201873;
UPDATE `gameobject_template` SET `data1` = 28072 WHERE `entry` = 201874;
UPDATE `gameobject_template` SET `data1` = 28057 WHERE `entry` = 201872;
UPDATE `gameobject_template` SET `data1` = 28057 WHERE `entry` = 202177;
UPDATE `gameobject_template` SET `data1` = 28090 WHERE `entry` = 201875;
UPDATE `gameobject_template` SET `data1` = 28090 WHERE `entry` = 202179;
UPDATE `gameobject_template` SET `data1` = 28052 WHERE `entry` = 201959;
UPDATE `gameobject_template` SET `data1` = 28082 WHERE `entry` = 202339;
UPDATE `gameobject_template` SET `data1` = 28064 WHERE `entry` = 202338;
UPDATE `gameobject_template` SET `data1` = 28096 WHERE `entry` = 202340;
UPDATE `gameobject_template` SET `data1` = 28046 WHERE `entry` = 202239;
UPDATE `gameobject_template` SET `data1` = 28074 WHERE `entry` = 202240;
UPDATE `gameobject_template` SET `data1` = 28058 WHERE `entry` = 202238;
UPDATE `gameobject_template` SET `data1` = 28088 WHERE `entry` = 202241;
*/

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
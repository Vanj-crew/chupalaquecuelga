-- Update TC
-- Northrend Cloud spawns and pooling
SET @POOL := 4993; -- Set by TDB team (pool_template.entry -  need 6)
SET @GUID := 152168; -- Set by TDB team (creature.guid - need 91)

SET @Artic := 24879; -- Arctic Cloud
SET @Cinder := 32522; -- Cinder Cloud
SET @Steam := 32544; -- Steam Cloud

DELETE FROM `pool_template` WHERE `entry` BETWEEN @POOL+0 AND @POOL+5;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES
(@POOL+0,3, 'Arctic Cloud'),
(@POOL+1,3, 'Arctic Cloud'),
(@POOL+2,3, 'Arctic Cloud'),
(@POOL+3,4, 'Cinder Cloud'),
(@POOL+4,3, 'Steam Cloud'),
(@POOL+5,1, 'Steam Cloud');

DELETE FROM `pool_creature` WHERE (`guid` BETWEEN @GUID+0 AND @GUID+90) AND (`pool_entry` BETWEEN @POOL+0 AND @POOL+5);
INSERT INTO `pool_creature` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(@GUID+0,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+1,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+2,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+3,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+4,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+5,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+6,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+7,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+8,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+9,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+10,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+11,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+12,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+13,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+14,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+15,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+16,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+17,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+18,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+19,@POOL+0,0, 'Arctic Cloud - Stormpikes'),
(@GUID+20,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+21,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+22,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+23,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+24,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+25,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+26,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+27,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+28,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+29,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+30,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+31,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+32,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+33,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+34,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+35,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+36,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+37,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+38,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+39,@POOL+1,0, 'Arctic Cloud - Dragonsblight'),
(@GUID+40,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+41,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+42,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+43,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+44,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+45,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+46,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+47,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+48,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+49,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+50,@POOL+2,0, 'Arctic Cloud - Icecrow'),
(@GUID+51,@POOL+3,0, 'Cinder Cloud'),
(@GUID+52,@POOL+3,0, 'Cinder Cloud'),
(@GUID+53,@POOL+3,0, 'Cinder Cloud'),
(@GUID+54,@POOL+3,0, 'Cinder Cloud'),
(@GUID+55,@POOL+3,0, 'Cinder Cloud'),
(@GUID+56,@POOL+3,0, 'Cinder Cloud'),
(@GUID+57,@POOL+3,0, 'Cinder Cloud'),
(@GUID+58,@POOL+3,0, 'Cinder Cloud'),
(@GUID+59,@POOL+3,0, 'Cinder Cloud'),
(@GUID+60,@POOL+3,0, 'Cinder Cloud'),
(@GUID+61,@POOL+3,0, 'Cinder Cloud'),
(@GUID+62,@POOL+3,0, 'Cinder Cloud'),
(@GUID+63,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+64,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+65,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+66,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+67,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+68,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+69,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+70,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+71,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+72,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+73,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+74,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+75,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+76,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+77,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+78,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+79,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+80,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+81,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+82,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+83,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+84,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+85,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+86,@POOL+4,0, 'Steam Cloud - Sholazar'),
(@GUID+87,@POOL+5,0, 'Steam Cloud - Borean Tundra'),
(@GUID+88,@POOL+5,0, 'Steam Cloud - Borean Tundra'),
(@GUID+89,@POOL+5,0, 'Steam Cloud - Borean Tundra'),
(@GUID+90,@POOL+5,0, 'Steam Cloud - Borean Tundra');

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (@Artic,@Cinder,@Steam));
DELETE FROM `creature` WHERE `id` IN (@Artic,@Cinder,@Steam);
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(@GUID+0,@Artic,571,1,1,0,0,8154.26,-50.2582,853.637,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+1,@Artic,571,1,1,0,0,7585.26,-292.083,1126.52,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+2,@Artic,571,1,1,0,0,8234.87,-690.383,927.345,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+3,@Artic,571,1,1,0,0,7419.3,-903.758,909.254,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+4,@Artic,571,1,1,0,0,6286.04,-576.583,424.563,2.5426,300,5,0,42,0,0,1,0,0,0),
(@GUID+5,@Artic,571,1,1,0,0,5925.67,-626.371,478.491,2.5426,300,5,0,42,0,0,1,0,0,0),
(@GUID+6,@Artic,571,1,1,0,0,6503.32,-1038.15,485.395,2.5426,300,5,0,42,0,0,1,0,0,0),
(@GUID+7,@Artic,571,1,1,0,0,6286.04,-1323.4,426.505,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+8,@Artic,571,1,1,0,0,6926.17,-2091.55,805.349,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+9,@Artic,571,1,1,0,0,6992.55,-2141.33,737.069,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+10,@Artic,571,1,1,0,0,7153.77,-2248.02,759.305,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+11,@Artic,571,1,1,0,0,7229.63,-3044.62,845.739,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+12,@Artic,571,1,1,0,0,7518.88,-3094.41,842.155,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+13,@Artic,571,1,1,0,0,7893.47,-3322.01,857.378,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+14,@Artic,571,1,1,0,0,2762.83,1406.18,131.607,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+15,@Artic,571,1,1,0,0,2845.1,1972.63,140.6,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+16,@Artic,571,1,1,0,0,3073.22,-214.625,93.7885,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+17,@Artic,571,1,1,0,0,3248.98,1187.46,134.375,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+18,@Artic,571,1,1,0,0,3260.2,-1218.52,78.6832,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+19,@Artic,571,1,1,0,0,3458.4,1804.38,75.0776,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+20,@Artic,571,1,1,0,0,3585.54,-1083.92,111.125,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+21,@Artic,571,1,1,0,0,3589.28,671.492,77.7206,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+22,@Artic,571,1,1,0,0,3611.72,-102.458,59.6765,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+23,@Artic,571,1,1,0,0,3708.95,1804.38,101.572,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+24,@Artic,571,1,1,0,0,3880.97,1187.46,55.4913,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+25,@Artic,571,1,1,0,0,4023.07,357.425,41.9114,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+26,@Artic,571,1,1,0,0,4116.56,26.5337,52.568,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+27,@Artic,571,1,1,0,0,4307.28,-820.325,147.814,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+28,@Artic,571,1,1,0,0,4486.78,-242.667,90.8629,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+29,@Artic,571,1,1,0,0,4561.57,-1280.21,159.549,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+30,@Artic,571,1,1,0,0,4576.53,1630.52,286.716,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+31,@Artic,571,1,1,0,0,4815.86,-309.966,229.377,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+32,@Artic,571,1,1,0,0,4924.31,845.35,178.601,0.00340319,300,5,0,42,0,0,1,0,0,0),
(@GUID+33,@Artic,571,1,1,0,0,5122.51,1047.25,223.784,3.4733,300,5,0,42,0,0,1,0,0,0),
(@GUID+34,@Artic,571,1,1,0,0,6019.36,2383.58,518.105,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+35,@Artic,571,1,1,0,0,6144.8,1580.92,620.674,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+36,@Artic,571,1,1,0,0,6393.17,-211.808,678.76,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+37,@Artic,571,1,1,0,0,6504.39,1474.31,437.27,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+38,@Artic,571,1,1,0,0,6717.53,184.454,626.635,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+39,@Artic,571,1,1,0,0,6845.56,-789.958,731.38,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+40,@Artic,571,1,1,0,0,7064.68,2860.17,418.75,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+41,@Artic,571,1,1,0,0,7273.74,721.812,482.114,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+42,@Artic,571,1,1,0,0,7390.81,1806.67,433.04,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+43,@Artic,571,1,1,0,0,7518.88,77.7668,801.405,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+44,@Artic,571,1,1,0,0,7670.96,2966.77,531.154,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+45,@Artic,571,1,1,0,0,7679.32,797.062,479.98,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+46,@Artic,571,1,1,0,0,7718.02,42.2043,1021.67,6.10438,300,5,0,42,0,0,1,0,0,0),
(@GUID+47,@Artic,571,1,1,0,0,7984.55,1568.38,460.722,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+48,@Artic,571,1,1,0,0,8016.75,-2916.6,1137.52,3.31622,300,5,0,42,0,0,1,0,0,0),
(@GUID+49,@Artic,571,1,1,0,0,8227.06,3280.31,655.771,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+50,@Artic,571,1,1,0,0,8306.51,960.104,582.006,4.83412,300,5,0,42,0,0,1,0,0,0),
(@GUID+51,@Cinder,571,1,1,0,0,4311.02,1495.92,133.764,1.42942,300,5,0,42,0,0,1,0,0,0),
(@GUID+52,@Cinder,571,1,1,0,0,4347.75,1395.21,134.203,1.42942,300,5,0,42,0,0,1,0,0,0),
(@GUID+53,@Cinder,571,1,1,0,0,4393.29,1490.31,123.673,4.82626,300,5,0,42,0,0,1,0,0,0),
(@GUID+54,@Cinder,571,1,1,0,0,4408.25,1406.18,132.796,4.82626,300,5,0,42,0,0,1,0,0,0),
(@GUID+55,@Cinder,571,1,1,0,0,6419.15,4981.92,-69.5219,1.81657,300,5,0,42,0,0,1,0,0,0),
(@GUID+56,@Cinder,571,1,1,0,0,6488.85,4942.72,-57.9343,1.81657,300,5,0,42,0,0,1,0,0,0),
(@GUID+57,@Cinder,571,1,1,0,0,6517.9,4859.95,-52.7975,1.81657,300,5,0,42,0,0,1,0,0,0),
(@GUID+58,@Cinder,571,1,1,0,0,4217.27,1770.67,352.922,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+59,@Cinder,571,1,1,0,0,4235.12,1883.72,355.337,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+60,@Cinder,571,1,1,0,0,4330.32,1723.07,366.032,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+61,@Cinder,571,1,1,0,0,4342.22,1868.84,356.522,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+62,@Cinder,571,1,1,0,0,4375.93,1782.57,356.84,6.2282,300,5,0,42,0,0,1,0,0,0),
(@GUID+63,@Steam,571,1,1,0,0,3452.67,4685.5,-12.9957,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+64,@Steam,571,1,1,0,0,3698.67,4904.56,-13.6717,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+65,@Steam,571,1,1,0,0,4033.07,4524.1,-1.63039,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+66,@Steam,571,1,1,0,0,4079.2,5089.02,-1.50956,2.27993,300,5,0,4979,0,0,1,0,0,0),
(@GUID+67,@Steam,571,1,1,0,0,4740.55,5008.06,-55.5771,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+68,@Steam,571,1,1,0,0,4920.89,4070.89,-17.9628,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+69,@Steam,571,1,1,0,0,5112.28,5953.37,-61.9079,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+70,@Steam,571,1,1,0,0,5152.94,3810.09,-7.13058,0.803393,300,5,0,4979,0,0,1,0,0,0),
(@GUID+71,@Steam,571,1,1,0,0,5158.75,4184.73,-88.1236,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+72,@Steam,571,1,1,0,0,5179.07,5739.91,-83.8105,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+73,@Steam,571,1,1,0,0,5248.77,4707.48,-133.847,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+74,@Steam,571,1,1,0,0,5254.58,5008.06,-135.353,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+75,@Steam,571,1,1,0,0,5376.56,4433.04,-135.251,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+76,@Steam,571,1,1,0,0,5393.98,5940.3,-49.8372,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+77,@Steam,571,1,1,0,0,5501.44,3609.7,-17.8316,0.803393,300,5,0,4979,0,0,1,0,0,0),
(@GUID+78,@Steam,571,1,1,0,0,5585.66,3810.09,-15.5887,0.504939,300,5,0,4979,0,0,1,0,0,0),
(@GUID+79,@Steam,571,1,1,0,0,5588.23,3643.99,-23.6778,0.504939,300,5,0,4979,0,0,1,0,0,0),
(@GUID+80,@Steam,571,1,1,0,0,5608.89,6005.64,-39.6709,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+81,@Steam,571,1,1,0,0,5788.95,5744.27,-69.0541,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+82,@Steam,571,1,1,0,0,5817.99,4171.66,-101.138,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+83,@Steam,571,1,1,0,0,5931.25,4820.74,-110.276,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+84,@Steam,571,1,1,0,0,5980.62,4337.2,-85.2827,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+85,@Steam,571,1,1,0,0,6131.64,4568.08,-91.79,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+86,@Steam,571,1,1,0,0,6149.07,4297.99,-56.5222,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+87,@Steam,571,1,1,0,0,6231,5577.32,-27.9032,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+88,@Steam,571,1,1,0,0,6346.55,4258.79,-47.6791,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+89,@Steam,571,1,1,0,0,6436.58,5360.92,-33.6846,5.40584,300,5,0,4979,0,0,1,0,0,0),
(@GUID+90,@Steam,571,1,1,0,0,6459.81,4520.2,-62.7745,5.40584,300,5,0,4979,0,0,1,0,0,0);

-- Biohazard
DELETE FROM `creature` WHERE `id`=21789; -- Nakansi / Shadowmoon Valley
INSERT INTO creature (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(152259,21789,530,1,1,0,0,-2741.8,2719.07,123.584,0.603481,600,0,0,34930,0,0,0);

-- Tome
DELETE FROM `gameobject` WHERE `id`=187987; -- South Point Station Valve
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES 
(151895,187987,571,1,1,3791.704,4808.966,-11.5618,1.483528,0,0,0.6755896,0.7372779,0,0,0);

-- Nay
UPDATE `creature_template` SET /*`npcflag`=`npcflag`|16777216,*/`speed_walk`=2.8 WHERE `entry`=30123; -- Snorri needs spellclick data
-- UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216 WHERE `entry`=30272; -- Njorndar Proto-Drake needs spellclick data
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32768,`speed_walk`=1.444444 WHERE `entry`=30500; -- Argent Skytalon
UPDATE `creature_template` SET `speed_walk`=1.444444 WHERE `entry`=31070; -- Argent Skytalon
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`speed_walk`=1.2 WHERE `entry`=32370; -- Refurbished Demolisher
UPDATE `creature_template` SET `minlevel`=80,`maxlevel`=80,`unit_flags`=`unit_flags`|8,`speed_walk`=1.2,`vehicleid`=512 WHERE `entry`=31830; -- Refurbished Demolisher
UPDATE `creature_template` SET `npcflag`=`npcflag`|16777216,`speed_run`=1.3857142857143 WHERE `entry`=34125; -- Stabled Campaign Warhorse
UPDATE `creature_template` SET `baseattacktime`=2000,`unit_flags`=`unit_flags`|16400,`unit_class`=4,`speed_run`=1 WHERE `entry` IN (36839,35427); -- Horde Gunship Cannon, Horde Gunship Cannon (1)
UPDATE `creature_template` SET `baseattacktime`=2000,/*`npcflag`=`npcflag`|16777216,*/`speed_run`=1.1428571428571 WHERE `entry`=37945; -- Dream Portal needs spellclick data
UPDATE `creature_template` SET `exp`=2,`minlevel`=80,`maxlevel`=80,`baseattacktime`=2000,/*`npcflag`=`npcflag`|16777216,*/`speed_run`=1.1428571428571 WHERE `entry`=38186; -- Dream Portal (Pre-effect)  needs spellclick data

UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=2.25,`gender`=2 WHERE `modelid`=25092; -- Refurbished Demolisher
UPDATE `creature_model_info` SET `bounding_radius`=0.248,`combat_reach`=4.8,`gender`=0 WHERE `modelid`=26772; -- Snorri
UPDATE `creature_model_info` SET `bounding_radius`=1.085,`combat_reach`=3.5,`gender`=2 WHERE `modelid`=27703; -- Geargrinder's Jumpbot
UPDATE `creature_model_info` SET `bounding_radius`=3,`combat_reach`=2.25,`gender`=2 WHERE `modelid`=25092; -- Refurbished Demolisher
UPDATE `creature_model_info` SET `bounding_radius`=1.9,`combat_reach`=0,`gender`=2 WHERE `modelid`=29489; -- Horde Gunship Cannon
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=30844; -- Dream Portal
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=30844; -- Dream Portal (Pre-effect)

DELETE FROM `creature_template_addon` WHERE `entry` IN (30123,30272,31070,31736,31770,32370,31830,36839,37945,38186);
INSERT INTO `creature_template_addon` (`entry`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30123,0,0,1,0, '61208 0'), -- Snorri; Aura: Fjorn's Anvil - Quest Invisibility 3
(30272,0,0,1,0, NULL), -- Njorndar Proto-Drake
(31070,0,0,1,0, NULL), -- Argent Skytalon
(31736,0,0,1,0, NULL), -- Geargrinder's Jumpbot
(31770,0,0,1,0, NULL), -- Thunderbomb's Jumpbot
(32370,0,65536,1,0, '49414 0'), -- Refurbished Demolisher; Auras: Generic Quest Invisibility 1
(31830,0,0,1,0, NULL), -- Refurbished Demolisher
(36839,0,0,1,0, '69470 0 69470 1'), -- Horde Gunship Cannon; Aura: Heat Drain
(37945,0,0,1,0, NULL), -- Dream Portal
(38186,0,0,1,0, NULL); -- Dream Portal (Pre-effect)

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (19,20) AND `SourceEntry`=13846;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
(19,0,13846,1,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,1,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(19,0,13846,2,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,2,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(19,0,13846,3,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,3,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(19,0,13846,4,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,4,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(19,0,13846,5,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,5,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(19,0,13846,6,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,6,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(19,0,13846,7,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,7,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(19,0,13846,8,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,8,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(19,0,13846,9,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,9,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(19,0,13846,10,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,10,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(19,0,13846,11,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,11,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(19,0,13846,12,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,12,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(19,0,13846,13,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(19,0,13846,13,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered'),
(19,0,13846,14,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(19,0,13846,14,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered'),
(20,0,13846,1,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,1,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(20,0,13846,2,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,2,5,1106,0,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hated'),
(20,0,13846,3,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,3,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(20,0,13846,4,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,4,5,1106,1,0,'Quest Contributin'' To The Cause - Requires Argent Crusade hostile'),
(20,0,13846,5,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,5,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(20,0,13846,6,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,6,5,1106,2,0,'Quest Contributin'' To The Cause - Requires Argent Crusade unfriendly'),
(20,0,13846,7,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,7,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(20,0,13846,8,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,8,5,1106,3,0,'Quest Contributin'' To The Cause - Requires Argent Crusade neutral'),
(20,0,13846,9,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,9,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(20,0,13846,10,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,10,5,1106,4,0,'Quest Contributin'' To The Cause - Requires Argent Crusade friendly'),
(20,0,13846,11,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,11,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(20,0,13846,12,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,12,5,1106,5,0,'Quest Contributin'' To The Cause - Requires Argent Crusade honored'),
(20,0,13846,13,8,13700,0,0,'Quest Contributin'' To The Cause - Requires quest Alliance Champion Marker'),
(20,0,13846,13,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered'),
(20,0,13846,14,8,13701,0,0,'Quest Contributin'' To The Cause - Requires quest Horde Champion Marker'),
(20,0,13846,14,5,1106,6,0,'Quest Contributin'' To The Cause - Requires Argent Crusade revered');

-- Gossip Menu insert
DELETE FROM `gossip_menu` WHERE `entry`=7303 AND `text_id`=8662;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7303,8662);
DELETE FROM `gossip_menu` WHERE `entry`=7380 AND `text_id`=8835;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7380,8835);
DELETE FROM `gossip_menu` WHERE `entry`=7424 AND `text_id`=8973;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7424,8973);
DELETE FROM `gossip_menu` WHERE `entry`=7423 AND `text_id`=8972;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7423,8972);
DELETE FROM `gossip_menu` WHERE `entry`=7425 AND `text_id`=8974;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7425,8974);
DELETE FROM `gossip_menu` WHERE `entry`=11910 AND `text_id`=16726;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (11910,16726);
DELETE FROM `gossip_menu` WHERE `entry`=5729 AND `text_id`=6896;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5729,6896);
DELETE FROM `gossip_menu` WHERE `entry`=5728 AND `text_id`=6897;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5728,6897);
DELETE FROM `gossip_menu` WHERE `entry`=5727 AND `text_id`=6898;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5727,6898);
DELETE FROM `gossip_menu` WHERE `entry`=5726 AND `text_id`=6899;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5726,6899);
DELETE FROM `gossip_menu` WHERE `entry`=5725 AND `text_id`=6900;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5725,6900);
DELETE FROM `gossip_menu` WHERE `entry`=5724 AND `text_id`=6901;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5724,6901);
DELETE FROM `gossip_menu` WHERE `entry`=5723 AND `text_id`=6902;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5723,6902);
DELETE FROM `gossip_menu` WHERE `entry`=5737 AND `text_id`=6911;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5737,6911);
DELETE FROM `gossip_menu` WHERE `entry`=7084 AND `text_id`=8336;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7084,8336);
DELETE FROM `gossip_menu` WHERE `entry`=5748 AND `text_id`=6927;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5748,6927);
DELETE FROM `gossip_menu` WHERE `entry`=5756 AND `text_id`=6940;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5756,6940);
DELETE FROM `gossip_menu` WHERE `entry`=5743 AND `text_id`=6919;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5743,6919);
DELETE FROM `gossip_menu` WHERE `entry`=5747 AND `text_id`=6925;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5747,6925);
DELETE FROM `gossip_menu` WHERE `entry`=5755 AND `text_id`=6939;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (5755,6939);
DELETE FROM `gossip_menu` WHERE `entry`=10026 AND `text_id`=13902;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10026,13902);
DELETE FROM `gossip_menu` WHERE `entry`=9750 AND `text_id`=13375;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9750,13375);
DELETE FROM `gossip_menu` WHERE `entry`=7522 AND `text_id`=9122;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (7522,9122);
DELETE FROM `gossip_menu` WHERE `entry`=9162 AND `text_id`=12756;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9162,12756);
DELETE FROM `gossip_menu` WHERE `entry`=9162 AND `text_id`=12417;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9162,12417);
DELETE FROM `gossip_menu` WHERE `entry`=9164 AND `text_id`=12422;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9164,12422);
DELETE FROM `gossip_menu` WHERE `entry`=9166 AND `text_id`=12424;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9166,12424);
DELETE FROM `gossip_menu` WHERE `entry`=9167 AND `text_id`=12426;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9167,12426);
DELETE FROM `gossip_menu` WHERE `entry`=9144 AND `text_id`=12373;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9144,12373);
DELETE FROM `gossip_menu` WHERE `entry`=9164 AND `text_id`=12422;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9164,12422);
DELETE FROM `gossip_menu` WHERE `entry`=9166 AND `text_id`=12424;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9166,12424);
DELETE FROM `gossip_menu` WHERE `entry`=21230 AND `text_id`=1237;
DELETE FROM `gossip_menu` WHERE `entry`=687 AND `text_id`=1237;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (687,1237);
DELETE FROM `gossip_menu` WHERE `entry`=689 AND `text_id`=1239;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (689,1239);
DELETE FROM `gossip_menu` WHERE `entry`=690 AND `text_id`=1240;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (690,1240);
DELETE FROM `gossip_menu` WHERE `entry`=701 AND `text_id`=1253;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (701,1253);
DELETE FROM `gossip_menu` WHERE `entry`=703 AND `text_id`=1255;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (703,1255);
DELETE FROM `gossip_menu` WHERE `entry`=10990 AND `text_id`=15282;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10990,15282);
DELETE FROM `gossip_menu` WHERE `entry`=10929 AND `text_id`=15188;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10929,15188);
DELETE FROM `gossip_menu` WHERE `entry`=10945 AND `text_id`=15209;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10945,15209);
DELETE FROM `gossip_menu` WHERE `entry`=10946 AND `text_id`=15210;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10946,15210);
DELETE FROM `gossip_menu` WHERE `entry`=10947 AND `text_id`=15211;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10947,15211);
DELETE FROM `gossip_menu` WHERE `entry`=9554 AND `text_id`=12869;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9554,12869);
DELETE FROM `gossip_menu` WHERE `entry`=10400 AND `text_id`=14455;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10400,14455);
DELETE FROM `gossip_menu` WHERE `entry`=10340 AND `text_id`=14408;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10340,14408);
DELETE FROM `gossip_menu` WHERE `entry`=10440 AND `text_id`=14476;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10440,14476);
DELETE FROM `gossip_menu` WHERE `entry`=9550 AND `text_id`=12865;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9550,12865);
DELETE FROM `gossip_menu` WHERE `entry`=9555 AND `text_id`=12868;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9555,12868);
DELETE FROM `gossip_menu` WHERE `entry`=9557 AND `text_id`=12871;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9557,12871);

-- Creature Gossip_menu_id Update
UPDATE `creature_template` SET `gossip_menu_id`=7303 WHERE `entry`=16554;
UPDATE `creature_template` SET `gossip_menu_id`=5729 WHERE `entry`=14358;
UPDATE `creature_template` SET `gossip_menu_id`=5737 WHERE `entry`=14369;
UPDATE `creature_template` SET `gossip_menu_id`=7084 WHERE `entry`=16032;
UPDATE `creature_template` SET `gossip_menu_id`=5748 WHERE `entry`=14383;
UPDATE `creature_template` SET `gossip_menu_id`=5756 WHERE `entry`=14382;
UPDATE `creature_template` SET `gossip_menu_id`=5747 WHERE `entry`=14368;
UPDATE `creature_template` SET `gossip_menu_id`=5755 WHERE `entry`=14381;
UPDATE `creature_template` SET `gossip_menu_id`=10026 WHERE `entry`=31085;
UPDATE `creature_template` SET `gossip_menu_id`=9740 WHERE `entry`=28082;
UPDATE `creature_template` SET `gossip_menu_id`=9741 WHERE `entry`=28138;
UPDATE `creature_template` SET `gossip_menu_id`=9162 WHERE `entry`=25459;
UPDATE `creature_template` SET `gossip_menu_id`=9164 WHERE `entry`=25475;
UPDATE `creature_template` SET `gossip_menu_id`=9166 WHERE `entry`=25476;
UPDATE `creature_template` SET `gossip_menu_id`=9167 WHERE `entry`=25503;
UPDATE `creature_template` SET `gossip_menu_id`=9144 WHERE `entry`=25237;
UPDATE `creature_template` SET `gossip_menu_id`=9164 WHERE `entry`=25475;
UPDATE `creature_template` SET `gossip_menu_id`=9166 WHERE `entry`=25476;
UPDATE `creature_template` SET `gossip_menu_id`=10990 WHERE `entry`=37671;
UPDATE `creature_template` SET `gossip_menu_id`=10929 WHERE `entry`=37715;
UPDATE `creature_template` SET `gossip_menu_id`=9549 WHERE `entry`=27810;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=37887;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38041;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38040;
UPDATE `creature_template` SET `gossip_menu_id`=10948 WHERE `entry`=38039;
UPDATE `creature_template` SET `gossip_menu_id`=10470 WHERE `entry`=33382;
UPDATE `creature_template` SET `gossip_menu_id`=10400 WHERE `entry`=33972;
UPDATE `creature_template` SET `gossip_menu_id`=10340 WHERE `entry`=33447;
UPDATE `creature_template` SET `gossip_menu_id`=9550 WHERE `entry`=27495;

UPDATE `creature_template` SET `gossip_menu_id`=687 WHERE `gossip_menu_id`=21230;

-- Creature Gossip_menu_option Update
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7368) AND `id` IN (1,2);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (7370,5729,5728,5727,5726,5725,5724,5723,7522,9162) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9550,9555) AND `id` IN (0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10340) AND `id` IN (1);
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (10976,10929,10945,10946) AND `id` IN (0);
INSERT INTO `gossip_menu_option` (`menu_id`,`id`,`option_icon`,`option_text`,`option_id`,`npc_option_npcflag`,`action_menu_id`,`action_poi_id`,`action_script_id`,`box_coded`,`box_money`,`box_text`) VALUES
(7368,1,0, 'Acteon, where is the best area to hunt for moongraze stags?',1,1,7423,0,0,0,0, ''),
(7368,2,0, 'Acteon, where is the best place to hunt moongraze bucks?',1,1,7424,0,0,0,0, ''),
(7370,0,0, 'Where can I find more infected nightstalker runts, Exarch?',1,1,7425,0,0,0,0, ''),
(5729,0,0, 'What happened here, spirit?',1,1,5728,0,0,0,0, ''),
(5728,0,0, 'I know very little of the Highborne and nothing of the Shen''dralar.',1,1,5727,0,0,0,0, ''),
(5727,0,0, 'Continue, please.',1,1,5726,0,0,0,0, ''),
(5726,0,0, 'Fascinating. Continue, please.',1,1,5725,0,0,0,0, ''),
(5725,0,0, 'I''m going to have to kill something, aren''t I?',1,1,5724,0,0,0,0, ''),
(5724,0,0, 'We live in a world of endless tragedy.',1,1,5723,0,0,0,0, ''),
(5723,0,0, 'A very sad tale. Thank you, spirit.',1,1,0,0,0,0,0, ''),
(7522,0,3, 'Teach me the ways of the spirits.',5,16,0,0,0,0,0, ''),
(9162,0,0, 'Send me to Garrosh''s Landing, Yanni.',1,1,0,0,0,0,0, ''),
(10976,0,0, 'I need another disguise.',1,1,0,0,0,0,0, ''),
(10929,0,0, 'I have a rocket here with your mark on it, Snivel.',1,1,10945,0,0,0,0, ''),
(10945,0,0, 'There''s a chemical inside the rocket. What is it?',1,1,10946,0,0,0,0, ''),
(10946,0,0, 'Where were they delivered?',1,1,10947,0,0,0,0, ''),
(9550,0,0, 'Why would I want to ride a shredder?',1,1,9555,0,0,0,0, ''),
(9555,0,0, 'Where can I get a Refurbished Shredder Key?',1,1,9557,0,0,0,0, ''),
(10340,1,0, 'How do the Argent Crusade riders fight?',1,1,10440,0,0,0,0, '');

DELETE FROM `npc_text` WHERE `ID` IN (16540,8336,16726) AND `WDBVerified`=-1;
INSERT INTO `npc_text` (`ID`,`text0_0`,`WDBVerified`) VALUES
(16540, '[PH]', -1),
(8336, '[PH]', -1),
(16726, '[PH]', -1);

SET @EquiEntry = 2439; -- Need 1 slot

-- Stormwind npcs
UPDATE `creature_template` SET `exp`=1,`minlevel`=65,`maxlevel`=65,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=34075; -- Captain Dirgehammer
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=12778; -- Lieutenant Rachel Vaccar
UPDATE `creature_template` SET `minlevel`=75,`maxlevel`=75,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|32768,`equipment_id`=@EquiEntry,`speed_run`=1.1428571428571 WHERE `entry`=34078; -- Lieutenant Tristia
UPDATE `creature_template` SET `exp`=1,`minlevel`=65,`maxlevel`=65,`npcflag`=`npcflag`|128,`unit_flags`=`unit_flags`|32768,`speed_run`=1.1428571428571 WHERE `entry`=34081; -- Captain O'Neal
UPDATE `creature_template` SET `faction_A`=123,`faction_H`=123,`exp`=2,`minlevel`=75,`maxlevel`=75,`baseattacktime`=2000,`npcflag`=`npcflag`|4224,`unit_flags`=`unit_flags`|32768,`equipment_id`=188,`speed_run`=1.1428571428571 WHERE `entry`=40607; -- Knight-Lieutenant T'Maire Sydes
UPDATE `creature_template` SET `baseattacktime`=2000,`speed_run`=2.8571428571429,`InhabitType`=5 WHERE `entry`=32180; -- Tempus Wyrm
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554432,`unit_class`=2,`speed_walk`=4,`speed_run`=2.8571428571429,`InhabitType`=7 WHERE `entry`=34381; -- [DND]Northrend Children's Week Trigger
UPDATE `creature_template` SET `speed_walk`=4,`speed_run`=2.8571428571429,`InhabitType`=5 WHERE `entry`=27925; -- Nozdormu
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|256,`speed_run`=2.8571428571429,`InhabitType`=5 WHERE `entry`=32185; -- Infinite Eradicator
UPDATE `creature_template` SET `faction_A`=2141,`faction_H`=2141,`exp`=2,`speed_run`=1.1428571428571 WHERE `entry`=32331; -- Past You  ???
UPDATE `creature_template` SET `faction_A`=2111,`faction_H`=2111,`unit_flags`=`unit_flags`|34816,`speed_run`=1.1428571428571 WHERE `entry`=27896; -- Infinite Assailant
UPDATE `creature_template` SET `faction_A`=2111,`faction_H`=2111,`unit_flags`=`unit_flags`|559104,`speed_run`=1.1428571428571 WHERE `entry`=27897; -- Infinite Destroyer
UPDATE `creature_template` SET `exp`=2,`speed_run`=1 WHERE `entry`=32327; -- Hourglass of Eternity
UPDATE `creature_template` SET `speed_walk`=1.2,`speed_run`=2 WHERE `entry`=26841; -- Reanimated Frost Wyrm
UPDATE `creature_template` SET `faction_A`=35,`faction_H`=35,`unit_flags`=`unit_flags`|33556488,`flags_extra`=`flags_extra`|128 WHERE `entry`=28306; -- Anti-Magic Zone

UPDATE `creature_model_info` SET `bounding_radius`=0.208,`combat_reach`=1.5,`gender`=1 WHERE `modelid`=31953; -- Knight-Lieutenant T'Maire Sydes
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=0 WHERE `modelid`=27814; -- Infinite Eradicator
UPDATE `creature_model_info` SET `bounding_radius`=3.5,`combat_reach`=3,`gender`=2 WHERE `modelid`=24934; -- Nozdormu
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- [DND]Northrend Children's Week Trigger
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=1,`gender`=0 WHERE `modelid`=27813; -- Infinite Timebreaker
UPDATE `creature_model_info` SET `bounding_radius`=0.5,`combat_reach`=1,`gender`=2 WHERE `modelid`=11686; -- Past You
UPDATE `creature_model_info` SET `bounding_radius`=0.3,`combat_reach`=2.5,`gender`=0 WHERE `modelid`=20512; -- Infinite Destroyer
UPDATE `creature_model_info` SET `bounding_radius`=0.375,`combat_reach`=1.25,`gender`=0 WHERE `modelid`=19062; -- Infinite Assailant

UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=256,`auras`= '5301 0' WHERE `entry`=12778; -- Lieutenant Rachel Vaccar
UPDATE `creature_template_addon` SET `bytes2`=258 WHERE `entry`=12780; -- Sergeant Major Skyshadow
UPDATE `creature_template_addon` SET `bytes1`=0,`bytes2`=256,`auras`= '5301 0' WHERE `entry`=19848; -- Harbinger Ennarth
UPDATE `creature_template_addon` SET `bytes2`=256 WHERE `entry`=12779; -- Archmage Gaiman

DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (31257,26426,32186,26841));
DELETE FROM `creature_template_addon` WHERE `entry` IN (34075,34081,40607,34078,28306);
DELETE FROM `creature_template_addon` WHERE `entry` IN (26426,27925,32186,32180,32185,32327,26841);
INSERT INTO `creature_template_addon` (`entry`,`bytes1`,`bytes2`,`auras`) VALUES
(34075,0,257, '5301 0'), -- Captain Dirgehammer
(34081,0,257, NULL), -- Captain O'Neal
(40607,0,257, NULL), -- Knight-Lieutenant T'Maire Sydes
(34078,0,257, '5301 0'), -- Lieutenant Tristia
(26426,0,1, '47015 0'), -- Arctic Ram
(27925,50397184,1, '50013 0'),
(32186,50331648,1, '4368 0'), -- Infinite Timebreaker
(32180,50331648,1, '4368 0'), -- Tempus Wyrm
(32185,50331648,1, '4368 0'), -- Infinite Eradicator
(32327,0,1, '50057 0 50867 0'), -- Hourglass of Eternity
(26841,50331648,1, NULL), -- Reanimated Frost Wyrm
(28306,0,257, NULL); -- Anti-Magic Zone

DELETE FROM `creature_equip_template` WHERE `entry`=@EquiEntry;
INSERT INTO `creature_equip_template` (`entry`,`equipentry1`,`equipentry2`,`equipentry3`) VALUES
(@EquiEntry,34520,29638,0); -- Equipment of 34078 (Lieutenant Tristia)

-- 5302, triggered by 5301 is missing from spell_dbc. Data from 1.1.2 spell_dbc
DELETE FROM `spell_dbc` WHERE `Id`=5302;
INSERT INTO `spell_dbc` (`Id`,`Attributes`,`AttributesEx`,`CastingTimeIndex`,`ProcChance`,`DurationIndex`,`RangeIndex`,`EquippedItemClass`,`Effect1`,`EffectImplicitTargetA1`,`EffectApplyAuraName1`,`DmgMultiplier1`,`DmgMultiplier2`,`DmgMultiplier3`,`Comment`) VALUES
(5302,536871312,1024,1,101,28,1,-1,6,1,4,1,1,1, 'Defensive State - Follows a successful block,dodge or parry.');

-- Update info for spell 3617 found in earlier patches dbc
UPDATE `spell_dbc` SET `Attributes`=256,`CastingTimeIndex`=1,`ProcChance`=101,`SpellLevel`=45,`RangeIndex`=1,`Effect1`=1,`EffectDieSides1`=1,`EffectBasePoints1`=1,`EffectImplicitTargetA1`=1,`DmgMultiplier1`=1,`DmgMultiplier2`=1,`DmgMultiplier3`=1 WHERE `id`=3617;
-- Update info for spell 7056 found in earlier patches dbc
UPDATE `spell_dbc` SET `Attributes`=336,`CastingTimeIndex`=1,`ProcChance`=101,`DurationIndex`=21,`RangeIndex`=1,`Effect1`=6,`EffectImplicitTargetA1`=1,`EffectApplyAuraName1`=25,`DmgMultiplier2`=1,`DmgMultiplier2`=1,`DmgMultiplier3`=1,`Comment`= 'Pacified' WHERE `id`=7056;

-- Spawn Nozdormu (Remember to set guid)
DELETE FROM `creature` WHERE `id`=27925;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
(152260,27925,571,1,1,0,0,4112.988,-417.6215,191.0509,1.727876,300,0,0,1,0,0,0,0,0,0);

-- SAI for Henze Faulk
SET @ENTRY := 6172;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- AI
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - On spawn - add aura'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - set npcflags'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - On spawn - set phase 1'),
(@ENTRY,0,3,0,8,1,100,0,8593,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - On spellhit - run script (phase 1)'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - set phase 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Henze Faulk - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Henze Faulk - Script - say text'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - set npcflags'),
(@ENTRY*100,9,4,0,0,0,100,0,120000,120000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Henze Faulk - Script - evade (reset script)');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Thank you, dear $C, you just saved my life.',0,7,100,1,0,0, 'Henze Faulk');
-- Scripting cleanup
UPDATE `creature_template` SET `ScriptName`= '',`RegenHealth`=0 WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=@ENTRY;

-- SAI for Narm Faulk
SET @ENTRY := 6177;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@ENTRY*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- AI
(@ENTRY,0,0,1,11,0,100,0,0,0,0,0,11,29266,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - On spawn - add aura'),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - set npcflags'),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - On spawn - set phase 1'),
(@ENTRY,0,3,0,8,1,100,0,8593,0,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - On spellhit - run script (phase 1)'),
-- Script
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - set phase 0'),
(@ENTRY*100,9,1,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Narm Faulk - Script - turn to player'),
(@ENTRY*100,9,2,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Narm Faulk - Script - say text'),
(@ENTRY*100,9,3,0,0,0,100,0,1500,1500,0,0,81,2,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - set npcflags'),
(@ENTRY*100,9,4,0,0,0,100,0,120000,120000,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Narm Faulk - Script - evade (reset script)');
-- NPC talk text insert
DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Thank you, dear $C, you just saved my life.',0,7,100,1,0,0, 'Narm Faulk');
-- Scripting cleanup
UPDATE `creature_template` SET `ScriptName`= '',`RegenHealth`=0 WHERE `entry`=@ENTRY;
UPDATE `creature_template_addon` SET `auras`='' WHERE `entry`=@ENTRY;

-- SAI for Fhyron Shadesong
SET @ENTRY := 33788;
UPDATE `creature` SET `spawndist`=0,`MovementType`=0,`position_x`=8570.943,`position_y`=1008.467,`position_z`=548.2927 WHERE `guid`=85201;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@ENTRY; 
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@ENTRY*100;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,@ENTRY,1,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - On spawn - Start WP movement'),
(@ENTRY,0,1,0,40,0,100,0,8,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 8 - run script'),
(@ENTRY,0,2,0,40,0,100,0,10,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 10 - run script'),
(@ENTRY,0,3,0,40,0,100,0,12,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 12 - run script'),
(@ENTRY,0,4,0,40,0,100,0,14,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 14 - run script'),
(@ENTRY,0,5,0,40,0,100,0,15,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 15 - run script'),
(@ENTRY,0,6,0,40,0,100,0,17,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 17 - run script'),
(@ENTRY,0,7,0,40,0,100,0,18,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 18 - run script'),
(@ENTRY,0,8,0,40,0,100,0,20,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 20 - run script'),
(@ENTRY,0,9,0,40,0,100,0,21,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 21 - run script'),
(@ENTRY,0,10,0,40,0,100,0,26,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 26 - run script'),
(@ENTRY,0,11,0,40,0,100,0,28,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 28 - run script'),
(@ENTRY,0,12,0,40,0,100,0,31,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 31 - run script'),
(@ENTRY,0,13,0,40,0,100,0,33,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 33 - run script'),
(@ENTRY,0,14,0,40,0,100,0,38,@ENTRY,0,0,80,@ENTRY*100,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Reach wp 38 - run script'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,54,8000,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Script - Pause path'),
(@ENTRY*100,9,1,0,0,0,100,0,100,100,0,0,66,0,0,0,0,0,0,19,33787,0,0,0,0,0,0, 'Fhyron Shadesong - Script - turn to Tournament Druid Spell Target'),
(@ENTRY*100,9,2,0,0,0,100,0,100,100,0,0,11,63678,0,0,0,0,0,19,33787,0,0,0,0,0,0, 'Fhyron Shadesong - Script - Cast Earthliving Visual on Tournament Druid Spell Target'),
(@ENTRY*100,9,3,0,0,0,50,0,4000,4000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0, 'Fhyron Shadesong - Script - say text 0');
-- NPC talk text insert from sniff
DELETE FROM `creature_text` WHERE `entry`=@ENTRY; 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
(@ENTRY,0,0, 'Help shield us from these cutting winds, little sapling.',0,7,100,2,0,0, 'Fhyron Shadesong'),
(@ENTRY,0,1, 'There you are',0,7,100,273,0,0, 'Fhyron Shadesong'),
(@ENTRY,0,2, 'Grow, little one.',0,7,100,273,0,0, 'Fhyron Shadesong');
-- Waypoints for Fhyron Shadesong from sniff
DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ENTRY,1,8567.44,973.9194,547.9177, 'Fhyron Shadesong'),
(@ENTRY,2,8568.162,947.0933,547.8038, 'Fhyron Shadesong'),
(@ENTRY,3,8566.031,913.37,548.2927, 'Fhyron Shadesong'),
(@ENTRY,4,8564.706,894.527,547.6705, 'Fhyron Shadesong'),
(@ENTRY,5,8567.681,876.0731,547.5937, 'Fhyron Shadesong'),
(@ENTRY,6,8578.911,863.8034,548.4218, 'Fhyron Shadesong'),
(@ENTRY,7,8590.869,849.7815,547.6718, 'Fhyron Shadesong'),
(@ENTRY,8,8603.909,853.178,548.1281, 'Fhyron Shadesong'),
(@ENTRY,9,8599.38,855.512,547.715, 'Fhyron Shadesong'),
(@ENTRY,10,8591.701,868.5342,549.3784, 'Fhyron Shadesong'),
(@ENTRY,11,8586.77,871.798,547.876, 'Fhyron Shadesong'),
(@ENTRY,12,8586.149,883.8123,549.2509, 'Fhyron Shadesong'),
(@ENTRY,13,8583.74,886.251,548.96, 'Fhyron Shadesong'),
(@ENTRY,14,8582.075,903.0688,550.0374, 'Fhyron Shadesong'),
(@ENTRY,15,8585.078,918.2136,548.6675, 'Fhyron Shadesong'),
(@ENTRY,16,8581.65,944.137,547.897, 'Fhyron Shadesong'),
(@ENTRY,17,8582.839,948.3386,547.6221, 'Fhyron Shadesong'),
(@ENTRY,18,8565.45,986.6495,549.3403, 'Fhyron Shadesong'),
(@ENTRY,19,8570.5,989.399,547.629, 'Fhyron Shadesong'),
(@ENTRY,20,8576.626,1006.561,549.2132, 'Fhyron Shadesong'),
(@ENTRY,21,8586.87,1008.438,548.1278, 'Fhyron Shadesong'),
(@ENTRY,22,8590.46,1005.12,547.563, 'Fhyron Shadesong'),
(@ENTRY,23,8599.41,1007.08,547.419, 'Fhyron Shadesong'),
(@ENTRY,24,8602.17,1013.39,548.185, 'Fhyron Shadesong'),
(@ENTRY,25,8604.88,1030.23,556.734, 'Fhyron Shadesong'),
(@ENTRY,26,8612.658,1035.293,558.3499, 'Fhyron Shadesong'),
(@ENTRY,27,8611.47,1039.23,558.735, 'Fhyron Shadesong'),
(@ENTRY,28,8613.692,1042.313,558.3265, 'Fhyron Shadesong'),
(@ENTRY,29,8603.88,1044.65,558.38, 'Fhyron Shadesong'),
(@ENTRY,30,8598.02,1072.57,557.923, 'Fhyron Shadesong'),
(@ENTRY,31,8602.397,1081.373,558.2934, 'Fhyron Shadesong'),
(@ENTRY,32,8597.45,1089.27,557.317, 'Fhyron Shadesong'),
(@ENTRY,33,8600.864,1092.901,557.4839, 'Fhyron Shadesong'),
(@ENTRY,34,8593.38,1084.72,556.817, 'Fhyron Shadesong'),
(@ENTRY,35,8578.9,1068.6,557.38, 'Fhyron Shadesong'),
(@ENTRY,36,8563.31,1065.51,554.057, 'Fhyron Shadesong'),
(@ENTRY,37,8549.85,1061.87,550.61, 'Fhyron Shadesong'),
(@ENTRY,38,8547.754,1051.273,550.2899, 'Fhyron Shadesong'),
(@ENTRY,39,8544.317,1042.702,549.2928, 'Fhyron Shadesong'),
(@ENTRY,40,8557.891,1029.923,548.1677, 'Fhyron Shadesong'),
(@ENTRY,41,8566.168,1017.246,548.1677, 'Fhyron Shadesong'),
(@ENTRY,42,8570.943,1008.467,548.2927, 'Fhyron Shadesong');
-- Change InhabitType for 33787 "Tournament Druid Spell Target"
UPDATE `creature_template` SET `InhabitType`=1 WHERE `entry`=33787;

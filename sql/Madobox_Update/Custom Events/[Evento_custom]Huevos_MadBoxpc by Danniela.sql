/*
* ***********************************
*   Evento Huevitos MadBoxpc Danniela
* ***********************************
*/
-- Variables
SET @EventID     := 70; 
-- Game Event
DELETE FROM `game_event` WHERE `eventEntry` IN (70,71); -- Clean up para los eventos anteriores (threat of azeroth)
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES
('70','2010-09-20 02:01:00','02020-12-31 02:00:00','525600','20160','372','La búsqueda de los huevitos perdidos','0');
-- huevos Objects
DELETE FROM `gameobject_template` WHERE `entry` = 600000;
insert into `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `WDBVerified`) values
('600000','3','1407','MadBoxPc Eggs','','','','0','0','1','0','0','0','0','0','0','43','600000','0','1','0','0','0','194047','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','','11723');
-- loot
DELETE FROM `gameobject_loot_template` WHERE `entry` = 600000;
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
('600000','44794','0.5','1','0','1','1'),
('600000','32617','0.5','1','0','1','1'),
('600000','49857','10','1','0','1','1'),
('600000','44803','25','1','0','1','1'),
('600000','45073','5','1','0','1','1'),
('600000','44791','80','1','0','1','1'),
('600000','34258','50','1','0','1','1'),
('600000','49856','50','1','0','1','1'), 
('600000','49861','50','1','0','1','1'),
('600000','49859','50','1','0','1','1'),
('600000','8497','50','1','0','1','1'),
('600000','21570','50','1','0','1','1'), 
('600000','29364','50','1','0','1','1'),
('600000','21747','30','1','0','1','1'),
('600000','21536','20','1','0','1','1');
-- spawn objects
DELETE FROM `gameobject` WHERE `guid` BETWEEN '255232' AND '255383';
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255232','600000','571','1','1','5700.48','600.995','644.338','4.51377','0','0','0.773729','-0.633516','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255233','600000','571','1','1','5619.48','676.682','651.993','5.41305','0','0','0.421472','-0.906841','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255234','600000','571','1','1','5986.59','664.345','642.371','6.16703','0','0','0.0580451','-0.998314','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255235','600000','571','1','1','5875.53','702.328','644.695','2.33429','0','0','0.919632','0.392781','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255236','600000','571','1','1','5671','839.273','582.883','2.44895','0','0','0.940628','0.339438','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255237','600000','571','1','1','5781.84','574.855','609.158','4.84677','0','0','0.658035','-0.752987','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255238','600000','571','1','1','5935.08','551.518','594.56','5.02192','0','0','0.589655','-0.807655','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255239','600000','571','1','1','5854.03','447.614','657.542','4.1949','0','0','0.864494','-0.502643','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255240','600000','1','1','1','1637.74','-4349.78','4.64432','6.04282','0','0','0.119896','-0.992786','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255241','600000','1','1','1','1749.03','-4313.22','33.5095','0.772007','0','0','0.376489','0.926421','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255242','600000','1','1','1','1598.93','-4461.82','36.8795','0.908146','0','0','0.438629','0.898668','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255243','600000','1','1','1','1580.15','-4387.4','8.05439','3.54709','0','0','0.979517','-0.201361','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255244','600000','1','1','1','1692.67','-4427.04','22.0146','0.0402815','0','0','0.0201394','0.999797','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255245','600000','1','1','1','1782.51','-4484.81','45.6485','0.121957','0','0','0.0609408','0.998141','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255246','600000','1','1','1','1825.6','-4479.95','49.8747','1.06522','0','0','0.507784','0.861485','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255247','600000','1','1','1','1889.42','-4482.82','53.5579','4.68512','0','0','0.716681','-0.697401','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255248','600000','1','1','1','1882.74','-4557.74','32.1236','4.51862','0','0','0.772191','-0.635391','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255249','600000','1','1','1','2026.2','-4598.53','23.7849','0.623042','0','0','0.306507','0.951868','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255250','600000','1','1','1','2046.49','-4752.46','30.1687','0.240547','0','0','0.119984','0.992776','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255251','600000','1','1','1','2099.36','-4827.36','35.2349','1.91187','0','0','0.816853','0.576846','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255252','600000','1','1','1','1838.99','-4339.91','-15.4455','2.28729','0','0','0.910149','0.41428','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255253','600000','1','1','1','1793.46','-4302.43','-9.95041','2.89126','0','0','0.992177','0.124839','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255254','600000','1','1','1','1907.29','-4213.5','42.3145','2.33027','0','0','0.918843','0.394624','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255255','600000','1','1','1','1919.87','-4122.98','44.3161','1.65954','0','0','0.737778','0.675044','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255256','600000','1','1','1','2006.17','-4807.62','66.1054','6.27927','0','0','0.00195924','-0.999998','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255257','600000','1','1','1','1884.64','-4687.21','37.4491','0.68566','0','0','0.336154','0.941807','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255258','600000','1','1','1','1754.88','-4322.89','45.8713','6.23371','0','0','0.0247343','-0.999694','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255259','600000','1','1','1','1713.79','-4214.56','51.8813','4.39588','0','0','0.809708','-0.586833','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255260','600000','1','1','1','1670.27','-4195.86','56.3831','5.49072','0','0','0.385944','-0.922522','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255261','600000','1','1','1','1705.76','-3894.76','51.3173','0.257619','0','0','0.128453','0.991716','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255262','600000','1','1','1','1281.27','-4195.9','27.8569','3.94114','0','0','0.92115','-0.389208','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255263','600000','1','1','1','1160.57','-4154.43','22.7202','4.51919','0','0','0.772011','-0.63561','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255264','600000','1','1','1','1417.65','-4380.8','25.4628','3.21857','0','0','0.999259','-0.0384805','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255265','600000','1','1','1','1399.18','-4499.1','31.6574','5.06347','0','0','0.57275','-0.81973','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255266','600000','1','1','1','1171.77','-4466.43','21.1803','2.04597','0','0','0.853666','0.520821','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255267','600000','1','1','1','1489.54','-4375.71','27.6708','2.18263','0','0','0.887234','0.46132','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255268','600000','1','1','1','1678.92','-4448.83','45.8771','2.80622','0','0','0.985974','0.1669','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255269','600000','1','1','1','1934.78','-4520.05','29.7739','5.98081','0','0','0.150614','-0.988593','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255270','600000','1','1','1','1894.21','-4309.48','21.6544','2.75911','0','0','0.981769','0.190079','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255271','600000','1','1','1','1991.08','-4207.1','31.7812','4.32441','0','0','0.830157','-0.557529','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255272','600000','1','1','1','1828.54','-4409.2','8.65762','4.80036','0','0','0.675329','-0.737516','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255273','600000','0','1','1','-9021.89','486.862','55.0084','5.32299','0','0','0.461865','-0.88695','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255274','600000','0','1','1','-9008.38','319.463','106.633','0.124438','0','0','0.0621791','0.998065','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255275','600000','0','1','1','-9136.23','422.449','93.3865','3.96504','0','0','0.916433','-0.400188','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255276','600000','0','1','1','-8970.9','358.23','83.9594','5.45415','0','0','0.402748','-0.915311','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255277','600000','0','1','1','-8862.13','617.297','102.369','4.5399','0','0','0.765387','-0.643571','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255278','600000','0','1','1','-8773.83','647.234','97.2237','0.0780554','0','0','0.0390178','0.999238','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255279','600000','0','1','1','-8749.97','654.923','112.977','3.72153','0','0','0.958253','-0.285921','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255280','600000','0','1','1','-8682.7','578.966','96.9505','4.65537','0','0','0.726976','-0.686663','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255281','600000','0','1','1','-8652.81','386.38','104.268','6.03453','0','0','0.124007','-0.992281','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255282','600000','0','1','1','-8764.65','403.947','109.708','1.33627','0','0','0.619524','0.784978','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255283','600000','0','1','1','-8603.66','393.774','104.056','0.341958','0','0','0.170147','0.985419','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255284','600000','0','1','1','-8654.31','450.228','108.717','2.79712','0','0','0.985204','0.171387','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255285','600000','0','1','1','-8539.44','617.415','102.877','0.962427','0','0','0.462855','0.886434','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255286','600000','0','1','1','-8429.04','667.427','94.9773','4.40404','0','0','0.807305','-0.590134','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255287','600000','0','1','1','-8413.46','628.379','97.3292','3.62336','0','0','0.971128','-0.23856','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255288','600000','0','1','1','-8458.03','488.119','99.7807','1.2224','0','0','0.573849','0.818961','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255289','600000','0','1','1','-8680.09','525.417','97.6924','0.0702205','0','0','0.035103','0.999384','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255290','600000','0','1','1','-8440.43','331.759','123.481','5.37558','0','0','0.438388','-0.898786','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255291','600000','0','1','1','-8395.25','473.158','123.76','5.02294','0','0','0.589243','-0.807956','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255292','600000','0','1','1','-8569.68','890.438','106.519','0.583078','0','0','0.287427','0.957803','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255293','600000','0','1','1','-8514.61','861.046','111.039','5.24834','0','0','0.494641','-0.869097','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255294','600000','0','1','1','-8631.35','888.76','103.335','3.58722','0','0','0.975279','-0.220977','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255295','600000','0','1','1','-8433.43','1115.83','19.0518','2.00464','0','0','0.842723','0.538347','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255296','600000','0','1','1','-8603.82','1170.5','19.4315','3.07278','0','0','0.999408','0.0343974','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255297','600000','0','1','1','-8452.28','1247.59','6.81876','3.04922','0','0','0.998934','0.0461689','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255298','600000','0','1','1','-8114.97','1259.97','7.79685','6.23794','0','0','0.0226208','-0.999744','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255299','600000','0','1','1','-8986.8','800.278','101.95','1.81458','0','0','0.787836','0.615884','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255300','600000','0','1','1','-8936.46','893.15','108.104','5.76513','0','0','0.25614','-0.96664','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255301','600000','0','1','1','-8989.65','1044.46','103.636','2.3133','0','0','0.91546','0.402409','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255302','600000','0','1','1','-8979.09','1052.25','71.3095','5.54128','0','0','0.362502','-0.931983','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255303','600000','0','1','1','1592.74','256.745','-62.1029','1.44923','0','0','0.662846','0.748756','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255304','600000','0','1','1','1686.43','281.055','-62.1388','4.16906','0','0','0.870916','-0.491432','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255305','600000','0','1','1','1572.84','421.198','-62.1819','1.84271','0','0','0.796422','0.604741','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255306','600000','0','1','1','1491.44','448.547','-61.2017','2.81975','0','0','0.98708','0.16023','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255307','600000','0','1','1','1405.11','366.289','-84.953','5.10761','0','0','0.554519','-0.832171','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255308','600000','0','1','1','1410.76','153.86','-61.2729','2.1875','0','0','0.888355','0.459157','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255309','600000','0','1','1','1398.6','16.7164','-62.275','4.75732','0','0','0.691043','-0.722814','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255310','600000','0','1','1','1676.02','94.9102','-62.0909','2.04927','0','0','0.854525','0.519411','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255311','600000','0','1','1','1773.18','47.6931','-61.4909','3.21637','0','0','0.999301','-0.0373803','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255312','600000','0','1','1','1790.07','125.607','-63.8433','1.11779','0','0','0.530249','0.847842','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255313','600000','0','1','1','1647.91','267.175','-62.1775','4.64815','0','0','0.729449','-0.684035','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255314','600000','0','1','1','1595.57','241.3','-52.1427','4.7471','0','0','0.694727','-0.719273','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255315','600000','0','1','1','1604.82','198.091','-54.8448','3.98134','0','0','0.91314','-0.407646','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255316','600000','0','1','1','1656.82','479.776','-12.8015','6.23857','0','0','0.0223038','-0.999751','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255317','600000','0','1','1','1690.27','398.364','1.0517','4.15335','0','0','0.87475','-0.484575','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255318','600000','530','1','1','9363.71','-7303.3','6.07183','4.58723','0','0','0.749943','-0.661503','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255319','600000','530','1','1','9472.52','-7263.39','14.2251','1.80614','0','0','0.785232','0.619202','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255320','600000','530','1','1','9576.63','-7225.52','16.8435','4.25894','0','0','0.847959','-0.530061','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255321','600000','530','1','1','9707.5','-7275.18','16.6395','5.9067','0','0','0.187132','-0.982335','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255322','600000','530','1','1','9683.42','-7388.64','24.1288','5.13544','0','0','0.542886','-0.839806','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255323','600000','530','1','1','9763.24','-7283.98','26.0037','1.92081','0','0','0.819424','0.573187','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255324','600000','530','1','1','9789.16','-7229.33','26.437','5.08675','0','0','0.563169','-0.826342','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255325','600000','530','1','1','9840.02','-7249.81','26.4389','5.19828','0','0','0.516237','-0.856446','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255326','600000','530','1','1','9953.16','-7255.68','33.9173','5.41898','0','0','0.418782','-0.908087','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255327','600000','530','1','1','10027.4','-7209.42','32.6739','5.4182','0','0','0.419137','-0.907923','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255328','600000','530','1','1','9961.05','-7130.52','47.7482','1.00956','0','0','0.483617','0.87528','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255329','600000','530','1','1','9996.21','-7045.65','47.421','1.26011','0','0','0.589188','0.807996','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255330','600000','530','1','1','10022.4','-7014.46','43.2684','1.97089','0','0','0.833519','0.55249','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255331','600000','530','1','1','9872.22','-7140.7','31.543','1.48709','0','0','0.676901','0.736074','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255332','600000','530','1','1','9877.94','-7204.86','30.8779','2.98091','0','0','0.996774','0.0802532','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255333','600000','1','1','1','-1299.74','129.257','131.678','2.35996','0','0','0.924599','0.380942','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255334','600000','1','1','1','-1262.16','97.9299','124.804','5.73874','0','0','0.268871','-0.963176','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255335','600000','1','1','1','-1151.91','23.0385','147.049','3.3048','0','0','0.996672','-0.0815133','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255336','600000','1','1','1','-1036.9','-50.6673','69.3126','1.88402','0','0','0.808741','0.588165','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255337','600000','1','1','1','-1177.37','-58.3632','162.678','5.43637','0','0','0.410868','-0.911695','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255338','600000','1','1','1','-1177.19','-59.9057','163.149','0.51978','0','0','0.256974','0.966418','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255339','600000','1','1','1','-1457.91','-108.053','159.019','4.60778','0','0','0.743109','-0.66917','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255340','600000','1','1','1','-1319.6','18.4474','138.361','5.92882','0','0','0.176258','-0.984344','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255341','600000','1','1','1','-1290.97','46.0881','137.984','4.82848','0','0','0.664896','-0.746936','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255342','600000','1','1','1','-1135.05','38.1679','143.353','6.18878','0','0','0.0471828','-0.998886','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255343','600000','1','1','1','-1108','-24.423','151.286','1.45676','0','0','0.665662','0.746253','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255344','600000','1','1','1','-1068.49','-208.538','159.031','3.71399','0','0','0.959323','-0.28231','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255345','600000','1','1','1','-1050.4','-287.926','159.404','1.59499','0','0','0.715609','0.698501','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255346','600000','1','1','1','-1177.62','-116.881','163.017','2.54532','0','0','0.955886','0.293739','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255347','600000','1','1','1','-1192.38','39.2378','150.418','1.25334','0','0','0.586451','0.809985','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255348','600000','530','1','1','-3930.85','-11605.2','-138.674','3.55','0','0','0.979223','-0.202788','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255349','600000','530','1','1','-3996.19','-11530.8','-140.919','0.875716','0','0','0.424001','0.905662','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255350','600000','530','1','1','-3938.93','-11628','-136.985','5.66743','0','0','0.303037','-0.952979','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255351','600000','530','1','1','-4031.87','-11870.4','-0.139381','2.08287','0','0','0.863129','0.504984','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255352','600000','530','1','1','-4061.85','-11772.4','3.08596','3.72513','0','0','0.957736','-0.287649','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255353','600000','530','1','1','-3928.7','-11930.4','1.08765','4.01574','0','0','0.905995','-0.423288','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255354','600000','530','1','1','-3901.7','-11659.3','-311.121','5.21425','0','0','0.509384','-0.860539','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255355','600000','530','1','1','-4196.58','-11847.3','-132.777','3.01043','0','0','0.99785','0.0655356','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255356','600000','530','1','1','-4250.36','-11773.5','-91.566','5.49464','0','0','0.384136','-0.923276','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255357','600000','530','1','1','-4284.66','-11824.4','-99.7141','5.36897','0','0','0.441352','-0.897334','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255358','600000','530','1','1','-4120.89','-11786.3','-136.166','1.01866','0','0','0.487592','0.873072','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255359','600000','530','1','1','-4221.7','-11723.4','-143.571','3.71572','0','0','0.95908','-0.283136','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255360','600000','530','1','1','-4281.53','-11658.5','-141.225','2.78109','0','0','0.983799','0.179277','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255361','600000','530','1','1','-4283.54','-11765.6','-132.152','1.86139','0','0','0.802035','0.597277','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255362','600000','530','1','1','-4243.38','-11833.2','-132.238','3.65681','0','0','0.967001','-0.254771','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255363','600000','1','1','1','9891.51','2315.01','1329.26','5.44432','0','0','0.407244','-0.913319','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255364','600000','1','1','1','9823.19','2121.3','1332.22','3.51617','0','0','0.982513','-0.186194','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255365','600000','1','1','1','9980.93','2005.65','1353.94','1.0618','0','0','0.506309','0.862352','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255366','600000','1','1','1','9759.85','2270.19','1328.88','5.08775','0','0','0.562758','-0.826622','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255367','600000','1','1','1','9701.82','2343.08','1331.97','1.18039','0','0','0.556523','0.830832','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255368','600000','1','1','1','9826.87','2429.67','1313.93','0.0981105','0','0','0.0490356','0.998797','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255369','600000','1','1','1','9910.18','2470.91','1308.24','3.62926','0','0','0.970419','-0.241425','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255370','600000','1','1','1','9622.37','2460.42','1337.29','2.1747','0','0','0.885399','0.464832','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255371','600000','1','1','1','9628.12','2511.74','1332.4','3.2507','0','0','0.998512','-0.0545258','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255372','600000','1','1','1','9657.52','2517.73','1361','4.5254','0','0','0.770032','-0.638005','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255373','600000','0','1','1','-4879.47','-979.685','505.275','6.05964','0','0','0.111539','-0.99376','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255374','600000','0','1','1','-5004.68','-1077.11','483.158','4.64671','0','0','0.729943','-0.683508','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255375','600000','0','1','1','-4785.94','-875.503','502.84','3.51024','0','0','0.98306','-0.183282','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255376','600000','0','1','1','-5037.82','-923.651','501.661','5.35121','0','0','0.449303','-0.893379','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255377','600000','0','1','1','-4911.91','-999.778','501.997','5.31195','0','0','0.466755','-0.884387','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255378','600000','0','1','1','-4585.54','-927.525','504.265','4.7983','0','0','0.67609','-0.736819','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255379','600000','0','1','1','-4730.33','-1006.18','510.324','5.04962','0','0','0.578412','-0.815745','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255380','600000','0','1','1','-4648.89','-955.219','500.379','5.98817','0','0','0.146971','-0.989141','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255381','600000','0','1','1','-4598.42','-916.756','501.073','3.0877','0','0','0.999637','0.0269423','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255382','600000','0','1','1','-4718.7','-1113.25','502.225','5.82874','0','0','0.225274','-0.974295','1800','0','1');
insert into `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) values('255383','600000','0','1','1','-4895.16','-1080.18','503.745','2.51435','0','0','0.951223','0.308503','1800','0','1');
-- Spawn event
DELETE FROM `game_event_gameobject` WHERE `eventEntry` = 70;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
('70','255236'),
('70','255240'),
('70','255237'),
('70','255232'),
('70','255233'),
('70','255234'),
('70','255235'),
('70','255238'),
('70','255239'),
('70','255241'),
('70','255242'),
('70','255243'),
('70','255244'),
('70','255245'),
('70','255246'),
('70','255247'),
('70','255248'),
('70','255249'),
('70','255250'),
('70','255251'),
('70','255252'),
('70','255253'),
('70','255254'),
('70','255255'),
('70','255256'),
('70','255257'),
('70','255258'),
('70','255259'),
('70','255260'),
('70','255261'),
('70','255262'),
('70','255263'),
('70','255264'),
('70','255265'),
('70','255266'),
('70','255267'),
('70','255268'),
('70','255269'),
('70','255270'),
('70','255271'),
('70','255272'),
('70','255273'),
('70','255274'),
('70','255275'),
('70','255276'),
('70','255277'),
('70','255278'),
('70','255279'),
('70','255280'),
('70','255281'),
('70','255282'),
('70','255283'),
('70','255284'),
('70','255285'),
('70','255286'),
('70','255287'),
('70','255288'),
('70','255289'),
('70','255290'),
('70','255291'),
('70','255292'),
('70','255293'),
('70','255294'),
('70','255295'),
('70','255296'),
('70','255297'),
('70','255298'),
('70','255299'),
('70','255300'),
('70','255301'),
('70','255302'),
('70','255303'),
('70','255304'),
('70','255305'),
('70','255306'),
('70','255307'),
('70','255308'),
('70','255309'),
('70','255310'),
('70','255311'),
('70','255312'),
('70','255313'),
('70','255314'),
('70','255315'),
('70','255316'),
('70','255317'),
('70','255318'),
('70','255319'),
('70','255320'),
('70','255321'),
('70','255322'),
('70','255323'),
('70','255324'),
('70','255325'),
('70','255326'),
('70','255327'),
('70','255328'),
('70','255329'),
('70','255330'),
('70','255331'),
('70','255332'),
('70','255333'),
('70','255334'),
('70','255335'),
('70','255336'),
('70','255337'),
('70','255338'),
('70','255339'),
('70','255340'),
('70','255341'),
('70','255342'),
('70','255343'),
('70','255344'),
('70','255345'),
('70','255346'),
('70','255347'),
('70','255348'),
('70','255349'),
('70','255350'),
('70','255351'),
('70','255352'),
('70','255353'),
('70','255354'),
('70','255355'),
('70','255356'),
('70','255357'),
('70','255358'),
('70','255359'),
('70','255360'),
('70','255361'),
('70','255362'),
('70','255363'),
('70','255364'),
('70','255365'),
('70','255366'),
('70','255367'),
('70','255368'),
('70','255369'),
('70','255370'),
('70','255371'),
('70','255372'),
('70','255373'),
('70','255374'),
('70','255375'),
('70','255376'),
('70','255377'),
('70','255378'),
('70','255379'),
('70','255380'),
('70','255381'),
('70','255382'),
('70','255383');

/*
-- Revert
DELETE FROM `game_event` WHERE `eventEntry` IN (70);
DELETE FROM `gameobject_template` WHERE `entry` = 600000;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 600000;
DELETE FROM `gameobject` WHERE `guid` BETWEEN '255232' AND '255383';
DELETE FROM `gameobject` WHERE `id` = 600000;
DELETE FROM `game_event_gameobject` WHERE `eventEntry` = 70;
*/
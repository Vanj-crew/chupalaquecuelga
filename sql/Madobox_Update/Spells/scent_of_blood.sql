INSERT INTO `spell_proc_event` (`entry`,`procEx`) VALUES
(49004,0x00000033),
(49508,0x00000033),
(49509,0x00000033);

-- Añadida correccion frecuencia "Maquina de Matar"
UPDATE spell_proc_event SET ppmRate = 1, procEx = 1 WHERE entry = 51123; 
UPDATE spell_proc_event SET ppmRate = 2, procEx = 1 WHERE entry = 51127; 
UPDATE spell_proc_event SET ppmRate = 3, procEx = 1 WHERE entry = 51128; 
UPDATE spell_proc_event SET ppmRate = 4, procEx = 1 WHERE entry = 51129; 
UPDATE spell_proc_event SET ppmRate = 5, procEx = 1 WHERE entry = 51130;
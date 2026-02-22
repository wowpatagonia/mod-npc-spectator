DELETE FROM `creature_template` WHERE `entry`=190000;
INSERT INTO `creature_template` (`entry`, `name`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(190000, "Espectador de Arena", "Speak", 0, 80, 80, 2, 35, 3, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 16777216, 'ArenaSpectatorNPC_Creature');

DELETE FROM `creature_template_model` WHERE `CreatureID` = 190000;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(190000, 0, 29348, 1, 1, 0);

SET @NPC_TEXT_SPECTATOR = "Las listas en el menú contienen todas las partidas de arena que están en curso actualmente. Puedes espectar una partida simplemente seleccionando la que desees. Si quieres espectar a un jugador específico, selecciona la opción correspondiente e ingresa el nombre del jugador.$B$BEl siguiente comando te permite salir de la arena que estás espectando.$B.spectate leave$B$BPara ver la partida desde la perspectiva de un concursante usa$B.spectate watch nombrejugador/objetivo$B$BPuedes ingresar el nombre de un jugador o simplemente seleccionar un objetivo para hacerlo.$BSin objetivo se restablece la vista a ti mismo.$B$BRecuerda que no puedes usar “say” mientras estás espectando.$BUsa un canal diferente como guild para ejecutar comandos.";
DELETE FROM `npc_text` WHERE `id`=190017;
INSERT INTO `npc_text` (`id`, `text0_0`, `text0_1`, `Probability0`) VALUES
(190017, @NPC_TEXT_SPECTATOR, @NPC_TEXT_SPECTATOR, 1);

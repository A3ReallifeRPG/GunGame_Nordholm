scriptName "fn_showArena";

#define __filename "fn_showArena.sqf"

_index = _this select 1;

// Get arena info
_arenaToLoad = getArray(missionConfigFile >> "CfgGungame" >> "Arenas" >> "data") select _index;

// Transition
5000 cutRsc ["gungame_spawntransition","PLAIN"];
sleep 1;

// Move camera to pos
gg_introcam_object camPreparePos [((_arenaToLoad select 0) select 0) - 100,((_arenaToLoad select 0) select 1) - 100, 100];
gg_introcam_object camPrepareTarget (_arenaToLoad select 0);
gg_introcam_object camCommitPrepared 0;
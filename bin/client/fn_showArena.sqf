scriptName "fn_showArena";

#define __filename "fn_showArena.sqf"

disableSerialization;

if (typeName (_this select 0) isEqualTo "SCALAR") exitWith {};

private _mapName = (_this select 0) lbData (_this select 1);

private _arenaCenter = getArray(missionConfigFile >> "CfgGungame" >> "Arenas" >> _mapName >> "center");

// Transition
5000 cutRsc ["gungame_spawntransition","PLAIN"];
sleep 1;

// Move camera to pos
gg_introcam_object camPreparePos [(_arenaCenter select 0) - 100,(_arenaCenter select 1) - 100, 100];
gg_introcam_object camPrepareTarget _arenaCenter;
gg_introcam_object camCommitPrepared 0;
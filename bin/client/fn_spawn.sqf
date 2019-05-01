scriptName "fn_spawn";

#define __filename "fn_spawn.sqf"

_arena = (getArray(missionConfigFile >> "CfgGungame" >> "Arenas" >> "data")) select gg_mapindex;
_spawnpoints = _arena select 3;
_myspawnpoint = _spawnpoints call BIS_fnc_selectRandom;

// Check if there is a player near the spawnpoint and if yes change it (https://github.com/MasterPuffin/GunGame/blob/master/bin/client/fn_spawn.sqf)
_num = 9;

while {_num > 1} do {
myspawnpoint = _spawnpoints call BIS_fnc_selectRandom;
_list = myspawnpoint nearEntities ["Man", 3];
_num = count _list;
sleep 1;
};

// Set player pos
player setPosATL _myspawnpoint;

// Make player invincble
player allowDamage false;

// Give loadout
[] spawn gg_fnc_loadLevelLoadout;

[] spawn {
	sleep 2;
	player allowDamage true;
};
	player switchCamera "EXTERNAL";
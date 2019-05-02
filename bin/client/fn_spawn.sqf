scriptName "fn_spawn";

#define __filename "fn_spawn.sqf"

_arena = (getArray(missionConfigFile >> "CfgGungame" >> "Arenas" >> "data")) select gg_mapindex;
_spawnpoints = (_arena select 3) call BIS_fnc_arrayShuffle;;

private _myspawnpoint = [];

while {_myspawnpoint isEqualTo []} do {
	{
		if ((count (_x nearEntities ["Man", 4])) isEqualTo 0) exitWith {
			_myspawnpoint = _x;
		};
	} forEach _spawnpoints;

	if (_myspawnpoint isEqualTo []) then {
		sleep 1;
	};
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




[] spawn {
	waitUntil { (player getVariable ["ACE_isUnconscious", false]) };

	if !(isNil "life_last_shooter")then {
		if (life_last_shooter != player) then {
			[player] remoteExec ["gg_fnc_kill",life_last_shooter];
		};
	};

	player setDamage 1;
};

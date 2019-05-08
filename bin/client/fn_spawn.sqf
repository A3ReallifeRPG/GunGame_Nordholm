scriptName "fn_spawn";

#define __filename "fn_spawn.sqf"

_arena = (getArray(missionConfigFile >> "CfgGungame" >> "Arenas" >> "data")) select gg_mapindex;
_spawnpoints = (_arena select 3) call BIS_fnc_arrayShuffle;;

private _myspawnpoint = [];

while {_myspawnpoint isEqualTo []} do {
	{
		if ((count (_x nearEntities ["Man", 8])) isEqualTo 0) exitWith {
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

if (isNil "gg_handler_running") then { gg_handler_running = false; };

if !(gg_handler_running) then {
	gg_handler_running = true;

	[] spawn {

		waitUntil { (player getVariable ["ACE_isUnconscious", false]) OR !(alive player) };

		gg_handler_running = false;

		if !(isNil "life_last_shooter") then {
			if (life_last_shooter != player and !(isNull life_last_shooter)) then {
				[player] remoteExec ["gg_fnc_kill",life_last_shooter];
			};
		};

		player setDamage 1;
	};
};


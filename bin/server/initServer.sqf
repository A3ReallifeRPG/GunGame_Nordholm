scriptName "initServer";

#define __filename "initServer.sqf"

// Different vars
gg_gamestatus = 0; // Waiting for weapon list
publicVariable "gg_gamestatus";
gg_mapvotes = [];
{
	gg_mapvotes pushBack 0;
} forEach ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Arenas"));

// Select weapon list

gg_weaponList = configName ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Lists") call BIS_fnc_selectRandom);
publicVariable "gg_weaponList";

private _loadouts = [];
{
	_loadouts pushBack (configName _x);
} forEach ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Loadouts"));

gg_loadout = _loadouts call BIS_fnc_selectRandom;
publicVariable "gg_loadout";

// Wait defined seconds
sleep (getNumber(missionConfigFile >> "CfgGungame" >> "Basic" >> "voteTime"));

// Determine winning map
_winindex = -1;
if (true) then {
	_lowest = -1;
	{
		if (_x > _lowest) then {
			_winindex = _forEachIndex;
			_lowest = _x;
		};
	} forEach gg_mapvotes;
};

{
	if (_forEachIndex isEqualTo _winindex) exitWith {
		gg_map = configName _x;
		publicVariable "gg_map";
	};
} forEach ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Arenas"));

// Start game for all players
[] remoteExec ["gg_fnc_startGame"];

// Set game status to running
gg_gamestatus = 1;
publicVariable "gg_gamestatus";
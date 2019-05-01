scriptName "initServer";

#define __filename "initServer.sqf"

// Different vars
gg_gamestatus = 0; // Waiting for weapon list
publicVariable "gg_gamestatus";
gg_mapvotes = [];
{
	gg_mapvotes pushBack 0;
} forEach (getArray(missionConfigFile >> "CfgGungame" >> "Arenas" >> "data"));

// Select weapon list
if ((getNumber(missionConfigFile >> "CfgGungame" >> "Basic" >> "forceWeaponListAtIndex")) == -1) then {
	_lists = getArray(missionConfigFile >> "CfgGungame" >> "Lists" >> "data");
	_listToPlay = _lists call BIS_fnc_selectRandom;
	gg_weaponList = _listToPlay;
	publicVariable "gg_weaponList";
} else {
	_lists = getArray(missionConfigFile >> "CfgGungame" >> "Lists" >> "data");
	_listToPlay = _lists select (getNumber(missionConfigFile >> "CfgGungame" >> "Basic" >> "forceWeaponListAtIndex"));
	gg_weaponList = _listToPlay;
	publicVariable "gg_weaponList";
};

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

// Publish map index to play
gg_mapindex = _winindex;
publicVariable "gg_mapindex";

// Start game for all players
[] remoteExec ["gg_fnc_startGame"];

// Set game status to running
gg_gamestatus = 1;
publicVariable "gg_gamestatus";
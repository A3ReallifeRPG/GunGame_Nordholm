scriptName "initClient";

#define __filename "initClient.sqf"

// Variables
gg_kills = 0;
gg_deaths = 0;
gg_killfeed_own = "";
gg_level = 0;
gg_stagekills = 0;
gg_killfeed = [];
gg_leadingplayer = objNull;

// Broadcasted vars
player setVariable ["gg_level", 0, true];

// Disable saving
enableSaving [false, false];

// Handlers
[] spawn gg_fnc_setupEventHandlers;

// Wait until server is ready
waitUntil {!isNil "gg_weaponList"};

if (gg_gamestatus == 0) then {
	// Open map selection
	[] spawn gg_fnc_selectMap;
	playMusic "LeadTrack02_F_EPC";
} else {
	[true] spawn gg_fnc_startGame;
};
scriptName "fn_voteForMap";

#define __filename "fn_voteForMap.sqf"

disableSerialization;

_index = lbCurSel ((findDisplay 5100) displayCtrl 1);

// Send vote to server
[_index] remoteExec ["mav_fnc_voteForMap", 2];

// Close dialog
closeDialog 0;

// Display what map he voted for
100 cutRsc ["gungame_mapvotedfor", "PLAIN"];

_display = uiNamespace getVariable "gg_mapvotedfor",
_ctrl = _display displayCtrl 0;

// Display text
_ctrl ctrlSetText format ["Du hast für %1 gestimmt. Warte auf andere Spieler...", (getArray(missionConfigFile >> "CfgGungame" >> "Arenas" >> "data") select _index) select 1];

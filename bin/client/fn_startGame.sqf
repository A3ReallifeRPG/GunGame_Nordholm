scriptName "fn_startGame";

#define __filename "fn_startGame.sqf"

_skipCountdown = param[0,false,[false]];

waitUntil {!isNull player};

// Close dialogs
closeDialog 0;

// Smooth transition
if (!isNil "gg_didSelectMap") then {
	50000 cutRsc ["gungame_blackout", "PLAIN"];
};


2 fadeMusic 0;
sleep 2;
playMusic "";
0 fadeMusic 1;

// Clear some layers
100 cutRsc ["Default", "PLAIN"];

// Destroy cam
if (!isNil "gg_introcam_object") then {
	gg_introcam_object cameraEffect ["TERMINATE","BACK"];
	camDestroy gg_introcam_object;
	player switchCamera "INTERNAL";
};

// Spawn
[] spawn gg_fnc_spawn;

// Display weapon progression display
150 cutRsc ["Progression", "PLAIN"];

// Killfeed display
151 cutRsc ["Killfeed", "PLAIN"];

// Update progression bar
[] spawn gg_fnc_progressionDisplayUpdate;

// Smooth transition in
50000 cutRsc ["gungame_blackin", "PLAIN"];

// Prevent JIP players from having a countdown
if (_skipCountdown) exitWith {};

// Disable player input
disableUserInput true;

//
/*enableRadio false;
enableSentences false;
player disableConversation false;*/
/*0 enableChannel [false, false];
1 enableChannel [true, false];
2 enableChannel [false, false];
3 enableChannel [false, false];
4 enableChannel [false, false];
5 enableChannel [false, false];
6 enableChannel [false, false];
showChat false;*/

// Disable stamina
player enableStamina false;
player setCustomAimCoef 0;

// Countdown
[parseText "<t align='center' shadow='2' size='4'><t color='#F6A821'>3</t></t><br/>", [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
sleep 2;
[parseText "<t align='center' shadow='2' size='4'><t color='#F6A821'>2</t></t><br/>", [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
sleep 2;
[parseText "<t align='center' shadow='2' size='4'><t color='#F6A821'>1</t></t><br/>", [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;
sleep 2;
[parseText "<t align='center' shadow='2' size='4'><t color='#F6A821'>GO! GO! GO!</t></t><br/>", [0,0.7,1,0.5], nil, 7, 0.7, 0] spawn BIS_fnc_textTiles;

disableUserInput false;
["Achtung", "Dieser Server gehört nicht zu ReallifeRPG! Er wird von einer Gang aus der Community gehostet!", [0, 0, 0, 1], [1, 1, 0, 1]] spawn Haz_fnc_createNotification;
["Changelog", "Nebel, Crosshair und Osterhase entfernt!", [0, 0, 0, 1], [1, 1, 0, 1]] spawn Haz_fnc_createNotification;
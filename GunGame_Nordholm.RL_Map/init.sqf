scriptName "init";
#define __filename "init.sqf"

0 enableChannel [true, false];
1 enableChannel [true, false];
2 enableChannel [true, false];
3 enableChannel [true, false];
4 enableChannel [true, false];
execvm "jump.sqf";

"layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];

addMissionEventHandler ["Loaded",
{
	[] spawn
	{
		sleep 2;
		"layer_notifications" cutRsc ["rsc_notifications", "PLAIN"];
	};
}];

["Achtung", "Dieser Server gehört nicht zu ReallifeRPG! Er wird von einer Gang aus der Community gehostet!", [0, 0, 0, 1], [1, 1, 0, 1]] spawn Haz_fnc_createNotification;
["Changelog", "Nebel, Crosshair und Osterhase entfernt!", [0, 0, 0, 1], [1, 1, 0, 1]] spawn Haz_fnc_createNotification;
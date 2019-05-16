scriptName "fn_progressionDisplayUpdate";

#define __filename "fn_progressionDisplayUpdate.sqf"

disableSerialization;

// Get display
private _display = uiNamespace getVariable ["gg_progression", displayNull];

if (isNull _display) exitWith {};

// Update text
(_display displayCtrl 0) ctrlSetText format["Kills benötigt %1/%2", gg_stagekills , getNumber([gg_level] call gg_fnc_currentWeaponListEntry >> "kills")];

// Update current weapon
if ((gg_level) < count ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Lists" >> gg_weaponList))) then {
	private _weapon = configName ([gg_level] call gg_fnc_currentWeaponListEntry);
	(_display displayCtrl 1) ctrlSetStructuredText parseText ("<t align='center' shadow='2' size='5'><img image='" + (([_weapon] call gg_fnc_weaponDetails) select 2) + "'/></t>");
} else {
	(_display displayCtrl 1) ctrlSetText "";
};

// Update current weapon + 1
if ((gg_level + 1) < count ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Lists" >> gg_weaponList))) then {
	private _weapon = configName ([gg_level + 1] call gg_fnc_currentWeaponListEntry);
	(_display displayCtrl 2) ctrlSetStructuredText parseText ("<t align='center' shadow='2' size='5'><img image='" + (([_weapon] call gg_fnc_weaponDetails) select 2) + "'/></t>");
} else {
	(_display displayCtrl 2) ctrlSetText "";
};

// Update current weapon + 2
if ((gg_level + 2) < count ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Lists" >> gg_weaponList))) then {
	private _weapon = configName ([gg_level + 2] call gg_fnc_currentWeaponListEntry);
	(_display displayCtrl 3) ctrlSetStructuredText parseText ("<t align='center' shadow='2' size='5'><img image='" + (([_weapon] call gg_fnc_weaponDetails) select 2) + "'/></t>");
} else {
	(_display displayCtrl 3) ctrlSetText "";
};
player addPrimaryWeaponItem "ace_optic_arco_2d";
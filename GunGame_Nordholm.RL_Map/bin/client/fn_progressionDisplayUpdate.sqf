scriptName "fn_progressionDisplayUpdate";

#define __filename "fn_progressionDisplayUpdate.sqf"

disableSerialization;

// Get display
_display = uiNamespace getVariable ["gg_progression", displayNull];

if (isNull _display) exitWith {};

// Update text
(_display displayCtrl 0) ctrlSetText format["Kills benötigt %1/%2", gg_stagekills ,((gg_weaponList select gg_level) select 1)];

// Update current weapon
if ((gg_level) < count gg_weaponList) then {
	_weapon = (gg_weaponList select gg_level) select 0;
	(_display displayCtrl 1) ctrlSetStructuredText parseText ("<t align='center' shadow='2' size='5'><img image='" + (([_weapon] call gg_fnc_weaponDetails) select 2) + "'/></t>");
} else {
	(_display displayCtrl 1) ctrlSetText "";
};

// Update current weapon + 1
if ((gg_level + 1) < count gg_weaponList) then {
	_weapon = (gg_weaponList select (gg_level + 1)) select 0;
	(_display displayCtrl 2) ctrlSetStructuredText parseText ("<t align='center' shadow='2' size='5'><img image='" + (([_weapon] call gg_fnc_weaponDetails) select 2) + "'/></t>");
} else {
	(_display displayCtrl 2) ctrlSetText "";
};

// Update current weapon + 2
if ((gg_level + 2) < count gg_weaponList) then {
	_weapon = (gg_weaponList select (gg_level + 2)) select 0;
	(_display displayCtrl 3) ctrlSetStructuredText parseText ("<t align='center' shadow='2' size='5'><img image='" + (([_weapon] call gg_fnc_weaponDetails) select 2) + "'/></t>");
} else {
	(_display displayCtrl 3) ctrlSetText "";
};
player addPrimaryWeaponItem "ace_optic_arco_2d";
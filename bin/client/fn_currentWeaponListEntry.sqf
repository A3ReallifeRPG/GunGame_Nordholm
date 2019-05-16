/*
 * Author: RealLifeRPG Team
 *
 * Description:
 * Returns the config entry from the current weapon list for the selected entry
 *
 * Arguments:
 * 0: NUMBER - Level to return config entry for
 *
 * Return Value:
 * Config Entry
 *
 * Example:
 * N/A
 *
 */
params[
	["_level",0,[0]]
];

private _entry = configNull;

{
	if (_forEachIndex isEqualTo _level) exitWith {
		_entry = _x;
	};
} forEach ("true" configClasses (missionConfigFile >> "CfgGungame" >> "Lists" >> gg_weaponList));

_entry;
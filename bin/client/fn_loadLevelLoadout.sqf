scriptName "fn_loadLevelLoadout";

#define __filename "fn_loadLevelLoadout.sqf"

// Clear loadout
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

private _loadoutConfig  = (missionConfigFile >> "CfgGungame" >> "Loadouts" >> gg_loadout);

// Player Inventar nach Respawn
player addUniform getText(_loadoutConfig >> "uniform");
player addVest getText(_loadoutConfig >> "vest");
player addBackpack getText(_loadoutConfig >> "backpack");

player addHeadgear getText(_loadoutConfig >> "headgear");
player addGoggles getText(_loadoutConfig >> "goggles");

// assign nightvision and rangefinder
player linkItem "TAC_SG_SK";
player addWeapon "Rangefinder";

// Get current weapon info to be spawned with
if (isNull ([gg_level] call gg_fnc_currentWeaponListEntry)) exitWith {};

private _weapon = configName ([gg_level] call gg_fnc_currentWeaponListEntry);
private _magazineType = getText( [gg_level] call gg_fnc_currentWeaponListEntry >> "mag");
private _magazineCount = getNumber( [gg_level] call gg_fnc_currentWeaponListEntry >> "mag_count");

gg_currentWeapon = _weapon;

if (_magazineType isEqualTo "") then {
	_magazineType = (getArray(configFile >> "CfgWeapons" >> _weapon >> "magazines") select 0);
};

// Add weapon
player addMagazines [_magazineType, _magazineCount];

if !((currentWeapon player) isEqualTo _weapon) then {
	if !((currentWeapon player) isEqualTo "") then {
		player removeWeaponGlobal (currentWeapon player);
	};
	
	if !(_weapon isEqualTo "") then {
		player addWeaponGlobal _weapon;

		private _muzzles = getArray(configFile >> "CfgWeapons" >> _weapon >> "muzzles");

		if (count _muzzles > 1) then {
			player selectWeapon (_muzzles select 0);
		} else {
			player selectWeapon _weapon;
		};
		
		player switchmove "";
	};
};

private _scope = getText( [gg_level] call gg_fnc_currentWeaponListEntry >> "scope");

if !(_scope in (primaryWeaponItems player)) then {
	player addPrimaryWeaponItem _scope;
};

player enableStamina false;
player setCustomAimCoef 0;



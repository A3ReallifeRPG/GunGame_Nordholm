scriptName "fn_loadLevelLoadout";

#define __filename "fn_loadLevelLoadout.sqf"

// Clear loadout
removeAllItems player;
removeBackpackGlobal player;

private _loadoutConfig  = (missionConfigFile >> "CfgGungame" >> "Loadouts" >> gg_loadout);

// Player Inventar nach Respawn
player addUniform getText(_loadoutConfig >> "uniform");
player addVest getText(_loadoutConfig >> "vest");
player addBackpack getText(_loadoutConfig >> "backpack");

player addHeadgear getText(_loadoutConfig >> "headgear");
player addGoggles getText(_loadoutConfig >> "goggles");

player additem "TAC_SG_SK";

player addPrimaryWeaponItem "ace_optic_arco_2d";
player additem "ace_optic_arco_2d";

// Get current weapon info to be spawned with
if (isNil {(gg_weaponList select gg_level) select 0}) exitWith {};
_weapon = (gg_weaponList select gg_level) select 0;
_magazineType = (gg_weaponList select gg_level) select 2;
_magazineCount = (gg_weaponList select gg_level) select 3;

if (_magazineType == "<auto>") then {
	_magazineType = (getArray(configFile >> "CfgWeapons" >> _weapon >> "magazines") select 0);
};

// Add weapon
player addMagazines [_magazineType, _magazineCount];

if !((currentWeapon player) isEqualTo _weapon) then {
	if !(_weapon isEqualTo "") then {
		player removeWeaponGlobal (currentWeapon player);
	};
	
	player addWeaponGlobal _weapon;
};

_scope = "ace_optic_arco_2d";

if !(_scope in (primaryWeaponItems player)) then {
	player addPrimaryWeaponItem _scope;
};

player enableStamina false;
player setCustomAimCoef 0;



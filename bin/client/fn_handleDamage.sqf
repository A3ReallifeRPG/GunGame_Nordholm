private["_unit","_damage","_source","_projectile","_part","_curWep"];

params[
	["_unit", objNull,[objNull]],
	["_part", "",[""]],
	["_damage", 0,[0]],
	["_source", objNull,[objNull]],
	["_projectile", "",[""]],
];

_damage = false;

life_last_shooter = _source;
life_last_shooter_uid = _source getVariable ["steam64id",(getPlayerUID _source)];
life_last_shooter_name = _source getVariable ["realname",name _source];
life_last_shooter_weapon = currentWeapon _source;
life_last_shooter_distance = (_source distance _unit);
life_last_shooter_pos = getPosAtl _source;


_damage;
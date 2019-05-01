private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = SEL(_this,0);
_part = SEL(_this,1);
_damage = SEL(_this,2);
_source = SEL(_this,3);
_projectile = SEL(_this,4);

_damage = false;

life_last_shooter = _source;
life_last_shooter_uid = _source getVariable ["steam64id",(getPlayerUID _source)];
life_last_shooter_name = _source getVariable ["realname",name _source];
life_last_shooter_weapon = currentWeapon _source;
life_last_shooter_distance = (_source distance _unit);
life_last_shooter_pos = getPosAtl _source;


_damage;
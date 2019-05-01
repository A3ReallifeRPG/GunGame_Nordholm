_damage = _this;

if (_damage == -0.03184) exitWith {
	25 cutRsc ["hm_kill","PLAIN"];
};

if (_damage < 70) then {
	25 cutRsc ["hm_hit","PLAIN"];
};

if (_damage >= 70) then {
	25 cutRsc ["hm_headshot","PLAIN"];
};
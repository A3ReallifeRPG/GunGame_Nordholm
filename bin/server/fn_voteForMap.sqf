scriptName "fn_voteForMap";

#define __filename "fn_voteForMap.sqf"

_index = _this select 0;

// Update map voting array
gg_mapvotes set [_index, (gg_mapvotes select _index) + 1];
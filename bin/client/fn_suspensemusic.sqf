scriptName "fn_suspensemusic";

#define __filename "fn_suspensemusic.sqf"

if (!isNil "gg_suspensemusic") exitWith {};

0 fadeMusic 0.4;
playmusic "LeadTrack04_F_EPC";
gg_suspensemusic = 1;
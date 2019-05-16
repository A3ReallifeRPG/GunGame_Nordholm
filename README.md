# Arma 3 GunGame (Nordholm)
Arma 3 GunGame **can be used with any Arma 3 Map and most of its mods, BUT** the Files in this repository are pre-configured to work on Nordholm, a map made by [RealLifeRPG](https://realliferpg.de/). It also depends on the RealLifeRPG Mod Pack. **All dependencies can easily be removed**.

The RealLifeRPG Mod-Pack is free to use for private purposes, if you want to make your own public GunGame Server please refrain from using it!

# Features

This mission offers a classical GunGame mode (start with a weapon and get a new one for each kill). 

- Fully configurable areas on the map including loadout and weapon whitelists for each area
- Compatible with ACE (might need some tweaking when using without ACE)
- Players can vote which area of the map to play on
- Configurable weapon lists (weapons, number of kills, scopes, number of magazines, type of magazine)
- Different random loadouts
- [WIP] Database Features: log all kills and some stats to a database (can be disabled) 

## Database

If you want to use the database features you will need to install [ExtDB3](<https://bitbucket.org/torndeco/extdb3/wiki/Home>) on your server.

# Spawnpoint Script
To easily create a new "Map" you can use the following script.
Start by setting `spawns = ""`
Then use this Script which adds the spawn to a list and copies it to your clippboard. It also creates a marker so you know where you have been.

```
_marker = createMarkerLocal [format["marker_%1_%2",random 10,random 10],position player];  
_marker setMarkerColorLocal "ColorBlue";  
_marker setMarkerTypeLocal "mil_dot";  
_marker setMarkerAlphaLocal 1; 
spawns = spawns + format["{%1,%2,%3},",(getPosATL player)#0,(getPosATL player)#1,(getPosATL player)#2];  
copyToClipboard spawns;
```

# License & Credits
Arma 3 GunGame Nordholm is licensed under the MIT License.

Since it is based on the work of [Bytex Digital](https://bytex.digital/) credit must be given to both [Bytex Digital](https://bytex.digital/) and [RealLifeRPG](https://realliferpg.de/).

Original Mission by BytexDigital [GunGame Tanoa (Steam Workshop)](https://steamcommunity.com/sharedfiles/filedetails/?id=706052183&searchtext=gungame)

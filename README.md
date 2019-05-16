# Arma 3 GunGame (Nordholm)
Arma 3 Gungame Mission for the Map Nordholm by [RealLifeRPG](https://realliferpg.de/).
You need Realliferpg's Modpack to play this Mission.

This Mission can be used as a framework for any other GunGame Server.

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

Since it is based on the work of Maverick [Bytex Digital](https://bytex.digital/) credit must be given to both [Bytex Digital](https://bytex.digital/) and [RealLifeRPG](https://realliferpg.de/).

Original Mission by BytexDigital [GunGame Tanoa (Steam Workshop)](https://steamcommunity.com/sharedfiles/filedetails/?id=706052183&searchtext=gungame)

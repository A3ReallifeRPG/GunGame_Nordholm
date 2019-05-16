# GunGame_Nordholm
Arma 3 Gungame Mission for the Map Nordholm by (https://realliferpg.de/)[RealLifeRPG].
You need Realliferpg's Modpack to play this Mission.

# Spawnpoint Script
To easily create a new "Map" you can use the following scritp.
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
This GunGame mission is based on (www.maverick-apps.de)[MaverickApps] (https://steamcommunity.com/sharedfiles/filedetails/?id=706052183&searchtext=gungame)[GunGame Tanoa]

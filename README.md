## AEO - Anti Entity Overload

AEO is a datapack that helps prevent lagging and crashing from having too many entities by killing new ones if they surpass a specified limit.

### Disclaimer!
This datapack kills entities!
Be aware of this and backup your world before installing it.
Please do not hold me responsible if it kills something it was not meant too.
**Use caution if you edit this datapack.**

### Installation
You can download the datapack under releases:
https://github.com/iRedSC/anti-entity-overload/releases
(download `source-code.zip`)

All you have to do is put the datapack in your `datapacks` folder and reload.

### Debug Mode
To enabled/disable debug mode run:
```mcfunction
function aeo:debug-mode
```
Debug mode will display bossbars that will show you the entity count for each of the five catagories, as well as the configured limit:
 - All Entities
 - TNT
 - Items 
 - Projectiles
 - Inanimates (Armor Stands, Boats, Item Frames, etc.)
![Debug Mode Bossbars](https://media.discordapp.net/attachments/759159698921750558/885557927300186174/unknown.png)

### Configuration
There are two configureable files in the datapack:
`data/aeo/functions/setup/config.mcfunction`
and
`data/aeo/functions/setup/messages.mcfunction`.
#### Config.mcfunction
```mcfunction
# THIS IS A PREVIEW OF THE CONFIG FILE

# Max limits
#
# Limits to the amount of each type of entity allowed to be loaded before AEO attempts to reduce them
#
# This includes ALL entites (Including tagged ones)
scoreboard players set $type.all.limit irsc.aeo.global 1000
# Kills even new tagged entities when the total entity count passes this value
scoreboard players set $type.all-tagged.limit irsc.aeo.global 1500

# Tnt limit
scoreboard players set $type.tnt.limit irsc.aeo.global 500

# Projectile limit (arrows, snowballs, shulker bullets)
# ENDER PEARLS ARE EXCLUDED DUE TO IT POSSIBLY AFFECT PEARL STASIS ETC
# List of entities defined in the entity tag "aeo:type/projectile"
scoreboard players set $type.projectile.limit irsc.aeo.global 200
```
You can change the entity limits for each of the these catagories:
 - All Entities
   - All Entities (Including tagged ones)
 - TNT
 - Items 
 - Projectiles
 - Inanimates (Armor Stands, Boats, Item Frames, etc.)
You can also change the:
 - Duration of lagclears (clearing items)
 - Bossbar display colors (for displaying entity counts)

___It is suggested that you increase the entity limits if possible (your computer/server can handle it), this datapack is meant as a last resort and should only trigger after the game starts becoming unplayable from entity lag.___

#### Messages.mcfunction
```mcfunction
# THIS IS AN EXAMPLE OF THE MESSAGE CONFIG

## global prefix
# This prefixes all AEO messages
data modify storage irsc.aeo:messages message-prefix set value '["",{"text":"[","color":"gold"},{"text":"AEO","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Anti Entity Overload","color":"dark_red"}]}},{"text":"] ","color":"gold"}]'

## limiting messages
# Displays when AEO is trying to limit an entity count
data modify storage irsc.aeo:messages limiting.attempt set value '{"text":"Attempting to limit ","color":"red"}'

# Limit all entities message
data modify storage irsc.aeo:messages limiting.all set value '{"text":"ALL ENTITIES","color":"gold"}'

# Limit all entities including tagged entities message
data modify storage irsc.aeo:messages limiting.all-tagged set value '{"text":"ALL ENTITIES [INCLUDING TAGGED]","color":"gold"}'

# Limit all items message (Lagclear critical)
data modify storage irsc.aeo:messages limiting.item set value '{"text":"ITEMS","color":"light_purple"}'
```
You can modify the messages for everything in the datapack including the:
 - [AEO] message prefix
 - Lagclear Messages
 - "Attempting to limit" Messages
 - The debug display bossbar titles

Messages just use standard minecraft json format.

### Uninstallation
There is an uninstallation function if you no longer want the datapack in your world:
```mcfunction
function aeo:setup/uninstall
```
this should remove everything, althought players who are offline and have the `irsc.aeo.debug` tag will not have it removed (online players will)


## This is the config file

# Scoreboard creation
## DO NOT EDIT THIS
scoreboard objectives add irsc.aeo.global dummy
scoreboard objectives add irsc.aeo.lifespn dummy
scoreboard objectives add irsc.aeo.msgdly dummy
scoreboard objectives add irsc.aeo.lgclrcl trigger

## [!] CONFIGURABLE OPTIONS [!]

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

# Inanimate-type limit (boats, minecart, end crystal)
# List of entities defined in the entity tag "aeo:type/inanimate"
scoreboard players set $type.inanimate.limit irsc.aeo.global 200
# Ask before killing inanimates? [1 = Yes, 2 = No]
scoreboard players set $type.inanimate.ask irsc.aeo.global 1

# Item limit
# 'limit.soft' defines when a "lagclear" will be scheduled, these can be stopped by anyone if they have items on the ground they don't want cleared
scoreboard players set $type.item.limit.soft irsc.aeo.global 200
# 'limit.hard' defines when a forced "lagclear" will be scheuled, which cannot be stopped
scoreboard players set $type.item.limit.hard irsc.aeo.global 500
# 'limit.critical' defines when an immediate unstoppable lagclear will called
scoreboard players set $type.item.limit.critical irsc.aeo.global 800

# Lagclear
# The amount of time (seconds) to schedule a "soft" lagclear for
scoreboard players set $lagclear.schedule.soft irsc.aeo.global 60
# The amount of time (seconds) to schedule a "hard" lagclear for
scoreboard players set $lagclear.schedule.hard irsc.aeo.global 30
# The amount of time (seconds) for canceling a "soft" lagclear
scoreboard players set $lagclear.schedule.postpone irsc.aeo.global 120


# Bossbar creation
# Ops can choose to display bossbars which show the entity count for a given type

bossbar add irsc.aeo:all ["",{"text":"Total Entities: ","color":"gold"},{"score":{"name":"$type.all","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.all.limit","objective":"irsc.aeo.global"},"color":"white"}]
bossbar set irsc.aeo:all color yellow
## Do not edit
bossbar set irsc.aeo:all visible true
bossbar set irsc.aeo:all players
#
bossbar add irsc.aeo:tnt ["",{"text":"Total TNT: ","color":"red"},{"score":{"name":"$type.tnt","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.tnt.limit","objective":"irsc.aeo.global"},"color":"white"}]
bossbar set irsc.aeo:tnt color red
## Do not edit
bossbar set irsc.aeo:tnt visible true
bossbar set irsc.aeo:tnt players
#
bossbar add irsc.aeo:projectile ["",{"text":"Total Projectiles: ","color":"dark_aqua"},{"score":{"name":"$type.projectile","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.projectile.limit","objective":"irsc.aeo.global"},"color":"white"}]
bossbar set irsc.aeo:projectile color blue
## Do not edit
bossbar set irsc.aeo:projectile visible true
bossbar set irsc.aeo:projectile players
##
bossbar add irsc.aeo:inanimate ["",{"text":"Total Inanimates: ","color":"green"},{"score":{"name":"$type.inanimate","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.inanimate.limit","objective":"irsc.aeo.global"},"color":"white"}]
bossbar set irsc.aeo:inanimate color green
## Do not edit
bossbar set irsc.aeo:inanimate visible true
bossbar set irsc.aeo:inanimate players
#
bossbar add irsc.aeo:item ["",{"text":"Total Items: ","color":"light_purple"},{"score":{"name":"$type.item","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.item.limit","objective":"irsc.aeo.global"},"color":"white"}]
bossbar set irsc.aeo:item color pink
## Do not edit
bossbar set irsc.aeo:item visible true
bossbar set irsc.aeo:item players
#

# Run message setup function
function aeo:setup/messages

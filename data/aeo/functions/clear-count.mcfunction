# reset each entity count variable
scoreboard players set $type.all irsc.aeo.global 0
scoreboard players set $type.inanimate irsc.aeo.global 0
scoreboard players set $type.item irsc.aeo.global 0
scoreboard players set $type.projectile irsc.aeo.global 0
scoreboard players set $type.tnt irsc.aeo.global 0

# count the entities again
execute as @e[type=!player] run function aeo:count

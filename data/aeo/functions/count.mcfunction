# for each entity, if these conditions are met, add 1 to the correct entity type count variable
scoreboard players add $type.all irsc.aeo.global 1
execute if entity @s[type=#aeo:projectile] run scoreboard players add $type.projectile irsc.aeo.global 1
execute if entity @s[type=minecraft:tnt] run scoreboard players add $type.tnt irsc.aeo.global 1
execute if entity @s[type=minecraft:item] run scoreboard players add $type.item irsc.aeo.global 1
execute if entity @s[type=#aeo:inanimate] run scoreboard players add $type.inanimate irsc.aeo.global 1
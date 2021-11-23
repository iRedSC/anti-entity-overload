# for each entity, if these conditions are met, add 1 to the correct entity type count variable
execute store result score $type.all irsc.aeo.global if entity @e[type=!player]
execute store result score $type.projectile irsc.aeo.global if entity @e[type=#aeo:projectile]
execute store result score $type.tnt irsc.aeo.global if entity @e[type=minecraft:tnt]
execute store result score $type.item irsc.aeo.global if entity @e[type=minecraft:item]
execute store result score $type.item.no-tag irsc.aeo.global if entity @e[type=minecraft:item,tag=]
execute store result score $type.inanimate irsc.aeo.global if entity @e[type=#aeo:inanimate]
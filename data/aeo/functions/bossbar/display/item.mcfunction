# display the item count bossbar
bossbar set irsc.aeo:item players @s
# change the bossbar title to display current entity type count
bossbar set irsc.aeo:item name {"nbt":"bossbar.item","storage":"irsc.aeo:messages","interpret":true}
# change the bossbar value and max to reflect the current count/limit
execute store result bossbar irsc.aeo:item max run scoreboard players get $type.item.limit.hard irsc.aeo.global
execute store result bossbar irsc.aeo:item value run scoreboard players get $type.item irsc.aeo.global
# display the inanimate count bossbar
bossbar set irsc.aeo:inanimate players @s
# change the bossbar title to display current entity type count
bossbar set irsc.aeo:inanimate name {"nbt":"bossbar.inanimate","storage":"irsc.aeo:messages","interpret":true}
# change the bossbar value and max to reflect the current count/limit
execute store result bossbar irsc.aeo:inanimate max run scoreboard players get $type.inanimate.limit irsc.aeo.global
execute store result bossbar irsc.aeo:inanimate value run scoreboard players get $type.inanimate irsc.aeo.global
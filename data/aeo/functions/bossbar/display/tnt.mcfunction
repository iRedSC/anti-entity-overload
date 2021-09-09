# display the tnt count bossbar
bossbar set irsc.aeo:tnt players @s
# change the bossbar title to display current entity type count
bossbar set irsc.aeo:tnt name {"nbt":"bossbar.tnt","storage":"irsc.aeo:messages","interpret":true}
# change the bossbar value and max to reflect the current count/limit
execute store result bossbar irsc.aeo:tnt max run scoreboard players get $type.tnt.limit irsc.aeo.global
execute store result bossbar irsc.aeo:tnt value run scoreboard players get $type.tnt irsc.aeo.global
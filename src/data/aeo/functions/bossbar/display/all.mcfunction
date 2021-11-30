# display the all count bossbar
bossbar set irsc.aeo:all players @s
# change the bossbar title to display current entity type count
bossbar set irsc.aeo:all name {"nbt":"bossbar.all","storage":"irsc.aeo:messages","interpret":true}
# change the bossbar value and max to reflect the current count/limit
execute store result bossbar irsc.aeo:all max run scoreboard players get $type.all.limit irsc.aeo.global
execute store result bossbar irsc.aeo:all value run scoreboard players get $type.all irsc.aeo.global
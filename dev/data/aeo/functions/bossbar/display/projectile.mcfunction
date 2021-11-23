# display the projectile count bossbar
bossbar set irsc.aeo:projectile players @s
# change the bossbar title to display current entity type count
bossbar set irsc.aeo:projectile name {"nbt":"bossbar.projectile","storage":"irsc.aeo:messages","interpret":true}
# change the bossbar value and max to reflect the current count/limit
execute store result bossbar irsc.aeo:projectile max run scoreboard players get $type.projectile.limit irsc.aeo.global
execute store result bossbar irsc.aeo:projectile value run scoreboard players get $type.projectile irsc.aeo.global
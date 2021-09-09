bossbar set irsc.aeo:projectile players @s
bossbar set irsc.aeo:projectile name ["",{"text":"Total Projectiles: ","color":"dark_aqua"},{"score":{"name":"$type.projectile","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.projectile.limit","objective":"irsc.aeo.global"},"color":"white"}]
execute store result bossbar irsc.aeo:projectile max run scoreboard players get $type.projectile.limit irsc.aeo.global
execute store result bossbar irsc.aeo:projectile value run scoreboard players get $type.projectile irsc.aeo.global

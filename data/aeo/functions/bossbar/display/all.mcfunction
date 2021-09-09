bossbar set irsc.aeo:all players @s
bossbar set irsc.aeo:all name ["",{"text":"Total Entities: ","color":"gold"},{"score":{"name":"$type.all","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.all.limit","objective":"irsc.aeo.global"},"color":"white"}]
execute store result bossbar irsc.aeo:all max run scoreboard players get $type.all.limit irsc.aeo.global
execute store result bossbar irsc.aeo:all value run scoreboard players get $type.all irsc.aeo.global

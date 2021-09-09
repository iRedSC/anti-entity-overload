bossbar set irsc.aeo:inanimate players @s
bossbar set irsc.aeo:inanimate name ["",{"text":"Total Inanimates: ","color":"green"},{"score":{"name":"$type.inanimate","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.inanimate.limit","objective":"irsc.aeo.global"},"color":"white"}]
execute store result bossbar irsc.aeo:inanimate max run scoreboard players get $type.inanimate.limit irsc.aeo.global
execute store result bossbar irsc.aeo:inanimate value run scoreboard players get $type.inanimate irsc.aeo.global

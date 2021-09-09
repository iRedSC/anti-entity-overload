bossbar set irsc.aeo:item players @s
bossbar set irsc.aeo:item name ["",{"text":"Total Items: ","color":"light_purple"},{"score":{"name":"$type.item","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.item.limit.soft","objective":"irsc.aeo.global"},"color":"white"}]
execute store result bossbar irsc.aeo:item max run scoreboard players get $type.item.limit.soft irsc.aeo.global
execute store result bossbar irsc.aeo:item value run scoreboard players get $type.item irsc.aeo.global

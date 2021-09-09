bossbar set irsc.aeo:tnt players @s
bossbar set irsc.aeo:tnt name ["",{"text":"Total TNT: ","color":"red"},{"score":{"name":"$type.tnt","objective":"irsc.aeo.global"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"$type.tnt.limit","objective":"irsc.aeo.global"},"color":"white"}]
execute store result bossbar irsc.aeo:tnt max run scoreboard players get $type.tnt.limit irsc.aeo.global
execute store result bossbar irsc.aeo:tnt value run scoreboard players get $type.tnt irsc.aeo.global
execute if score $type.tnt irsc.aeo.global matches 300.. run schedule function aeo:bossbar/display/tnt 1t

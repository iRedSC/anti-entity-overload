scoreboard players remove $lagclear.time irsc.aeo.global 1

execute as @a if score @s irsc.aeo.lgclrcl matches 1.. run function aeo:lagclear/postpone

execute if score $lagclear.time irsc.aeo.global matches 1 run tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.clear","storage":"irsc.aeo:messages","interpret":true}]
execute if score $lagclear.time irsc.aeo.global matches 1 run kill @e[type=item,tag=]
execute if score $lagclear.time irsc.aeo.global matches 1.. run schedule function aeo:lagclear/main 1s

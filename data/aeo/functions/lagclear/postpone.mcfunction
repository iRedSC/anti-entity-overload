
execute as @a if score @s irsc.aeo.lgclrcl matches 1.. run tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.postpone","storage":"irsc.aeo:messages","interpret":true}]
execute as @a if score @s irsc.aeo.lgclrcl matches 1.. run scoreboard players set $lagclear.time irsc.aeo.global 0
scoreboard players operation $lagclear.postpone irsc.aeo.global = $lagclear.schedule.postpone irsc.aeo.global
scoreboard players reset @a irsc.aeo.lgclrcl

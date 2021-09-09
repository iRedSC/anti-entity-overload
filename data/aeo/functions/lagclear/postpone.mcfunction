## this function runs if a lagclear has been postponed

# display the postpone message to all players
execute as @a if score @s irsc.aeo.lgclrcl matches 1.. run tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.postpone","storage":"irsc.aeo:messages","interpret":true}]
# reset the lagclear timer score
execute as @a if score @s irsc.aeo.lgclrcl matches 1.. run scoreboard players set $lagclear.time irsc.aeo.global 0
# set the postpone to what was set in the config
scoreboard players operation $lagclear.postpone irsc.aeo.global = $lagclear.schedule.postpone irsc.aeo.global
# reset the postpone trigger score
scoreboard players reset @a irsc.aeo.lgclrcl

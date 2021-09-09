# remove time from the lagclear timer variable
scoreboard players remove $lagclear.time irsc.aeo.global 1

# run the postpone function if someone requests it
execute as @a if score @s irsc.aeo.lgclrcl matches 1.. run function aeo:lagclear/postpone

# display the "cleared items" message when the lagclear timer reaches 1
execute if score $lagclear.time irsc.aeo.global matches 1 run tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.clear","storage":"irsc.aeo:messages","interpret":true}]
# kill all UNTAGGED items when the lagclear timer reaches 1
execute if score $lagclear.time irsc.aeo.global matches 1 run kill @e[type=item,tag=]

# reschedule this function unless the lagclear timer reaches 0
execute if score $lagclear.time irsc.aeo.global matches 1.. run schedule function aeo:lagclear/main 1s

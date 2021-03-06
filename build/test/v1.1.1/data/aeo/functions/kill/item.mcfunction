# kill the items if the amount is over the CRITICAL limit
execute if score $type.item irsc.aeo.global > $type.item.limit.critical irsc.aeo.global run kill @e[type=item,tag=]
# reset the lagclear timer
scoreboard players set $lagclear.time irsc.aeo.global 0
# display clearing items message to all players
tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.clear","storage":"irsc.aeo:messages","interpret":true}]
tellraw @a[tag=irsc.aeo.debug,scores={irsc.aeo.msgdly=0}] ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.attempt","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.item","storage":"irsc.aeo:messages","interpret":true}]

# kill overflow will kill a large amount of entities if the amount of entities is grow too quickly
scoreboard players set $kill.overflow.20 irsc.aeo.global 20
scoreboard players operation $kill.overflow.20 irsc.aeo.global += $type.inanimate.limit irsc.aeo.global

scoreboard players set $kill.overflow.100 irsc.aeo.global 100
scoreboard players operation $kill.overflow.100 irsc.aeo.global += $type.inanimate.limit irsc.aeo.global

# kill the entities if the amount is over the overflow
execute if score $type.inanimate irsc.aeo.global > $kill.overflow.20 irsc.aeo.global run kill @e[type=#aeo:inanimate,tag=,limit=19,scores={irsc.aeo.lifespn=..3}]
# kill the entities if the amount is over the overflow
execute if score $type.inanimate irsc.aeo.global > $kill.overflow.100 irsc.aeo.global run kill @e[type=#aeo:inanimate,tag=,limit=99,scores={irsc.aeo.lifespn=..3}]
# kill the entities if the amount is over the limit
execute if score $type.inanimate irsc.aeo.global > $type.inanimate.limit irsc.aeo.global run kill @e[type=#aeo:inanimate,tag=,limit=1,scores={irsc.aeo.lifespn=..3}]

# display the limiting message for all debug-tagged players
execute if score $type.inanimate irsc.aeo.global > $type.inanimate.limit irsc.aeo.global run tellraw @a[tag=irsc.aeo.debug,scores={irsc.aeo.msgdly=0}] ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.attempt","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.inanimate","storage":"irsc.aeo:messages","interpret":true}]

# re-run the function if the amount of entities is still over the limit
execute if score $type.inanimate irsc.aeo.global > $type.inanimate.limit irsc.aeo.global run schedule function aeo:kill/inanimate 5t
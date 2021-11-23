## entity limit
# kill overflow will kill a large amount of entities if the amount of entities is grow too quickly
scoreboard players set $kill.overflow.20 irsc.aeo.global 20
scoreboard players operation $kill.overflow.20 irsc.aeo.global += $type.all.limit irsc.aeo.global

scoreboard players set $kill.overflow.100 irsc.aeo.global 100
scoreboard players operation $kill.overflow.100 irsc.aeo.global += $type.all.limit irsc.aeo.global

# display the limiting message for all debug-tagged players
execute if score $type.all irsc.aeo.global > $type.all.limit irsc.aeo.global unless score $type.all irsc.aeo.global > $type.all-tagged.limit irsc.aeo.global run tellraw @a[tag=irsc.aeo.debug,scores={irsc.aeo.msgdly=0}] ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.attempt","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.all","storage":"irsc.aeo:messages","interpret":true}]


# kill the entities if the amount is over the overflow
execute if score $type.all irsc.aeo.global > $kill.overflow.20 irsc.aeo.global run kill @e[tag=,limit=19,scores={irsc.aeo.lifespn=..3}]
# kill the entities if the amount is over the overflow
execute if score $type.all irsc.aeo.global > $kill.overflow.100 irsc.aeo.global run kill @e[tag=,limit=99,scores={irsc.aeo.lifespn=..3}]
# kill the entities if the amount is over the limit
execute if score $type.all irsc.aeo.global > $type.all.limit irsc.aeo.global run kill @e[tag=,limit=1,scores={irsc.aeo.lifespn=..3}]

## tagged-entity limit (last resort)

# kill overflow will kill a large amount of entities if the amount of entities is grow too quickly
scoreboard players set $kill.overflow.20 irsc.aeo.global 20
scoreboard players operation $kill.overflow.20 irsc.aeo.global += $type.all-tagged.limit irsc.aeo.global

scoreboard players set $kill.overflow.100 irsc.aeo.global 100
scoreboard players operation $kill.overflow.100 irsc.aeo.global += $type.all-tagged.limit irsc.aeo.global

# display the limiting message for all debug-tagged players
execute if score $type.all irsc.aeo.global > $type.all-tagged.limit irsc.aeo.global run tellraw @a[tag=irsc.aeo.debug,scores={irsc.aeo.msgdly=0}] ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.attempt","storage":"irsc.aeo:messages","interpret":true},{"nbt":"limiting.all-tagged","storage":"irsc.aeo:messages","interpret":true}]

# kill the entities if the amount is over the overflow
execute if score $type.all irsc.aeo.global > $kill.overflow.20 irsc.aeo.global run kill @e[limit=19,scores={irsc.aeo.lifespn=..3}]
# kill the entities if the amount is over the overflow
execute if score $type.all irsc.aeo.global > $kill.overflow.100 irsc.aeo.global run kill @e[limit=99,scores={irsc.aeo.lifespn=..3}]
# kill the entities if the amount is over the limit
execute if score $type.all irsc.aeo.global > $type.all-tagged.limit irsc.aeo.global run kill @e[limit=1,scores={irsc.aeo.lifespn=..3}]

# re-run the function if the amount of entities is still over the limit
execute if score $type.all irsc.aeo.global > $type.all.limit irsc.aeo.global run schedule function aeo:kill/main 1t

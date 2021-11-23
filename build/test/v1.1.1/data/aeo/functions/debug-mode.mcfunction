# if the player has debug-mode enabled and runs this function, add the 'remove' tag
execute if entity @s[tag=irsc.aeo.debug] run tag @s add irsc.aeo.debug.remove
# if the have the debug tag, remove it
execute if entity @s[tag=irsc.aeo.debug] run tag @s remove irsc.aeo.debug
# if successfully removed, run the 'bossbar remove' function
execute if entity @s[tag=!irsc.aeo.debug] run function aeo:bossbar/remove
# add the debug tag if the 'remove' tag wasn't given
execute if entity @s[tag=!irsc.aeo.debug,tag=!irsc.aeo.debug.remove] run tag @s add irsc.aeo.debug
# remove the 'remove' tag
tag @s remove irsc.aeo.debug.remove

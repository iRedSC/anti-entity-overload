execute if entity @s[tag=irsc.aeo.debug] run tag @s add irsc.aeo.debug.remove
execute if entity @s[tag=irsc.aeo.debug] run tag @s remove irsc.aeo.debug
execute if entity @s[tag=!irsc.aeo.debug,tag=!irsc.aeo.debug.remove] run tag @s add irsc.aeo.debug
tag @s remove irsc.aeo.debug.remove

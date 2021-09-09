## This is the main looping function for AEO

# Update bossbars for all playings in debug-mode
execute as @a[tag=irsc.aeo.debug] run function aeo:bossbar/main

# Update the lifespan scorebaord for all entities
execute as @e unless score @s irsc.aeo.lifespn matches 0.. run scoreboard players set @s irsc.aeo.lifespn 0
scoreboard players add * irsc.aeo.lifespn 1

# Resets all of the $type.* entity counts
function aeo:clear-count
# Main function for killing new entities if they surpass the limit
function aeo:kill/main

# Countdown for the lagclear postpone
execute if score $lagclear.postpone irsc.aeo.global matches 1.. run scoreboard players remove $lagclear.postpone irsc.aeo.global 1

# Global remove message delay
scoreboard players remove @a[scores={irsc.aeo.msgdly=1..}] irsc.aeo.msgdly 1

# Loop this function
schedule function aeo:main-1s 1s

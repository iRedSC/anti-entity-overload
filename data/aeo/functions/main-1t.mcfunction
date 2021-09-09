## This function runs every tick

# The tnt limit function is running per tick due to how fast tnt can lag the world
# If it was run every second like the other limiting functions, and an excess of tnt put the game at 20k mstp,
# then the limiter wouldn't be able to run for 400~ seconds
#run the tnt bossbar display for debug-tagged players
execute as @a[tag=irsc.aeo.debug] run function aeo:bossbar/display/tnt
# run the kill tnt function if the tnt count is greater than the set limit
execute if score $type.tnt irsc.aeo.global > $type.tnt.limit irsc.aeo.global run function aeo:kill/tnt

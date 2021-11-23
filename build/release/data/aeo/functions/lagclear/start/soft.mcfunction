## Trigger to start a soft [cancelable] lagclear

# enable the cancel/postpone trigger
scoreboard players enable @a irsc.aeo.lgclrcl

# set the lagclear timer to equal the config file
scoreboard players operation $lagclear.time irsc.aeo.global = $lagclear.schedule.soft irsc.aeo.global
# display the soft lagclear message for all players
tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.soft.message","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.soft.button","storage":"irsc.aeo:messages","interpret":true}]

# run the lagclear countdown etc function
function aeo:lagclear/main

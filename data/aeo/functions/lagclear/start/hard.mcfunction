## the trigger to start a hard [non-cancelable] lagclear

# reset the lagclear cancel/postpone trigger
scoreboard players reset @a irsc.aeo.lgclrcl

# set the lagclear timer to equal the config file
scoreboard players operation $lagclear.time irsc.aeo.global = $lagclear.schedule.hard irsc.aeo.global
# display the hard lagclear message for all players
tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.hard.message","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.hard.button","storage":"irsc.aeo:messages","interpret":true}]

# run the lagclear countdown etc function
function aeo:lagclear/main

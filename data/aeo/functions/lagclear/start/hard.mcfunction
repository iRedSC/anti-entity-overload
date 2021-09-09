scoreboard players reset @a irsc.aeo.lgclrcl
scoreboard players operation $lagclear.time irsc.aeo.global = $lagclear.schedule.hard irsc.aeo.global
tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.hard.message","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.hard.button","storage":"irsc.aeo:messages","interpret":true}]
function aeo:lagclear/main

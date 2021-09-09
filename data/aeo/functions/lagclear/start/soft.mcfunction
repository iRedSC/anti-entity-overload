scoreboard players enable @a irsc.aeo.lgclrcl
scoreboard players operation $lagclear.time irsc.aeo.global = $lagclear.schedule.soft irsc.aeo.global
tellraw @a ["",{"nbt":"message-prefix","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.soft.message","storage":"irsc.aeo:messages","interpret":true},{"nbt":"lagclear.start.soft.button","storage":"irsc.aeo:messages","interpret":true}]

function aeo:lagclear/main

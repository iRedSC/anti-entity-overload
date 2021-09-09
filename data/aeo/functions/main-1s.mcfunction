execute as @a[tag=irsc.aeo.debug] run function aeo:bossbar/main
execute as @a[tag=!irsc.aeo.debug] run function aeo:bossbar/remove

execute as @e unless score @s irsc.aeo.lifespn matches 0.. run scoreboard players set @s irsc.aeo.lifespn 0
scoreboard players add * irsc.aeo.lifespn 1

function aeo:clear-count
function aeo:kill/main

execute if score $lagclear.postpone irsc.aeo.global matches 1.. run scoreboard players remove $lagclear.postpone irsc.aeo.global 1
scoreboard players remove @a[scores={irsc.aeo.msgdly=1..}] irsc.aeo.msgdly 1

schedule function aeo:main-1s 1s

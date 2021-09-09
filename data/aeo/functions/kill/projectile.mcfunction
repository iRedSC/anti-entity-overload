scoreboard players set $kill.overflow.100 irsc.aeo.global 100
scoreboard players operation $kill.overflow.100 irsc.aeo.global += $type.projectile.limit irsc.aeo.global

execute if score $type.projectile irsc.aeo.global > $kill.overflow.100 irsc.aeo.global run kill @e[type=#aeo:projectile,tag=,limit=99,scores={irsc.aeo.lifespn=5..}]
execute if score $type.projectile irsc.aeo.global > $type.projectile.limit irsc.aeo.global run kill @e[type=#aeo:projectile,tag=,limit=1,scores={irsc.aeo.lifespn=5..}]
execute if score $type.projectile irsc.aeo.global > $type.projectile.limit irsc.aeo.global run schedule function aeo:kill/projectile 1t

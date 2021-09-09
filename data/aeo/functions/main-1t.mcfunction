execute as @a[tag=irsc.aeo.debug] run function aeo:bossbar/display/tnt
execute if score $type.tnt irsc.aeo.global > $type.tnt.limit irsc.aeo.global run function aeo:kill/tnt

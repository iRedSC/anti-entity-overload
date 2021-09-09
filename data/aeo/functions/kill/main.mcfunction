execute if score $type.all irsc.aeo.global > $type.all.limit irsc.aeo.global run function aeo:kill/all

execute if score $type.tnt irsc.aeo.global > $type.tnt.limit irsc.aeo.global run function aeo:kill/tnt

execute if score $type.projectile irsc.aeo.global > $type.projectile.limit irsc.aeo.global run function aeo:kill/projectile

execute if score $type.inanimate irsc.aeo.global > $type.inanimate.limit irsc.aeo.global run function aeo:kill/inanimate

execute unless score $lagclear.time irsc.aeo.global matches 1.. unless score $lagclear.postpone irsc.aeo.global matches 1.. if score $type.item irsc.aeo.global > $type.item.limit.soft irsc.aeo.global run function aeo:lagclear/start/soft
execute if score $lagclear.time irsc.aeo.global >= $lagclear.schedule.hard irsc.aeo.global if score $type.item irsc.aeo.global > $type.item.limit.hard irsc.aeo.global run function aeo:lagclear/start/hard

execute if score $type.item irsc.aeo.global > $type.item.limit.critical irsc.aeo.global run function aeo:kill/item

execute as @a[tag=irsc.aeo.debug] unless score @s irsc.aeo.msgdly matches 1.. run scoreboard players set @s irsc.aeo.msgdly 5

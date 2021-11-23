## The determiner function for running the kill functions

# If the *total entity count* is GREATER THAN the *total entity count LIMIT* run kill function
execute if score $type.all irsc.aeo.global > $type.all.limit irsc.aeo.global run function aeo:kill/all
# If the *total projectile count* is GREATER THAN the *total projectile count LIMIT* run kill function
execute if score $type.projectile irsc.aeo.global > $type.projectile.limit irsc.aeo.global run function aeo:kill/projectile
# If the *total inanimate count* is GREATER THAN the *total inanimate count LIMIT* run kill function
execute if score $type.inanimate irsc.aeo.global > $type.inanimate.limit irsc.aeo.global run function aeo:kill/inanimate

# If the *total item count* is GREATER THAN the *total item count SOFT LIMIT* AND there isn't a lagclear scheduled AND there isn't and postpone run kill function
execute unless score $lagclear.time irsc.aeo.global matches 1.. unless score $lagclear.postpone irsc.aeo.global matches 1.. if score $type.item irsc.aeo.global > $type.item.limit.soft irsc.aeo.global run function aeo:lagclear/start/soft
# If the *total item count* is GREATER THAN the *total item count HARD LIMIT* AND the current lagclear timer is greater than the lagclear hard schdeule config run kill function
execute unless score $lagclear.hard.active irsc.aeo.global matches 1 if score $type.item irsc.aeo.global > $type.item.limit.hard irsc.aeo.global run function aeo:lagclear/start/hard-determine

# If the *total item count* is GREATER THAN the *total item count CRITICAL LIMIT* run kill function
execute if score $type.item.no-tag irsc.aeo.global > $type.item.limit.critical irsc.aeo.global run function aeo:kill/item

# set message delay to 5 if it's at 0
execute as @a[tag=irsc.aeo.debug] unless score @s irsc.aeo.msgdly matches 1.. run scoreboard players set @s irsc.aeo.msgdly 5

# if the amount of tnt is over the limit, kill all tnt
# it is required to kill them all because tnt can spread too quickly for the datapack to only limiy
execute if score $type.tnt irsc.aeo.global > $type.tnt.limit irsc.aeo.global run kill @e[type=tnt,tag=]
# re-run the function if the amount of tnt is still over the limit
execute if score $type.tnt irsc.aeo.global > $type.tnt.limit irsc.aeo.global run schedule function aeo:kill/tnt 1t

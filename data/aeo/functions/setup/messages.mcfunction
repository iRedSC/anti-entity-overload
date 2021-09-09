
# Messages Config

# This prefixes all AEO messages
data modify storage irsc.aeo:messages message-prefix set value '["",{"text":"[","color":"gold"},{"text":"AEO","color":"dark_red","hoverEvent":{"action":"show_text","contents":[{"text":"Anti Entity Overload","color":"dark_red"}]}},{"text":"] ","color":"gold"}]'

# Displays when AEO is trying to limit an entity count
data modify storage irsc.aeo:messages limiting.attempt set value '{"text":"Attempting to limit ","color":"red"}'

# Limit all entities message
data modify storage irsc.aeo:messages limiting.all set value '{"text":"ALL ENTITIES","color":"gold"}'

# Limit all entities including tagged entities message
data modify storage irsc.aeo:messages limiting.all-tagged set value '{"text":"ALL ENTITIES [INCLUDING TAGGED]","color":"gold"}'

# Limit all items message (Lagclear critical)
data modify storage irsc.aeo:messages limiting.item set value '{"text":"ITEMS","color":"light_purple"}'

# Limit projectiles message
data modify storage irsc.aeo:messages limiting.projectile set value '{"text":"PROJECTILES","color":"dark_aqua"}'

# Limit all tnt message
data modify storage irsc.aeo:messages limiting.tnt set value '{"text":"TNT","color":"dark_red"}'

# Limit inanimates message
data modify storage irsc.aeo:messages limiting.inanimate set value '{"text":"INANIMATE","color":"green"}'

# soft Lagclear start message
data modify storage irsc.aeo:messages lagclear.start.soft.message set value '["",{"text":"Clearing items in ","color":"red"},{"score":{"name":"$lagclear.time","objective":"irsc.aeo.global"},"color":"dark_red"},{"text":" seconds!","color":"red"}]'
# hard lagclear start message
data modify storage irsc.aeo:messages lagclear.start.hard.message set value '["",{"text":"Clearing items in ","color":"red"},{"score":{"name":"$lagclear.time","objective":"irsc.aeo.global"},"color":"dark_red"},{"text":" seconds!","color":"red"}]'

# soft lagclear button
data modify storage irsc.aeo:messages lagclear.start.soft.button set value '["",{"text":" [","color":"yellow"},{"text":"Cancel","color":"gold","clickEvent":{"action":"run_command","value":"/trigger irsc.aeo.lgclrcl set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Postpone the lagclear for two minutes","color":"gray"}]}},{"text":"]","color":"yellow"}]'
# hard lagclear button
data modify storage irsc.aeo:messages lagclear.start.hard.button set value '["",{"text":" [","color":"yellow"},{"text":"Cancel","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Cannot postpone as too many items exist!","color":"gray"}]}},{"text":"]","color":"yellow"}]'

# lagclear message
data modify storage irsc.aeo:messages lagclear.clear set value '{"text":"Clearing items!","color":"red"}'

# lagclear postponed message
data modify storage irsc.aeo:messages lagclear.postpone set value '["",{"text":"Lagclear postponed by ","color":"red"},{"selector":"@a[scores={irsc.aeo.lgclrcl=1..}]","color":"yellow"}]'


# Remove scoreboards
scoreboard objectives remove irsc.aeo.global
scoreboard objectives remove irsc.aeo.lifespn
scoreboard objectives remove irsc.aeo.msgdly
scoreboard objectives remove irsc.aeo.lgclrcl

# Remove data storage
data remove storage irsc.aeo:messages message-prefix
data remove storage irsc.aeo:messages limiting
data remove storage irsc.aeo:messages lagclear

# Attempt to remove tags
tag @a remove irsc.aeo.debug

# Remove Bossbars
bossbar remove irsc.aeo:all
bossbar remove irsc.aeo:item
bossbar remove irsc.aeo:projectile
bossbar remove irsc.aeo:tnt
bossbar remove irsc.aeo:inanimate

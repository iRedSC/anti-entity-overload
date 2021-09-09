execute if score $lagclear.time irsc.aeo.global >= $lagclear.schedule.hard irsc.aeo.global run function aeo:lagclear/start/hard
execute if score $lagclear.time irsc.aeo.global matches 0 run function aeo:lagclear/start/hard


scoreboard objectives add shiplib.value dummy
scoreboard objectives add shiplib.rotation dummy
scoreboard objectives add shiplib.speed dummy
scoreboard objectives add shiplib.max_speed dummy
scoreboard objectives add shiplib.min_speed dummy
scoreboard objectives add shiplib.speed_increment dummy
scoreboard objectives add shiplib.max_rotation dummy
scoreboard objectives add shiplib.min_rotation dummy
scoreboard objectives add shiplib.rotation_increment dummy

scoreboard objectives add shiplib.entityID dummy
scoreboard players add #register shiplib.entityID 0

function #shiplib:ships/load_data
execute as @e[type=item_display,tag=shiplib.ship] run function #shiplib:ships/set_data
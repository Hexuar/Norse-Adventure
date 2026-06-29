execute as @e[type=item_display,tag=shiplib.ship] at @s run function shiplib:ships/common/destroy

kill @e[tag=shiplib.entity,tag=!shiplib.kill_me]

scoreboard objectives remove shiplib.value
scoreboard objectives remove shiplib.rotation
scoreboard objectives remove shiplib.speed
scoreboard objectives remove shiplib.max_speed
scoreboard objectives remove shiplib.min_speed
scoreboard objectives remove shiplib.speed_increment
scoreboard objectives remove shiplib.max_rotation
scoreboard objectives remove shiplib.min_rotation
scoreboard objectives remove shiplib.rotation_increment

scoreboard objectives remove shiplib.entityID
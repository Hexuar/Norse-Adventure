execute as @e[type=item_display,tag=norse_adventure.ship] at @s run function norse_adventure:ships/common/destroy

kill @e[tag=norse_adventure.entity,tag=!norse_adventure.kill_me]

scoreboard objectives remove norse_adventure.value
scoreboard objectives remove norse_adventure.constant
scoreboard objectives remove norse_adventure.rotation
scoreboard objectives remove norse_adventure.speed
scoreboard objectives remove norse_adventure.max_speed
scoreboard objectives remove norse_adventure.min_speed
scoreboard objectives remove norse_adventure.speed_increment
scoreboard objectives remove norse_adventure.max_rotation
scoreboard objectives remove norse_adventure.min_rotation
scoreboard objectives remove norse_adventure.rotation_increment

scoreboard objectives remove norse_adventure.entityID
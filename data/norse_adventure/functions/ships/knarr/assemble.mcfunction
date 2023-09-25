# Floors
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_3] ^ ^0.3 ^4
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_2] ^ ^0.3 ^3
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_1] ^ ^0.3 ^1.5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_0] ^ ^0.3 ^
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_-1] ^ ^0.3 ^-1.5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_-2] ^ ^0.3 ^-3
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_-3] ^ ^0.3 ^-4


# Collision Detectors
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.collision_detector.bow] ^ ^ ^5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.collision_detector.aft] ^ ^ ^-5


# Rudder
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder] ^-1.18 ^0.7 ^-3 ~ ~

execute store result score #rudder_rotation norse_adventure.value run data get entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr,sort=nearest,limit=1] Rotation[0] 1000
scoreboard players operation #dr norse_adventure.value = @s norse_adventure.rotation
scoreboard players operation #dr norse_adventure.value *= #1000 norse_adventure.constant
scoreboard players operation #rudder_rotation norse_adventure.value -= #dr norse_adventure.value
execute store result entity @e[type=item_display,tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder,limit=1] Rotation[0] float 0.001 run scoreboard players get #rudder_rotation norse_adventure.value

# Sail interaction
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.sail_rope] ^1.25 ^0.375 ^-3.1

# Seats
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.steering_seat] ^ ^-0.225 ^-3.5
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.port_seat] ^0.5 ^-0.225 ^2.5
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.starboard_seat] ^-0.5 ^-0.225 ^2.5


# Chest
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.chest] ^ ^-0.85 ^-0.45


# Sail
execute if score @s norse_adventure.speed matches ..2 run function norse_adventure:ships/knarr/sail/tucked
execute if score @s norse_adventure.speed matches 3..4 run function norse_adventure:ships/knarr/sail/half
execute if score @s norse_adventure.speed matches 5.. run function norse_adventure:ships/knarr/sail/full

# Area effect clouds
execute as @e[type=#norse_adventure:fix_rotation,tag=norse_adventure.current,tag=!norse_adventure.ship_part.rudder] run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 0b
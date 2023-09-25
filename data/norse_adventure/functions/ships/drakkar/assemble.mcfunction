# Floors
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_5] ^ ^0.5 ^7.5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_4] ^ ^0.5 ^6
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_3] ^ ^0.5 ^4.5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_2] ^ ^0.5 ^3
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_1] ^ ^0.5 ^1.5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_0] ^ ^0.5 ^
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_-1] ^ ^0.5 ^-1.5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_-2] ^ ^0.5 ^-3
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_-3] ^ ^0.5 ^-4.5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_-4] ^ ^0.5 ^-6
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.floor_-5] ^ ^0.5 ^-7.5


# Collision Detectors
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.collision_detector.bow_a] ^1 ^ ^9
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.collision_detector.aft_a] ^1 ^ ^-9
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.collision_detector.bow_b] ^-1 ^ ^9
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.collision_detector.aft_b] ^-1 ^ ^-9


# Rudder
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder] ^-1.6 ^0.9 ^-7.5 ~ ~

execute store result score #rudder_rotation norse_adventure.value run data get entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar,sort=nearest,limit=1] Rotation[0] 1000
scoreboard players operation #dr norse_adventure.value = @s norse_adventure.rotation
scoreboard players operation #dr norse_adventure.value *= #1000 norse_adventure.constant
scoreboard players operation #rudder_rotation norse_adventure.value -= #dr norse_adventure.value
execute store result entity @e[type=item_display,tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder,limit=1] Rotation[0] float 0.001 run scoreboard players get #rudder_rotation norse_adventure.value

# Sail interaction
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.sail_rope] ^1.35 ^0.625 ^-7.4


# Seats
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.steering_seat] ^ ^0.03 ^-8
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.port_seat_1] ^1 ^-0.1 ^-5.55
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.starboard_seat_1] ^-1 ^-0.1 ^-5.55
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.port_seat_2] ^1 ^-0.1 ^-4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.starboard_seat_2] ^-1 ^-0.1 ^-4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.port_seat_3] ^1 ^-0.1 ^-2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.starboard_seat_3] ^-1 ^-0.1 ^-2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.port_seat_4] ^1 ^-0.1 ^2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.starboard_seat_4] ^-1 ^-0.1 ^2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.port_seat_5] ^1 ^-0.1 ^4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.starboard_seat_5] ^-1 ^-0.1 ^4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.port_seat_6] ^1 ^-0.1 ^5.55
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.drakkar.starboard_seat_6] ^-1 ^-0.1 ^5.55


# Chest
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar.chest] ^ ^-0.6 ^6.5


# Sail
execute if score @s norse_adventure.speed matches ..2 run function norse_adventure:ships/drakkar/sail/tucked
execute if score @s norse_adventure.speed matches 3..4 run function norse_adventure:ships/drakkar/sail/half
execute if score @s norse_adventure.speed matches 5..6 run function norse_adventure:ships/drakkar/sail/full
execute if score @s norse_adventure.speed matches 7..8 run function norse_adventure:ships/drakkar/sail/released

# Area effect clouds
execute as @e[type=#norse_adventure:fix_rotation,tag=norse_adventure.current,tag=!norse_adventure.ship_part.rudder] run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.drakkar,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 0b
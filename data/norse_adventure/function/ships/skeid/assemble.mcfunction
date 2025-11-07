# Collision Detectors
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.skeid.collision_detector.bow_a] ^1 ^ ^9
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.skeid.collision_detector.aft_a] ^1 ^ ^-9
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.skeid.collision_detector.bow_b] ^-1 ^ ^9
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.skeid.collision_detector.aft_b] ^-1 ^ ^-9


# Rudder
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder] ^-1.6 ^0.875 ^-7.5 ~ ~
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1.0 run scoreboard players get @s norse_adventure.rotation


# Sail interaction
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.sail_rope] ^1.45 ^0.875 ^-7.4


# Seats
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.steering_seat] ^ ^0.03 ^-8
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_1] ^1 ^-0.1 ^-5.55
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_1] ^-1 ^-0.1 ^-5.55
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_2] ^1 ^-0.1 ^-4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_2] ^-1 ^-0.1 ^-4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_3] ^1 ^-0.1 ^-2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_3] ^-1 ^-0.1 ^-2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_4] ^1 ^-0.1 ^2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_4] ^-1 ^-0.1 ^2.6
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_5] ^1 ^-0.1 ^4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_5] ^-1 ^-0.1 ^4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_6] ^1 ^-0.1 ^5.55
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_6] ^-1 ^-0.1 ^5.55


# Chest
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.skeid.chest] ^ ^-0.6 ^6.5 ~ ~


# Sail
execute if score @s norse_adventure.speed matches ..2 run function norse_adventure:ships/skeid/sail/tucked
execute if score @s norse_adventure.speed matches 3..4 run function norse_adventure:ships/skeid/sail/half
execute if score @s norse_adventure.speed matches 5..6 run function norse_adventure:ships/skeid/sail/full
execute if score @s norse_adventure.speed matches 7..8 run function norse_adventure:ships/skeid/sail/released


# Area effect clouds
execute as @e[type=#norse_adventure:fix_rotation,tag=norse_adventure.current,tag=!norse_adventure.ship_part.rudder] run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.skeid,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 0b
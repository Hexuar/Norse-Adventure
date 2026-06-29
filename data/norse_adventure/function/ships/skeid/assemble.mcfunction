# Collision Detectors
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.skeid.collision_detector.bow_a] ^1 ^ ^9
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.skeid.collision_detector.aft_a] ^1 ^ ^-9
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.skeid.collision_detector.bow_b] ^-1 ^ ^9
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.skeid.collision_detector.aft_b] ^-1 ^ ^-9


# Rudder
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.rudder] ^-1.6 ^0.875 ^-7.5 ~ ~
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1.0 run scoreboard players get @s shiplib.rotation


# Sail interaction
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.sail_rope] ^1.45 ^0.875 ^-7.4


# Seats
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.steering_seat] ^ ^-0.05 ^-8
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_1] ^1 ^-0.2 ^-5.55
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_1] ^-1 ^-0.2 ^-5.55
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_2] ^1 ^-0.2 ^-4
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_2] ^-1 ^-0.2 ^-4
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_3] ^1 ^-0.2 ^-2.6
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_3] ^-1 ^-0.2 ^-2.6
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_4] ^1 ^-0.2 ^2.6
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_4] ^-1 ^-0.2 ^2.6
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_5] ^1 ^-0.2 ^4
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_5] ^-1 ^-0.2 ^4
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.port_seat_6] ^1 ^-0.2 ^5.55
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.skeid.starboard_seat_6] ^-1 ^-0.2 ^5.55


# Chest
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=norse_adventure.ship.skeid.chest] ^ ^-0.69 ^6.5 ~ ~


# Sail
execute if score @s shiplib.speed matches ..2 run function norse_adventure:ships/skeid/sail/tucked
execute if score @s shiplib.speed matches 3..4 run function norse_adventure:ships/skeid/sail/half
execute if score @s shiplib.speed matches 5..6 run function norse_adventure:ships/skeid/sail/full
execute if score @s shiplib.speed matches 7..8 run function norse_adventure:ships/skeid/sail/released


# Floors
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.skeid.floor1] ^ ^-2.7 ^8
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.skeid.floor2] ^ ^-2.7 ^5.25
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.skeid.floor3] ^ ^-2.7 ^2.5
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.skeid.floor4] ^ ^-2.7 ^-0.25
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.skeid.floor5] ^ ^-2.7 ^-3
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.skeid.floor6] ^ ^-2.7 ^-5.75
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.skeid.floor7] ^ ^-2.7 ^-8.5
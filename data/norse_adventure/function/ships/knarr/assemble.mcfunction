# Collision Detectors
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.knarr.collision_detector.bow_a] ^1 ^ ^5.2
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.knarr.collision_detector.aft_a] ^1 ^ ^-5.2
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.knarr.collision_detector.bow_b] ^-1 ^ ^5.2
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.knarr.collision_detector.aft_b] ^-1 ^ ^-5.2


# Rudder
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.rudder] ^-1.7 ^0.95 ^-3 ~ ~
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1.0 run scoreboard players get @s shiplib.rotation


# Sail interaction
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.sail_rope] ^1.7 ^0.75 ^-3.1


# Seats
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.knarr.steering_seat] ^ ^-0.3 ^-3.9
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.knarr.port_seat] ^0.5 ^-0.3 ^3.95
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.knarr.starboard_seat] ^-0.5 ^-0.3 ^3.95


# Chests
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=norse_adventure.ship.knarr.chest_1] ^0.45 ^-0.9 ^-0.45 ~ ~
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=norse_adventure.ship.knarr.chest_2] ^-0.45 ^-0.9 ^-0.45 ~ ~
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=norse_adventure.ship.knarr.chest_3] ^0.45 ^-0.9 ^0.45 ~ ~
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=norse_adventure.ship.knarr.chest_4] ^-0.45 ^-0.9 ^0.45 ~ ~


# Sail
execute if score @s shiplib.speed matches ..1 run function norse_adventure:ships/knarr/sail/tucked
execute if score @s shiplib.speed matches 2..3 run function norse_adventure:ships/knarr/sail/half
execute if score @s shiplib.speed matches 4 run function norse_adventure:ships/knarr/sail/full


# Floors
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.knarr.floor1] ^ ^-3.4 ^3.5
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.knarr.floor2] ^ ^-3.4 ^
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.knarr.floor3] ^ ^-3.4 ^-3.5


# Area effect clouds
execute as @e[type=#shiplib:fix_rotation,tag=shiplib.current,tag=!shiplib.ship_part.rudder] run data modify entity @s Rotation set from entity @e[type=item_display,tag=shiplib.current,tag=norse_adventure.ship.knarr,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=shiplib.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=shiplib.current] run data modify entity @s Air set value 0b
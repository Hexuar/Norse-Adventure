# Collision Detectors
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.karve.collision_detector.bow] ^ ^ ^5
tp @n[type=marker,tag=shiplib.current,tag=norse_adventure.ship.karve.collision_detector.aft] ^ ^ ^-5


# Rudder
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.rudder] ^-1.28 ^0.63 ^-3 ~ ~
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1.0 run scoreboard players get @s shiplib.rotation


# Sail interaction
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.sail_rope] ^1.2 ^0.63 ^-3.1


# Seats
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.karve.steering_seat] ^ ^-0.3 ^-3.55
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.karve.port_seat] ^0.5 ^-0.3 ^2.45
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,tag=norse_adventure.ship.karve.starboard_seat] ^-0.5 ^-0.3 ^2.45


# Chests
tp @n[type=area_effect_cloud,tag=shiplib.current,tag=norse_adventure.ship.karve.chest] ^ ^-0.94 ^-0.4 ~ ~


# Sail
execute if score @s shiplib.speed matches ..2 run function norse_adventure:ships/karve/sail/tucked
execute if score @s shiplib.speed matches 3..4 run function norse_adventure:ships/karve/sail/half
execute if score @s shiplib.speed matches 5.. run function norse_adventure:ships/karve/sail/full


# Floors
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.karve.floor1] ^ ^-2.55 ^3.5
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.karve.floor2] ^ ^-2.55 ^1
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.karve.floor3] ^ ^-2.55 ^-1.5
tp @n[type=happy_ghast,tag=shiplib.current,tag=shiplib.ship_part.floor,tag=norse_adventure.ship.karve.floor4] ^ ^-2.55 ^-4


# Area effect clouds
execute as @e[type=#shiplib:fix_rotation,tag=shiplib.current,tag=!shiplib.ship_part.rudder] run data modify entity @s Rotation set from entity @e[type=item_display,tag=shiplib.current,tag=norse_adventure.ship.karve,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=shiplib.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=shiplib.current] run data modify entity @s Air set value 0b
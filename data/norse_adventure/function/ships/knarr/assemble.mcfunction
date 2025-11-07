# Collision Detectors
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.collision_detector.bow_a] ^1 ^ ^5.2
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.collision_detector.aft_a] ^1 ^ ^-5.2
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.collision_detector.bow_b] ^-1 ^ ^5.2
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.collision_detector.aft_b] ^-1 ^ ^-5.2


# Rudder
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder] ^-1.7 ^0.95 ^-3 ~ ~
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1.0 run scoreboard players get @s norse_adventure.rotation


# Sail interaction
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.sail_rope] ^1.7 ^0.75 ^-3.1


# Seats
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.steering_seat] ^ ^-0.3 ^-3.8
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.port_seat] ^0.5 ^-0.3 ^4
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.starboard_seat] ^-0.5 ^-0.3 ^4


# Chests
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.chest_1] ^0.45 ^-1.2 ^-0.45 ~ ~
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.chest_2] ^-0.45 ^-1.2 ^-0.45 ~ ~
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.chest_3] ^0.45 ^-1.2 ^0.45 ~ ~
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr.chest_4] ^-0.45 ^-1.2 ^0.45 ~ ~


# Sail
execute if score @s norse_adventure.speed matches ..1 run function norse_adventure:ships/knarr/sail/tucked
execute if score @s norse_adventure.speed matches 2..3 run function norse_adventure:ships/knarr/sail/half
execute if score @s norse_adventure.speed matches 4 run function norse_adventure:ships/knarr/sail/full


# Area effect clouds
execute as @e[type=#norse_adventure:fix_rotation,tag=norse_adventure.current,tag=!norse_adventure.ship_part.rudder] run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 0b
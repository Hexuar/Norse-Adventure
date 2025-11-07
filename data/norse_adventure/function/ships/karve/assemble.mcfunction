# Collision Detectors
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.karve.collision_detector.bow] ^ ^ ^5
tp @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship.karve.collision_detector.aft] ^ ^ ^-5


# Rudder
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder] ^-1.28 ^0.63 ^-3 ~ ~
execute store result entity @s item.components."minecraft:custom_model_data".floats[1] float 1.0 run scoreboard players get @s norse_adventure.rotation


# Sail interaction
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.sail_rope] ^1.2 ^0.63 ^-3.1


# Seats
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.karve.steering_seat] ^ ^-0.225 ^-3.5
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.karve.port_seat] ^0.5 ^-0.225 ^2.5
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.karve.starboard_seat] ^-0.5 ^-0.225 ^2.5


# Chests
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.karve.chest] ^ ^-0.85 ^-0.4 ~ ~


# Sail
execute if score @s norse_adventure.speed matches ..2 run function norse_adventure:ships/karve/sail/tucked
execute if score @s norse_adventure.speed matches 3..4 run function norse_adventure:ships/karve/sail/half
execute if score @s norse_adventure.speed matches 5.. run function norse_adventure:ships/karve/sail/full


# Area effect clouds
execute as @e[type=#norse_adventure:fix_rotation,tag=norse_adventure.current,tag=!norse_adventure.ship_part.rudder] run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.karve,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 0b
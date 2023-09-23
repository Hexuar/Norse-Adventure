## Ropes

# Front
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.bow_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^ ^1.1 ^5.3
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.bow_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^ ^6.7 ^

# Back
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.aft_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^ ^1.1 ^-5.7
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.aft_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^ ^6.7 ^

# Upper starboard
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_starboard_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^-1.2 ^0.4 ^-3.0
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_starboard_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^-4.3 ^5.6 ^0.2

# Upper port
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_port_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^1.2 ^0.4 ^-3.0
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_port_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^4.3 ^5.6 ^0.2



# Floors
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_3] ^ ^0.3 ^4
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_2] ^ ^0.3 ^3
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_1] ^ ^0.3 ^1.5
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_0] ^ ^0.3 ^
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_-1] ^ ^0.3 ^-1.5
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_-2] ^ ^0.3 ^-3
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.floor_-3] ^ ^0.3 ^-4



# Rudder
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder] ^-1.18 ^0.7 ^-3

# Sail interaction
tp @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.sail] ^1.25 ^0.5 ^-2.7

# Seats
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.steering_seat] ^ ^-0.225 ^-3.5
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.port_seat] ^0.5 ^-0.225 ^2.5
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.starboard_seat] ^-0.5 ^-0.225 ^2.5


# Chest
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.chest] ^ ^-0.85 ^-0.45


# Sail
execute if score @s norse_adventure.speed matches ..2 run function norse_adventure:ships/knarr/sail/tucked
execute if score @s norse_adventure.speed matches 3..4 run function norse_adventure:ships/knarr/sail/half
execute if score @s norse_adventure.speed matches 5.. run function norse_adventure:ships/knarr/sail/full

# Area effect clouds
execute as @e[type=!area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Rotation set from entity @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.knarr,sort=nearest,limit=1] Rotation

execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 0b
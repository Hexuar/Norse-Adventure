function norse_adventure:entity_id/get

## Ropes

# Front
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.bow_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^ ^1 ^5.3
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.bow_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^ ^6.7 ^

# Back
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.aft_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^ ^1 ^-5.7
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.aft_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^ ^6.7 ^

# Upper starboard
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_starboard_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^-1.2 ^0.3 ^-3.0
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_starboard_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^-4.3 ^5.5 ^0.2

# Upper port
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_port_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^1.2 ^0.3 ^-3.0
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.upper_port_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^4.3 ^5.5 ^0.2

# Lower starboard
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.lower_starboard_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^-1.4 ^0.3 ^-2.0
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.lower_starboard_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^-4 ^1.5 ^0.6

# Lower port
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.lower_port_rope,tag=norse_adventure.ship_part.rope.anchor_point.a] ^1.4 ^0.3 ^-2.0
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship.knarr.lower_port_rope,tag=norse_adventure.ship_part.rope.anchor_point.b] ^4 ^1.5 ^0.6

# Rudder
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.rudder] ~-1.47 ~0.7 ~-3

## Seats
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.steering_seat] ^ ^-0.35 ^-3.5
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.port_seat] ^0.5 ^-0.35 ^2.5
tp @e[tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,tag=norse_adventure.ship.knarr.starboard_seat] ^-0.5 ^-0.35 ^2.5


execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=norse_adventure.current] run data modify entity @s Air set value 0b


tag @e remove norse_adventure.current
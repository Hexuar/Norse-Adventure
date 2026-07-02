## Base

# Base
data merge entity @s {Tags:["shiplib.unregistered","shiplib.entity","shiplib.ship","norse_adventure.ship.karve"],item:{id:"minecraft:command_block",components:{item_model:"norse_adventure:karve","minecraft:custom_model_data":{floats:[0.0f]}}},transformation:{"translation":[0.0f,1.0f,0.0f],scale:[4.0f,4.0f,4.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# Sail Rope
summon area_effect_cloud ~ ~ ~ {Tags:["shiplib.entity","shiplib.ship_part","shiplib.ship_part.acceleration","shiplib.unregistered"],Radius:0f,Age:999999,Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["shiplib.entity","shiplib.ship_part","shiplib.ship_part.acceleration","shiplib.unregistered"]}]}

# Rudder
summon area_effect_cloud ~ ~ ~ {Tags:["shiplib.entity","shiplib.ship_part.steering","shiplib.unregistered"],Radius:0f,Age:999999,Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["shiplib.entity","shiplib.ship_part.steering","shiplib.unregistered"]}]}


## Chests
function shiplib:part/chest/summon
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.chest
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s remove shiplib.untagged


## Collision detectors
function shiplib:part/collision_detector/summon/bow
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.collision_detector.bow
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged

function shiplib:part/collision_detector/summon/aft
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.collision_detector.aft
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged


## Ropes

# Bow Rope
function shiplib:part/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.bow_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Aft Rope
function shiplib:part/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.aft_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Upper Port Rope
function shiplib:part/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.upper_port_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Lower Port Rope
function shiplib:part/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.lower_port_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Upper Starboard Rope
function shiplib:part/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.upper_starboard_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Lower Starboard Rope
function shiplib:part/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.lower_starboard_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged


## Seats

# Steering Seat
function shiplib:part/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.steering_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add shiplib.ship_part.steering_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat
function shiplib:part/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.port_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat
function shiplib:part/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.starboard_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged


## Floors

# Floor 1
function shiplib:part/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.7
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.floor1
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 2
function shiplib:part/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.7
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.floor2
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 3
function shiplib:part/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.7
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.floor3
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 4
function shiplib:part/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.7
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.karve.floor4
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged
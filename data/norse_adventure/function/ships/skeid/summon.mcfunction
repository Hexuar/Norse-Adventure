## Base

# Base
data merge entity @s {Tags:["shiplib.unregistered","shiplib.entity","shiplib.ship","norse_adventure.ship.skeid"],item:{id:"minecraft:command_block",components:{item_model:"norse_adventure:skeid","minecraft:custom_model_data":{floats:[0.0f]}}},transformation:{"translation":[0.0f,1.0f,0.0f],scale:[8.0f,8.0f,8.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},teleport_duration:2,interpolation_duration:1}

# Sail Rope
summon area_effect_cloud ~ ~ ~ {Tags:["shiplib.entity","shiplib.ship_part","shiplib.ship_part.sail_rope","shiplib.unregistered"],Radius:0f,Age:999999,Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["shiplib.entity","shiplib.ship_part","shiplib.ship_part.sail_rope","shiplib.unregistered"]}]}

# Rudder
summon area_effect_cloud ~ ~ ~ {Tags:["shiplib.entity","shiplib.ship_part.rudder","shiplib.unregistered"],Radius:0f,Age:999999,Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["shiplib.entity","shiplib.ship_part.rudder","shiplib.unregistered"]}]}


## Chests
function shiplib:ships/common/chest/summon
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.chest
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s remove shiplib.untagged


## Collision detectors
function shiplib:ships/common/collision_detector/summon/bow
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.bow_a
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged

function shiplib:ships/common/collision_detector/summon/aft
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.aft_a
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged

function shiplib:ships/common/collision_detector/summon/bow
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.bow_b
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged

function shiplib:ships/common/collision_detector/summon/aft
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.aft_b
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged


## Ropes

# Bow Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.bow_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Aft Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.aft_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Upper Port Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.upper_port_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Lower Port Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.lower_port_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Upper Starboard Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.upper_starboard_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Lower Starboard Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.lower_starboard_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged


## Seats

# Steering Seat
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.steering_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add shiplib.ship_part.steering_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat 1
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_1
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat 1
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_1
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat 2 
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_2
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat 2
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_2
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat 3
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_3
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat 3
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_3
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat 4
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_4
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat 4
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_4
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat 5
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_5
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat 5
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_5
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat 6
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_6
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat 6
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_6
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged


## Floors

# Floor 1
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.8
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.floor1
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 2
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.8
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.floor2
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 3
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.8
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.floor3
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 4
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.8
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.floor4
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 5
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.8
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.floor5
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 6
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.8
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.floor6
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 7
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.8
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.skeid.floor7
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged
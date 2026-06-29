## Base

# Scores
function norse_adventure:ships/knarr/set_data

# Base
data merge entity @s {Tags:["shiplib.unregistered","shiplib.entity","shiplib.ship","norse_adventure.ship.knarr"],item:{id:"minecraft:command_block",components:{item_model:"norse_adventure:knarr","minecraft:custom_model_data":{floats:[0.0f]}}},transformation:{"translation":[0.0f,1.5f,0.0f],scale:[4.0f,4.0f,4.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]},teleport_duration:2,interpolation_duration:1}

# Sail Rope
summon area_effect_cloud ~ ~ ~ {Tags:["shiplib.entity","shiplib.ship_part","shiplib.ship_part.sail_rope","shiplib.unregistered"],Radius:0f,Age:999999,Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["shiplib.entity","shiplib.ship_part","shiplib.ship_part.sail_rope","shiplib.unregistered"]}]}

# Rudder
summon area_effect_cloud ~ ~ ~ {Tags:["shiplib.entity","shiplib.ship_part.rudder","shiplib.unregistered"],Radius:0f,Age:999999,Passengers:[{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["shiplib.entity","shiplib.ship_part.rudder","shiplib.unregistered"]}]}


## Chests
function shiplib:ships/common/chest/summon
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.chest_1
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s remove shiplib.untagged

function shiplib:ships/common/chest/summon
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.chest_2
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s remove shiplib.untagged

function shiplib:ships/common/chest/summon
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.chest_3
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s remove shiplib.untagged

function shiplib:ships/common/chest/summon
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.chest_4
execute as @e[type=#shiplib:crate_entity,tag=shiplib.untagged] run tag @s remove shiplib.untagged


## Collision detectors
function shiplib:ships/common/collision_detector/summon/bow
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.collision_detector.bow_a
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged

function shiplib:ships/common/collision_detector/summon/aft
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.collision_detector.aft_a
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged

function shiplib:ships/common/collision_detector/summon/bow
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.collision_detector.bow_b
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged

function shiplib:ships/common/collision_detector/summon/aft
execute as @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.collision_detector.aft_b
tag @e[type=marker,tag=shiplib.ship_part.collision_detector,tag=shiplib.untagged] remove shiplib.untagged


## Ropes

# Bow Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.bow_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Aft Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.aft_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Upper Port Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.upper_port_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Lower Port Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.lower_port_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Upper Starboard Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.upper_starboard_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged

# Lower Starboard Rope
function shiplib:ships/common/rope/summon
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.lower_starboard_rope
tag @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.untagged] remove shiplib.untagged


## Seats

# Steering Seat
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.steering_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add shiplib.ship_part.steering_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Port Seat
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.port_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Starboard Seat
function shiplib:ships/common/seat/summon
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.starboard_seat
execute as @e[tag=shiplib.ship_part.seat,tag=shiplib.untagged] run tag @s remove shiplib.untagged


## Floors

# Floor 1
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.9
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.floor1
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 2
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.9
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.floor2
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged

# Floor 3
function shiplib:ships/common/floor/summon
attribute @n[type=happy_ghast,tag=shiplib.ship_part.floor,tag=shiplib.untagged] minecraft:scale base set 0.9
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s add norse_adventure.ship.knarr.floor3
execute as @e[tag=shiplib.ship_part.floor,tag=shiplib.untagged] run tag @s remove shiplib.untagged
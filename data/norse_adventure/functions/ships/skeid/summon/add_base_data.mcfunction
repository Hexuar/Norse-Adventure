# Scores
function norse_adventure:ships/skeid/set_data

# Base
data merge entity @s {Tags:["norse_adventure.unregistered","norse_adventure.entity","norse_adventure.ship","norse_adventure.ship.skeid"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Hull
summon item_display ~ ~ ~ {Tags:["norse_adventure.unregistered","norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.hull"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:2221520}},teleport_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[8f,8f,8f]}}
ride @e[type=item_display,tag=norse_adventure.ship_part.hull,tag=norse_adventure.unregistered,sort=nearest,limit=1] mount @s

# Sail
summon item_display ~ ~ ~ {Tags:["norse_adventure.unregistered","norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.sail"],item:{id:"minecraft:command_block", Count:1b,tag:{CustomModelData: 2221521}},teleport_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[8f,8f,8f]}}
ride @e[type=item_display,tag=norse_adventure.ship_part.sail,tag=norse_adventure.unregistered,sort=nearest,limit=1] mount @s

# Sail Rope
summon area_effect_cloud ~ ~ ~ {Tags:["norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.sail_rope","norse_adventure.unregistered"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:item_display",Tags:["norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.sail_rope","norse_adventure.unregistered"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:2221525}},teleport_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.1f,0.0f],scale:[8f,8f,8f]}},{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.sail_rope","norse_adventure.unregistered"]}]}

# Rudder
summon area_effect_cloud ~ ~ ~ {Tags:["norse_adventure.entity","norse_adventure.ship_part.rudder","norse_adventure.unregistered"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:item_display",Tags:["norse_adventure.entity","norse_adventure.ship_part.rudder","norse_adventure.unregistered"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:2221524}},teleport_duration:5,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,0f,0.12f],scale:[8f,8f,8f]}},{id:"minecraft:interaction",width:0.6f,height:0.6f,Tags:["norse_adventure.entity","norse_adventure.ship_part.rudder","norse_adventure.unregistered"]}]}

# Chest
function norse_adventure:ships/common/chest/summon
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.chest
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged






## Floors

# 5
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_5
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# 4
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_4
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# 3
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_3
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# 2
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_2
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# 1
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_1
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# 0
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_0
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# -1
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_-1
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# -2
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_-2
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# -3
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_-3
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# -4
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_-4
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged

# -5
function norse_adventure:ships/common/floor/summon
execute as @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.floor_-5
tag @e[type=marker,tag=norse_adventure.ship_part.floor,tag=norse_adventure.untagged] remove norse_adventure.untagged



## Collision detectors
function norse_adventure:ships/common/collision_detector/summon/bow
execute as @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.bow_a
tag @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] remove norse_adventure.untagged

function norse_adventure:ships/common/collision_detector/summon/aft
execute as @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.aft_a
tag @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] remove norse_adventure.untagged

function norse_adventure:ships/common/collision_detector/summon/bow
execute as @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.bow_b
tag @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] remove norse_adventure.untagged

function norse_adventure:ships/common/collision_detector/summon/aft
execute as @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.collision_detector.aft_b
tag @e[type=marker,tag=norse_adventure.ship_part.collision_detector,tag=norse_adventure.untagged] remove norse_adventure.untagged


## Ropes

# Bow Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.bow_rope
tag @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Aft Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.aft_rope
tag @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Upper Port Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.upper_port_rope
tag @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Lower Port Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.lower_port_rope
tag @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Upper Starboard Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.upper_starboard_rope
tag @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Lower Starboard Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.lower_starboard_rope
tag @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged





## Seats

# Steering Seat
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.steering_seat
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship_part.steering_seat
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Port Seat 1
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_1
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Starboard Seat 1
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_1
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Port Seat 2 
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_2
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Starboard Seat 2
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_2
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Port Seat 3
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_3
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Starboard Seat 3
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_3
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Port Seat 4
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_4
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Starboard Seat 4
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_4
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Port Seat 5
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_5
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Starboard Seat 5
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_5
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Port Seat 6
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.port_seat_6
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Starboard Seat 6
function norse_adventure:ships/common/seat/summon
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.skeid.starboard_seat_6
execute as @e[tag=norse_adventure.ship_part.seat,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged


# Common
function norse_adventure:ships/common/summon
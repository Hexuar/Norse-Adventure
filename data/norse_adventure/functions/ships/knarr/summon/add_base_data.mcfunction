data merge entity @s {Tags:["norse_adventure.unregistered","norse_adventure.entity","norse_adventure.ship","norse_adventure.ship.knarr"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

# Hull
summon item_display ~ ~ ~ {Tags:["norse_adventure.unregistered","norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.hull"],item:{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:2221500}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[4f,4f,4f]}}
ride @e[type=item_display,tag=norse_adventure.ship_part.hull,tag=norse_adventure.unregistered,sort=nearest,limit=1] mount @s

# Sail
summon item_display ~ ~ ~ {Tags:["norse_adventure.unregistered","norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.sail"],item:{id:"minecraft:command_block", Count:1b,tag:{CustomModelData: 2221501}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[4f,4f,4f]}}
ride @e[type=item_display,tag=norse_adventure.ship_part.sail,tag=norse_adventure.unregistered,sort=nearest,limit=1] mount @s

# Rudder
execute positioned ~-1.47 ~0.7 ~-3 run function norse_adventure:ships/knarr/rudder/summon

# Bow Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.bow_rope
tag @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Aft Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.aft_rope
tag @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Upper Port Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.upper_port_rope
tag @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Lower Port Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.lower_port_rope
tag @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Upper Starboard Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.upper_starboard_rope
tag @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Lower Starboard Rope
function norse_adventure:ships/common/rope/summon
execute as @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.lower_starboard_rope
tag @e[type=slime,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.untagged] remove norse_adventure.untagged

# Steering Seat
function norse_adventure:ships/common/seat/summon
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.steering_seat
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Port Seat
function norse_adventure:ships/common/seat/summon
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.port_seat
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Starboard Seat
function norse_adventure:ships/common/seat/summon
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.starboard_seat
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

# Chest
function norse_adventure:ships/common/chest/summon
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s add norse_adventure.ship.knarr.chest
execute as @e[type=area_effect_cloud,tag=norse_adventure.untagged] run tag @s remove norse_adventure.untagged

execute as @e[tag=norse_adventure.unregistered] run function norse_adventure:entity_id/register
scoreboard players add #register norse_adventure.entityID 1
# Get current
function norse_adventure:entity_id/get


# Seat fix
execute as @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship_part.seat,nbt=!{Passengers:[]}] at @s run function norse_adventure:ships/common/seat/fix



# Interaction
execute if data entity @e[type=interaction,tag=norse_adventure.ship_part.rudder,tag=norse_adventure.current,sort=nearest,limit=1] interaction if score @s norse_adventure.rotation < @s norse_adventure.max_rotation run scoreboard players operation @s norse_adventure.rotation += @s norse_adventure.rotation_increment
execute if data entity @e[type=interaction,tag=norse_adventure.ship_part.rudder,tag=norse_adventure.current,sort=nearest,limit=1] attack if score @s norse_adventure.rotation > @s norse_adventure.min_rotation run scoreboard players operation @s norse_adventure.rotation -= @s norse_adventure.rotation_increment

execute if data entity @e[type=interaction,tag=norse_adventure.ship_part.sail_rope,tag=norse_adventure.current,sort=nearest,limit=1] attack if score @s norse_adventure.speed < @s norse_adventure.max_speed run scoreboard players operation @s norse_adventure.speed += @s norse_adventure.speed_increment
execute if data entity @e[type=interaction,tag=norse_adventure.ship_part.sail_rope,tag=norse_adventure.current,sort=nearest,limit=1] interaction if score @s norse_adventure.speed > @s norse_adventure.min_speed run scoreboard players operation @s norse_adventure.speed -= @s norse_adventure.speed_increment


execute as @e[type=interaction,tag=norse_adventure.current,sort=nearest] run data remove entity @s interaction
execute as @e[type=interaction,tag=norse_adventure.current,sort=nearest] run data remove entity @s attack


# Collisions
execute as @e[type=marker,tag=norse_adventure.current,tag=norse_adventure.ship_part.collision_detector] at @s run function norse_adventure:ships/common/collision_detector/check

execute if score #collision_bow norse_adventure.value matches 1 if score @s norse_adventure.speed matches 1.. run scoreboard players set @s norse_adventure.speed 0
execute if score #collision_aft norse_adventure.value matches 1 if score @s norse_adventure.speed matches ..-1 run scoreboard players set @s norse_adventure.speed 0


# Move
execute as @e[type=pig,tag=norse_adventure.current,tag=norse_adventure.ship.karve.steering_seat] on passengers run tag @e[type=area_effect_cloud,tag=norse_adventure.current,tag=norse_adventure.ship.karve] add norse_adventure.dont_stop_ship
scoreboard players set @s[tag=!norse_adventure.dont_stop_ship] norse_adventure.speed 0
scoreboard players set @s[tag=!norse_adventure.dont_stop_ship] norse_adventure.rotation 0
tag @s remove norse_adventure.dont_stop_ship

data modify storage norse_adventure:data move set value {}
execute store result storage norse_adventure:data move.speed float 0.1 run scoreboard players get @s norse_adventure.speed
execute store result storage norse_adventure:data move.rotation float 0.1 run scoreboard players get @s norse_adventure.rotation
function norse_adventure:ships/common/move with storage norse_adventure:data move



# Floors
execute as @e[type=marker,tag=norse_adventure.ship_part.floor] at @s run function norse_adventure:ships/common/floor/tick


# Assemble
execute unless score @s norse_adventure.speed matches 0 run scoreboard players set #assemble norse_adventure.value 1
execute unless score @s norse_adventure.rotation matches 0 run scoreboard players set #assemble norse_adventure.value 1
execute if score #assemble norse_adventure.value matches 1 run function norse_adventure:ships/common/assemble


# Gravity
execute if block ~ ~-2 ~ #norse_adventure:fallable run tp ~ ~-1 ~
execute unless block ~ ~-2 ~ #norse_adventure:fallable if block ~ ~-1 ~ #norse_adventure:fallable run tp ~ ~-0.5 ~
execute unless block ~ ~-1 ~ #norse_adventure:fallable if block ~ ~ ~ #norse_adventure:fallable run tp ~ ~-0.1 ~
execute if block ~ ~ ~ #norse_adventure:fallable run scoreboard players set #assemble norse_adventure.value 1


# Remove tags
tag @e[type=#norse_adventure:ship_entities,tag=norse_adventure.current] remove norse_adventure.current
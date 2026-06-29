# Get current
function shiplib:entity_id/get


# Destroy
scoreboard players set #destroy shiplib.value 1
execute on passengers if entity @s[type=villager,tag=shiplib.ship_part.hitbox] run scoreboard players set #destroy shiplib.value 0
execute if score #destroy shiplib.value matches 1 unless entity @s[tag=shiplib.kill_me] run function shiplib:ships/common/destroy


# Seat fix
execute as @e[type=area_effect_cloud,tag=shiplib.current,tag=shiplib.ship_part.seat,nbt=!{Passengers:[]}] at @s run function shiplib:ships/common/seat/fix


# Interaction
execute if data entity @e[type=interaction,tag=shiplib.ship_part.rudder,tag=shiplib.current,sort=nearest,limit=1] interaction if score @s shiplib.rotation < @s shiplib.max_rotation run scoreboard players operation @s shiplib.rotation += @s shiplib.rotation_increment
execute if data entity @e[type=interaction,tag=shiplib.ship_part.rudder,tag=shiplib.current,sort=nearest,limit=1] attack if score @s shiplib.rotation > @s shiplib.min_rotation run scoreboard players operation @s shiplib.rotation -= @s shiplib.rotation_increment

execute if data entity @e[type=interaction,tag=shiplib.ship_part.sail_rope,tag=shiplib.current,sort=nearest,limit=1] attack if score @s shiplib.speed < @s shiplib.max_speed run scoreboard players operation @s shiplib.speed += @s shiplib.speed_increment
execute if data entity @e[type=interaction,tag=shiplib.ship_part.sail_rope,tag=shiplib.current,sort=nearest,limit=1] interaction if score @s shiplib.speed > @s shiplib.min_speed run scoreboard players operation @s shiplib.speed -= @s shiplib.speed_increment

execute as @e[type=interaction,tag=shiplib.current,sort=nearest] run data remove entity @s interaction
execute as @e[type=interaction,tag=shiplib.current,sort=nearest] run data remove entity @s attack


# Collisions
execute as @e[type=marker,tag=shiplib.current,tag=shiplib.ship_part.collision_detector] at @s run function shiplib:ships/common/collision_detector/check

execute if score #collision_bow shiplib.value matches 1 if score @s shiplib.speed matches 1.. run scoreboard players set @s shiplib.speed 0
execute if score #collision_aft shiplib.value matches 1 if score @s shiplib.speed matches ..-1 run scoreboard players set @s shiplib.speed 0


# Move
execute as @e[type=pig,tag=shiplib.current,tag=shiplib.ship_part.steering_seat] on passengers run tag @e[type=item_display,tag=shiplib.current,tag=shiplib.ship] add shiplib.dont_stop_ship
scoreboard players set @s[tag=!shiplib.dont_stop_ship] shiplib.speed 0
scoreboard players set @s[tag=!shiplib.dont_stop_ship] shiplib.rotation 0
tag @s remove shiplib.dont_stop_ship

data modify storage shiplib:data move set value {}
execute store result storage shiplib:data move.speed float 0.1 run scoreboard players get @s shiplib.speed
execute store result storage shiplib:data move.rotation float 0.1 run scoreboard players get @s shiplib.rotation
function shiplib:ships/common/move with storage shiplib:data move


# Fix rotation of entities
#execute as @e[type=#shiplib:fix_rotation,tag=shiplib.current] run data modify entity @s Rotation set from entity @e[type=item_display,tag=shiplib.current,tag=shiplib.ship,sort=nearest,limit=1] Rotation


# Assemble
execute unless score @s shiplib.speed matches 0 run scoreboard players set #assemble shiplib.value 1
execute unless score @s shiplib.rotation matches 0 run scoreboard players set #assemble shiplib.value 1
execute if entity @e[type=area_effect_cloud,tag=shiplib.ship_part.rudder,distance=..1] run scoreboard players set #assemble shiplib.value 1
execute if score #assemble shiplib.value matches 1 run function #shiplib:ships/assemble
scoreboard players set #assemble shiplib.value 0


# Update aecs
execute as @e[type=area_effect_cloud,tag=shiplib.current] run data modify entity @s Air set value 1b
execute as @e[type=area_effect_cloud,tag=shiplib.current] run data modify entity @s Air set value 0b


# Gravity
execute if block ~ ~-2 ~ #shiplib:fallable run tp ~ ~-1 ~
execute unless block ~ ~-2 ~ #shiplib:fallable if block ~ ~-1 ~ #shiplib:fallable run tp ~ ~-0.5 ~
execute unless block ~ ~-1 ~ #shiplib:fallable if block ~ ~ ~ #shiplib:fallable run tp ~ ~-0.1 ~
execute if block ~ ~ ~ #shiplib:fallable run scoreboard players set #assemble shiplib.value 1


# Remove tags
tag @e[type=#shiplib:ship_entities,tag=shiplib.current] remove shiplib.current
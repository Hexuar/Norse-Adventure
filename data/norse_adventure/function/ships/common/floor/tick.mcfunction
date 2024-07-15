execute as @a[gamemode=!spectator,nbt=!{RootVehicle:{}},distance=..5] run function norse_adventure:ships/common/floor/check_pos

data modify storage norse_adventure:data floor.y set from entity @s Pos[1]

execute as @a[tag=norse_adventure.on_ship] at @s run function norse_adventure:ships/common/floor/teleport with storage norse_adventure:data floor

tag @a[tag=norse_adventure.on_ship] remove norse_adventure.on_ship
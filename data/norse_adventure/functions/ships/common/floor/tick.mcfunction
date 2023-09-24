tag @a[gamemode=!spectator,gamemode=!creative,nbt=!{RootVehicle:{}},dx=0.0,dz=0.0] add norse_adventure.on_ship
tag @a[gamemode=!spectator,gamemode=!creative,nbt=!{RootVehicle:{}},dx=-1,dz=0.0] add norse_adventure.on_ship
tag @a[gamemode=!spectator,gamemode=!creative,nbt=!{RootVehicle:{}},dx=0.0,dz=-1] add norse_adventure.on_ship
tag @a[gamemode=!spectator,gamemode=!creative,nbt=!{RootVehicle:{}},dx=-1,dz=-1] add norse_adventure.on_ship

data modify storage norse_adventure:data floor.y set from entity @s Pos[1]

execute as @a[tag=norse_adventure.on_ship] at @s run function norse_adventure:ships/common/floor/teleport with storage norse_adventure:data floor

tag @a[tag=norse_adventure.on_ship] remove norse_adventure.on_ship
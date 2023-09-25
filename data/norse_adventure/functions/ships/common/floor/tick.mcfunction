tag @a[gamemode=!spectator,nbt=!{RootVehicle:{}},dx=0.0,dz=0.0] add norse_adventure.on_ship
tag @a[gamemode=!spectator,nbt=!{RootVehicle:{}},dx=-1,dz=0.0] add norse_adventure.on_ship
tag @a[gamemode=!spectator,nbt=!{RootVehicle:{}},dx=0.0,dz=-1] add norse_adventure.on_ship
tag @a[gamemode=!spectator,nbt=!{RootVehicle:{}},dx=-1,dz=-1] add norse_adventure.on_ship

tag @e[type=!#norse_adventure:non_teleportable,tag=!global.ignore,tag=!global.ignore.pos,tag=!norse_adventure.entity,dx=0,dz=0,type=!player] add norse_adventure.on_ship
tag @e[type=!#norse_adventure:non_teleportable,tag=!global.ignore,tag=!global.ignore.pos,tag=!norse_adventure.entity,dx=-1,dz=0,type=!player] add norse_adventure.on_ship
tag @e[type=!#norse_adventure:non_teleportable,tag=!global.ignore,tag=!global.ignore.pos,tag=!norse_adventure.entity,dx=0,dz=-1,type=!player] add norse_adventure.on_ship
tag @e[type=!#norse_adventure:non_teleportable,tag=!global.ignore,tag=!global.ignore.pos,tag=!norse_adventure.entity,dx=1,dz=-1,type=!player] add norse_adventure.on_ship


data modify storage norse_adventure:data floor.y set from entity @s Pos[1]

execute as @e[tag=norse_adventure.on_ship] at @s run function norse_adventure:ships/common/floor/teleport with storage norse_adventure:data floor

tag @e[tag=norse_adventure.on_ship] remove norse_adventure.on_ship
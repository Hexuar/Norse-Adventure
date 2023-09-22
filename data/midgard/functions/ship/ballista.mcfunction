execute as @a[tag=!ballistaon,nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["ship_ballista"]}}}] at @s run give @s minecraft:bow{display:{Name:'{"text":"Ballista","italic":false}'},HideFlags:63,Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:piercing",lvl:10s}]}

execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["ship_ballista"]}}}] at @s as @e[type=armor_stand,tag=ship_ballista_head,sort=nearest,limit=1] run tp @s ~ ~-3 ~

execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["ship_ballista"]}}},tag=!ballistaon] at @s run tag @s add ballistaon




##### Horn #####

scoreboard objectives add horn minecraft.used:minecraft.carrot_on_a_stick
execute as @a[scores={horn=1..,hornTimer=..1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{horn:1b}}}] at @s run function midgard:items/horn
scoreboard players remove @a[scores={horn=1..}] horn 1

scoreboard players remove @a[scores={hornTimer=1..}] hornTimer 1











###################
#### Ship #########
###################

execute as @e[tag=ship_mast] at @s unless entity @e[tag=ship,distance=..16] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Longboat","italic":false}'},CustomModelData:264736,summonship:1b}}}
execute as @e[tag=ship_part] at @s unless entity @e[tag=ship,distance=..16] run kill @s

#### Summoning ####

scoreboard objectives add summonship minecraft.used:minecraft.carrot_on_a_stick
execute as @a[scores={summonship=1},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{summonship:1b}}}] at @s run function midgard:items/ship
scoreboard players remove @a[scores={summonship=1..}] summonship 1




#### Parts ####




## center

execute as @e[tag=ship,tag=!floor] at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_floor","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:acacia_boat",Count:1b,tag:{CustomModelData:1001}}]}

execute as @e[tag=ship,tag=!floor] at @s run tag @s add floor

execute as @e[tag=ship] at @s as @e[tag=ship_floor,sort=nearest,limit=1] run tp @s ^ ^ ^ ~ ~




## front

execute as @e[tag=ship,tag=!floor_front] at @s run summon minecraft:armor_stand ^ ^ ^7.5 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_floor_front","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:acacia_boat",Count:1b,tag:{CustomModelData:1001}}]}

execute as @e[tag=ship,tag=!floor_front] at @s run tag @s add floor_front

execute as @e[tag=ship] at @s as @e[tag=ship_floor_front,sort=nearest,limit=1,distance=..16] run tp @s ^ ^ ^7.5 ~ ~




## real front

execute as @e[tag=ship,tag=!floor_rfront] at @s run summon minecraft:armor_stand ^ ^ ^-7.5 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_floor_rfront","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:acacia_boat",Count:1b,tag:{CustomModelData:3003}}]}

execute as @e[tag=ship,tag=!floor_rfront] at @s run tag @s add floor_rfront

execute as @e[tag=ship] at @s as @e[tag=ship_floor_rfront,sort=nearest,limit=1,distance=..16] run tp @s ^ ^ ^-7.5 ~ ~




## back

execute as @e[tag=ship,tag=!floor_back] at @s run summon minecraft:armor_stand ^ ^ ^15 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_floor_back","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:acacia_boat",Count:1b,tag:{CustomModelData:2002}}]}

execute as @e[tag=ship,tag=!floor_back] at @s run tag @s add floor_back

execute as @e[tag=ship] at @s as @e[tag=ship_floor_back,sort=nearest,limit=1,distance=..16] run tp @s ^ ^ ^15 ~ ~




## mast

execute as @e[tag=ship,tag=!mast] at @s run summon minecraft:armor_stand ^ ^ ^2 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_mast","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:acacia_boat",Count:1b,tag:{CustomModelData:4004}}]}

execute as @e[tag=ship,tag=!mast] at @s run tag @s add mast

execute as @e[tag=ship] at @s as @e[tag=ship_mast,sort=nearest,limit=1,distance=..10] run tp @s ^ ^ ^2 ~ ~




## mast top

execute as @e[tag=ship,tag=!mast_top] at @s run summon minecraft:armor_stand ^ ^7.5 ^2 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_mast_top","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:acacia_boat",Count:1b,tag:{CustomModelData:5005}}]}

execute as @e[tag=ship,tag=!mast_top] at @s run tag @s add mast_top

execute as @e[tag=ship] at @s as @e[tag=ship_mast_top,sort=nearest,limit=1,distance=..10] run tp @s ^ ^7.5 ^2 ~ ~




## sail

execute as @e[tag=ship,tag=!sail] at @s run summon minecraft:armor_stand ^ ^7.8 ^2.3 {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_sail","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:acacia_boat",Count:1b,tag:{CustomModelData:6006}}]}

execute as @e[tag=ship,tag=!sail] at @s run tag @s add sail

execute as @e[tag=ship] at @s as @e[tag=ship_sail,sort=nearest,limit=1,distance=..10] run tp @s ^ ^7.8 ^2.3 ~ ~




## chest

execute as @e[tag=ship,tag=!chest] at @s run summon minecraft:chest_minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_chest","ship_part"]}

execute as @e[tag=ship,tag=!chest] at @s run tag @s add chest

execute as @e[tag=ship] at @s as @e[tag=ship_chest,sort=nearest,limit=1,distance=..10] run tp @s ^ ^1 ^-9 ~ ~




## seats

# seat1

execute as @e[tag=ship,tag=!seat1] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat1","ship_part"]}

execute as @e[tag=ship,tag=!seat1] at @s run tag @s add seat1

execute as @e[tag=ship] at @s as @e[tag=ship_seat1,sort=nearest,limit=1,distance=..10] run tp @s ^-2 ^0.8 ^-9 ~ ~

# seat2

execute as @e[tag=ship,tag=!seat2] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat2","ship_part"]}

execute as @e[tag=ship,tag=!seat2] at @s run tag @s add seat2

execute as @e[tag=ship] at @s as @e[tag=ship_seat2,sort=nearest,limit=1,distance=..10] run tp @s ^2 ^0.8 ^-9 ~ ~

# seat3

execute as @e[tag=ship,tag=!seat3] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat3","ship_part"]}

execute as @e[tag=ship,tag=!seat3] at @s run tag @s add seat3

execute as @e[tag=ship] at @s as @e[tag=ship_seat3,sort=nearest,limit=1,distance=..10] run tp @s ^2 ^0.5 ^ ~ ~

# seat4

execute as @e[tag=ship,tag=!seat4] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat4","ship_part"]}

execute as @e[tag=ship,tag=!seat4] at @s run tag @s add seat4

execute as @e[tag=ship] at @s as @e[tag=ship_seat4,sort=nearest,limit=1,distance=..10] run tp @s ^-2 ^0.5 ^ ~ ~

# seat5

execute as @e[tag=ship,tag=!seat5] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat5","ship_part"]}

execute as @e[tag=ship,tag=!seat5] at @s run tag @s add seat5

execute as @e[tag=ship] at @s as @e[tag=ship_seat5,sort=nearest,limit=1,distance=..10] run tp @s ^-2 ^0.5 ^4 ~ ~

# seat6

execute as @e[tag=ship,tag=!seat6] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat6","ship_part"]}

execute as @e[tag=ship,tag=!seat6] at @s run tag @s add seat6

execute as @e[tag=ship] at @s as @e[tag=ship_seat6,sort=nearest,limit=1,distance=..10] run tp @s ^2 ^0.5 ^4 ~ ~

# seat7

execute as @e[tag=ship,tag=!seat7] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat7","ship_part"]}

execute as @e[tag=ship,tag=!seat7] at @s run tag @s add seat7

execute as @e[tag=ship] at @s as @e[tag=ship_seat7,sort=nearest,limit=1,distance=..10] run tp @s ^-2 ^0.5 ^8 ~ ~

# seat6

execute as @e[tag=ship,tag=!seat8] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat8","ship_part"]}

execute as @e[tag=ship,tag=!seat8] at @s run tag @s add seat8

execute as @e[tag=ship] at @s as @e[tag=ship_seat8,sort=nearest,limit=1,distance=..10] run tp @s ^2 ^0.5 ^8 ~ ~

# seat9

execute as @e[tag=ship,tag=!seat9] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat9","ship_part"]}

execute as @e[tag=ship,tag=!seat9] at @s run tag @s add seat9

execute as @e[tag=ship] at @s as @e[tag=ship_seat9,sort=nearest,limit=1,distance=..10] run tp @s ^-2 ^0.5 ^-4 ~ ~

# seat10

execute as @e[tag=ship,tag=!seat10] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_seat10","ship_part"]}

execute as @e[tag=ship,tag=!seat10] at @s run tag @s add seat10

execute as @e[tag=ship] at @s as @e[tag=ship_seat10,sort=nearest,limit=1,distance=..10] run tp @s ^2 ^0.5 ^-4 ~ ~




## Ballista

execute as @e[tag=ship,tag=!ballista] at @s run summon minecraft:minecart ^ ^ ^ {Invulnerable:1b,Tags:["ship_ballista","ship_part"]}
execute as @e[tag=ship,tag=!ballista] at @s run summon minecraft:armor_stand ^ ^ ^ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ship_ballista_head","ship_part"],ArmorItems:[{},{},{},{id:"minecraft:bow",Count:1b,tag:{CustomModelData:1}}]}

execute as @e[tag=ship,tag=!ballista] at @s run tag @s add ballista

execute as @e[tag=ship] at @s as @e[tag=ship_ballista,sort=nearest,limit=1] run tp @s ^ ^1 ^13 ~ ~
execute as @e[tag=ship] at @s as @e[tag=ship_ballista_head,sort=nearest,limit=1] run tp @s ^ ^ ^13 ~ ~

execute as @a[nbt={RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["ship_ballista"]}}}] at @s run function midgard:ship/ballista

execute as @a[tag=ballistaon,nbt=!{RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["ship_ballista"]}}}] at @s run clear @s bow{display:{Name:'{"text":"Ballista","italic":false}'},HideFlags:63,Unbreakable:1b,CustomModelData:1,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:piercing",lvl:10s}]}
execute as @a[tag=ballistaon,nbt=!{RootVehicle:{Entity:{id:"minecraft:minecart",Tags:["ship_ballista"]}}}] at @s run tag @s remove ballistaon


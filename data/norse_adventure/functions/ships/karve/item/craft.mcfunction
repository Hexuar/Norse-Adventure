kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:white_wool",Count:8b}},distance=..1,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:8b}},distance=..1,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_planks",Count:32b}},distance=..1,sort=nearest,limit=1]

loot spawn ~ ~ ~ loot norse_adventure:ships/karve

advancement grant @p[distance=..10] only norse_adventure:tutorial/karve

playsound block.anvil.use player @a ~ ~ ~ 1 0.9
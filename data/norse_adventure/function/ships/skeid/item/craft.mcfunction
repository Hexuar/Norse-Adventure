kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:white_wool",count:16}},distance=..1,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:16}},distance=..1,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_planks",count:64}},distance=..1,sort=nearest,limit=1]

loot spawn ~ ~ ~ loot norse_adventure:ships/skeid

advancement grant @p[distance=..10] only norse_adventure:tutorial/skeid

playsound block.anvil.use player @a ~ ~ ~ 1 0.9
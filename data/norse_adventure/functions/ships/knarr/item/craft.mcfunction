kill @s
kill @e[type=item,nbt={Item:{id:"minecraft:white_wool",Count:8b}},distance=..1,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",Count:8b}},distance=..1,sort=nearest,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_planks",Count:64b}},distance=..1,sort=nearest,limit=1]

function norse_adventure:ships/knarr/item/summon

playsound block.anvil.use player @a ~ ~ ~ 1 0.9
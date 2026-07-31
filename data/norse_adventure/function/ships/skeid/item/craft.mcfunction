loot spawn ~ ~ ~ loot norse_adventure:ships/skeid

# Add custom model data
summon minecraft:marker ~ ~ ~ {Tags:["norse_adventure.loot_data"],data:{custom_model_data:{strings:["",""],floats:[0.0f]}}}
execute as @e[tag=norse_adventure.ingredient] if items entity @s contents #minecraft:planks run data modify entity @n[type=marker,tag=norse_adventure.loot_data] data.custom_model_data.strings[0] set from entity @s Item.id
execute as @e[tag=norse_adventure.ingredient] if items entity @s contents #minecraft:wool run data modify entity @n[type=marker,tag=norse_adventure.loot_data] data.custom_model_data.strings[1] set from entity @s Item.id
schedule function norse_adventure:ships/set_loot_data 1t append

advancement grant @p[distance=..10] only norse_adventure:skeid
playsound block.anvil.use player @a ~ ~ ~ 1 0.9

kill @e[tag=norse_adventure.ingredient]
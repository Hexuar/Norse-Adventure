execute if entity @s[tag=norse_adventure.ship.karve] run loot spawn ~ ~ ~ loot norse_adventure:ships/karve
execute if entity @s[tag=norse_adventure.ship.knarr] run loot spawn ~ ~ ~ loot norse_adventure:ships/knarr
execute if entity @s[tag=norse_adventure.ship.skeid] run loot spawn ~ ~ ~ loot norse_adventure:ships/skeid

# Add custom model data
summon minecraft:marker ~ ~ ~ {Tags:["norse_adventure.loot_data"]}
data modify entity @n[type=marker,tag=norse_adventure.loot_data] data.custom_model_data set from entity @n[type=item_display,tag=shiplib.spawn] item.components."minecraft:custom_model_data"
data modify entity @n[type=marker,tag=norse_adventure.loot_data] data.custom_model_data set from entity @n[type=item_display,tag=shiplib.ship] item.components."minecraft:custom_model_data"
schedule function norse_adventure:ships/set_loot_data 1t append
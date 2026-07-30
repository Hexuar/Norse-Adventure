execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:8}}] at @s run function norse_adventure:ships/karve/item/craft/check
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:16}}] at @s run function norse_adventure:ships/knarr/item/craft/check
execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",count:32}}] at @s run function norse_adventure:ships/skeid/item/craft/check

tag @e remove norse_adventure.ingredient
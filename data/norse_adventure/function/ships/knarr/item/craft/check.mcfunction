execute as @e[type=item,distance=..1] if items entity @s contents #minecraft:wool[count=8] run tag @s add norse_adventure.possible_ingredient
execute as @n[tag=norse_adventure.possible_ingredient] run tag @s add norse_adventure.ingredient
execute unless entity @n[tag=norse_adventure.possible_ingredient] run return fail
tag @e remove norse_adventure.possible_ingredient

execute as @e[type=item,distance=..1] if items entity @s contents #minecraft:logs[count=8] run tag @s add norse_adventure.possible_ingredient
execute as @n[tag=norse_adventure.possible_ingredient] run tag @s add norse_adventure.ingredient
execute unless entity @n[tag=norse_adventure.possible_ingredient] run return fail
tag @e remove norse_adventure.possible_ingredient

execute as @e[type=item,distance=..1] if items entity @s contents #minecraft:planks[count=64] run tag @s add norse_adventure.possible_ingredient
execute as @n[tag=norse_adventure.possible_ingredient] run tag @s add norse_adventure.ingredient
execute unless entity @n[tag=norse_adventure.possible_ingredient] run return fail
tag @e remove norse_adventure.possible_ingredient

tag @s add norse_adventure.ingredient

function norse_adventure:ships/knarr/item/craft
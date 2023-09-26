scoreboard players reset #tick10 norse_adventure.value

function #norse_adventure:ships/craft_item


# Advancements
execute as @a at @s if score @e[type=area_effect_cloud,tag=norse_adventure.ship.skeid,distance=..10,sort=nearest,limit=1] norse_adventure.speed matches 8.. run advancement grant @s only norse_adventure:tutorial/speed

execute as @a at @s if entity @e[type=area_effect_cloud,tag=norse_adventure.ship.knarr,distance=..10] run function norse_adventure:advancements/heavy_load
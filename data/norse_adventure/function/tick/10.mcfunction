scoreboard players reset #tick10 norse_adventure.value

# Advancements
execute as @a at @s if score @e[type=item_display,tag=norse_adventure.ship.skeid,distance=..10,sort=nearest,limit=1] shiplib.speed matches 8.. run advancement grant @s only norse_adventure:tutorial/speed

execute as @a at @s if entity @e[type=item_display,tag=norse_adventure.ship.knarr,distance=..10] run function norse_adventure:advancements/heavy_load
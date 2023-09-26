scoreboard players set #kill_lead norse_adventure.value 0
execute if entity @s[tag=norse_adventure.ship_part.rope.anchor_point.a] run scoreboard players set #kill_lead norse_adventure.value 1

kill @s
execute if score #kill_lead norse_adventure.value matches 1 run say e
execute if score #kill_lead norse_adventure.value matches 1 run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
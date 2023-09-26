scoreboard players set #success norse_adventure.value 1
execute unless block ~ ~ ~ #norse_adventure:spawnable run scoreboard players set #success norse_adventure.value 0
execute unless block ~ ~1 ~ air run scoreboard players set #success norse_adventure.value 0

execute if score #success norse_adventure.value matches 1 positioned ~ ~1 ~ run function norse_adventure:ships/common/spawn/summon
execute if score #success norse_adventure.value matches 0 run function norse_adventure:ships/common/spawn/return_item

kill @s
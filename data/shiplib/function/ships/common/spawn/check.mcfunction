scoreboard players set #success shiplib.value 1
execute unless block ~ ~ ~ #shiplib:spawnable run scoreboard players set #success shiplib.value 0
execute unless block ~ ~1 ~ air run scoreboard players set #success shiplib.value 0

execute if score #success shiplib.value matches 1 positioned ~ ~1 ~ run function #shiplib:ships/summon
execute if score #success shiplib.value matches 0 run function #shiplib:ships/spawn_loot

kill @s
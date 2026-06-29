scoreboard players add #tick10 norse_adventure.value 1
execute if score #tick10 norse_adventure.value matches 10.. run function norse_adventure:tick/10
execute if score #tick10 norse_adventure.value matches 10.. run scoreboard players reset #tick10 norse_adventure.value

scoreboard players add #tick20 norse_adventure.value 1
execute if score #tick20 norse_adventure.value matches 20.. run function norse_adventure:tick/20
execute if score #tick20 norse_adventure.value matches 20.. run scoreboard players reset #tick20 norse_adventure.value
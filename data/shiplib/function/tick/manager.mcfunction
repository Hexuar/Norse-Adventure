function shiplib:tick/1

scoreboard players add #tick10 shiplib.value 1
execute if score #tick10 shiplib.value matches 10.. run function #shiplib:tick/10
execute if score #tick10 shiplib.value matches 10.. run scoreboard players reset #tick10 shiplib.value

scoreboard players add #tick20 shiplib.value 1
execute if score #tick20 shiplib.value matches 20.. run function #shiplib:tick/20
execute if score #tick20 shiplib.value matches 20.. run scoreboard players reset #tick20 shiplib.value
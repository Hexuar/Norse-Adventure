function shiplib:tick/1

scoreboard players add #tick10 shiplib.value 1
execute if score #tick10 shiplib.value matches 10.. run function shiplib:tick/10
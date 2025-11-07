scoreboard objectives add norse_adventure.value dummy
scoreboard objectives add norse_adventure.constant dummy
scoreboard objectives add norse_adventure.rotation dummy
scoreboard objectives add norse_adventure.speed dummy
scoreboard objectives add norse_adventure.max_speed dummy
scoreboard objectives add norse_adventure.min_speed dummy
scoreboard objectives add norse_adventure.speed_increment dummy
scoreboard objectives add norse_adventure.max_rotation dummy
scoreboard objectives add norse_adventure.min_rotation dummy
scoreboard objectives add norse_adventure.rotation_increment dummy

scoreboard objectives add norse_adventure.entityID dummy
scoreboard players add #register norse_adventure.entityID 0

scoreboard players set #1000 norse_adventure.constant 1000

function #norse_adventure:ships/load_data
execute as @e[type=area_effect_cloud,tag=norse_adventure.ship] run function norse_adventure:ships/common/set_data
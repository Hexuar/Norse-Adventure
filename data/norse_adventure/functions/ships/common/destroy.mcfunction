execute as @e[type=pig,tag=norse_adventure.ship_part.seat,tag=norse_adventure.current] at @s run function norse_adventure:ships/common/seat/kill
kill @e[type=#norse_adventure:ship_entities,tag=norse_adventure.current,tag=norse_adventure.entity,tag=!norse_adventure.ship]

tag @s add norse_adventure.kill_me
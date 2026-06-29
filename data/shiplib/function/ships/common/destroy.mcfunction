function shiplib:entity_id/get

execute as @e[type=pig,tag=shiplib.ship_part.seat,tag=shiplib.current] at @s run function shiplib:ships/common/seat/kill
kill @e[type=#shiplib:ship_entities,tag=shiplib.current,tag=shiplib.entity,tag=!shiplib.ship]

tag @s add shiplib.kill_me
schedule function shiplib:ships/common/kill_leads 2t
function #shiplib:ships/spawn_loot
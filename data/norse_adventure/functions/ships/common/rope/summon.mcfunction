## Summon and position anchor points

# Anchor point A
function norse_adventure:ships/common/rope/summon_anchor_point
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.unassigned,sort=nearest,limit=1] run function norse_adventure:ships/common/rope/tag/a


# Anchor point B
function norse_adventure:ships/common/rope/summon_anchor_point
execute as @e[type=bat,tag=norse_adventure.ship_part.rope.anchor_point,tag=norse_adventure.unassigned,sort=nearest,limit=1] run function norse_adventure:ships/common/rope/tag/b


## Add Leash
data modify entity @e[tag=norse_adventure.ship_part.rope.anchor_point.a,tag=norse_adventure.unleashed,sort=nearest,limit=1] Leash.UUID set from entity @e[tag=norse_adventure.ship_part.rope.anchor_point.b,tag=norse_adventure.unleashed,sort=nearest,limit=1] UUID
tag @e[type=bat,tag=norse_adventure.unleashed] remove norse_adventure.unleashed
## Summon and position anchor points

# Anchor point A
function shiplib:ships/common/rope/summon_anchor_point
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.unassigned,sort=nearest,limit=1] run function shiplib:ships/common/rope/tag/a


# Anchor point B
function shiplib:ships/common/rope/summon_anchor_point
execute as @e[type=bat,tag=shiplib.ship_part.rope.anchor_point,tag=shiplib.unassigned,sort=nearest,limit=1] run function shiplib:ships/common/rope/tag/b


## Add Leash
data modify entity @e[tag=shiplib.ship_part.rope.anchor_point.a,tag=shiplib.unleashed,sort=nearest,limit=1] leash.UUID set from entity @e[tag=shiplib.ship_part.rope.anchor_point.b,tag=shiplib.unleashed,sort=nearest,limit=1] UUID
tag @e[type=bat,tag=shiplib.unleashed] remove shiplib.unleashed
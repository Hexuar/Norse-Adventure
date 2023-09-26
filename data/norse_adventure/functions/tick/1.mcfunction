execute as @e[type=area_effect_cloud,tag=norse_adventure.ship,tag=norse_adventure.kill_me] run function norse_adventure:ships/common/kill_leads
execute as @e[type=area_effect_cloud,tag=norse_adventure.ship] at @s if entity @p[distance=..10] run function norse_adventure:ships/common/tick
execute as @e[type=marker,tag=norse_adventure.spawn] at @s run function norse_adventure:ships/common/spawn/check
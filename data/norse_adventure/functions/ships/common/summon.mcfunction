data modify entity @s Rotation[0] set from entity @p[distance=..5] Rotation[0]

# Hitbox
summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:100f,Tags:["norse_adventure.unregistered","norse_adventure.entity","norse_adventure.ship_part","norse_adventure.ship_part.hitbox"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:100}],VillagerData:{profession:"minecraft:nitwit"},CustomName:'{"text":"Ship Hitbox"}',CustomNameVisible:false}
ride @e[type=villager,tag=norse_adventure.ship_part.hitbox,tag=norse_adventure.unregistered,sort=nearest,limit=1] mount @s

# Set scores
scoreboard players set @s norse_adventure.rotation 0
scoreboard players set @s norse_adventure.speed 0



execute as @e[tag=norse_adventure.unregistered] run function norse_adventure:entity_id/register
scoreboard players add #register norse_adventure.entityID 1
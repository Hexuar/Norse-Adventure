data modify entity @s Rotation[0] set from entity @p[distance=..5] Rotation[0]

# Hitbox
summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:1b,Health:100f,Tags:["shiplib.unregistered","shiplib.entity","shiplib.ship_part","shiplib.ship_part.hitbox"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:100}],VillagerData:{profession:"minecraft:nitwit"},CustomName:'{"text":"Ship Hitbox"}',CustomNameVisible:false}
ride @e[type=villager,tag=shiplib.ship_part.hitbox,tag=shiplib.unregistered,sort=nearest,limit=1] mount @s

# Set scores
scoreboard players set @s shiplib.rotation 0
scoreboard players set @s shiplib.speed 0



execute as @e[tag=shiplib.unregistered] run function shiplib:entity_id/register
scoreboard players add #register shiplib.entityID 1
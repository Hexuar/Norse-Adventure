#> norse_adventure:load

#define tag norse_adventure
#define tag norse_adventure.on_ship
#define tag norse_adventure.current
#define tag norse_adventure.unregistered
#define tag norse_adventure.unleashed
#define tag norse_adventure.unassigned
#define tag norse_adventure.untagged
#define tag norse_adventure.entity
#define tag norse_adventure.ship
#define tag norse_adventure.ship.knarr
#define tag norse_adventure.ship.knarr.bow_rope
#define tag norse_adventure.ship.knarr.aft_rope
#define tag norse_adventure.ship.knarr.upper_port_rope
#define tag norse_adventure.ship.knarr.lower_port_rope
#define tag norse_adventure.ship.knarr.upper_starboard_rope
#define tag norse_adventure.ship.knarr.lower_starboard_rope
#define tag norse_adventure.ship.knarr.steering_seat
#define tag norse_adventure.ship.knarr.port_seat
#define tag norse_adventure.ship.knarr.starboard_seat
#define tag norse_adventure.ship_part
#define tag norse_adventure.ship_part.floor
#define tag norse_adventure.ship_part.chest
#define tag norse_adventure.ship_part.seat
#define tag norse_adventure.ship_part.hull
#define tag norse_adventure.ship_part.rudder
#define tag norse_adventure.ship_part.sail
#define tag norse_adventure.ship_part.rope
#define tag norse_adventure.ship_part.rope.anchor_point
#define tag norse_adventure.ship_part.rope.anchor_point.a
#define tag norse_adventure.ship_part.rope.anchor_point.b

scoreboard objectives add norse_adventure.value dummy
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

function #norse_adventure:ships/load_data
execute as @e[type=area_effect_cloud,tag=norse_adventure.ship] run function norse_adventure:ships/common/set_data
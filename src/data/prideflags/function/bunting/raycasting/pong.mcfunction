# Check if reached other item frame
execute if entity @n[type=item_frame,tag=!prideflags.bunting_origin_unset,tag=prideflags.bunting_origin_pending,distance=..0.5] run return run function prideflags:bunting/raycast_success with entity @s

scoreboard players add @s prideflags.bunting_distance 1
execute if score @s prideflags.bunting_distance >= $max prideflags.bunting_distance run return run function prideflags:bunting/raycast_fail
execute positioned ^ ^ ^1 run function prideflags:bunting/raycasting/pong
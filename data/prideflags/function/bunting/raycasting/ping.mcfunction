# Check if reached other item frame
execute if entity @n[type=item_frame,tag=!prideflags.bunting_origin_unset,distance=..0.5,nbt=!{Item:{}}] run return run function prideflags:bunting/raycasting/raycast_reached

scoreboard players add @s prideflags.bunting_distance 1
execute if score @s prideflags.bunting_distance >= $max prideflags.bunting_distance run return run function prideflags:bunting/raycast_fail
execute positioned ^ ^ ^1 run function prideflags:bunting/raycasting/ping
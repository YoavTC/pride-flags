# Make sure no other bunting starts or ends here
execute if entity @n[type=marker,distance=0,tag=end_point] run return run say marker occupying!

# Check if reached other item frame
execute if entity @n[type=item_frame,tag=!prideflags.bunting_origin_unset,tag=prideflags.bunting_origin_pending,distance=..0.5] run return run function prideflags:bunting/raycast_success with entity @s

execute if entity @p[distance=10..] run return fail
execute positioned ^ ^ ^1 run function prideflags:bunting/raycasting/pong
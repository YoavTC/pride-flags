# Make sure no other bunting starts or ends here
execute if entity @n[type=marker,distance=0,tag=end_point] run return run say marker occupying!

# Check if reached other item frame
execute if entity @n[type=item_frame,tag=!prideflags.bunting_origin_unset,distance=..0.5] run return run function prideflags:bunting/raycasting/raycast_reached

execute if entity @p[distance=10..] run return run say no item frame found!
execute positioned ^ ^ ^1 run function prideflags:bunting/raycasting/ping
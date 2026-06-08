# Update item frame
tag @s remove prideflags.bunting_origin_unset
tag @s add prideflags.bunting_origin_pending

# Raycast back to make sure both item frames are looking at each other
scoreboard players reset @s prideflags.bunting_distance
execute as @n[type=item_frame,tag=!prideflags.bunting_origin_unset,tag=!prideflags.bunting_origin_pending,distance=..0.5] positioned as @s rotated as @s align xyz positioned ~0.5 ~0.5 ~0.5 run function prideflags:bunting/raycasting/pong
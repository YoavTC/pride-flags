scoreboard players reset @s prideflags.bunting_distance

# Create start & end points
$execute as @n[type=item_frame,tag=prideflags.bunting_origin_pending] positioned as @s run function prideflags:bunting/create_end_point {id:$(UUID)}
$execute positioned as @s run function prideflags:bunting/create_point {id:$(UUID)}

# Loop through blocks between & create mid points
$execute positioned as @s rotated as @s align xyz positioned ~.5 ~.5 ~.5 positioned ^ ^ ^1 run function prideflags:bunting/create_between_points {id:$(UUID)}

# Rotate
$execute rotated as @s as @e[tag=!prideflags.bunting_end,nbt={data:{id:$(UUID)}}] on passengers run rotate @s ~ ~
$execute rotated as @s as @e[tag=prideflags.bunting_end,nbt={data:{id:$(UUID)}}] on passengers run rotate @s ~180 ~
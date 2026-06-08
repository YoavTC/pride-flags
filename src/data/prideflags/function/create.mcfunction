# Summon model
$function prideflags:summon_model/$(pride_type)
# function prideflags:summon_flag

# Add data to interaction
data modify entity @n[type=interaction,tag=prideflags.unset_interaction] data set from entity @s Item.components."minecraft:custom_data"
data merge entity @n[type=interaction,tag=prideflags.unset_interaction] {Tags:["prideflags.interaction"]}

# Store item frame rotation
tag @s add prideflags.item_frame
execute store result score @s prideflags.dir run data get entity @s Rotation[0]

# Rotate
execute as @n[type=block_display,tag=prideflags.origin] run function prideflags:rotate_wall
execute as @n[type=block_display,tag=prideflags.origin] on passengers run function prideflags:rotate_wall

# Remove item frame
kill @s
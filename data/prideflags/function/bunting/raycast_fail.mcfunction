scoreboard players reset @s prideflags.bunting_distance

# Remove tags
data merge entity @s {Tags:[]}
data remove entity @s Item
execute positioned as @s run summon item ~ ~ ~ {Item:{components:{"minecraft:custom_data":{pride_bunting:1b}},count:1,id:"minecraft:chorus_fruit"}}
tag @n[type=item_frame,tag=prideflags.bunting_origin_pending] remove prideflags.bunting_origin_pending
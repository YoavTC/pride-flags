advancement revoke @s only prideflags:_events/bunting/on_place

execute as @s positioned as @s rotated as @s anchored eyes positioned ^ ^ ^2 as @n[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{"pride_bunting":true}}}}] run tag @s add prideflags.bunting_origin_unset

execute as @s positioned as @s rotated as @s anchored eyes positioned ^ ^ ^2 as @n[type=item_frame,tag=prideflags.bunting_origin_unset] positioned as @s rotated as @s align xyz positioned ~0.5 ~0.5 ~0.5 run function prideflags:bunting/raycasting/ping
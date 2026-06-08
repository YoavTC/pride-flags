advancement revoke @s only prideflags:_events/flags/on_place

execute as @s positioned as @s rotated as @s anchored eyes positioned ^ ^ ^2 as @n[type=item_frame,nbt={Item:{components:{"minecraft:custom_data":{"pride":true}}}}] positioned as @s run function prideflags:create with entity @s Item.components."minecraft:custom_data"
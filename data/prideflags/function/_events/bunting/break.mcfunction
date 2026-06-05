advancement revoke @s only prideflags:_events/bunting/on_break

execute as @s positioned as @s rotated as @s anchored eyes positioned ^ ^ ^2 as @n[type=interaction,nbt={attack:{},data:{"pride_bunting":true}}] positioned as @s run function prideflags:bunting/destroy_bunting with entity @s data
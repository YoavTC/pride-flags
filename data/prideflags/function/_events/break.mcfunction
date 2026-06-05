advancement revoke @s only prideflags:_events/on_break

execute as @s positioned as @s rotated as @s anchored eyes positioned ^ ^ ^2 as @n[type=interaction,nbt={attack:{},data:{"pride":true}}] positioned as @s run function prideflags:destroy_flag with entity @s data
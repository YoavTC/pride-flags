$function prideflags:spawn_item/$(pride_type)
summon item ~ ~ ~ {Item:{id:item_frame},Motion:[0,0.2,0]}

execute on vehicle on passengers run kill @s[type=!interaction]
execute on vehicle run kill @s
kill @s
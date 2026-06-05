execute if score @n[tag=prideflags.item_frame] prideflags.dir matches 270 run return run rotate @s 180 0
execute if score @n[tag=prideflags.item_frame] prideflags.dir matches 0 run return run rotate @s -90 0
execute if score @n[tag=prideflags.item_frame] prideflags.dir matches 90 run return run rotate @s 0 0
execute if score @n[tag=prideflags.item_frame] prideflags.dir matches 180 run return run rotate @s 90 0
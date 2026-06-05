$execute as @e[nbt={data:{id:$(id)}}] on passengers run kill @s
$execute as @e[nbt={data:{id:$(id)}}] run kill @s

summon item ~ ~ ~ {Item:{id:item_frame,count:2},Motion:[0,0.2,0]}
summon item ~ ~ ~ {Item:{components:{"minecraft:custom_data":{pride_bunting:1b}},count:1,id:"minecraft:chorus_fruit"}}
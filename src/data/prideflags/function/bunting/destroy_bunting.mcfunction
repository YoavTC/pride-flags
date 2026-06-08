$execute as @e[nbt={data:{id:$(id)}}] on passengers run kill @s
$execute as @e[nbt={data:{id:$(id)}}] run kill @s

summon item ~ ~ ~ {Item:{id:item_frame,count:2},Motion:[0,0.2,0]}
loot spawn ~ ~ ~ loot prideflags:bunting
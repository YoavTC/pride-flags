execute if entity @p[distance=20..] run return run say too far

$execute if entity @n[type=marker,nbt={data:{id:$(id)}},distance=..0.25] run return run say finished creating between points!

# Summon model, rotate & store ID
function prideflags:bunting/summon_mid_model
$execute as @n[tag=prideflags.bunting_model_unset] on passengers positioned as @s run rotate @s facing entity @n[type=minecraft:marker,nbt={data:{id:$(id)}}]
$data merge entity @n[tag=prideflags.bunting_model_unset] {Tags:[],data:{id:$(id)}}

$execute positioned ^ ^ ^1 run function prideflags:bunting/create_between_points {id:$(id)}
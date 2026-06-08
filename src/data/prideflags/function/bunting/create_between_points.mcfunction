execute if entity @p[distance=20..] run return run tellraw @p {text:"Error at create_between_points#L1",color:red}

$execute if entity @n[type=marker,nbt={data:{id:$(id)}},distance=..0.25] run return 1

# Summon model, rotate & store ID
function prideflags:bunting/summon_mid_model
$data merge entity @n[tag=prideflags.bunting_model_unset] {Tags:[],data:{id:$(id)}}

$execute positioned ^ ^ ^1 run function prideflags:bunting/create_between_points {id:$(id)}
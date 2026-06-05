$execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {data:{id:$(id)},Tags:[prideflags.bunting_endpoint_unset]}

$summon interaction ~ ~-.5 ~ {width:0.5,height:0.5,data:{id:$(id),pride_bunting:true}}

function prideflags:bunting/summon_end_model
execute as @n[tag=prideflags.bunting_model] on passengers run rotate @s facing entity @n[type=minecraft:item_frame]
$data merge entity @n[tag=prideflags.bunting_model] {Tags:[],data:{id:$(id)}}

kill @s
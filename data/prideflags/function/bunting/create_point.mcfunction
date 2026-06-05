$execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {data:{id:$(id)},Tags:[prideflags.bunting_endpoint_unset]}

$summon interaction ~ ~-.5 ~ {width:0.5,height:0.5,data:{id:$(id),pride_bunting:true}}

function prideflags:bunting/summon_model
$data merge entity @n[tag=prideflags.bunting_model_unset] {Tags:[],data:{id:$(id)}}

kill @s
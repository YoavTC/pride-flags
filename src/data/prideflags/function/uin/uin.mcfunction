execute unless score @s prideflags.uninstall matches 1 run return run tellraw @s {text:"Use /function prideflags:uninstall",color:"red"}

# Stop schedules functions
schedule clear prideflags:uin/uninstall_cancel

# Clean scoreboards
scoreboard objectives remove prideflags.bunting_distance
scoreboard objectives remove prideflags.dir
scoreboard objectives remove prideflags.uninstall

# Kill entities
execute as @e[type=block_display,tag=prideflags.origin] on passengers run kill @s
execute as @e[type=block_display,tag=prideflags.origin] run kill @s
kill @e[type=interaction,tag=prideflags.interaction]

tellraw @s {text:"Datapack uninstalled, you can now safely remove the files",color:blue}
tellraw @s [{text:"Check out my other datapacks though (: ",color:"aqua"},{text:"https://yoavtc.work/minecraft",click_event:{action:"open_url",url:"https://yoavtc.work/minecraft"},underlined:true}]
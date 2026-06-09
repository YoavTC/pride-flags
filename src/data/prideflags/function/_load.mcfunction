# Flags
scoreboard objectives remove prideflags.dir
scoreboard objectives add prideflags.dir dummy

# Bunting
scoreboard objectives add prideflags.bunting_distance dummy
scoreboard players set $max prideflags.bunting_distance 20

# Uninstalling
scoreboard objectives remove prideflags.uninstall
scoreboard objectives add prideflags.uninstall dummy
#Give a tag to every wires plugged
    tag @e[type=#energy_flux:entities,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] add EF_Temp
#Compare transfert speeds
    scoreboard players set Fastest EF_Temp 0
    execute as @e[type=#energy_flux:entities,tag=EF_Temp,limit=1] run function energy_flux:send/checkspeeds/2

tag @e[type=#energy_flux:entities,tag=EF_Temp] remove EF_Temp
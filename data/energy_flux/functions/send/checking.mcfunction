#Check the highest transfert speed of wires plugged to start
    function energy_flux:send/checkspeeds/1

#Start checking connectivity
    scoreboard players operation MaxSpeed EF_MaxSpeed = @e[type=minecraft:glow_item_frame,tag=EF_Faster] EF_Watt
    execute as @e[type=minecraft:glow_item_frame,tag=!EF_Connected,tag=EF_Wire,tag=EF_Faster] at @s run function energy_flux:send/found/samewire

#Loop if there is remaining connections
    execute if entity @e[type=minecraft:glow_item_frame,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] run function energy_flux:send/checking
#Check the highest transfert speed of wires plugged to start
    function energy_flux:send/checkspeeds/1

#Start checking connectivity
    scoreboard players operation MaxSpeed EF_MaxSpeed = @e[type=#energy_flux:entities,tag=EF_Faster] EF_kW
    execute as @e[type=#energy_flux:entities,tag=!EF_Connected,tag=EF_Wire,tag=EF_Faster] at @s run function energy_flux:send/found/samewire

#Loop if there is remaining connections
    execute if entity @e[type=#energy_flux:entities,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] run function energy_flux:send/checking

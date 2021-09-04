tag @s add EF_Connected
tag @s remove EF_Faster
#Check if there are devices plugged directly
    execute as @e[type=glow_item_frame,tag=!EF_Connected,tag=EF_CanReceive,tag=!EF_Wire,distance=..1.1] at @s run function energy_flux:send/found/receiver

#Check if there are wires with same transfert speed
    execute as @e[type=glow_item_frame,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] if score @s EF_kW >= MaxSpeed EF_MaxSpeed at @s run function energy_flux:send/found/samewire

#Elsif there are wires without the same transfert speed
    #Check the highest transfert speed of wires plugged to start
        execute if entity @e[type=glow_item_frame,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] run function energy_flux:send/checkspeeds/1
    #Start checking connectivity
        execute as @e[type=glow_item_frame,tag=!EF_Connected,tag=EF_Wire,tag=EF_Faster,distance=..1.1] at @s run function energy_flux:send/found/notsamewire

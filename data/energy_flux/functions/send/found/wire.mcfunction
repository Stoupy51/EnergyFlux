tag @e[type=minecraft:glow_item_frame,tag=EF_PreviousChecked] remove EF_PreviousChecked
tag @s add EF_Connected
tag @s add EF_PreviousChecked
tag @s remove EF_Faster
#Check if there are devices plugged directly
    execute as @e[type=minecraft:glow_item_frame,tag=!EF_Connected,tag=EF_CanReceive,tag=!EF_Wire,distance=..1.1] at @s run function energy_flux:send/found/receiver

#Check if there are wires with same transfert speed
    execute as @e[type=minecraft:glow_item_frame,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] if score @s EF_Watt = @e[type=minecraft:glow_item_frame,tag=EF_PreviousChecked,limit=1] EF_Watt at @s run function energy_flux:send/found/samewire

#Elsif there are wires without the same transfert speed
    #Check the highest transfert speed of wires plugged to start
        execute if entity @e[type=minecraft:glow_item_frame,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] run function energy_flux:send/checkspeeds/1
    #Start checking connectivity
        execute as @e[type=minecraft:glow_item_frame,tag=!EF_Connected,tag=EF_Wire,tag=EF_Faster,distance=..1.1] at @s run function energy_flux:send/found/notsamewire

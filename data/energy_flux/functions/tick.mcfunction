#Timer
    scoreboard players add Second EF_Data 1
    execute if score Second EF_Data matches 20.. run function energy_flux:tick_second

#Transfert	
	execute if score Second EF_Data matches 10 as @e[type=minecraft:glow_item_frame,tag=EF_WillSend,tag=EF_Use,tag=EF_CanReceive,scores={EF_kJ=1..},sort=random] at @s run function energy_flux:send/start

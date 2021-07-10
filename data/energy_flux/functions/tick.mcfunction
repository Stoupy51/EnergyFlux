#Timer
    scoreboard players add Second EF_Timer 1
    execute if score Second EF_Timer matches 20.. run function energy_flux:tick_second

#Transfert	
	execute if score Second EF_Timer matches 10 as @e[type=minecraft:armor_stand,tag=EF_WillSend,tag=EF_Use,tag=EF_CanReceive,scores={EF_Joule=1..},sort=random] at @s run function energy_flux:send/start

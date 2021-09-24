#Timer
	scoreboard players set Second EF_Data 0
	scoreboard players add Minute EF_Data 1
	execute if score Minute EF_Data matches 60.. run function energy_flux:tick_minute

#Transfert	
	tag @e[type=#energy_flux:entities,tag=EF_CanSend] add EF_WillSend
	tag @e[type=#energy_flux:entities,tag=EF_HasReceived] remove EF_HasReceived
	execute as @e[type=#energy_flux:entities,tag=EF_WillSend,tag=EF_Use,tag=!EF_CanReceive,scores={EF_kJ=1..},sort=random] at @s run function energy_flux:send/start

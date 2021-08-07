#Timer
	scoreboard players set Second EF_Data 0
	scoreboard players add Minute EF_Data 1
	execute if score Minute EF_Data matches 60.. run function energy_flux:tick_minute

#Transfert	
	tag @e[type=minecraft:glow_item_frame,tag=EF_CanSend] add EF_WillSend
	tag @e[type=minecraft:glow_item_frame,tag=EF_HasReceived] remove EF_HasReceived
	execute as @e[type=minecraft:glow_item_frame,tag=EF_WillSend,tag=EF_Use,tag=!EF_CanReceive,scores={EF_Joule=1..},sort=random] at @s run function energy_flux:send/start

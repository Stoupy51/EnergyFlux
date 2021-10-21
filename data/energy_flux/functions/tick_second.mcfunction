#Timer
	scoreboard players set Second EF_Data 0
	scoreboard players add 20Seconds EF_Data 1
	scoreboard players add Minute EF_Data 1
	execute if score 20Seconds EF_Data matches 20.. run function energy_flux:update_networks
	execute if score Minute EF_Data matches 60.. run function energy_flux:tick_minute

#Check if we need to update networks now
	scoreboard players set UpdateNetwork EF_MachineID 0
	execute as @e[type=#energy_flux:entities,tag=EF_Use,tag=!EF_Wire] run scoreboard players add UpdateNetwork EF_MachineID 1
	execute unless score Next EF_MachineID = UpdateNetwork EF_MachineID run function energy_flux:update_networks

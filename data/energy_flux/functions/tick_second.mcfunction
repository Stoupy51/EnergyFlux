#Timer
	scoreboard players set Second EF_Data 0
	scoreboard players add 20Seconds EF_Data 1
	scoreboard players add Minute EF_Data 1
	execute if score 20Seconds EF_Data matches 20.. run function energy_flux:update_networks
	execute if score Minute EF_Data matches 60.. run function energy_flux:tick_minute

#Check if we need to update networks now
	execute store result score UpdateNetwork EF_MachineID if entity @e[type=#energy_flux:devices,tag=EF_Use,tag=!EF_Wire]
	execute unless score Next EF_MachineID = UpdateNetwork EF_MachineID run function energy_flux:update_networks

	scoreboard players operation PreviousCount EF_Data = WireCount EF_Data
	execute store result score WireCount EF_Data if entity @e[type=#energy_flux:wires,tag=EF_Use,tag=EF_Wire]
	execute unless score PreviousCount EF_Data = WireCount EF_Data run function energy_flux:update_networks

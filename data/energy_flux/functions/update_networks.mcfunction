#Timer
	scoreboard players set 20Seconds EF_Data 0

#Create Networks
	scoreboard players reset * EF_MachineID
	execute as @e[type=#energy_flux:devices,tag=EF_Use,tag=EF_CanSend,tag=!EF_Wire] run function energy_flux:machine_id
	#Store Sender Count to update later when there isn't the right number of Sender
		scoreboard players operation SenderCount EF_MachineID = Next EF_MachineID
	execute as @e[type=#energy_flux:devices,tag=EF_Use,tag=!EF_CanSend,tag=EF_CanReceive,tag=!EF_Wire] run function energy_flux:machine_id
	data modify storage energy_flux:networks Network set value []
	scoreboard players set NextSender EF_MachineID 1
	execute as @e[type=#energy_flux:devices,tag=EF_Use,tag=EF_CanSend,scores={EF_MachineID=1},limit=1] at @s run function energy_flux:network/start
	data remove storage energy_flux:networks Temp

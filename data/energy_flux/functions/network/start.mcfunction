scoreboard players add SenderChecked EF_MachineID 1
scoreboard players add NextSender EF_MachineID 1
#Link every devices and set Values
	#Initialize
		tag @s add EF_Connected
		scoreboard players set MaxSpeed EF_MaxSpeed -1
		data modify storage energy_flux:networks Receivers set value []
		scoreboard players set ReceiverCountInNetwork EF_Temp 0
	#Check if there are devices plugged directly
		execute as @e[type=#energy_flux:devices,tag=!EF_Connected,tag=EF_CanReceive,tag=!EF_Wire,distance=..1.1] at @s run function energy_flux:network/found/device

	#Check the highest transfert speed of wires plugged to start checking connectivity
		scoreboard players set SenderCountInNetwork EF_Temp 1
		function energy_flux:network/checking

#Add a List to the main storage
	data modify storage energy_flux:networks Temp set value {}
	data modify storage energy_flux:networks Temp.Receivers set from storage energy_flux:networks Receivers
	execute store result storage energy_flux:networks Temp.CountSenders int 1 run scoreboard players get SenderCountInNetwork EF_Temp
	execute store result storage energy_flux:networks Temp.CountReceivers int 1 run scoreboard players get ReceiverCountInNetwork EF_Temp
	data modify storage energy_flux:networks Network append from storage energy_flux:networks Temp
	data remove storage energy_flux:networks Receivers

#Ram clear
	tag @e[type=#energy_flux:entities,tag=EF_Connected] remove EF_Connected
	tag @e[type=#energy_flux:entities,tag=EF_Fastcheck] remove EF_Fastcheck
	scoreboard players reset * EF_Temp
	scoreboard players reset * EF_MaxSpeed

#Continue if there are Senders remaining
	execute if score SenderChecked EF_MachineID < SenderCount EF_MachineID as @e[type=#energy_flux:devices,tag=EF_Use,tag=EF_CanSend] if score @s EF_MachineID = NextSender EF_MachineID at @s run function energy_flux:network/start

#/tellraw @a ["",{"text":"SenderCount : "},{"score":{"name":"SenderCount","objective":"EF_MachineID"}},{"text":"\nSenderChecked : "},{"score":{"name":"SenderChecked","objective":"EF_MachineID"}},{"text":"\nNextSender : "},{"score":{"name":"NextSender","objective":"EF_MachineID"}}]

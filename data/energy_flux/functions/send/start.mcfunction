tag @s remove EF_WillSend
#Link every devices and set Values
	#Initialize
		tag @s add EF_Connected
		tag @s add EF_PreviousChecked
		scoreboard players set MaxSpeed EF_MaxSpeed -1
	#Check if there are devices plugged directly
		execute as @e[type=#energy_flux:entities,tag=!EF_Connected,tag=EF_CanReceive,tag=!EF_Wire,distance=..1.1] at @s run function energy_flux:send/found/receiver

	#Check the highest transfert speed of wires plugged to start checking connectivity
		function energy_flux:send/checking

	#Ram clear
		scoreboard players reset Fastest EF_Temp
		scoreboard players reset @e[type=#energy_flux:entities,tag=EF_Wire] EF_MaxSpeed
		tag @e[type=#energy_flux:entities,tag=EF_Wire] remove EF_Connected
		tag @e[type=#energy_flux:entities,tag=!EF_Wire] remove EF_PreviousChecked
		tag @s remove EF_Connected

#SplitEnergy
	execute if score @s EF_kJ matches 1.. run function energy_flux:send/split
	execute if score @s[tag=!EF_CanReceive] EF_kJ matches 1.. run function energy_flux:send/split

#Ram Clear
	tag @e[type=#energy_flux:entities,tag=EF_Connected] remove EF_Connected
	scoreboard players reset * EF_Temp
	scoreboard players reset * EF_MaxSpeed




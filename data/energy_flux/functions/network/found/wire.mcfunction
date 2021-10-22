tag @s add EF_Connected
#Check if there are devices plugged directly
	execute as @e[type=#energy_flux:devices,tag=!EF_Connected,tag=!EF_Wire,tag=EF_Use,distance=..1.1] at @s run function energy_flux:network/found/device

#Check if there are wires with same transfert speed
	execute as @e[type=#energy_flux:wires,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] if score @s EF_kW >= @e[type=#energy_flux:devices,tag=EF_Connected,distance=..0.5,limit=1] EF_MaxSpeed run function energy_flux:network/found/samewire

#Elsif there are wires without the same transfert speed
	#Check the highest transfert speed of wires plugged to start
		execute store success score Success EF_Temp if entity @e[type=#energy_flux:wires,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] run function energy_flux:network/checkspeeds/1
	#Start checking connectivity
		execute if score Success EF_Temp matches 1 as @e[type=#energy_flux:wires,tag=!EF_Connected,tag=EF_Wire,tag=EF_Faster,distance=..1.1,limit=1] at @s run function energy_flux:network/found/notsamewire

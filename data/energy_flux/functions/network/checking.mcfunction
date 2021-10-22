#Check the highest transfert speed of wires plugged to start
	function energy_flux:network/checkspeeds/1

#Start checking connectivity
	scoreboard players operation MaxSpeed EF_MaxSpeed = Fastest EF_Temp
	execute as @e[type=#energy_flux:wires,tag=!EF_Connected,tag=EF_Wire,tag=EF_Faster,limit=1] run function energy_flux:network/found/samewire

#Loop if there is remaining connections
	execute if entity @e[type=#energy_flux:wires,tag=!EF_Connected,tag=EF_Wire,distance=..1.1] run function energy_flux:network/checking

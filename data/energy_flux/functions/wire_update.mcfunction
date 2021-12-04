#What cable/wire is this?
	#Energy Flux
		execute as @e[type=#energy_flux:wires,tag=EF_Wire,distance=..2] at @s run function energy_flux:wire_update_default
	#Mechanization
		execute if entity @s[type=#energy_flux:devices,tag=!EF_Wire,tag=EF_Use] run function mechanization:base/machines/cable/remove_adjacent_cable

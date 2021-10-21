#Timer
	scoreboard players add Second EF_Data 1
	execute if score Second EF_Data matches 20.. run function energy_flux:tick_second


#Transfert Energy From Networks
	execute if score Second EF_Data matches 10 run function energy_flux:transfert/all

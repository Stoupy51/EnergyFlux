#Forgot what is Z but I works
	execute store result score MaxSpeed EF_Temp run data get storage energy_flux:networks Temp[0].MaxSpeed
	scoreboard players operation Z EF_Temp = MaxSpeed EF_Temp
	scoreboard players operation Z EF_Temp -= kJperReceiver EF_Temp
	execute if score Z EF_Temp matches ..-1 run scoreboard players operation TransfertAmount EF_Temp = MaxSpeed EF_Temp
	execute if score Z EF_Temp matches ..-1 run scoreboard players operation TransfertAmount EF_Temp /= CountReceivers EF_Temp
	execute unless score Z EF_Temp matches ..-1 run scoreboard players operation TransfertAmount EF_Temp = kJperReceiver EF_Temp

scoreboard players operation TransfertAmount EF_Temp /= CountSenders EF_Temp
execute unless score MaxSpeed EF_Temp matches -1 run function energy_flux:transfert/receive/positive
execute if score MaxSpeed EF_Temp matches -1 run function energy_flux:transfert/receive/negative

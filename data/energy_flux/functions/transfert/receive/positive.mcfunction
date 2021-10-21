execute if score CanEnter EF_Temp >= MaxSpeed EF_Temp run function energy_flux:transfert/receive/positive_1
execute if score CanEnter EF_Temp < MaxSpeed EF_Temp run function energy_flux:transfert/receive/positive_2

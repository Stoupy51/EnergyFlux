execute if score CanEnter EF_Temp >= @s EF_MaxSpeed run function energy_flux:send/receive/positive_1
execute if score CanEnter EF_Temp < @s EF_MaxSpeed run function energy_flux:send/receive/positive_2

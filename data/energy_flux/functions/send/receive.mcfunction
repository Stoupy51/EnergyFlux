scoreboard players operation CanEnter EF_Temp = @s EF_EnergyStorage
scoreboard players operation CanEnter EF_Temp -= @s EF_Joule
execute if score CanEnter EF_Temp matches 1.. run function energy_flux:send/receive/all

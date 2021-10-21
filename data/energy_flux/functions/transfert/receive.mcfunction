scoreboard players operation CanEnter EF_Temp = @s EF_kJmax
scoreboard players operation CanEnter EF_Temp -= @s EF_kJ
execute if score CanEnter EF_Temp matches 1.. run function energy_flux:transfert/receive/all

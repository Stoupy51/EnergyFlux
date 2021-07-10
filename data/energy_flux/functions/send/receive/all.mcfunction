scoreboard players operation Z EF_Temp = @s EF_MaxSpeed
scoreboard players operation Z EF_Temp -= Y EF_Temp
execute if score @s EF_MaxSpeed <= Y EF_Joule run tag @s add EF_HasReceived
execute if score Z EF_Temp matches ..-1 run scoreboard players operation TransfertAmount EF_Temp = @s EF_MaxSpeed
execute if score Z EF_Temp matches ..-1 run scoreboard players operation TransfertAmount EF_Temp /= Count EF_Temp
execute unless score Z EF_Temp matches ..-1 run scoreboard players operation TransfertAmount EF_Temp = Y EF_Temp

execute unless score @s EF_MaxSpeed matches -1 run function energy_flux:send/receive/positive
execute if score @s EF_MaxSpeed matches -1 run function energy_flux:send/receive/negative

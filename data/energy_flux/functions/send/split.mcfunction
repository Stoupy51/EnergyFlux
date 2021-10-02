scoreboard players operation Y EF_Temp = @s EF_kJ
scoreboard players set Count EF_Temp 0
scoreboard players set Remove EF_Temp 0
execute as @e[type=#energy_flux:entities,tag=EF_Connected,tag=!EF_HasReceived] run scoreboard players add Count EF_Temp 1
scoreboard players operation Y EF_Temp /= Count EF_Temp

execute unless score Y EF_Temp matches 0 as @e[type=#energy_flux:entities,tag=EF_Connected,tag=!EF_HasReceived] run function energy_flux:send/receive

scoreboard players operation @s EF_kJ -= Remove EF_Temp

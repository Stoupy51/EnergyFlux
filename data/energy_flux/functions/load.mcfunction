scoreboard objectives add EF_Data dummy
scoreboard objectives add EF_Temp dummy
scoreboard objectives add EF_kJ dummy
scoreboard objectives add EF_kW dummy
scoreboard objectives add EF_kJmax dummy
scoreboard objectives add EF_MaxSpeed dummy

scoreboard objectives add EF_MachineID dummy

scoreboard players set Second EF_Data 5

scoreboard players set EnergyFlux load.status 1031
scoreboard players set GameVersion load.status 10
function energy_flux:gameversion

gamerule maxCommandChainLength 2147483647

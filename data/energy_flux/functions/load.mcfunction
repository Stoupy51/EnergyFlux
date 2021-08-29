scoreboard objectives add EF_Data dummy
scoreboard objectives add EF_Temp dummy
scoreboard objectives add EF_kJ dummy
scoreboard objectives add EF_kW dummy
scoreboard objectives add EF_Versions dummy
scoreboard objectives add EF_kJmax dummy
scoreboard objectives add EF_MaxSpeed dummy

scoreboard players set EnergyFlux EF_Versions 1013
scoreboard players set GameVersion EF_Versions 10
function energy_flux:gameversion

schedule function energy_flux:post_load 3s replace
gamerule maxCommandChainLength 2147483647

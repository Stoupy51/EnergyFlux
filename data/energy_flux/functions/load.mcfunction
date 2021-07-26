scoreboard objectives add EF_Data dummy
scoreboard objectives add EF_Temp dummy
scoreboard objectives add EF_Joule dummy
scoreboard objectives add EF_Watt dummy
scoreboard objectives add EF_Versions dummy
scoreboard objectives add EF_EnergyStorage dummy
scoreboard objectives add EF_MaxSpeed dummy

scoreboard players set EnergyFlux EF_Versions 1012
scoreboard players set GameVersion EF_Versions 10
function energy_flux:gameversion

schedule function energy_flux:post_load 3s replace
gamerule maxCommandChainLength 2147483647

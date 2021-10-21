execute if score @s EF_kW > Fastest EF_Temp run function energy_flux:network/checkspeeds/isfaster
tag @s add EF_Fastcheck
execute as @e[type=#energy_flux:entities,tag=EF_Temp,tag=!EF_Fastcheck,limit=1] run function energy_flux:network/checkspeeds/2

execute if score @s EF_Watt > Fastest EF_Temp run function energy_flux:send/checkspeeds/isfaster
tag @s add EF_fastcheck
execute as @e[type=minecraft:glow_item_frame,tag=EF_Temp,tag=!EF_fastcheck,limit=1] run function energy_flux:send/checkspeeds/2
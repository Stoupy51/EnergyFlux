tag @s remove EF_Faster
scoreboard players operation @s EF_MaxSpeed = @e[type=#energy_flux:entities,tag=EF_Connected,distance=..0.5,limit=1] EF_MaxSpeed
execute at @s run function energy_flux:network/found/wire

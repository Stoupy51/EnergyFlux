scoreboard objectives add EF_Data dummy
scoreboard objectives add EF_Temp dummy
scoreboard objectives add EF_Joule dummy
scoreboard objectives add EF_Watt dummy
scoreboard objectives add EF_EnergyStorage dummy
scoreboard objectives add EF_MaxSpeed dummy

scoreboard players set Version EF_Data 1011
scoreboard players set GameVersion EF_Data 10
execute store result score GameVersion EF_Data run data get entity @r DataVersion

execute unless score GameVersion EF_Data matches 10 unless score GameVersion EF_Data matches 2724.. run tellraw @a {"text":"Energy Flux Error: You need at least Minecraft 1.17+.","color":"red"}
execute unless score GameVersion EF_Data matches 10 if score GameVersion EF_Data matches 2724.. run tellraw @a {"text":"[Loaded Energy Flux API v1.1.1]","color":"green"}

schedule function energy_flux:post_load 3s replace
gamerule maxCommandChainLength 2147483647

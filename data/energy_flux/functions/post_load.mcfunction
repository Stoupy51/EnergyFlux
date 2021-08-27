execute unless score GameVersion EF_Versions matches 10 unless score GameVersion EF_Versions matches 2724.. run tellraw @a {"text":"Energy Flux Error: You need at least Minecraft 1.17+.","italic":false,"color":"red"}
execute unless score GameVersion EF_Versions matches 10 if score GameVersion EF_Versions matches 2724.. run tellraw @a {"text":"[Loaded Energy Flux API v1.1.3]","italic":false,"color":"green"}
execute unless entity @a run schedule function energy_flux:post_load 5s replace
execute if entity @a run scoreboard players reset * EF_Versions

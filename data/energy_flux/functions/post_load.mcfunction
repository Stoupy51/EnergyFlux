execute store result score GameVersion load.status run data get entity @r DataVersion
execute unless score GameVersion load.status matches 10 unless score GameVersion load.status matches 2860.. run tellraw @a {"text":"Energy Flux Error: You need at least Minecraft 1.18+.","italic":false,"color":"red"}
execute unless score GameVersion load.status matches 10 if score GameVersion load.status matches 2860.. run tellraw @a {"text":"[Loaded Energy Flux v1.3.1]","italic":false,"color":"green"}
execute unless entity @a run schedule function energy_flux:post_load 2t replace

execute store result score GameVersion EF_Versions run data get entity @r DataVersion

execute unless entity @a run schedule function energy_flux:gameversion 1t replace

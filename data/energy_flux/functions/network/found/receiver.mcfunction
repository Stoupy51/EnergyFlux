tag @s add EF_Connected
data modify storage energy_flux:networks Temp set value {}
execute store result storage energy_flux:networks Temp.MachineID int 1 run scoreboard players get @s EF_MachineID
execute store result storage energy_flux:networks Temp.MaxSpeed int 1 run scoreboard players get MaxSpeed EF_MaxSpeed
data modify storage energy_flux:networks Receivers append from storage energy_flux:networks Temp
scoreboard players add ReceiverCountInNetwork EF_Temp 1

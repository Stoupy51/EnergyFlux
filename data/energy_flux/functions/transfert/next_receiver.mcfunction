execute store result score MachineID EF_Temp run data get storage energy_flux:networks Temp[0].MachineID
execute as @e[type=#energy_flux:entities,tag=EF_CanReceive,tag=EF_Use] if score @s EF_MachineID = MachineID EF_Temp run function energy_flux:transfert/receive
data remove storage energy_flux:networks Temp[0]
execute if data storage energy_flux:networks Temp[0] run function energy_flux:transfert/next_receiver

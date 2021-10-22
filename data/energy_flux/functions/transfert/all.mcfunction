data modify storage energy_flux:networks NetworkTemp set from storage energy_flux:networks Network


scoreboard players set SelectedMachineID EF_Temp 1
execute if data storage energy_flux:networks NetworkTemp[0] as @e[type=#energy_flux:devices,tag=EF_CanSend,tag=EF_Use] if score @s EF_MachineID = SelectedMachineID EF_Temp run function energy_flux:transfert/start


scoreboard players reset * EF_Temp
data remove storage energy_flux:networks Temp
data remove storage energy_flux:networks NetworkTemp

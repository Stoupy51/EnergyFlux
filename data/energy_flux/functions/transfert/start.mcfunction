data modify storage energy_flux:networks Temp set from storage energy_flux:networks NetworkTemp[0]
execute store result score CountSenders EF_Temp run data get storage energy_flux:networks Temp.CountSenders
execute store result score CountReceivers EF_Temp run data get storage energy_flux:networks Temp.CountReceivers
data modify storage energy_flux:networks Temp set from storage energy_flux:networks Temp.Receivers

scoreboard players set RemoveAmount EF_Temp 0
scoreboard players operation kJperReceiver EF_Temp = @s EF_kJ
scoreboard players operation kJperReceiver EF_Temp /= CountReceivers EF_Temp
execute unless score kJperReceiver EF_Temp matches 0 if data storage energy_flux:networks Temp[0] run function energy_flux:transfert/next_receiver
scoreboard players operation @s EF_kJ -= RemoveAmount EF_Temp
#execute if score SelectedMachineID EF_Temp matches 27 run tellraw @a ["",{"text":"CountSenders : "},{"score":{"name":"CountSenders","objective":"EF_Temp"}},{"text":"\nCountReceivers : "},{"score":{"name":"CountReceivers","objective":"EF_Temp"}},{"text":"\nkJperReceiver : "},{"score":{"name":"kJperReceiver","objective":"EF_Temp"}}]


data remove storage energy_flux:networks NetworkTemp[0]
scoreboard players add SelectedMachineID EF_Temp 1

execute if data storage energy_flux:networks NetworkTemp[0] as @e[type=#energy_flux:devices,tag=EF_CanSend,tag=EF_Use] if score @s EF_MachineID = SelectedMachineID EF_Temp run function energy_flux:transfert/start

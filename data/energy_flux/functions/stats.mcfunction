
tellraw @s [{"text":"\n[Energy Flux Stats]","color":"yellow"}]

execute store result score Temp EF_Data if entity @e[type=#energy_flux:entities,tag=EF_Use]
tellraw @s ["",{"text":"Energy Flux Entities: ","color":"gray"},{"score":{"name":"Temp","objective":"EF_Data"},"color":"gold"}]

execute store result score Temp EF_Data if entity @e[type=#energy_flux:wires,tag=EF_Use,tag=EF_Wire]
tellraw @s ["",{"text":"Wires: ","color":"gray"},{"score":{"name":"Temp","objective":"EF_Data"},"color":"gold"}]

execute store result score Temp EF_Data if entity @e[type=#energy_flux:devices,tag=EF_Use,tag=!EF_Wire]
tellraw @s ["",{"text":"Devices: ","color":"gray"},{"score":{"name":"Temp","objective":"EF_Data"},"color":"gold"}]

execute store result score Temp EF_Data if entity @e[type=#energy_flux:devices,tag=EF_Use,tag=EF_CanSend,tag=!EF_CanReceive]
tellraw @s ["",{"text":"Only EF_CanSend: ","color":"gray"},{"score":{"name":"Temp","objective":"EF_Data"},"color":"gold"}]

execute store result score Temp EF_Data if entity @e[type=#energy_flux:devices,tag=EF_Use,tag=!EF_CanSend,tag=EF_CanReceive]
tellraw @s ["",{"text":"Only EF_CanReceive: ","color":"gray"},{"score":{"name":"Temp","objective":"EF_Data"},"color":"gold"}]

execute store result score Temp EF_Data if entity @e[type=#energy_flux:devices,tag=EF_Use,tag=EF_CanSend,tag=EF_CanReceive]
tellraw @s ["",{"text":"Send & Receive: ","color":"gray"},{"score":{"name":"Temp","objective":"EF_Data"},"color":"gold"}]

scoreboard players reset Temp EF_Data

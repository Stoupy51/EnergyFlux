#Select a base Model Data depends on Wire
	execute store result score Model EF_Data run data get entity @s Item.tag.CustomModelData
	scoreboard players set 100 EF_Data 100
	scoreboard players operation Model EF_Data /= 100 EF_Data
	scoreboard players operation Model EF_Data *= 100 EF_Data

#Check at connected entities or machines
	execute align xyz positioned ~ ~-1 ~ if entity @e[type=#energy_flux:entities,tag=EF_Use,limit=1,sort=nearest,dx=0,dy=0,dz=0] run scoreboard players add Model EF_Data 1
	execute align xyz positioned ~ ~1 ~ if entity @e[type=#energy_flux:entities,tag=EF_Use,limit=1,sort=nearest,dx=0,dy=0,dz=0] run scoreboard players add Model EF_Data 2
	execute align xyz positioned ~ ~ ~-1 if entity @e[type=#energy_flux:entities,tag=EF_Use,limit=1,sort=nearest,dx=0,dy=0,dz=0] run scoreboard players add Model EF_Data 4
	execute align xyz positioned ~ ~ ~1 if entity @e[type=#energy_flux:entities,tag=EF_Use,limit=1,sort=nearest,dx=0,dy=0,dz=0] run scoreboard players add Model EF_Data 8
	execute align xyz positioned ~-1 ~ ~ if entity @e[type=#energy_flux:entities,tag=EF_Use,limit=1,sort=nearest,dx=0,dy=0,dz=0] run scoreboard players add Model EF_Data 16
	execute align xyz positioned ~1 ~ ~ if entity @e[type=#energy_flux:entities,tag=EF_Use,limit=1,sort=nearest,dx=0,dy=0,dz=0] run scoreboard players add Model EF_Data 32

#Update CustomModelData
	execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get Model EF_Data

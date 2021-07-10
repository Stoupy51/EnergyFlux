scoreboard players operation @s EF_MaxSpeed = @e[type=minecraft:armor_stand,tag=EF_PreviousChecked,tag=EF_Connected] EF_MaxSpeed
#Check if this wire speed is lesser than the previous one
    execute if score @s EF_Watt < @e[type=minecraft:armor_stand,tag=EF_PreviousChecked,tag=EF_Connected,limit=1] EF_MaxSpeed run scoreboard players operation @s EF_MaxSpeed = @s EF_Watt
function energy_flux:send/found/wire

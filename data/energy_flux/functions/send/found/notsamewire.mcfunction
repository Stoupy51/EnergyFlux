scoreboard players operation @s EF_MaxSpeed = MaxSpeed EF_MaxSpeed
#Check if this wire speed is lesser than the previous one
    execute if score @s EF_kW < MaxSpeed EF_MaxSpeed run scoreboard players operation @s EF_MaxSpeed = @s EF_kW
function energy_flux:send/found/wire

tag @s remove EF_Faster
#Check if this wire speed is lesser than the previous one
	execute if score @s EF_kW < MaxSpeed EF_MaxSpeed run scoreboard players operation MaxSpeed EF_MaxSpeed = @s EF_kW
scoreboard players operation @s EF_MaxSpeed = MaxSpeed EF_MaxSpeed
function energy_flux:network/found/wire

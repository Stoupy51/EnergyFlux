execute if score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation @s EF_kJ += CanEnter EF_Temp
execute if score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation Remove EF_Temp += CanEnter EF_Temp
execute unless score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation @s EF_kJ += Y EF_Temp
execute unless score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation Remove EF_Temp += Y EF_Temp
tag @s remove EF_Connected

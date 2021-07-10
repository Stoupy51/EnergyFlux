execute if score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation @s EF_Joule += CanEnter EF_Temp
execute if score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation Remove EF_Temp += CanEnter EF_Temp
execute unless score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation @s EF_Joule += Y EF_Temp
execute unless score CanEnter EF_Temp < Y EF_Temp run scoreboard players operation Remove EF_Temp += Y EF_Temp
tag @s remove EF_Connected

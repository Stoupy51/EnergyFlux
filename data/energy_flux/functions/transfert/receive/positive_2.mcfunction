execute if score CanEnter EF_Temp < kJperReceiver EF_Temp run scoreboard players operation @s EF_kJ += CanEnter EF_Temp
execute if score CanEnter EF_Temp < kJperReceiver EF_Temp run scoreboard players operation RemoveAmount EF_Temp += CanEnter EF_Temp
execute unless score CanEnter EF_Temp < kJperReceiver EF_Temp run scoreboard players operation @s EF_kJ += kJperReceiver EF_Temp
execute unless score CanEnter EF_Temp < kJperReceiver EF_Temp run scoreboard players operation RemoveAmount EF_Temp += kJperReceiver EF_Temp

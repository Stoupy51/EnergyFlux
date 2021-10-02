#Give tag Connected and take transfert speed
	tag @s[tag=EF_CanReceive] add EF_Connected
	scoreboard players operation @s[tag=EF_CanReceive] EF_MaxSpeed = MaxSpeed EF_MaxSpeed

#Exception when found a Sender
	execute as @s[tag=EF_CanSend,tag=!EF_CanReceive] if score @s EF_kW <= @s EF_kJ run scoreboard players add SenderCount EF_Temp 1

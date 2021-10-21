#Receiver:	Give tag Connected and take transfert speed
	execute as @s[tag=EF_CanReceive] run function energy_flux:network/found/receiver

#Sender:	Exception
	execute as @s[tag=EF_CanSend,tag=!EF_CanReceive] if score @s EF_kW <= @s EF_kJ run scoreboard players add SenderCountInNetwork EF_Temp 1

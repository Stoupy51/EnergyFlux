#Give tag Connected and take transfert speed
    tag @s add EF_Connected
    scoreboard players operation @s EF_MaxSpeed = @e[type=minecraft:armor_stand,tag=EF_PreviousChecked,tag=EF_Connected] EF_MaxSpeed
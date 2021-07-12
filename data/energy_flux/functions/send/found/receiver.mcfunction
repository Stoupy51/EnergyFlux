#Give tag Connected and take transfert speed
    tag @s add EF_Connected
    scoreboard players operation @s EF_MaxSpeed = @e[type=minecraft:glow_item_frame,tag=EF_PreviousChecked,tag=EF_Connected] EF_MaxSpeed
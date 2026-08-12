

tp @s ~ ~-5.1 ~ ~ ~
execute at @s as @e[type=minecraft:vindicator, tag=cryptid.spotlight] if score @s cryptid.mob.id = @n[type=minecraft:item_display, tag=cryptid.spotlight2,distance=..1] cryptid.mob.id run tag @s add current
execute at @s anchored eyes facing entity @n[type=minecraft:vindicator, tag=cryptid.spotlight,tag=current] eyes run tp @s ~ ~ ~ ~180 ~
execute as @e[type=minecraft:vindicator, tag=cryptid.spotlight,tag=current] run tag @s remove current

execute store result score @s cryptid.roty run data get entity @s Rotation[1] 100
scoreboard players operation @s cryptid.roty *= -1 cryptid.roty
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get @s cryptid.roty

data merge entity @n[tag=cryptid.spotlight2] {ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1360},count:1}]}
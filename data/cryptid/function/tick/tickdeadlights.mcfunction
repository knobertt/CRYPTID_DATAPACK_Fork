execute store result score @s cryptid.random run random value 1..700


##flicker blocks
execute if score @s cryptid.random matches 0..300 run setblock ~ ~5 ~ air
execute if score @s cryptid.random matches 300..340 run setblock ~ ~5 ~ glowstone



##inmcrease

scoreboard players add @s cryptid.timer 1

##kill afte rtime


execute if score @s cryptid.timer matches 400.. run setblock ~ ~5 ~ air
execute if score @s cryptid.timer matches 400.. run kill @s



##trap

execute if entity @p[distance=0..4] run function cryptid:events/cryptid/flicker5
execute if entity @p[distance=0..4] run setblock ~ ~5 ~ air
execute if entity @p[distance=0..4] run kill @s
execute if entity @p[distance=0..4] run effect give @p minecraft:blindness 3 1 true

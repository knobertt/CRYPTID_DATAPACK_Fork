execute store result score @s cryptid.player.random run random value 1..200

execute if score @s cryptid.player.random matches 1..30 run tag @s add cryptid.glitchscreen

execute if score @s cryptid.player.random matches 40..80 run tag @s add cryptid.fearscreen
execute if score @s cryptid.player.random matches 1..80 as @n[tag=activelookcheck,tag=cryptid.hand,type=vindicator] run damage @s 0 minecraft:player_attack by @p

execute if score @s cryptid.player.random matches 1..10 run execute as @e[tag=cryptid.hand, type=vindicator, sort=nearest, limit=1,tag=activelookcheck] unless score @s cryptid.phase matches 2 if score @s cryptid.handdamagetimer matches -100 at @s run function cryptid:action/hand/jump

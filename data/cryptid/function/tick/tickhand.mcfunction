
execute store result score @s cryptid.player.random run random value 1..10000

execute if entity @p[distance=0..5] unless score @s cryptid.phase matches 2..3 if score @s cryptid.handdamagetimer matches -100 run function cryptid:action/hand/jump
execute if score @s cryptid.handdamagetimer matches -99.. run scoreboard players remove @s cryptid.handdamagetimer 1
execute if score @s cryptid.phase matches 2..3 run damage @p[distance=0..1.5] 2 minecraft:cramming by @s

#stage 0
execute if score @s cryptid.phase matches 0 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1351]
execute if score @s cryptid.phase matches 0 run effect give @s minecraft:resistance 1 100 true
execute if score @s cryptid.phase matches 0 run effect give @s minecraft:slowness 1 0 true

#stage 1 
execute if score @s cryptid.phase matches 1 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1351]

data merge entity @s {NoAI:0b}
execute if score @s cryptid.phase matches 2..3 run data merge entity @s {NoAI:1b}

## stage 2 Chase
execute if score @s cryptid.phase matches 2 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1352]
execute if score @s[tag=!chained] cryptid.phase matches 2 run tp @s ^ ^ ^0.5 facing entity @p
execute if score @s cryptid.phase matches 2 run damage @s 0 player_attack by @p


## curent bugs
#despawn very fast??
#where are eyes

##stage 3 grab
###scoreboard magic

execute if score @s cryptid.phase matches 2 if entity @p[distance=..2,scores={cryptid.damagetaken=1..}] run scoreboard players set @s cryptid.handdamagetimer 160
execute if score @s cryptid.phase matches 2 if entity @p[distance=..2,scores={cryptid.damagetaken=1..}] run scoreboard players set @s cryptid.phase 3
execute if score @s cryptid.phase matches 3 run item replace entity @s armor.head with potion[minecraft:custom_model_data=1353]
execute if score @s cryptid.phase matches 3 at @p positioned ^ ^ ^0.15 run tp @s ~ ~-0.6 ~ facing entity @p


execute if score @s cryptid.phase matches 3 if entity @s[scores={cryptid.handdamagetimer=..100}] if score @s cryptid.player.random matches 1..100 run scoreboard players set @s cryptid.phase 1
execute if score @s cryptid.phase matches 3 if entity @s[scores={cryptid.handdamagetimer=..0}] run scoreboard players set @s cryptid.phase 1




execute if score @s cryptid.phase matches 1 if score @s cryptid.player.random matches 10..40 run scoreboard players set @s cryptid.phase 0

###attacks

##random
execute if score @s cryptid.player.random matches 1..2 run function cryptid:events/quietkill
execute if score @s cryptid.player.random matches 10..20 run function cryptid:events/underground/darkeyes
execute if entity @p[distance=100..] run function cryptid:events/quietkill

execute store result score @s cryptid.player.random run random value 1..200
execute if score @s cryptid.player.random matches 2 run playsound minecraft:cryptid.ambient.hand ambient @a[distance=0..30] ~ ~ ~ 10 1




tag @a[distance=0..5] add cryptid.glitchscreen


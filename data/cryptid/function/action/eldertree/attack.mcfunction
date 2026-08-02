playsound minecraft:entity.elder_guardian.hurt ambient @a[distance=..30] ~ ~ ~ 2 0.6
tag @s remove groundatk
tag @s remove summonatk
execute store result score @s cryptid.player.random run random value 1..2
execute if score @s cryptid.player.random matches 1 run tag @s add groundatk
execute if score @s cryptid.player.random matches 1 run scoreboard players set @s cryptid.mob.cooldown 500

execute if score @s cryptid.player.random matches 2 run tag @s add summonatk
execute if score @s cryptid.player.random matches 2 run scoreboard players set @s cryptid.mob.cooldown 300

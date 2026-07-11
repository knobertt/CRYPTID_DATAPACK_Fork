execute store result score @s cryptid.player.random run random value 1..60


fill ~4 ~4 ~4 ~-4 ~-4 ~-4 netherrack replace cobblestone

##randomness

execute store result score @s cryptid.player.random run random value 1..30


execute if score @s cryptid.player.random matches 2..3 run function cryptid:events/general/spawntree
execute if score @s cryptid.player.random matches 5 run function cryptid:events/cryptid/flicker1
execute if score @s cryptid.player.random matches 6 run function cryptid:events/cryptid/flicker2
execute if score @s cryptid.player.random matches 7..10 run function cryptid:events/cryptid/flicker3
execute if score @s cryptid.player.random matches 8..10 run function cryptid:events/cryptid/flicker4
execute if score @s cryptid.player.random matches 9 run function cryptid:events/cryptid/dopple1
execute if score @s cryptid.player.random matches 10 run function cryptid:events/sky/ray

playsound minecraft:cryptid.cloud.ambience ambient @a[distance=0..30] ~ ~ ~

playsound minecraft:cryptid.torch.flicker ambient @a
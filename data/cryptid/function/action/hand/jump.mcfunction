playsound minecraft:cryptid.jumpchase ambient @p
tp @s ~ ~ ~ facing entity @p
damage @s 0 minecraft:player_attack by @p
execute unless score @s cryptid.phase matches 1..3 run function cryptid:events/underground/darkeyes
scoreboard players set @s cryptid.phase 2
tag @p add cryptid.glitchscreen
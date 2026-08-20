
tag @s add cryptid.bosschase
effect give @s slowness 1 2 true
damage @s 1 minecraft:dragon_breath by @e[tag=cryptid, sort=nearest, limit=1]
particle crimson_spore ~ ~ ~ 2 1 2 1 50
tag @s add cryptid.spotlight.watching
damage @e[tag=cryptid, sort=random, limit=1] 0 player_attack by @s

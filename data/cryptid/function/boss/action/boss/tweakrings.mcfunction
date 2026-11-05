function cryptid:boss/spawn/spawnshockwave

execute as @e[type=zombie, tag=boss.ring] at @s run tp @s ~ ~ ~ facing entity @e[sort=random, limit=1]


execute as @p[distance=0..12] at @s run function cryptid:action/player/corruptitem
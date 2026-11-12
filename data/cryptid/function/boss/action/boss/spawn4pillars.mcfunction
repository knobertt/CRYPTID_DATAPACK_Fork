## ensure at right height
execute at @s run tp @s 0 69 0

execute at @s positioned ~ ~-4 ~17 run function cryptid:boss/spawn/spawnpillar
execute at @s positioned ~ ~-4 ~-17 run function cryptid:boss/spawn/spawnpillar
execute at @s positioned ~17 ~-4 ~ run function cryptid:boss/spawn/spawnpillar
execute at @s positioned ~-17 ~-4 ~ run function cryptid:boss/spawn/spawnpillar

playsound minecraft:cryptid.jelly.ambient ambient @a
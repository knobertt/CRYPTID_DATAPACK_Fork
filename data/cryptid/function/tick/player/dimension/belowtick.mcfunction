execute as @s at @s if entity @s[y=-400, dy=-90000] run execute positioned ~ 10000 ~ in minecraft:overworld positioned over world_surface run tp @s ~ ~ ~



##events?





##check if void timer isnt playing or not

execute if score @s cryptid.voidambiencetimer matches ..2 run function cryptid:action/below/playvoidambience


##ambience
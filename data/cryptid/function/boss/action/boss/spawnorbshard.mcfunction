execute store result score @s cryptid.random run random value 1..65


execute if score @s cryptid.random matches 1..20 facing entity @e[sort=random, limit=1] eyes positioned ^ ^ ^35 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb

execute if score @s cryptid.random matches 21 at @r positioned ^1 ^-3 ^5 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 22 at @r positioned ^-1 ^5 ^10 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 23 at @r positioned ^-6 ^3 ^15 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 24 at @r positioned ^6 ^-2 ^20 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 25 at @r positioned ^ ^1 ^25 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 26 at @r positioned ^6 ^-2 ^1 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 27 at @r positioned ^-6 ^3 ^7 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 28 at @r positioned ^-3 ^-5 ^11 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 29 at @r positioned ^5 ^1 ^19 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 30 at @r positioned ^3 ^-1 ^15 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb

execute if score @s cryptid.random matches 31 at @r positioned ^1 ^1 ^1 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb
execute if score @s cryptid.random matches 32 at @r positioned ^-1 ^-1 ^-1 positioned ~ 400 ~ run execute positioned over world_surface run function cryptid:boss/spawn/spawnorb


scoreboard players remove @s boss.orbspawner 1

    # dig ground
execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.player.random matches 1..16 run playsound minecraft:cryptid.earth.ambient ambient @a[distance=0..30] ~10 ~ ~10 10 1.5
execute if score @s cryptid.player.random matches 1..16 run particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~ ~ 3 0.1 3 0.1 200 force


  #mouth
execute if score @s cryptid.player.random matches 16 run execute as @p[distance=1..20] at @s run function cryptid:events/general/spawnmouth

execute unless score @s cryptid.player.random matches 1..15 run return fail
execute at @p unless block ~ ~-0.3 ~ #cryptid:fleshy run return fail


execute as @p at @s run tp @s ~ ~-0.5 ~
execute as @p at @s run fill ~ ~ ~ ~ ~-3 ~ air replace #cryptid:fleshy
execute as @p at @s run playsound entity.zombie.break_wooden_door ambient @a[distance=0..20] ~ ~ ~ 1 0.6
execute as @p at @s run particle dust_pillar{block_state:{Name:red_concrete}} ~ ~-0.2 ~ 0.2 0.1 0.2 0.1 20 force


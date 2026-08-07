    # dig ground
execute store result score @s cryptid.player.random run random value 1..1000

execute if score @s cryptid.player.random matches 1..16 run playsound minecraft:cryptid.earth.ambient ambient @a[distance=0..30] ~10 ~ ~10 10 1.5
execute if score @s cryptid.player.random matches 1..16 run particle dust_pillar{block_state:{Name:nether_wart_block}} ~ ~ ~ 3 0.1 3 0.1 200 force


  #mouth
execute if score @s cryptid.player.random matches 16 run execute as @p[distance=1..20] at @s run function cryptid:events/general/spawnmouth

## dig
execute unless score @s cryptid.player.random matches 1..15 run return fail
execute at @p unless block ~ ~-0.3 ~ #cryptid:fleshy run return fail
execute unless entity @p[distance=4..25] run return fail

execute positioned ^ ^ ^3 positioned over motion_blocking_no_leaves run particle dust_color_transition{from_color:[0.8,0.24,0.3],to_color:[0.46,0.06,0.02],scale:4} ~ ~2 ~ 9 1 9 0.3 200
execute as @p at @s run tp @s ~ ~-0.5 ~
execute as @p at @s run fill ~ ~ ~ ~ ~-2 ~ air replace #cryptid:fleshy
execute as @p at @s run playsound minecraft:block.deepslate.break ambient @a[distance=0..20] ~ ~ ~ 0.6 0.6
execute as @p at @s run particle dust_pillar{block_state:{Name:red_concrete}} ~ ~-0.2 ~ 0.2 0.1 0.2 0.1 20 force


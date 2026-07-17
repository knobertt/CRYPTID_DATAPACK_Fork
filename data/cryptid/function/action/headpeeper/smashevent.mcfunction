
execute unless block ~ ~-1 ~ water run setblock ~ ~-1 ~ minecraft:red_concrete

execute as @e[distance=..3,type=!#cryptid:nonliving] run damage @s 7 cryptid:chomp by @n[tag=cryptid.headpeeper]

effect give @p[distance=0..3] slowness 2 2 true
particle block{block_state:{Name:nether_wart_block}} ~ ~-0.2 ~ 1.5 1.5 1.5 0 100


playsound minecraft:entity.camel.hurt ambient @a ~ ~ ~ 1 0.1
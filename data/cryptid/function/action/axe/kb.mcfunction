execute if block ~ ~2 ~ #cryptid:nonsolid run tp @s ~ ~0.5 ~
execute facing entity @p[tag=owner] eyes run damage @s 3 cryptid:lacerated by @p[tag=owner] from @p[tag=owner]

playsound minecraft:cryptid.axe.hit ambient @a ~ ~1 ~ 1 1.2
execute positioned as @s run particle block{block_state:redstone_block} ~ ~1 ~ 0.3 0.3 0.3 0.01 20
#execute positioned as @s run effect give @s minecraft:wither 3 1 true
##reset to default
scoreboard players set @s cryptid.player.flux.base 0
## Set Base flux
scoreboard players set @s[scores={cryptid.player.heart.distance=60..80}] cryptid.player.flux.base -1
scoreboard players set @s[scores={cryptid.player.heart.distance=30..60}] cryptid.player.flux.base -2
scoreboard players set @s[scores={cryptid.player.heart.distance=20..30}] cryptid.player.flux.base -4
scoreboard players set @s[scores={cryptid.player.heart.distance=10..20}] cryptid.player.flux.base -8
scoreboard players set @s[scores={cryptid.player.heart.distance=0..10}] cryptid.player.flux.base -10

##overrides
execute if entity @e[tag=cryptid.lessertotem, distance=..20] run scoreboard players set @s cryptid.player.flux.base 1
execute if entity @e[tag=cryptid.totem2, distance=..30] run scoreboard players set @s cryptid.player.flux.base 2


##World flux base
## Negative
execute at @s if predicate cryptid:checklight run scoreboard players remove @s cryptid.player.flux.base 2
execute at @s as @s[y=110,dy=1000] run scoreboard players remove @s cryptid.player.flux.base 2
execute if biome ~ ~ ~ cryptid:empty run scoreboard players remove @s cryptid.player.flux.base 1
execute if entity @e[tag=cryptid,scores={cryptid.mob.class=3..},distance=..30] run scoreboard players remove @s cryptid.player.flux.base 1

## Positive
execute at @s unless predicate cryptid:checklight run scoreboard players add @s cryptid.player.flux.base 1
execute if score .globaltime cryptid.time matches 1..13000 run scoreboard players add @s cryptid.player.flux.base 1

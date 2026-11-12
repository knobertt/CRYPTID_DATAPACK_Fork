execute as @s[tag=!init] at @s run tp @s ~ ~-120 ~
execute as @s[tag=!init] positioned as @s run tp @s ~ ~ ~ 180 0
execute as @s[tag=!init] positioned as @s run tag @s add init



##kill at end

execute if score @s cryptid.timer matches ..-1000 run function cryptid:boss/action/pillar/kill


##check for blocks

execute anchored feet positioned ^ ^ ^1 if predicate cryptid:boss_pillar_collide at @s run playsound entity.iron_golem.hurt ambient @a ~ ~ ~ 2 0.3
execute anchored feet positioned ^ ^ ^1 if predicate cryptid:boss_pillar_collide at @s run tp @s ~ ~ ~ ~180 ~
## Destruction
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~ ~ ~ run fill ~ ~ ~ ~ ~8 ~ air destroy
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~1 ~ ~ run fill ~ ~ ~ ~ ~8 ~ air destroy
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~-1 ~ ~ run fill ~ ~ ~ ~ ~8 ~ air destroy
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~ ~ ~1 run fill ~ ~ ~ ~ ~8 ~ air destroy
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~8 ~ air destroy

execute anchored feet unless block ~ ~29 ~ light at @s positioned ~1 ~ ~1 run fill ~ ~ ~ ~ ~8 ~ air destroy
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~-1 ~ ~1 run fill ~ ~ ~ ~ ~8 ~ air destroy
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~1 ~ ~-1 run fill ~ ~ ~ ~ ~8 ~ air destroy
execute anchored feet unless block ~ ~29 ~ light at @s positioned ~-1 ~ ~-1 run fill ~ ~ ~ ~ ~8 ~ air destroy

execute anchored feet positioned ^ ^ ^4 if entity @e[distance=..2.2,tag=boss.pillar] at @s run playsound entity.iron_golem.hurt ambient @a ~ ~ ~ 2 0.3
execute anchored feet positioned ^ ^ ^4 if entity @e[distance=..2.2,tag=boss.pillar] at @s run tp @s ~ ~ ~ ~180 ~

##switch ai

execute store result score @s cryptid.random run random value 1..40
##randomwalk
execute if score @s cryptid.random matches 1 run tag @s add randomwalk
execute if score @s cryptid.random matches 1 run tag @s remove playerwalk
####playerwalk
execute if score @s cryptid.random matches 2..5 run tag @s remove randomwalk
execute if score @s cryptid.random matches 2..5 run tag @s add playerwalk


##damage
execute if score .global cryptid.pillartimer matches 5..35 as @a[distance=0..3.2] run damage @s 4 explosion by @e[sort=nearest,limit=1,tag=boss.pillar]
execute if score .global cryptid.pillartimer matches 5..35 as @a[distance=0..3.2] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.pillar] feet rotated ~ 0 positioned ^ ^-0.03 ^0.6 run function cryptid:boss/enchantexplosion/spawngeneralkb
execute if score .global cryptid.pillartimer matches 5..35 as @a[distance=0..3.2] run function cryptid:boss/action/general/truedamage {damage:3}

execute if score .global cryptid.pillartimer matches 5..35 as @a[distance=0..3.2] at @s run playsound minecraft:cryptid.chomper.bite ambient @a ~ ~ ~ 10 0.1


##movement


execute positioned as @s if score .global cryptid.pillartimer matches 20 run playsound minecraft:entity.villager.work_weaponsmith ambient @a ~ ~ ~ 2 0.1

execute positioned as @s if score .global cryptid.pillartimer matches 30..40 run tp @s ^ ^ ^0.02
execute positioned as @s if score .global cryptid.pillartimer matches 10..29 run tp @s ^ ^ ^0.2
execute positioned as @s if score .global cryptid.pillartimer matches 0..9 run tp @s ^ ^ ^0.02

execute positioned as @s anchored feet if score .global cryptid.pillartimer matches 15..30 run particle minecraft:lava ~ ~ ~ 1.2 0.2 1.2 0.2 4



###switch
execute if entity @s[tag=randomwalk] if score .global cryptid.pillartimer matches 1 run function cryptid:boss/action/pillar/switch
execute if entity @s[tag=playerwalk] if score .global cryptid.pillartimer matches 1 run function cryptid:boss/action/pillar/playerswitch


execute if entity @s[tag=!inittree] run function cryptid:events/node/block
execute if entity @s[tag=!inittree] run place feature cryptid:convertflesh ~ ~5 ~
execute if entity @s[tag=!inittree] run execute positioned ~ ~12 ~ run function cryptid:events/general/corruptionspawner
execute if entity @s[tag=!inittree] run function cryptid:events/node/block
execute if entity @s[tag=!inittree] run scoreboard players set @s cryptid.tree.health 5
execute if entity @s[tag=!inittree] run tag @e[type=armor_stand, tag=cryptid.eldertree] add inittree


##inground
execute unless block ~ ~2 ~ #cryptid:nonsolid run tp @s ~ ~0.05 ~ facing entity @p
execute unless block ~ ~2 ~ #cryptid:nonsolid positioned ~ ~10 ~ positioned over motion_blocking_no_leaves run particle dust_pillar{block_state:{Name:netherrack}} ~ ~-0.1 ~ 1 0.2 1 0.01 10


scoreboard players remove @p[distance=0..14] cryptid.player.harmony 3

#despawn
execute if score .globaltime cryptid.time matches 1200 if score @s cryptid.timer matches ..-12000 if score @s cryptid.random matches 1..100 run function cryptid:action/general/grounddeath
## tick
particle falling_dust{block_state:{Name:red_concrete}} ~ ~2 ~ 0.6 2.4 0.6 0.1 2 force


# prevents events when in ground
execute unless block ~ ~2 ~ #enchantment_power_transmitter run return fail

## spawn corruption
execute if score .globaltime cryptid.time matches 1200 positioned ~ ~3 ~ run function cryptid:events/general/corruptionspawner
execute if score .globaltime cryptid.time matches 18000 positioned ~ ~3 ~ run function cryptid:events/general/corruptionspawner

execute if score .globaltime cryptid.time matches 17000..18000 unless block ~ ~-1 ~ air run tp @s[nbt={OnGround:1b}] ^ ^ ^0.03 facing entity @p


## new idea periods of activity and inactivity with min cooldowns

## passisive abilities
execute store result score @s cryptid.player.random run random value 1..4000
    #flicker
execute if score @s cryptid.player.random matches 5..9 run function cryptid:events/cryptid/flicker5

    #infest
execute if score @s cryptid.player.random matches 71..80 run particle crimson_spore ~ ~2 ~ 2.4 5 2.4 0.1 1000 force
execute if score @s cryptid.player.random matches 71..80 as @n[type=#cryptid:infestable,tag=!cryptid] at @s run function cryptid:action/hostile/advancecorrupt
    #pop
execute if score @s cryptid.player.random matches 81..90 as @n[type=#cryptid:infestable,tag=!cryptid] at @s run function cryptid:action/general/fireworksdeath
    #soma
execute if score @s cryptid.player.random matches 20..70 positioned as @e[distance=..10,sort=random,limit=1] positioned over motion_blocking_no_leaves run fillbiome ~-8 ~-5 ~-8 ~8 ~8 ~8 cryptid:soma

## Agro abilities
execute if entity @p[distance=..30] if score @s cryptid.mob.cooldown matches ..0 run function cryptid:action/eldertree/attack
execute as @s[tag=summonatk] if score @s cryptid.mob.cooldown matches 100.. run function cryptid:action/eldertree/ticksummons
execute as @s[tag=groundatk] if score @s cryptid.mob.cooldown matches 100.. run function cryptid:action/eldertree/tickground


##### Killing mechanincs

execute as @s[tag=hurt] run function cryptid:action/eldertree/hurt

execute if score @s cryptid.tree.health matches ..0 run function cryptid:events/quietkill
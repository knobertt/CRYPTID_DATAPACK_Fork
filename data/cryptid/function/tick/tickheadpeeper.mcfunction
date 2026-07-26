execute as @s[tag=!init] at @s run tp @s ~ ~5 ~
execute as @s[tag=!init] at @s run tag @s add init


execute positioned as @s anchored eyes facing entity @p eyes positioned ^ ^ ^2 rotated as @s positioned ^ ^ ^50 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~

execute store result score @s cryptid.random run random value 1..2000



##looking
execute if entity @s[scores={cryptid.lookcounter=1..},tag=!cryptid.currentlylooking,tag=!dig] if entity @p[distance=26..] run scoreboard players set @s cryptid.timer 161
execute if score @s cryptid.timer matches 161 run tag @s add dig
execute if score @s cryptid.timer matches 161 run function cryptid:action/headpeeper/reset

#Repeats if already underground
execute if entity @s[scores={cryptid.lookcounter=1..},tag=dig] if entity @p[distance=26..] run function cryptid:action/headpeeper/reset

##distance
execute if entity @p[distance=50..] if score @s[scores={cryptid.timer=..0},tag=!cryptid.currentlylooking] cryptid.random matches 1..200 run tag @s remove dig

execute if entity @p[distance=0..25] run tag @s remove dig
execute if entity @p[distance=0..25] run scoreboard players set @s cryptid.lookcounter 0


##dig
execute rotated as @s if entity @s[tag=dig] at @s if block ~ ~5 ~ air run tp @s ~ ~-1 ~
execute rotated as @s if entity @s[tag=dig] at @s if block ~ ~5 ~ air run execute positioned ~ ~3 ~ positioned over motion_blocking_no_leaves run particle block{block_state:{Name:red_concrete}} ~ ~-0.2 ~ 1 1 1 0 75
execute rotated as @s if entity @s[tag=dig] at @s if block ~ ~5 ~ air run execute positioned ~ ~3 ~ positioned over motion_blocking_no_leaves run playsound block.stone.break ambient @a[distance=..20] ~ ~ ~ 4 0.6
execute rotated as @s if entity @s[tag=dig] at @s unless block ~ ~ ~ air run tag @s remove breakground

##undig
execute rotated as @s if entity @s[tag=!dig] at @s unless block ~ ~-15 ~ air run tp @s ~ ~1 ~
execute rotated as @s if entity @s[tag=!dig] at @s unless block ~ ~-15 ~ air run execute positioned ~ ~3 ~ positioned over motion_blocking_no_leaves run particle block{block_state:{Name:red_concrete}} ~ ~-0.2 ~ 1 1 1 0 75
execute rotated as @s if entity @s[tag=!dig] at @s unless block ~ ~-15 ~ air run execute positioned ~ ~3 ~ positioned over motion_blocking_no_leaves run playsound block.stone.break ambient @a[distance=..20] ~ ~ ~ 4 0.6
execute rotated as @s if entity @s[tag=!dig,tag=!breakground] at @s if block ~ ~ ~ air run execute positioned ~ ~3 ~ positioned over motion_blocking_no_leaves run function cryptid:action/headpeeper/emerge


##reset looking
#execute if entity @p[distance=10..] run scoreboard players set @s cryptid.lookcounter 0
#execute if entity @p[distance=10..] if score @s[scores={cryptid.timer=..0}] cryptid.random matches 1..70 run tag @s remove cryptid.currentlylooking




## Trigger attack
execute at @s[tag=!hitting,tag=!dig] if block ~ ~-15 ~ air if score @s cryptid.random matches 1..200 if entity @p[distance=0..25] run function cryptid:action/headpeeper/smash
##change head model
execute if entity @s[tag=!dig,tag=!hitting] run item replace entity @s armor.head with potion[custom_model_data=1399]
execute if entity @s[tag=dig] unless block ~ ~2 ~ air run item replace entity @s armor.head with air



##despawn

execute if score @s[scores={cryptid.damagedealt=5..}] cryptid.headpeepersmash matches 24 run function cryptid:events/quietkill
scoreboard players remove @s[tag=hitting] cryptid.timer 1
execute if entity @p[distance=180..] if score @s cryptid.random matches 110..111 run kill @s



##tickcycle
scoreboard players add @s[tag=hitting] cryptid.headpeepersmash 1
execute if score @s[tag=hitting] cryptid.headpeepersmash matches 50.. run scoreboard players set @s cryptid.headpeepersmash 0

execute if score @s cryptid.headpeepersmash matches 19 run playsound minecraft:cryptid.head.scream ambient @a ~ ~ ~ 4 0.1


execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^1 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^2 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^3 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^4 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^5 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^6 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^7 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^8 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^9 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^10 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^11 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^12 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^13 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^14 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^15 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^16 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^17 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^18 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^19 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^20 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^21 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^22 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^23 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^24 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^25 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
execute if score @s cryptid.headpeepersmash matches 19 run execute positioned ^ ^ ^26 positioned ~ ~10 ~ positioned over world_surface run function cryptid:action/headpeeper/smashevent
##track number of hits (im to lazy to make new score)
execute if score @s cryptid.headpeepersmash matches 19 run scoreboard players add @s cryptid.damagedealt 1

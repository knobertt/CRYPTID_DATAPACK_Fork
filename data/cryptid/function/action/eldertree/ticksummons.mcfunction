execute store result score @s cryptid.player.random run random value 1..1000


execute unless score @s cryptid.player.random matches 1..20 run return fail

execute facing entity @e[sort=random,limit=1] eyes positioned ^ ^ ^10 positioned over motion_blocking_no_leaves run function cryptid:action/eldertree/spawnmob

#summon drowned ~ ~2 ~ {Silent:1b, CanBreakDoors:1b,Tags:["cryptid"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1415},count:1}],ArmorDropChances:[0f,0f,0f,0f]}

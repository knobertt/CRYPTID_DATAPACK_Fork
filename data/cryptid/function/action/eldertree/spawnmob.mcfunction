execute store result score @s cryptid.player.random run random value 1..5


particle dust_color_transition{from_color:[0.8,0.24,0.3],to_color:[0.46,0.06,0.02],scale:4} ~ ~1 ~ 0.5 0.8 0.5 1 30


execute if score @s cryptid.player.random matches 1 run summon zombie ~ ~ ~ {Tags:["cryptid.infested"],ArmorItems:[{},{},{},{id:crimson_roots,count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 2 run summon skeleton ~ ~ ~ {Tags:["cryptid.infested"],ArmorItems:[{},{},{},{id:crimson_roots,count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 3 run summon spider ~ ~ ~ {Tags:["cryptid.infested"],ArmorItems:[{},{},{},{id:crimson_roots,count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute if score @s cryptid.player.random matches 4..5 run summon drowned ~ ~ ~ {Tags:["cryptid.infested"],ArmorItems:[{},{},{},{id:crimson_roots,count:1}],ArmorDropChances:[0f,0f,0f,0f]}

execute as @n[tag=cryptid.infested,type=#cryptid:infestable] run function cryptid:action/hostile/hostileinit

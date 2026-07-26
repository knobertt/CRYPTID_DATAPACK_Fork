
execute if score @s cryptid.player.random matches 1 run function cryptid:events/underground/quake1
summon minecraft:armor_stand ~ ~-10 ~ {DisabledSlots:4144959, Invisible:1b, CanBreakDoors:1,vindicatorConversionTime:29381927839812,CustomName:'[{"text":"Elder living bark"}]',PersistenceRequired:1b,Silent:1b,Tags:["cryptid","cryptid.eldertree","cryptid.timer","cryptid.cooldown"],ArmorItems:[{},{},{},{id:potion,components:{"minecraft:custom_model_data":1346},count:1}],ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[type=armor_stand, tag=cryptid.eldertree, tag=!cryptid.markerapplied] run attribute @s generic.scale base set 2
execute as @e[type=armor_stand, tag=cryptid.eldertree, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickeldertree"}


scoreboard players set @e[tag=cryptid.eldertree,type=armor_stand] cryptid.mob.class 2

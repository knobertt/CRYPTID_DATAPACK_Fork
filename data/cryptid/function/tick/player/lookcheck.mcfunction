##Generic
execute as @e[tag=cryptid.lookcount,limit=1,sort=random,distance=..95] run tag @s add activelookcheck
execute anchored eyes facing entity @n[type=armor_stand,tag=activelookcheck,distance=0..295] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.2] run execute as @n[type=armor_stand,tag=activelookcheck,distance=0..295] at @s run function cryptid:tick/player/lookcounter
execute anchored eyes facing entity @n[type=armor_stand,tag=activelookcheck,distance=0..295] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=1.2..] run execute as @n[type=armor_stand,tag=activelookcheck,distance=0..295] at @s run tag @s remove cryptid.currentlylooking

execute anchored eyes facing entity @e[type=zombie,tag=activelookcheck,distance=0..295] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.5] run execute as @e[type=zombie,tag=activelookcheck,distance=0..295] at @s run function cryptid:tick/player/lookcounter
execute anchored eyes facing entity @e[type=zombie,tag=activelookcheck,distance=0..295] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=1.5..] run execute as @e[type=zombie,tag=activelookcheck,distance=0..295] at @s run tag @s remove cryptid.currentlylooking
execute as @e[tag=cryptid.lookcount,tag=activelookcheck] run tag @s remove activelookcheck



## Head peeper
#headling *independant curentlylooking tag
execute as @e[tag=cryptid.headling,limit=1,sort=random,distance=..95,tag=!cryptid.currentlylooking] run tag @s add activelookcheck
execute anchored eyes facing entity @n[type=armor_stand,tag=activelookcheck,distance=0..295,tag=cryptid.headling] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.9] run execute as @n[type=armor_stand,tag=activelookcheck,distance=0..295] at @s run function cryptid:tick/player/lookcounter
execute as @e[tag=cryptid.headling,tag=activelookcheck] run tag @s remove activelookcheck
#adult

execute as @e[tag=cryptid.headpeeper,limit=1,sort=random,distance=..95] run tag @s add activelookcheck
execute anchored eyes facing entity @n[type=armor_stand,tag=activelookcheck,distance=0..295,tag=cryptid.headpeeper] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.2] run execute as @n[type=armor_stand,tag=activelookcheck,distance=0..295] at @s run function cryptid:tick/player/lookcounter
execute anchored eyes facing entity @n[type=armor_stand,tag=activelookcheck,distance=0..295,tag=cryptid.headpeeper,tag=cryptid.currentlylooking] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=1.2..] run execute as @n[type=armor_stand,tag=activelookcheck,distance=0..295] at @s run tag @s remove cryptid.currentlylooking
execute as @e[tag=cryptid.headpeeper,tag=activelookcheck] run tag @s remove activelookcheck


##Hand
execute as @e[tag=cryptid.hand,limit=1,sort=random,distance=..30] run tag @s add activelookcheck
execute anchored eyes facing entity @n[type=vindicator,tag=cryptid.hand,tag=activelookcheck,distance=0..30] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.4] run function cryptid:action/hand/looktest
execute as @e[tag=cryptid.hand,tag=activelookcheck] run tag @s remove activelookcheck

##fram
data merge entity @s[tag=!init] {item:{id:potion,components:{"minecraft:custom_model_data":1388},count:1},teleport_duration:5}
execute as @e[type=item_display, sort=nearest,limit=1, tag=boss.shockwave,tag=!init] run execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get .explod cryptid.anitimer
#execute store result score @s[tag=!init] cryptid.random run random value 1..2
tag @s[tag=!init] add init


## model animations
execute if score @s[tag=left] cryptid.timer matches -20..0 run tp @s ~ ~ ~ ~1 ~
execute if score @s[tag=left] cryptid.timer matches -65..-21 run tp @s ~ ~ ~ ~1 ~
execute if score @s[tag=left] cryptid.timer matches -90..-66 run tp @s ~ ~ ~ ~5 ~

execute if score @s[tag=right] cryptid.timer matches -20..0 run tp @s ~ ~ ~ ~-1 ~
execute if score @s[tag=right] cryptid.timer matches -65..-21 run tp @s ~ ~ ~ ~-1 ~
execute if score @s[tag=right] cryptid.timer matches -90..-66 run tp @s ~ ~ ~ ~-5 ~


##fx and damage near core
execute if score @s cryptid.timer matches -3 run particle minecraft:explosion ~ ~-5 ~ 9 1 9 0.1 200
execute if score @s cryptid.timer matches -50 as @a[distance=0..40] run playsound minecraft:entity.warden.sonic_charge ambient @a ~ ~ ~ 5 0.1
execute if score @s cryptid.timer matches -92..-70 as @a[distance=0..6] run damage @s 1 cryptid:absorb by @s
execute if score @s cryptid.timer matches -92..-70 as @a[distance=0..6] run tag @s add cryptid.fearscreen

execute if score @s cryptid.timer matches -130..-100 as @a[distance=0..45] run tag @s add cryptid.glitchscreen


## pull
execute if score @s cryptid.timer matches -45 as @e[distance=0..40,tag=!bosscryptid] run effect give @s levitation 1 2 true
execute if score @s cryptid.timer matches -85..-68 as @a[distance=11..30] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.03 ^-1 run function cryptid:boss/enchantexplosion/spawngeneralkb
execute if score @s cryptid.timer matches -90..-68 as @a[distance=0..11] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.04 ^-1.1 run function cryptid:boss/enchantexplosion/spawngeneralkb


##half launch
execute if score @s cryptid.timer matches -95..-90 as @a[distance=6..30] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.05 ^0.9 run function cryptid:boss/enchantexplosion/spawngeneralkb
#execute if score @s cryptid.timer matches -93 as @a[distance=0..30] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.01 ^ run function cryptid:boss/enchantexplosion/spawngeneralkb

# up and out launch
execute if score @s cryptid.timer matches -91 as @a[distance=0..5] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.1 ^ run function cryptid:boss/enchantexplosion/spawngeneralkb
execute if score @s cryptid.timer matches -95..-93 as @a[distance=0..30] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.07 ^0.95 run function cryptid:boss/enchantexplosion/spawngeneralkb




## End
execute if score @s cryptid.timer matches ..-100 at @s run tp @s ~ ~-0.2 ~
execute if score @s cryptid.timer matches ..-110 at @s run tp @s ~ ~-0.2 ~
execute if score @s cryptid.timer matches ..-120 at @s run tp @s ~ ~-0.2 ~

execute if score @s cryptid.timer matches -142 run particle dust_color_transition{from_color:[0.88,0.12,0.31],to_color:[0.43,0.09,0.05],scale:4.0} ~ ~4 ~ 1.4 1.4 1.4 100 800
execute if score @s cryptid.timer matches -142 run kill @s
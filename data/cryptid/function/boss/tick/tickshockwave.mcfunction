##fram
data merge entity @s[tag=!init] {item:{id:potion,components:{"minecraft:custom_model_data":1388},count:1},teleport_duration:5}
execute as @e[type=item_display, sort=nearest,limit=1, tag=boss.shockwave,tag=!init] run execute store result entity @s item.components."minecraft:potion_contents".custom_color int 1 run scoreboard players get .explod cryptid.anitimer
#execute store result score @s[tag=!init] cryptid.random run random value 1..2


tag @s[tag=!init] add init

execute if score @s[tag=left] cryptid.timer matches -20..0 run tp @s ~ ~ ~ ~1 ~
execute if score @s[tag=left] cryptid.timer matches -65..-21 run tp @s ~ ~ ~ ~1 ~
execute if score @s[tag=left] cryptid.timer matches -90..-66 run tp @s ~ ~ ~ ~5 ~

execute if score @s[tag=right] cryptid.timer matches -20..0 run tp @s ~ ~ ~ ~-1 ~
execute if score @s[tag=right] cryptid.timer matches -65..-21 run tp @s ~ ~ ~ ~-1 ~
execute if score @s[tag=right] cryptid.timer matches -90..-66 run tp @s ~ ~ ~ ~-5 ~


execute if score @s cryptid.timer matches -80..-68 as @a[distance=0..30] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.03 ^-1 run function cryptid:boss/enchantexplosion/spawnshockwavekb

execute if score @s cryptid.timer matches -120..-90 as @a[distance=0..30] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.06 ^0.5 run function cryptid:boss/enchantexplosion/spawnshockwavekb


execute if score @s cryptid.timer matches -162 run particle dust_color_transition{from_color:[0.88,0.12,0.31],to_color:[0.43,0.09,0.05],scale:4.0} ~ ~4 ~ 1.4 1.4 1.4 100 800
execute if score @s cryptid.timer matches -162 run kill @s
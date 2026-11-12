summon item_display ~ ~ ~ {Tags:["bosscryptid","boss.shockwave","left"],NoGravity:1b,item:{id:air,components:{"minecraft:custom_model_data":1388},count:1},item_display:"head",teleport_duration:0,transformation:{translation:[0.0,4.5,0.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1]},view_range:2}
summon item_display ~ ~ ~ {Tags:["bosscryptid","boss.shockwave","right"],NoGravity:1b,item:{id:air,components:{"minecraft:custom_model_data":1388},count:1},item_display:"head",teleport_duration:0,transformation:{translation:[0.0,4.5,0.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1],scale:[1,1,1]},view_range:2}










particle minecraft:explosion ~ ~ ~ 4 4 4 0.1 200
playsound minecraft:entity.warden.sonic_boom ambient @a ~ ~ ~ 5 0.1
particle dust_color_transition{from_color:[0.88,0.12,0.31],to_color:[0.43,0.09,0.05],scale:4.0} ~ ~1 ~ 4 4 4 100 600


execute as @a[distance=0..45] at @s run damage @s 5 cryptid:truedamage

execute as @a[distance=0..8] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.03 ^0.05 run function cryptid:boss/enchantexplosion/spawngeneralkb
execute as @a[distance=0..8] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.03 ^0.05 run function cryptid:boss/enchantexplosion/spawngeneralkb
execute as @a[distance=0..8] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.05 ^0.05 run function cryptid:boss/enchantexplosion/spawngeneralkb

execute as @a[distance=0..15] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.01 ^0.04 run function cryptid:boss/enchantexplosion/spawngeneralkb
execute as @a[distance=0..15] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.01 ^0.04 run function cryptid:boss/enchantexplosion/spawngeneralkb

execute as @a[distance=0..30] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.03 ^0.04 run function cryptid:boss/enchantexplosion/spawngeneralkb
execute as @a[distance=0..40] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=boss.shockwave] feet rotated ~ 0 positioned ^ ^-0.03 ^0.04 run function cryptid:boss/enchantexplosion/spawngeneralkb
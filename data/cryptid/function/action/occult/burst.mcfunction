particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.59,0.07,0.03],scale:4} ~ ~1 ~ 2 2 2 0 2000
effect give @s minecraft:speed 3 1 true
playsound minecraft:cryptid.hand.jump ambient @a[distance=0..20]

execute as @n[type=#cryptid:infestable,distance=..15,tag=!cryptid] at @s run particle dust_color_transition{from_color:[0.0,0.0,0.0],to_color:[0.59,0.07,0.03],scale:4} ~ ~1 ~ 0.3 2 0.3 0 100
execute as @n[type=#cryptid:infestable,distance=..15,tag=!cryptid] run function cryptid:action/hostile/advancecorrupt


effect give @a[distance=0..8] minecraft:blindness 3 1 true
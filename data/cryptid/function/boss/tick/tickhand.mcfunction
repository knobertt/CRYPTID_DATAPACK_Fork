execute as @s[tag=!init] at @s run tp @s ~ 65 ~ facing entity @n[tag=boss.core2] eyes
execute as @s[tag=!init] at @s run data merge entity @s {teleport_duration:2}
execute as @s[tag=!init] at @s run tag @s add init



execute if score @s cryptid.timer matches ..-10 run damage @p[distance=0..3] 7 cryptid:chomp by @s from @s


execute if score @s cryptid.timer matches ..-70 run tp @s ~ ~-200 ~
execute if score @s cryptid.timer matches ..-70 run kill @s


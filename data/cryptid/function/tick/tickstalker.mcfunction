execute unless score .globaltime cryptid.time matches 1..14000 if entity @s[nbt={Health:100f}] run tp @s ~ ~ ~ facing entity @p
execute unless score .globaltime cryptid.time matches 1..14000 run execute if score .heartbeat cryptid.globalevent matches 1 unless entity @s[tag=chained] if entity @s[nbt={Health:100f}] run function cryptid:action/stalker/movestep

effect give @s minecraft:invisibility infinite 20 true
effect give @s minecraft:regeneration infinite 4 true


execute store result score @s cryptid.player.random run random value 1..120000


execute if score @s cryptid.player.random matches 300 run function cryptid:events/quietkill


attribute @s minecraft:generic.knockback_resistance base set 120
attribute @s minecraft:generic.attack_knockback base set 2

data merge entity @s {NoAI:1b}
execute if entity @s[nbt={Health:100f}] if score .globaltime cryptid.time matches 1..14000 run data merge entity @s {NoAI:1b}

item replace entity @s armor.head with potion[minecraft:custom_model_data=1317]
execute unless score .globaltime cryptid.time matches 1..14000 if entity @s[nbt={Health:100f}] run item replace entity @s armor.head with potion[minecraft:custom_model_data=1303]


effect give @s minecraft:slowness infinite 255 true



execute if block ~ ~-1 ~ #cryptid:nonsolid run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #cryptid:nonsolid run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #cryptid:nonsolid run tp @s ~ ~-1 ~
execute if block ~ ~-1 ~ #cryptid:nonsolid run tp @s ~ ~-1 ~


##kill
execute if block ~ ~ ~ lava run function cryptid:events/quietkill
execute if block ~ ~-1 ~ magma_block run function cryptid:events/quietkill
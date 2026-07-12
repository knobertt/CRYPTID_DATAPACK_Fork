
execute as @p at @s run tp @s ^ ^ ^2 facing entity @n[tag=cryptid.pinhead] eyes
tag @p add cryptid.fakescreen
playsound minecraft:cryptid.jumpscare1 ambient @p ~ ~ ~ 10 1
scoreboard players remove @p cryptid.player.harmony 5000
weather rain
effect give @p minecraft:wither 6 6 true
effect give @p blindness 6 6 true
tag @s add killmark
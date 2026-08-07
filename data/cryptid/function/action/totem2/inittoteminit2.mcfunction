summon item_display ~ ~ ~ {Tags:["cryptid.totem2circle"],item:{id:potion,components:{"minecraft:custom_model_data":1417},count:1},item_display:"head",view_range:15,teleport_duration:6}

execute as @e[type=minecraft:item_display, tag=cryptid.totem2circle] at @s[tag=!init] at @s run tag @s add init



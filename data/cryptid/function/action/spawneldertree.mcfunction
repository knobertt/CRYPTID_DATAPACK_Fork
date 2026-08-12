execute store result score @s cryptid.player.random run random value 1..3

execute align xzy run summon minecraft:item_display ~0.5 ~-10 ~0.5 {CustomName:'{"color":"dark_red","text":"Elder Wood Heart"}',Tags:["cryptid","cryptid.eldertree","cryptid.timer","cryptid.cooldown",cryptid.heart],item:{id:potion,components:{"minecraft:custom_model_data":1418},count:1},item_display:"head",view_range:2,width:20,height:20,teleport_duration:5}


execute as @e[type=item_display, tag=cryptid.eldertree, tag=!cryptid.markerapplied] at @s run function cryptid:action/general/spawntickmarker {"name":"tickeldertree"}

scoreboard players set @e[tag=cryptid.eldertree,type=item_display] cryptid.tree.health 5

scoreboard players set @e[tag=cryptid.eldertree,type=item_display] cryptid.mob.class 2

tag @s remove hurt
playsound block.wood.break master @a ~ ~ ~ 5 0.4
scoreboard players remove @s cryptid.tree.health 1
particle block{block_state:{Name:red_concrete}} ~ ~ ~ 0.2 3 0.2 2 500
execute positioned over motion_blocking_no_leaves positioned ~ ~0.4 ~ run function cryptid:action/general/explodekb
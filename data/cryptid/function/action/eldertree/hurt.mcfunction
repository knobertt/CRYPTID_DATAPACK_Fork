tag @s remove hurt

execute if score @s cryptid.damagedealt matches 1.. run return fail
scoreboard players set @s cryptid.damagedealt 225
scoreboard players operation @s cryptid.damagedealt /= @s cryptid.tree.health


playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 5 0.4
scoreboard players remove @s cryptid.tree.health 1
particle block{block_state:{Name:red_concrete}} ~ ~4 ~ 0.5 3 0.5 2 500
execute at @s positioned ~ ~1.1 ~ run function cryptid:action/general/explodekb
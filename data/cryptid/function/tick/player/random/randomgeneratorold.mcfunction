



























































































######influences

##############base set 50k, or default mode
scoreboard players set @s cryptid.randomeventcap 10000

##############cryptid first 3 days influence
execute if score .global cryptid.day matches 0..3 run scoreboard players set @s cryptid.randomeventcap 150000

##############cryptid easy mode influence
execute if score .global cryptid.challenge matches -1 run scoreboard players set @s cryptid.randomeventcap 18000

##############cryptid manic mode influence...
execute if score .global cryptid.challenge matches 2 run scoreboard players set @s cryptid.randomeventcap 7800


########################################################now apply influences to lower it

##############World Fury influence... 
scoreboard players operation .buffer cryptid.randomeventcap = .global cryptid.world.fury
##lock past 3000 note, anything above is extra
execute if score .global cryptid.world.fury matches 3000.. run scoreboard players set .buffer cryptid.randomeventcap 3000
##Math (Multiply by 3)
scoreboard players set .mult cryptid.randomeventcap 2
scoreboard players operation .buffer cryptid.randomeventcap *= .mult cryptid.randomeventcap
scoreboard players operation @s cryptid.randomeventcap -= .buffer cryptid.randomeventcap

#############cryptid harmony influence
scoreboard players operation .buffer cryptid.randomeventcap = @s cryptid.player.harmony
scoreboard players set .add cryptid.randomeventcap -28000
scoreboard players set .div cryptid.randomeventcap -12
scoreboard players operation .buffer cryptid.randomeventcap += .add cryptid.randomeventcap
scoreboard players operation .buffer cryptid.randomeventcap /= .div cryptid.randomeventcap
scoreboard players operation @s cryptid.randomeventcap -= .buffer cryptid.randomeventcap

############night influence
scoreboard players set .buffer cryptid.randomeventcap 1
execute if score .globaltime cryptid.time matches 13000..24000 run scoreboard players set .buffer cryptid.randomeventcap 4
scoreboard players operation @s cryptid.randomeventcap /= .buffer cryptid.randomeventcap


#####################trump card override, if in dimension

execute if dimension cryptid:below run scoreboard players set @s cryptid.randomeventcap 1400


##############cryptid player influence
scoreboard players set .global cryptid.totalplayers 0
execute as @a run scoreboard players add .global cryptid.totalplayers 1

scoreboard players operation .mult cryptid.randomeventcap = .global cryptid.totalplayers
scoreboard players operation @s cryptid.randomeventcap *= .mult cryptid.randomeventcap


######################################################### hard limit to 500
execute if score @s cryptid.randomeventcap matches ..500 run scoreboard players set @s cryptid.randomeventcap 500



###end influences
##set to storage
execute store result storage cryptid:randomevent highnumber.x int 1 run scoreboard players get @s cryptid.randomeventcap

#######generate random with macro 

function cryptid:tick/player/random/randommacro with storage cryptid:randomevent highnumber

#######execute events

execute as @s at @s run function cryptid:events/eventhandler/eventcheck

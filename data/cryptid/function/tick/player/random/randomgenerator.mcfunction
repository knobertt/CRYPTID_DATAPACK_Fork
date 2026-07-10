######influences

##############base set 70m, or default mode variables
scoreboard players set .numerator cryptid.randomeventcap 70000000
scoreboard players set .difmulti cryptid.randomeventcap 5

##############cryptid first 3 days influence
execute if score .global cryptid.day matches 0..3 run scoreboard players set .numerator cryptid.randomeventcap 120000000

##############cryptid easy mode influence
execute if score .global cryptid.challenge matches -1 run scoreboard players set .numerator cryptid.randomeventcap 110000000
execute if score .global cryptid.challenge matches -1 run scoreboard players set .difmulti cryptid.randomeventcap 4

##############cryptid manic mode influence...
execute if score .global cryptid.challenge matches 2 run scoreboard players set .difmulti cryptid.randomeventcap 15


########################################################now apply influences to create cap

#############cryptid harmony buffer calculation
scoreboard players operation .harm_buf cryptid.randomeventcap = @s cryptid.player.harmony

##Left Segment (Accelerated rates for extreme negative harmony)
execute if score @s cryptid.player.harmony matches ..-10001 run scoreboard players operation .temp cryptid.randomeventcap = @s cryptid.player.harmony
execute if score @s cryptid.player.harmony matches ..-10001 run scoreboard players add .temp cryptid.randomeventcap 10000
execute if score @s cryptid.player.harmony matches ..-10001 run scoreboard players set .constant cryptid.randomeventcap 2
execute if score @s cryptid.player.harmony matches ..-10001 run scoreboard players operation .temp cryptid.randomeventcap *= .constant cryptid.randomeventcap
execute if score @s cryptid.player.harmony matches ..-10001 run scoreboard players set .harm_buf cryptid.randomeventcap -10000
execute if score @s cryptid.player.harmony matches ..-10001 run scoreboard players operation .harm_buf cryptid.randomeventcap += .temp cryptid.randomeventcap

##Right Segment (Accelerated rates for extreme positive harmony)
execute if score @s cryptid.player.harmony matches 10001.. run scoreboard players operation .temp cryptid.randomeventcap = @s cryptid.player.harmony
execute if score @s cryptid.player.harmony matches 10001.. run scoreboard players remove .temp cryptid.randomeventcap 10000
execute if score @s cryptid.player.harmony matches 10001.. run scoreboard players set .constant cryptid.randomeventcap 3
execute if score @s cryptid.player.harmony matches 10001.. run scoreboard players operation .temp cryptid.randomeventcap *= .constant cryptid.randomeventcap
execute if score @s cryptid.player.harmony matches 10001.. run scoreboard players set .harm_buf cryptid.randomeventcap 10000
execute if score @s cryptid.player.harmony matches 10001.. run scoreboard players operation .harm_buf cryptid.randomeventcap += .temp cryptid.randomeventcap

##Apply challenge multiplier to harmony buffer
scoreboard players operation .harm_buf cryptid.randomeventcap *= .difmulti cryptid.randomeventcap

##############World Fury & Denominator calculation... 
##Clamp Fury to 3000 max
scoreboard players operation .fury_clamped cryptid.randomeventcap = .global cryptid.world.fury
execute if score .fury_clamped cryptid.randomeventcap matches 3001.. run scoreboard players set .fury_clamped cryptid.randomeventcap 3000

##Calculate Denominator (10000 + (fury * 10) - (harmony_buffer / 10))
scoreboard players set .denom cryptid.randomeventcap 10000
scoreboard players operation .temp cryptid.randomeventcap = .fury_clamped cryptid.randomeventcap
scoreboard players set .constant cryptid.randomeventcap 10
scoreboard players operation .temp cryptid.randomeventcap *= .constant cryptid.randomeventcap
scoreboard players operation .denom cryptid.randomeventcap += .temp cryptid.randomeventcap

scoreboard players operation .temp cryptid.randomeventcap = .harm_buf cryptid.randomeventcap
scoreboard players set .constant cryptid.randomeventcap 10
scoreboard players operation .temp cryptid.randomeventcap /= .constant cryptid.randomeventcap
scoreboard players operation .denom cryptid.randomeventcap -= .temp cryptid.randomeventcap

##Clamp bottom denominator to 6000
execute if score .denom cryptid.randomeventcap matches ..5999 run scoreboard players set .denom cryptid.randomeventcap 6000

##Final Base Cap Calculation (Numerator / Denominator)
scoreboard players operation @s cryptid.randomeventcap = .numerator cryptid.randomeventcap
scoreboard players operation @s cryptid.randomeventcap /= .denom cryptid.randomeventcap

############night influence
execute if score .globaltime cryptid.time matches 13000..24000 run scoreboard players set .constant cryptid.randomeventcap 2
execute if score .globaltime cryptid.time matches 13000..24000 run scoreboard players operation @s cryptid.randomeventcap /= .constant cryptid.randomeventcap

##############cryptid player influence
scoreboard players set .global cryptid.totalplayers 0
execute as @a run scoreboard players add .global cryptid.totalplayers 1

##If players > 1: cap = (cap * (players * 9)) / 10
execute if score .global cryptid.totalplayers matches 2.. run scoreboard players operation @s cryptid.randomeventcap *= .global cryptid.totalplayers
execute if score .global cryptid.totalplayers matches 2.. run scoreboard players set .constant cryptid.randomeventcap 9
execute if score .global cryptid.totalplayers matches 2.. run scoreboard players operation @s cryptid.randomeventcap *= .constant cryptid.randomeventcap
execute if score .global cryptid.totalplayers matches 2.. run scoreboard players set .constant cryptid.randomeventcap 10
execute if score .global cryptid.totalplayers matches 2.. run scoreboard players operation @s cryptid.randomeventcap /= .constant cryptid.randomeventcap

#####################trump card override, if in dimension
execute if dimension cryptid:below run scoreboard players set @s cryptid.randomeventcap 1400

######################################################### hard limit (<= 750 formula)
scoreboard players set .cap_buffer cryptid.randomeventcap 750
scoreboard players operation .cap_buffer cryptid.randomeventcap -= @s cryptid.randomeventcap

##If cap was 749 or less, apply the dampening formula
execute if score .cap_buffer cryptid.randomeventcap matches 1.. run scoreboard players set .constant cryptid.randomeventcap 5
execute if score .cap_buffer cryptid.randomeventcap matches 1.. run scoreboard players operation .cap_buffer cryptid.randomeventcap /= .constant cryptid.randomeventcap
execute if score @s cryptid.randomeventcap matches ..749 run scoreboard players set @s cryptid.randomeventcap 750
execute if score .cap_buffer cryptid.randomeventcap matches 1.. run scoreboard players operation @s cryptid.randomeventcap -= .cap_buffer cryptid.randomeventcap

###end influences
##set to storage
execute store result storage cryptid:randomevent highnumber.x int 1 run scoreboard players get @s cryptid.randomeventcap

#######generate random with macro 

function cryptid:tick/player/random/randommacro with storage cryptid:randomevent highnumber

#######execute events

execute as @s at @s run function cryptid:events/eventhandler/eventcheck

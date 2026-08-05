scoreboard players operation @s cryptid.player.flux = @s cryptid.player.flux.base
scoreboard players operation @s cryptid.player.flux += @s cryptid.player.flux.modifier

#reset flux modifier
execute if score .heartbeat cryptid.globalevent matches 3 run scoreboard players reset @s cryptid.player.flux.modifier

scoreboard players operation @s[scores={cryptid.player.harmony=-20000..20000}] cryptid.player.harmony += @s cryptid.player.flux


execute if score @s cryptid.player.harmony > @s cryptid.player.maxharmony run scoreboard players operation @s cryptid.player.harmony = @s cryptid.player.maxharmony

execute if score @s cryptid.player.harmony < @s cryptid.player.minharmony run scoreboard players operation @s cryptid.player.harmony = @s cryptid.player.minharmony


execute if score .global cryptid.challenge matches 2 run scoreboard players set @s[scores={cryptid.player.harmony=0..}] cryptid.player.harmony 0
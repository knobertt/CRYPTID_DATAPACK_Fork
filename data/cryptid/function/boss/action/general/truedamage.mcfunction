execute if score @s cryptid.truedamage.immunity matches -2147483648..2147483647 run return fail
scoreboard players set @s cryptid.truedamage.immunity 6
$damage @s $(damage) cryptid:truedamage
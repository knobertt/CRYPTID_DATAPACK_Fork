## infested become corupt
execute as @s[tag=cryptid.infested,tag=!cryptid.evilmob, tag=!cryptid.brainparasite, tag=!cryptid, type=#cryptid:infestable] at @s run function cryptid:action/hostile/hostileinit
## normal become infested 
execute as @s[tag=!cryptid,tag=!cryptid.evilmob, tag=!cryptid.brainparasite, tag=!cryptid.infested, type=#cryptid:infestable] at @s run function cryptid:action/hostile/infestinit

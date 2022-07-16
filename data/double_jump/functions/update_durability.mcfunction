execute store result score damage jetpack.vars run data get entity @s Inventory[{Slot: 102b}].tag.Fuel
execute store result score max_damage jetpack.vars run data get entity @s Inventory[{Slot: 102b}].tag.MaxFuel
execute store result storage jetpack fuel int 1 run scoreboard players remove damage jetpack.vars 1
scoreboard players operation damage jetpack.vars -= max_damage jetpack.vars
scoreboard players operation damage jetpack.vars *= #-240 jetpack.vars
scoreboard players operation damage jetpack.vars /= max_damage jetpack.vars
scoreboard players operation damage jetpack.vars += #-240 jetpack.vars
scoreboard players operation damage jetpack.vars *= #-1 jetpack.vars
item modify entity @s armor.chest double_jump:update_durability
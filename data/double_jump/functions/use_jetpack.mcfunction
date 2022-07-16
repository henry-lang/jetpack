effect give @s levitation 1 10 true
function double_jump:update_durability
execute at @s run particle campfire_cosy_smoke ~ ~.5 ~ .05 .05 .05 .012 2 normal @a
execute at @s run particle flame ~ ~.5 ~ .05 .05 .05 .04 1 normal @a
execute at @s run playsound entity.ghast.shoot master @a ~ ~ ~ 0.5 0
execute store result score @s jetpack.title run data get entity @s Inventory[{Slot: 102b}].tag.Fuel
scoreboard players operation @s jetpack.title *= #100 jetpack.vars
scoreboard players operation @s jetpack.title /= max_damage jetpack.vars
title @s[scores={jetpack.title=0..15}] actionbar [{"text": "Fuel: ", "bold": true, "color": "red"}, {"score": {"name":"@s", "objective": "jetpack.title"}, "bold": true, "color": "red"}, {"text": "%", "bold": true, "color":"red"}]
title @s[scores={jetpack.title=16..49}] actionbar [{"text": "Fuel: ", "bold": true, "color": "yellow"}, {"score": {"name":"@s", "objective": "jetpack.title"}, "bold": true, "color": "yellow"}, {"text": "%", "bold": true, "color":"yellow"}]
title @s[scores={jetpack.title=50..100}] actionbar [{"text": "Fuel: ", "bold": true, "color": "green"}, {"score": {"name":"@s", "objective": "jetpack.title"}, "bold": true, "color": "green"}, {"text": "%", "bold": true, "color":"green"}]
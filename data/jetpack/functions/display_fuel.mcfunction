execute store result score @s jetpack.title run data get entity @s Inventory[{Slot: 102b}].tag.Fuel
scoreboard players operation @s jetpack.title *= #100 jetpack.vars
scoreboard players operation @s jetpack.title /= max_damage jetpack.vars
title @s[scores={jetpack.title=0..15}] actionbar [{"text": "Fuel: ", "bold": true, "color": "red"}, {"score": {"name":"@s", "objective": "jetpack.title"}, "bold": true, "color": "red"}, {"text": "%", "bold": true, "color":"red"}]
title @s[scores={jetpack.title=16..49}] actionbar [{"text": "Fuel: ", "bold": true, "color": "yellow"}, {"score": {"name":"@s", "objective": "jetpack.title"}, "bold": true, "color": "yellow"}, {"text": "%", "bold": true, "color":"yellow"}]
title @s[scores={jetpack.title=50..100}] actionbar [{"text": "Fuel: ", "bold": true, "color": "green"}, {"score": {"name":"@s", "objective": "jetpack.title"}, "bold": true, "color": "green"}, {"text": "%", "bold": true, "color":"green"}]
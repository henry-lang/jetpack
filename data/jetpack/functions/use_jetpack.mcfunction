effect give @s levitation 1 10 true
function jetpack:update_durability
execute at @s run particle campfire_cosy_smoke ~ ~.5 ~ .05 .05 .05 .012 2 normal @a
execute at @s run particle flame ~ ~.5 ~ .05 .05 .05 .04 1 normal @a
execute at @s run playsound entity.ghast.shoot master @a ~ ~ ~ 0.5 0
function jetpack:display_fuel
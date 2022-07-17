execute store result storage jetpack max_fuel int 1 run data get entity @s Item.tag.MaxFuel
data modify entity @s Item.tag.Fuel set from storage jetpack max_fuel
data modify entity @s Item.tag.Damage set value 0
playsound entity.generic.drink master @a ~ ~ ~ 0.5 0
kill @e[type=item,nbt={Item: {Count: 1b, id: "minecraft:gunpowder"}},distance=..1]
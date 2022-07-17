execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{Inventory: [{Slot: 102b, tag: {Fuel: 0}}]},nbt={OnGround: false, Inventory: [{Slot: 102b, id: "minecraft:iron_chestplate", tag: {Tags: ["jetpack"]}}]},scores={jetpack_sneaking=1}] run function jetpack:use_jetpack
effect clear @a[scores={jetpack_sneaking=0}] levitation
scoreboard players set @a jetpack_sneaking 0

execute as @e[type=item,nbt={Item: {id: "minecraft:iron_chestplate"}}] at @s if entity @e[type=item,nbt={Item: {Count: 1b, id: "minecraft:gunpowder"}},distance=..1] run function jetpack:refuel_jetpack
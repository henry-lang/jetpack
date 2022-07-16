#execute as @a[nbt={OnGround: true}] run scoreboard players set @s double_jump_shift 0
#effect clear @a[nbt={ActiveEffects: [{Id: 25, Duration: 17}]}] levitation
#tellraw @a [{"text": "Score: "}, {"score": {"name":"henrylang", "objective":"double_jump_shift"}}]

#effect give @a[scores={double_jump_shift=1}] levitation 1 30 true
#effect give @a[scores={double_jump_shift=1}] minecraft:jump_boost 3 255 true
#execute as @a[scores={double_jump_shift=1}] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ .25 .25 .25 .012 10 force @a
#execute as @a[scores={double_jump_shift=1}] at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 0.5 2

execute as @a[gamemode=!creative,gamemode=!spectator,nbt=!{Inventory: [{Slot: 102b, tag: {Fuel: 0}}]},nbt={OnGround: false, Inventory: [{Slot: 102b, id: "minecraft:iron_chestplate", tag: {Tags: ["jetpack"]}}]},scores={jetpack_sneaking=1}] run function double_jump:use_jetpack
effect clear @a[scores={jetpack_sneaking=0}] levitation
scoreboard players set @a jetpack_sneaking 0
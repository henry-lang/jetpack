recipe take @s double_jump:jetpack
advancement revoke @s only double_jump:jetpack
give @s minecraft:iron_chestplate{Fuel: 10000, MaxFuel: 10000, display: {Name: '[{"text":"Jetpack","italic":false}]'}, Tags: ["jetpack"], HideFlags: 2, AttributeModifiers: [{AttributeName: "generic.armor", Name: "generic.armor", Slot: "chest", Amount: 0, Operation: 0, UUID: [I; 1088373337, 1062846181, 1048760143, 1737469711]}]} 1
clear @s minecraft:knowledge_book
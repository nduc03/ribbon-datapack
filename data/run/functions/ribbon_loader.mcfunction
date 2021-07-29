execute as @a[nbt={Inventory: [{id: "minecraft:knowledge_book"}]}] run function run:get_ribbon
execute as @a[nbt={Inventory: [{id: "minecraft:shears", tag: {CustomModelData: 11}}]}] unless entity @s[nbt={Inventory: [{id: "minecraft:shears", Slot: 103b}]}] run function run:retrieve_ribbon
execute as @a[nbt={Inventory: [{id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 11}}]}] if score @s right_click matches 1..10 run function run:wear_ribbon
execute as @a if score @s right_click matches 1..10 run scoreboard players reset @s right_click
execute as @a if score @s stopsound matches 1..10 run stopsound @a * entity.item.pickup
execute as SiebenSeiso run effect give @s regeneration 10 0 true
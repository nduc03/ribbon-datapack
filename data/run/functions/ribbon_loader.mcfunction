execute as @a[nbt={Inventory: [{id: "minecraft:knowledge_book"}]}] run function run:get_ribbon
execute as @a[nbt={Inventory: [{id: "minecraft:shears", tag: {CustomModelData: 11}}]}] unless entity @s[nbt={Inventory: [{id: "minecraft:shears", Slot: 103b}]}] run function run:retrieve_ribbon
execute as @a[nbt={Inventory: [{id: "minecraft:carrot_on_a_stick", tag: {CustomModelData: 11}}]}] if score @s right_click matches 1..10 run function run:wear_ribbon
execute as @a if score @s right_click matches 1..10 run scoreboard players reset @s right_click
execute as @a if score @s stopsound matches 1..10 run stopsound @a * entity.item.pickup
execute as @a if entity @s[nbt={Inventory: [{id: "minecraft:shears", Slot: 103b, tag: {CustomModelData: 11}}]}] unless entity @s[nbt={ActiveEffects: [{Id: 21b}]}] run effect give @s health_boost 999999 0 true
execute as @a unless entity @s[nbt={Inventory: [{id: "minecraft:shears", Slot: 103b, tag: {CustomModelData: 11}}]}] run effect clear @s health_boost
execute as @a[scores={login=1..10}] run tellraw @s [{"text":"Welcome back ","color":"gold"},{"selector":"@s","bold":true,"color":"dark_green"},{"text":"!","color":"gold"}]
execute as @a[scores={login=1..10}] run scoreboard players reset @s login
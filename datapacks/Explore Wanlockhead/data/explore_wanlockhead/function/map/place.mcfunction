# Keep only one named map and reserve hotbar slot 9 for it.
clear @s minecraft:paper[minecraft:custom_name={text:'{"text":"Wanlockhead Map"}'}]
clear @s minecraft:paper[minecraft:custom_name={text:'Wanlockhead Map'}]
item replace entity @s hotbar.8 with minecraft:paper[minecraft:custom_name={text:'Wanlockhead Map'},minecraft:custom_data={wanlockhead_map:1b},minecraft:max_stack_size=1,minecraft:lock={mode:'lock_in_slot'}]
tag @s add wanlockhead_map_owner

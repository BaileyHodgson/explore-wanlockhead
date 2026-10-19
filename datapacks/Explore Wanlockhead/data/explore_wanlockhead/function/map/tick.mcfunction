# Migrate players who already received the map before slot enforcement was added.
execute as @a[scores={mu_001_state=1..}] unless entity @s[tag=wanlockhead_map_owner] run tag @s add wanlockhead_map_owner

# Remove dropped copies and restore the unique map to hotbar slot 9.
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{wanlockhead_map:1b}}}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_name":{text:'{"text":"Wanlockhead Map"}'}}}}] run kill @s
execute as @a[tag=wanlockhead_map_owner] unless items entity @s hotbar.8 minecraft:paper[minecraft:custom_name={text:'Wanlockhead Map'},minecraft:custom_data={wanlockhead_map:1b}] run function explore_wanlockhead:map/place

# Show the map title while matching paper is held in either hand.
execute as @a unless entity @s[tag=wanlockhead_map_title] if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_name={text:'Wanlockhead Map'}] run function explore_wanlockhead:map/show
execute as @a unless entity @s[tag=wanlockhead_map_title] if items entity @s weapon.offhand minecraft:paper[minecraft:custom_name={text:'Wanlockhead Map'}] run function explore_wanlockhead:map/show

# Clear it as soon as the player no longer holds the named paper.
execute as @a[tag=wanlockhead_map_title] unless items entity @s weapon.mainhand minecraft:paper[minecraft:custom_name={text:'Wanlockhead Map'}] unless items entity @s weapon.offhand minecraft:paper[minecraft:custom_name={text:'Wanlockhead Map'}] run function explore_wanlockhead:map/hide

# Allow this advancement to fire again on the next click
advancement revoke @s only explore_wanlockhead:npc/mu_001_click
tag @s add mu_001_interacted

# Ignore if player is already in a dialogue
execute if score @s npc_seq matches 1.. run return 0

# Branch on player state
execute if entity @s[tag=has_all_tokens] run scoreboard players set @s npc_seq 13
execute unless entity @s[tag=has_all_tokens] if score @s mu_001_state matches 1.. run scoreboard players set @s npc_seq 12
execute unless entity @s[tag=has_all_tokens] unless score @s mu_001_state matches 1.. run scoreboard players set @s npc_seq 11

execute if entity @s[tag=has_all_tokens] run data modify entity @e[type=text_display,tag=NPC-MU-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute unless entity @s[tag=has_all_tokens] if score @s mu_001_state matches 1.. run data modify entity @e[type=text_display,tag=NPC-MU-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute unless entity @s[tag=has_all_tokens] unless score @s mu_001_state matches 1.. run data modify entity @e[type=text_display,tag=NPC-MU-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
scoreboard players set @s npc_timer 1

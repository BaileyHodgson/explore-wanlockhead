advancement revoke @s only explore_wanlockhead:npc/mu_002_click
tag @s add mu_002_interacted
execute if score @s npc_seq matches 1.. run return 0
scoreboard players set @s npc_seq 21
execute if score @s mu_002_state matches 1.. run data modify entity @e[type=text_display,tag=NPC-MU-002_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute unless score @s mu_002_state matches 1.. run data modify entity @e[type=text_display,tag=NPC-MU-002_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
scoreboard players set @s npc_timer 1

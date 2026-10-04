advancement revoke @s only explore_wanlockhead:npc/mu_003_click
tag @s add mu_003_interacted
execute if score @s npc_seq matches 1.. run return 0
scoreboard players set @s npc_seq 31
execute if score @s mu_003_state matches 1.. run data modify entity @e[type=text_display,tag=NPC-MU-003_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute unless score @s mu_003_state matches 1.. run data modify entity @e[type=text_display,tag=NPC-MU-003_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
scoreboard players set @s npc_timer 1

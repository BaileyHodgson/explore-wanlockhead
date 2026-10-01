advancement revoke @s only explore_wanlockhead:npc/mu_002_click
execute if score @s npc_seq matches 1.. run return 0
scoreboard players set @s npc_seq 21
data modify entity @e[type=text_display,tag=NPC-MU-002_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
scoreboard players set @s npc_timer 1

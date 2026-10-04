advancement revoke @s only explore_wanlockhead:npc/li_001_click
tag @s add li_001_interacted
execute if score @s npc_seq matches 1.. run return 0
execute if score @s li_001_state matches 3.. unless entity @e[type=interaction,tag=NPC-LI-001_hit,x=-38.5,y=71,z=0.5,distance=..0.1] run return 0
execute if score #li_001 npc_lock matches 1 unless entity @s[tag=li_001_owner] run return 0

execute unless score @s li_001_state matches 3.. unless entity @s[tag=li_001_owner] run function explore_wanlockhead:npc/li_001/start
execute unless score @s li_001_state matches 3.. unless entity @s[tag=li_001_owner] run return 0
execute if score @s li_001_state matches 1 run scoreboard players set @s npc_seq 51
execute if score @s li_001_state matches 2 run scoreboard players set @s npc_seq 52
execute if score @s li_001_state matches 3.. run scoreboard players set @s npc_seq 53
execute unless score @s npc_seq matches 1.. run return 0

execute if score @s li_001_state matches 3.. run data modify entity @e[type=text_display,tag=NPC-LI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute unless score @s li_001_state matches 3.. run data modify entity @e[type=text_display,tag=NPC-LI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
scoreboard players set @s npc_timer 1

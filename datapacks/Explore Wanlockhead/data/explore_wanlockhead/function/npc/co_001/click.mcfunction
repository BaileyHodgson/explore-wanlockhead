advancement revoke @s only explore_wanlockhead:npc/co_001_click
tag @s add co_001_interacted
execute if score @s npc_seq matches 1.. run return 0
execute if score @s co_001_state matches 6.. unless entity @e[type=interaction,tag=NPC-CO-001_hit,x=-396.5,y=48,z=-319.5,distance=..0.1] run return 0
execute if score #co_001 npc_lock matches 1 unless entity @s[tag=co_001_owner] run return 0

execute unless score @s co_001_state matches 6.. unless entity @s[tag=co_001_owner] run function explore_wanlockhead:npc/co_001/start
execute unless score @s co_001_state matches 6.. unless entity @s[tag=co_001_owner] run return 0
execute if score @s co_001_state matches 1 run scoreboard players set @s npc_seq 61
execute if score @s co_001_state matches 2 run scoreboard players set @s npc_seq 62
execute if score @s co_001_state matches 3 run scoreboard players set @s npc_seq 63
execute if score @s co_001_state matches 4 run scoreboard players set @s npc_seq 64
execute if score @s co_001_state matches 5 run scoreboard players set @s npc_seq 65
execute if score @s co_001_state matches 6.. run scoreboard players set @s npc_seq 66
execute unless score @s npc_seq matches 1.. run return 0

execute if score @s co_001_state matches 6.. run data modify entity @e[type=text_display,tag=NPC-CO-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute unless score @s co_001_state matches 6.. run data modify entity @e[type=text_display,tag=NPC-CO-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
scoreboard players set @s npc_timer 1

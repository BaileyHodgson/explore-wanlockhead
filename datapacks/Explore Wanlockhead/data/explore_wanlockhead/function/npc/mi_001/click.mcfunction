advancement revoke @s only explore_wanlockhead:npc/mi_001_click
tag @s add mi_001_interacted
execute if score @s npc_seq matches 1.. run return 0
execute if score @s mi_001_state matches 7.. unless entity @e[type=interaction,tag=NPC-MI-001_hit,x=-265.5,y=46,z=-88.5,distance=..0.1] run return 0
execute if score #mi_001 npc_lock matches 1 unless entity @s[tag=mi_001_owner] run return 0

# Keep a moving guide's shared route exclusive, while storing progress per player.
execute unless score @s mi_001_state matches 7.. unless entity @s[tag=mi_001_owner] run function explore_wanlockhead:npc/mi_001/start
execute unless score @s mi_001_state matches 7.. unless entity @s[tag=mi_001_owner] run return 0
execute if score @s mi_001_state matches 1 run scoreboard players set @s npc_seq 41
execute if score @s mi_001_state matches 2 run scoreboard players set @s npc_seq 42
execute if score @s mi_001_state matches 3 run scoreboard players set @s npc_seq 43
execute if score @s mi_001_state matches 4 run scoreboard players set @s npc_seq 44
execute if score @s mi_001_state matches 5 run scoreboard players set @s npc_seq 45
execute if score @s mi_001_state matches 6 run scoreboard players set @s npc_seq 46
execute if score @s mi_001_state matches 7.. run scoreboard players set @s npc_seq 47
execute unless score @s npc_seq matches 1.. run return 0

execute if score @s mi_001_state matches 7.. run data modify entity @e[type=text_display,tag=NPC-MI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute unless score @s mi_001_state matches 7.. run data modify entity @e[type=text_display,tag=NPC-MI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
scoreboard players set @s npc_timer 1

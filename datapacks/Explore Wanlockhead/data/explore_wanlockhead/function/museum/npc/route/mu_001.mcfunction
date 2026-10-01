execute on target if entity @s[tag=has_all_tokens] run scoreboard players set @s npc_seq 13
execute on target unless entity @s[tag=has_all_tokens] if score @s mu_001_state matches 1.. run scoreboard players set @s npc_seq 12
execute on target unless entity @s[tag=has_all_tokens] unless score @s mu_001_state matches 1.. run scoreboard players set @s npc_seq 11
data modify entity @e[type=text_display,tag=NPC-MU-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
execute on target run scoreboard players set @s npc_timer 1
data remove entity @s interaction
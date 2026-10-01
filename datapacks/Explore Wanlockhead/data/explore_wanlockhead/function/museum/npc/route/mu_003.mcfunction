execute on target run scoreboard players set @s npc_seq 31
data modify entity @e[type=text_display,tag=NPC-MU-003_marker,sort=nearest,limit=1] text set value {text:"...",color:"green",bold:true}
execute on target run scoreboard players set @s npc_timer 1
data remove entity @s interaction
tp @e[tag=NPC-LI-001] -46.5 51 -3.5
tp @e[tag=NPC-LI-001_hit] -46.5 51 -3.5
tp @e[tag=NPC-LI-001_marker] -46.5 53.5 -3.5
data modify entity @e[type=text_display,tag=NPC-LI-001_marker,sort=nearest,limit=1] text set value {text:"!",color:"red",bold:true}
scoreboard players set @s li_001_state 2
scoreboard players reset @s npc_seq

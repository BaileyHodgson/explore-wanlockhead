tp @e[tag=NPC-CO-001] -384.5 8 -318.5
tp @e[tag=NPC-CO-001_hit] -384.5 8 -318.5
tp @e[tag=NPC-CO-001_marker] -384.5 10.5 -318.5
data modify entity @e[type=text_display,tag=NPC-CO-001_marker,sort=nearest,limit=1] text set value {text:"!",color:"red",bold:true}
scoreboard players set @s co_001_state 2
scoreboard players reset @s npc_seq

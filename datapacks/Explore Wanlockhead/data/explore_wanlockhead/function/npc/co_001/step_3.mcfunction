tp @e[tag=NPC-CO-001] -403.5 8 -318.5
tp @e[tag=NPC-CO-001_hit] -403.5 8 -318.5
tp @e[tag=NPC-CO-001_marker] -403.5 10.5 -318.5
data modify entity @e[type=text_display,tag=NPC-CO-001_marker,sort=nearest,limit=1] text set value {text:"!",color:"red",bold:true}
scoreboard players set @s co_001_state 4
scoreboard players reset @s npc_seq

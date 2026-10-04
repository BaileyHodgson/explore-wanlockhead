tp @e[tag=NPC-MI-001] -238.5 46 -92.5
tp @e[tag=NPC-MI-001_hit] -238.5 46 -92.5
tp @e[tag=NPC-MI-001_marker] -238.5 48.5 -92.5
data modify entity @e[type=text_display,tag=NPC-MI-001_marker,sort=nearest,limit=1] text set value {text:"!",color:"red",bold:true}
scoreboard players set @s mi_001_state 2
scoreboard players reset @s npc_seq

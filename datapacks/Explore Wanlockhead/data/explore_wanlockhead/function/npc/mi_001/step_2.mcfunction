tp @e[tag=NPC-MI-001] -199.5 46 -94.5
tp @e[tag=NPC-MI-001_hit] -199.5 46 -94.5
tp @e[tag=NPC-MI-001_marker] -199.5 48.5 -94.5
data modify entity @e[type=text_display,tag=NPC-MI-001_marker,sort=nearest,limit=1] text set value {text:"!",color:"red",bold:true}
scoreboard players set @s mi_001_state 3
scoreboard players reset @s npc_seq

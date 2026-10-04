tp @e[tag=NPC-LI-001] -38.5 71 0.5
tp @e[tag=NPC-LI-001_hit] -38.5 71 0.5
tp @e[tag=NPC-LI-001_marker] -38.5 73.5 0.5
data modify entity @e[type=text_display,tag=NPC-LI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
scoreboard players set @s li_001_state 3
scoreboard players set #li_001 npc_lock 0
tag @s remove li_001_owner
scoreboard players reset @s npc_seq

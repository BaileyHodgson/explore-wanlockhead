tp @e[tag=NPC-MI-001] -265.5 46 -88.5
tp @e[tag=NPC-MI-001_hit] -265.5 46 -88.5
tp @e[tag=NPC-MI-001_marker] -265.5 48.5 -88.5
data modify entity @e[type=text_display,tag=NPC-MI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
scoreboard players set @s mi_001_state 7
scoreboard players set #mi_001 npc_lock 0
tag @s remove mi_001_owner
scoreboard players reset @s npc_seq

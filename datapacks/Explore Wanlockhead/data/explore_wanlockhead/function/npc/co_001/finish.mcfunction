tp @e[tag=NPC-CO-001] -396.5 48 -319.5
tp @e[tag=NPC-CO-001_hit] -396.5 48 -319.5
tp @e[tag=NPC-CO-001_marker] -396.5 50.5 -319.5
data modify entity @e[type=text_display,tag=NPC-CO-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
scoreboard players set @s co_001_state 6
scoreboard players set #co_001 npc_lock 0
tag @s remove co_001_owner
scoreboard players reset @s npc_seq

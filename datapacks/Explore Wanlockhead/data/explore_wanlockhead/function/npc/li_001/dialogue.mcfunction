# Stage 1: meet the guide, then follow them into the Library.
execute as @s[scores={npc_seq=51,npc_timer=2}] run tellraw @s {"text":"\n\n[Library Guide] Placeholder dialogue.","color":"yellow"}
execute as @s[scores={npc_seq=51,npc_timer=20}] run function explore_wanlockhead:npc/li_001/step_1

# Stage 2: final interaction inside; return the guide to the entrance.
execute as @s[scores={npc_seq=52,npc_timer=2}] run tellraw @s {"text":"\n\n[Library Guide] Placeholder dialogue 1.","color":"yellow"}
execute as @s[scores={npc_seq=52,npc_timer=40}] run tellraw @s {"text":"\n\n[Library Guide] Placeholder dialogue 2.","color":"yellow"}
execute as @s[scores={npc_seq=52,npc_timer=80}] run tellraw @s {"text":"\n\n[Library Guide] Placeholder dialogue 3.","color":"yellow"}
execute as @s[scores={npc_seq=52,npc_timer=81}] run function explore_wanlockhead:npc/li_001/finish

# Subsequent interactions repeat a placeholder line until final copy is supplied.
execute as @s[scores={npc_seq=53,npc_timer=2}] run tellraw @s {"text":"\n\n[Library Guide] Repeat dialogue placeholder.","color":"yellow"}
execute as @s[scores={npc_seq=53,npc_timer=20}] run data modify entity @e[type=text_display,tag=NPC-LI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute as @s[scores={npc_seq=53,npc_timer=21..}] run scoreboard players reset @s npc_seq

# Stages 1-4 follow the stops listed in the Cottage reference.
execute if score @s npc_seq matches 61..65 at @e[type=mannequin,tag=NPC-CO-001,limit=1] run data modify entity @e[type=text_display,tag=NPC-CO-001_marker,limit=1] text set value {text:"...",color:"green",bold:true}
execute as @s[scores={npc_seq=61,npc_timer=2}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue.","color":"yellow"}
execute as @s[scores={npc_seq=61,npc_timer=20}] run function explore_wanlockhead:npc/co_001/step_1

execute as @s[scores={npc_seq=62,npc_timer=2}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 1.","color":"yellow"}
execute as @s[scores={npc_seq=62,npc_timer=40}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 2.","color":"yellow"}
execute as @s[scores={npc_seq=62,npc_timer=80}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 3.","color":"yellow"}
execute as @s[scores={npc_seq=62,npc_timer=81}] run function explore_wanlockhead:npc/co_001/step_2

execute as @s[scores={npc_seq=63,npc_timer=2}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 1.","color":"yellow"}
execute as @s[scores={npc_seq=63,npc_timer=40}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 2.","color":"yellow"}
execute as @s[scores={npc_seq=63,npc_timer=80}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 3.","color":"yellow"}
execute as @s[scores={npc_seq=63,npc_timer=81}] run function explore_wanlockhead:npc/co_001/step_3

execute as @s[scores={npc_seq=64,npc_timer=2}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 1.","color":"yellow"}
execute as @s[scores={npc_seq=64,npc_timer=40}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 2.","color":"yellow"}
execute as @s[scores={npc_seq=64,npc_timer=80}] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder dialogue 3.","color":"yellow"}
execute as @s[scores={npc_seq=64,npc_timer=81}] run function explore_wanlockhead:npc/co_001/step_4

# Fifth interaction ends the visit, returns the guide home, and uses repeat placeholder text.
execute as @s[scores={npc_seq=65,npc_timer=2}] run tellraw @s {"text":"\n\n[Cottage Guide] Repeat dialogue placeholder.","color":"yellow"}
execute as @s[scores={npc_seq=65,npc_timer=20}] run function explore_wanlockhead:npc/co_001/finish

# Subsequent interactions repeat the same placeholder line.
execute as @s[scores={npc_seq=66,npc_timer=2}] run tellraw @s {"text":"\n\n[Cottage Guide] Repeat dialogue placeholder.","color":"yellow"}
execute as @s[scores={npc_seq=66,npc_timer=20}] run data modify entity @e[type=text_display,tag=NPC-CO-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute as @s[scores={npc_seq=66,npc_timer=21..}] run scoreboard players reset @s npc_seq

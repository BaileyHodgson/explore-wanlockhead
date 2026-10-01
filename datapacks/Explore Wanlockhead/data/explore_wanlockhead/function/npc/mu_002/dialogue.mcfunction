# --- Sequence 21: First Visit ---
execute as @s[scores={npc_seq=21,npc_timer=2}] run tellraw @s {"text":"[Museum Guide 1] Placeholder 1","color":"yellow"}
execute as @s[scores={npc_seq=21,npc_timer=40}] run tellraw @s {"text":"[Museum Guide 1] Placeholder 2","color":"yellow"}
execute as @s[scores={npc_seq=21,npc_timer=80}] run tellraw @s {"text":"[Museum Guide 1] Placeholder 3","color":"yellow"}
execute as @s[scores={npc_seq=21,npc_timer=81}] run scoreboard players set @s mu_002_state 1
execute as @s[scores={npc_seq=21,npc_timer=82..}] run scoreboard players reset @s npc_seq

# ==========================================
# 1. CLICK-TO-ADVANCE DIALOGUE
# ==========================================
execute as @a[scores={npc_next=1..}] if score @s npc_next = @s npc_prompt run function explore_wanlockhead:npc/advance
scoreboard players reset @a npc_next
scoreboard players enable @a npc_next
execute as @a unless score @s npc_seq matches 1.. run scoreboard players reset @s npc_timer
execute as @a unless score @s npc_seq matches 1.. run scoreboard players reset @s npc_prompt

# Make each loaded guide face the nearest nearby player.
function explore_wanlockhead:npc/look_at_player

# Per-player beacon-like beams remain until that player starts each guide dialogue.
execute as @a at @e[type=mannequin,tag=NPC-MI-001,limit=1] unless score @s mi_001_state matches 1.. run particle minecraft:end_rod ~ ~65 ~ 0.4 20 0.4 0 40 force @s
execute as @a at @e[type=mannequin,tag=NPC-LI-001,limit=1] unless score @s li_001_state matches 1.. run particle minecraft:end_rod ~ ~65 ~ 0.4 20 0.4 0 40 force @s
execute as @a at @e[type=mannequin,tag=NPC-CO-001,limit=1] unless score @s co_001_state matches 1.. run particle minecraft:end_rod ~ ~65 ~ 0.4 20 0.4 0 40 force @s

# ==========================================
# 3. PROXIMITY ALERTS AND BOUNDARY ENFORCEMENT
# ==========================================
function explore_wanlockhead:npc/proximity
function explore_wanlockhead:npc/boundary

# ==========================================
# 1. TIMER MANAGEMENT
# ==========================================
execute as @a[scores={npc_timer=1..}] run scoreboard players add @s npc_timer 1
execute as @a unless score @s npc_seq matches 1.. run scoreboard players reset @s npc_timer

# ==========================================
# 2. DIALOGUE DISPATCH
# ==========================================
execute as @a[scores={npc_timer=1..}] run function explore_wanlockhead:npc/mu_001/dialogue
execute as @a[scores={npc_timer=1..}] run function explore_wanlockhead:npc/mu_002/dialogue
execute as @a[scores={npc_timer=1..}] run function explore_wanlockhead:npc/mu_003/dialogue
execute as @a[scores={npc_timer=1..}] run function explore_wanlockhead:npc/mi_001/dialogue
execute as @a[scores={npc_timer=1..}] run function explore_wanlockhead:npc/li_001/dialogue
execute as @a[scores={npc_timer=1..}] run function explore_wanlockhead:npc/co_001/dialogue

# Make each loaded guide face the nearest nearby player.
function explore_wanlockhead:npc/look_at_player

# ==========================================
# 3. PROXIMITY ALERTS AND BOUNDARY ENFORCEMENT
# ==========================================
function explore_wanlockhead:npc/proximity
function explore_wanlockhead:npc/boundary

# npc_timer stores the current line number; only the matching prompt token advances it.
scoreboard players add @s npc_timer 1
execute if score @s npc_seq matches 11..13 run function explore_wanlockhead:npc/mu_001/dialogue
execute if score @s npc_seq matches 21 run function explore_wanlockhead:npc/mu_002/dialogue
execute if score @s npc_seq matches 31 run function explore_wanlockhead:npc/mu_003/dialogue
execute if score @s npc_seq matches 41..47 run function explore_wanlockhead:npc/mi_001/dialogue
execute if score @s npc_seq matches 51..53 run function explore_wanlockhead:npc/li_001/dialogue
execute if score @s npc_seq matches 61..66 run function explore_wanlockhead:npc/co_001/dialogue

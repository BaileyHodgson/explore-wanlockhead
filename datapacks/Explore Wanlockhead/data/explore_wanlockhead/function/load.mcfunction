tellraw @a "Explore Wanlockhead..."

# Initialize Global Trackers
scoreboard objectives add npc_seq dummy
scoreboard objectives add npc_timer dummy
scoreboard objectives add pan_timer dummy

# Initialize NPC States
scoreboard objectives add mu_001_state dummy
scoreboard objectives add mu_002_state dummy
scoreboard objectives add mu_003_state dummy
scoreboard objectives add mi_001_state dummy
scoreboard objectives add li_001_state dummy
scoreboard objectives add co_001_state dummy
scoreboard objectives add npc_lock dummy

# Keep guide locks across /reload while ensuring they exist on first load
scoreboard players add #mi_001 npc_lock 0
scoreboard players add #li_001 npc_lock 0
scoreboard players add #co_001 npc_lock 0

# Initialize NPC Collision Team
team add museum_npcs
team modify museum_npcs collisionRule never

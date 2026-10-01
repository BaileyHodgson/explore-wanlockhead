tellraw @a "Explore Wanlockhead..."

# Initialize Global Trackers
scoreboard objectives add npc_seq dummy
scoreboard objectives add npc_timer dummy
scoreboard objectives add pan_timer dummy

# Initialize NPC States
scoreboard objectives add mu_001_state dummy
scoreboard objectives add mu_002_state dummy
scoreboard objectives add mu_003_state dummy

# Initialize NPC Collision Team
team add museum_npcs
team modify museum_npcs collisionRule never

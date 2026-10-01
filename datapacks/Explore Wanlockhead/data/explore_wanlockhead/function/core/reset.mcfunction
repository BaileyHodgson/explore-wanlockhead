# ==========================================
# WORLD BORDER RESET
# ==========================================
worldborder center 0 0
worldborder set 29999984

# Clear all spawned entities
kill @e[tag=museum_system]

# Reset all player scores
scoreboard players reset @a npc_seq
scoreboard players reset @a npc_timer
scoreboard players reset @a mu_001_state
scoreboard players reset @a mu_002_state
scoreboard players reset @a mu_003_state

# Clear player proximity and boundary tags
tag @a remove mu_001_bound
tag @a remove mu_001_near
tag @a remove mu_002_near
tag @a remove mu_003_near

# Revoke click advancements so NPCs and doors can be triggered again
advancement revoke @a only explore_wanlockhead:npc/mu_001_click
advancement revoke @a only explore_wanlockhead:npc/mu_002_click
advancement revoke @a only explore_wanlockhead:npc/mu_003_click
advancement revoke @a only explore_wanlockhead:door/mu_001
advancement revoke @a only explore_wanlockhead:door/mu_002
advancement revoke @a only explore_wanlockhead:door/mu_003
advancement revoke @a only explore_wanlockhead:door/mu_004

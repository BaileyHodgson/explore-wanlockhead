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
scoreboard players reset @a mi_001_state
scoreboard players reset @a li_001_state
scoreboard players reset @a co_001_state
scoreboard players set #mi_001 npc_lock 0
scoreboard players set #li_001 npc_lock 0
scoreboard players set #co_001 npc_lock 0

# Clear player proximity and boundary tags
tag @a remove mu_001_bound
tag @a remove mu_001_near
tag @a remove mu_002_near
tag @a remove mu_003_near
tag @a remove mi_001_near
tag @a remove li_001_near
tag @a remove co_001_near
tag @a remove mi_001_owner
tag @a remove li_001_owner
tag @a remove co_001_owner
tag @a remove mu_001_interacted
tag @a remove mu_002_interacted
tag @a remove mu_003_interacted
tag @a remove mi_001_interacted
tag @a remove li_001_interacted
tag @a remove co_001_interacted

# Revoke click advancements so NPCs and doors can be triggered again
advancement revoke @a only explore_wanlockhead:npc/mu_001_click
advancement revoke @a only explore_wanlockhead:npc/mu_002_click
advancement revoke @a only explore_wanlockhead:npc/mu_003_click
advancement revoke @a only explore_wanlockhead:npc/mi_001_click
advancement revoke @a only explore_wanlockhead:npc/li_001_click
advancement revoke @a only explore_wanlockhead:npc/co_001_click
advancement revoke @a only explore_wanlockhead:door/mu_001
advancement revoke @a only explore_wanlockhead:door/mu_002
advancement revoke @a only explore_wanlockhead:door/mu_003
advancement revoke @a only explore_wanlockhead:door/mu_004
advancement revoke @a only explore_wanlockhead:door/li_001
advancement revoke @a only explore_wanlockhead:door/li_002
advancement revoke @a only explore_wanlockhead:door/co_001
advancement revoke @a only explore_wanlockhead:door/co_002
advancement revoke @a only explore_wanlockhead:door/co_003

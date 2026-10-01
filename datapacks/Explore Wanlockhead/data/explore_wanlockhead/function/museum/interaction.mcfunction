# ==========================================
# DOOR INTERACTIONS
# ==========================================
execute as @e[type=interaction,tag=DOOR-MU-001,nbt={interaction:{}}] at @s run function explore_wanlockhead:museum/door/route/door_mu_001
execute as @e[type=interaction,tag=DOOR-MU-002,nbt={interaction:{}}] at @s run function explore_wanlockhead:museum/door/route/door_mu_002
execute as @e[type=interaction,tag=DOOR-MU-003,nbt={interaction:{}}] at @s run function explore_wanlockhead:museum/door/route/door_mu_003
execute as @e[type=interaction,tag=DOOR-MU-004,nbt={interaction:{}}] at @s run function explore_wanlockhead:museum/door/route/door_mu_004

# ==========================================
# NPC INTERACTIONS
# ==========================================
execute as @e[type=interaction,tag=NPC-MU-001_hit,nbt={interaction:{}}] at @s run function explore_wanlockhead:museum/npc/route/mu_001
execute as @e[type=interaction,tag=NPC-MU-002_hit,nbt={interaction:{}}] at @s run function explore_wanlockhead:museum/npc/route/mu_002
execute as @e[type=interaction,tag=NPC-MU-003_hit,nbt={interaction:{}}] at @s run function explore_wanlockhead:museum/npc/route/mu_003
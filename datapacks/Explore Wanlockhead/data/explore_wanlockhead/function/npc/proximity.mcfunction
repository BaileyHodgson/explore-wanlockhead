# NPC-MU-001 (Wanlockhead Guide) — wider range, outdoor area
execute as @a[tag=!mu_001_near,tag=!mu_001_interacted] at @s if entity @e[type=mannequin,tag=NPC-MU-001,distance=..5] run tellraw @s {"text":"\n\n[Wanlockhead Guide] Hey, come over here!","color":"gray","italic":true}
execute as @a[tag=!mu_001_near] at @s if entity @e[type=mannequin,tag=NPC-MU-001,distance=..5] run tag @s add mu_001_near
execute as @a[tag=mu_001_near] at @s unless entity @e[type=mannequin,tag=NPC-MU-001,distance=..6] run tag @s remove mu_001_near

# NPC-MU-002 (Museum Guide 1)
execute as @a[tag=!mu_002_near,tag=!mu_002_interacted] at @s if entity @e[type=mannequin,tag=NPC-MU-002,distance=..3] run tellraw @s {"text":"\n\n[Museum Guide 1] Want to hear more about Wanlockhead?","color":"gray","italic":true}
execute as @a[tag=!mu_002_near] at @s if entity @e[type=mannequin,tag=NPC-MU-002,distance=..3] run tag @s add mu_002_near
execute as @a[tag=mu_002_near] at @s unless entity @e[type=mannequin,tag=NPC-MU-002,distance=..4] run tag @s remove mu_002_near

# NPC-MU-003 (Museum Guide 2)
execute as @a[tag=!mu_003_near,tag=!mu_003_interacted] at @s if entity @e[type=mannequin,tag=NPC-MU-003,distance=..3] run tellraw @s {"text":"\n\n[Museum Guide 2] Want to hear more about Wanlockhead?","color":"gray","italic":true}
execute as @a[tag=!mu_003_near] at @s if entity @e[type=mannequin,tag=NPC-MU-003,distance=..3] run tag @s add mu_003_near
execute as @a[tag=mu_003_near] at @s unless entity @e[type=mannequin,tag=NPC-MU-003,distance=..4] run tag @s remove mu_003_near

# NPC-MI-001 (Mines Tour Guide)
execute as @a[tag=!mi_001_near,tag=!mi_001_interacted] at @s if entity @e[type=mannequin,tag=NPC-MI-001,distance=..5] run tellraw @s {"text":"\n\n[Mines Tour Guide] Hey there, want to explore the mines?","color":"gray","italic":true}
execute as @a[tag=!mi_001_near] at @s if entity @e[type=mannequin,tag=NPC-MI-001,distance=..5] run tag @s add mi_001_near
execute as @a[tag=mi_001_near] at @s unless entity @e[type=mannequin,tag=NPC-MI-001,distance=..6] run tag @s remove mi_001_near

# NPC-LI-001 (Library Guide; dialogue text is pending)
execute as @a[tag=!li_001_near,tag=!li_001_interacted] at @s if entity @e[type=mannequin,tag=NPC-LI-001,distance=..3] run tellraw @s {"text":"\n\n[Library Guide] Placeholder.","color":"gray","italic":true}
execute as @a[tag=!li_001_near] at @s if entity @e[type=mannequin,tag=NPC-LI-001,distance=..3] run tag @s add li_001_near
execute as @a[tag=li_001_near] at @s unless entity @e[type=mannequin,tag=NPC-LI-001,distance=..4] run tag @s remove li_001_near

# NPC-CO-001 (Cottage Guide; dialogue text is pending)
execute as @a[tag=!co_001_near,tag=!co_001_interacted] at @s if entity @e[type=mannequin,tag=NPC-CO-001,distance=..3] run tellraw @s {"text":"\n\n[Cottage Guide] Placeholder.","color":"gray","italic":true}
execute as @a[tag=!co_001_near] at @s if entity @e[type=mannequin,tag=NPC-CO-001,distance=..3] run tag @s add co_001_near
execute as @a[tag=co_001_near] at @s unless entity @e[type=mannequin,tag=NPC-CO-001,distance=..4] run tag @s remove co_001_near

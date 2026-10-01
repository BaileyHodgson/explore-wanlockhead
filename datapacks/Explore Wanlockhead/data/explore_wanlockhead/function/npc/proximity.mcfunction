# NPC-MU-001 (Wanlockhead Guide) — wider range, outdoor area
execute as @a[tag=!mu_001_near] at @s if entity @e[type=mannequin,tag=NPC-MU-001,distance=..5] unless score @s mu_001_state matches 1.. run tellraw @s {"text":"\n\n[Wanlockhead Guide] Hey, come over here!","color":"gray","italic":true}
execute as @a[tag=!mu_001_near] at @s if entity @e[type=mannequin,tag=NPC-MU-001,distance=..5] run tag @s add mu_001_near
execute as @a[tag=mu_001_near] at @s unless entity @e[type=mannequin,tag=NPC-MU-001,distance=..6] run tag @s remove mu_001_near

# NPC-MU-002 (Museum Guide 1)
execute as @a[tag=!mu_002_near] at @s if entity @e[type=mannequin,tag=NPC-MU-002,distance=..3] unless score @s mu_002_state matches 1.. run tellraw @s {"text":"\n\n[Museum Guide 1] Want to hear more about Wanlockhead?","color":"gray","italic":true}
execute as @a[tag=!mu_002_near] at @s if entity @e[type=mannequin,tag=NPC-MU-002,distance=..3] run tag @s add mu_002_near
execute as @a[tag=mu_002_near] at @s unless entity @e[type=mannequin,tag=NPC-MU-002,distance=..4] run tag @s remove mu_002_near

# NPC-MU-003 (Museum Guide 2)
execute as @a[tag=!mu_003_near] at @s if entity @e[type=mannequin,tag=NPC-MU-003,distance=..3] unless score @s mu_003_state matches 1.. run tellraw @s {"text":"\n\n[Museum Guide 2] Want to hear more about Wanlockhead?","color":"gray","italic":true}
execute as @a[tag=!mu_003_near] at @s if entity @e[type=mannequin,tag=NPC-MU-003,distance=..3] run tag @s add mu_003_near
execute as @a[tag=mu_003_near] at @s unless entity @e[type=mannequin,tag=NPC-MU-003,distance=..4] run tag @s remove mu_003_near

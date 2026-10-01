# mu_001_bound: forces player to face NPC-MU-001 until the intro sequence is complete
execute if entity @e[type=mannequin,tag=NPC-MU-001] as @a[tag=!bypass_bounds] unless score @s mu_001_state matches 1.. run tag @s add mu_001_bound
execute unless entity @e[type=mannequin,tag=NPC-MU-001] run tag @a remove mu_001_bound
execute as @a[tag=bypass_bounds] run tag @s remove mu_001_bound
execute as @a[scores={mu_001_state=1..}] run tag @s remove mu_001_bound
execute as @a[tag=mu_001_bound] at @s unless entity @s[distance=..25,x=-154.5,y=56,z=54.5] run tp @s ~ ~ ~ facing -154.5 56 54.5

# A new Cottage tour can only begin at the guide's original position.
execute if score #co_001 npc_lock matches 1 run return 0
execute unless entity @e[type=interaction,tag=NPC-CO-001_hit,x=-396.5,y=48,z=-319.5,distance=..0.1] run return 0
tag @s add co_001_owner
scoreboard players set #co_001 npc_lock 1
execute unless score @s co_001_state matches 1.. run scoreboard players set @s co_001_state 1

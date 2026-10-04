# A new Library tour can only begin at the guide's original position.
execute if score #li_001 npc_lock matches 1 run return 0
execute unless entity @e[type=interaction,tag=NPC-LI-001_hit,x=-38.5,y=71,z=0.5,distance=..0.1] run return 0
tag @s add li_001_owner
scoreboard players set #li_001 npc_lock 1
execute unless score @s li_001_state matches 1.. run scoreboard players set @s li_001_state 1

# A new Mines tour can only begin at the guide's original position.
execute if score #mi_001 npc_lock matches 1 run return 0
execute unless entity @e[type=interaction,tag=NPC-MI-001_hit,x=-265.5,y=46,z=-88.5,distance=..0.1] run return 0
tag @s add mi_001_owner
scoreboard players set #mi_001 npc_lock 1
execute unless score @s mi_001_state matches 1.. run scoreboard players set @s mi_001_state 1

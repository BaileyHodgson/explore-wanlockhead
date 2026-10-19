tellraw @a {text:"Explore Wanlockhead..."}

# Initialize Global Trackers
scoreboard objectives add npc_seq dummy
scoreboard objectives add npc_timer dummy
scoreboard objectives add npc_next trigger
scoreboard objectives add npc_prompt dummy
scoreboard objectives add pan_timer dummy

# Clear timed-dialogue sessions left over from the previous implementation.
execute as @a[scores={npc_seq=1..}] unless score @s npc_prompt matches 1.. run scoreboard players reset @s npc_seq
execute as @a[scores={npc_seq=1..}] unless score @s npc_prompt matches 1.. run scoreboard players reset @s npc_timer

# Keep the clickable dialogue trigger available to every player.
scoreboard players enable @a npc_next

# Hide command success feedback such as "Triggered [npc_next]" from dialogue clicks.
gamerule send_command_feedback false

# Clear map-title state on reload so a held map is displayed again on the next tick.
execute as @a[tag=wanlockhead_map_title] run title @s clear
tag @a remove wanlockhead_map_title

# Initialize NPC States
scoreboard objectives add mu_001_state dummy
scoreboard objectives add mu_002_state dummy
scoreboard objectives add mu_003_state dummy
scoreboard objectives add mi_001_state dummy
scoreboard objectives add li_001_state dummy
scoreboard objectives add co_001_state dummy
scoreboard objectives add npc_lock dummy

# Keep guide locks across /reload while ensuring they exist on first load
scoreboard players add #mi_001 npc_lock 0
scoreboard players add #li_001 npc_lock 0
scoreboard players add #co_001 npc_lock 0

# Initialize NPC Collision Team
team add museum_npcs
team modify museum_npcs collisionRule never

execute as @s[scores={npc_seq=21,npc_timer=2}] run tellraw @s [{text:"[Museum Guide 1] ",color:"yellow"},{text:"Placeholder 1",color:"white"}]
execute as @s[scores={npc_seq=21,npc_timer=40}] run tellraw @s [{text:"[Museum Guide 1] ",color:"yellow"},{text:"Placeholder 2",color:"white"}]
execute as @s[scores={npc_seq=21,npc_timer=80}] run tellraw @s [{text:"[Museum Guide 1] ",color:"yellow"},{text:"Placeholder 3",color:"white"}]
execute as @s[scores={npc_seq=21,npc_timer=81}] run scoreboard players set @s mu_002_state 1
execute as @s[scores={npc_seq=21,npc_timer=82..}] run scoreboard players reset @s npc_seq
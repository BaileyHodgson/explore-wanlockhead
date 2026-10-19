# Each button reveals the next line; the final output completes the visit.
execute if score @s npc_seq matches 31 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 3101
execute if score @s npc_seq matches 31 if score @s npc_timer matches 1 run tellraw @s [{text:"[Museum Guide 2] ",color:"yellow"},{text:"Placeholder 1\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 3101"}}]
execute if score @s npc_seq matches 31 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 3102
execute if score @s npc_seq matches 31 if score @s npc_timer matches 2 run tellraw @s [{text:"[Museum Guide 2] ",color:"yellow"},{text:"Placeholder 2\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 3102"}}]
execute if score @s npc_seq matches 31 if score @s npc_timer matches 3 run tellraw @s [{text:"[Museum Guide 2] ",color:"yellow"},{text:"Placeholder 3\n",color:"white"}]
execute if score @s npc_seq matches 31 if score @s npc_timer matches 3 run scoreboard players set @s mu_003_state 1
execute if score @s npc_seq matches 31 if score @s npc_timer matches 3 run data modify entity @e[type=text_display,tag=NPC-MU-003_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute if score @s npc_seq matches 31 if score @s npc_timer matches 3 run scoreboard players reset @s npc_seq

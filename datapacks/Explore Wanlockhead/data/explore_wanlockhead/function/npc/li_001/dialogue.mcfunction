# Stage 1: the player advances after the final line to move the guide into the Library.
execute if score @s npc_seq matches 51 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 5101
execute if score @s npc_seq matches 51 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Library Guide] ",color:"yellow"},{text:"Placeholder dialogue.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 5101"}}]
execute if score @s npc_seq matches 51 if score @s npc_timer matches 2 run function explore_wanlockhead:npc/li_001/step_1

# Stage 2: the final line returns the guide to the entrance.
execute if score @s npc_seq matches 52 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 5201
execute if score @s npc_seq matches 52 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Library Guide] ",color:"yellow"},{text:"Placeholder dialogue 1.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 5201"}}]
execute if score @s npc_seq matches 52 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 5202
execute if score @s npc_seq matches 52 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Library Guide] ",color:"yellow"},{text:"Placeholder dialogue 2.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 5202"}}]
execute if score @s npc_seq matches 52 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 5203
execute if score @s npc_seq matches 52 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Library Guide] ",color:"yellow"},{text:"Placeholder dialogue 3.\n",color:"white"},{text:"[Return to the entrance...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 5203"}}]
execute if score @s npc_seq matches 52 if score @s npc_timer matches 4 run function explore_wanlockhead:npc/li_001/finish

# Subsequent interactions repeat a placeholder without a Next button.
execute if score @s npc_seq matches 53 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Library Guide] ",color:"yellow"},{text:"Repeat dialogue placeholder.\n",color:"white"}]
execute if score @s npc_seq matches 53 if score @s npc_timer matches 1 run data modify entity @e[type=text_display,tag=NPC-LI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute if score @s npc_seq matches 53 if score @s npc_timer matches 1 run scoreboard players reset @s npc_seq

# Cottage stages: movement happens only on an interaction after the final line at each stop.
execute if score @s npc_seq matches 61 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 6101
execute if score @s npc_seq matches 61 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6101"}}]
execute if score @s npc_seq matches 61 if score @s npc_timer matches 2 run function explore_wanlockhead:npc/co_001/step_1

execute if score @s npc_seq matches 62 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 6201
execute if score @s npc_seq matches 62 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 1.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6201"}}]
execute if score @s npc_seq matches 62 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 6202
execute if score @s npc_seq matches 62 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 2.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6202"}}]
execute if score @s npc_seq matches 62 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 6203
execute if score @s npc_seq matches 62 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 3.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6203"}}]
execute if score @s npc_seq matches 62 if score @s npc_timer matches 4 run function explore_wanlockhead:npc/co_001/step_2

execute if score @s npc_seq matches 63 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 6301
execute if score @s npc_seq matches 63 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 1.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6301"}}]
execute if score @s npc_seq matches 63 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 6302
execute if score @s npc_seq matches 63 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 2.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6302"}}]
execute if score @s npc_seq matches 63 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 6303
execute if score @s npc_seq matches 63 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 3.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6303"}}]
execute if score @s npc_seq matches 63 if score @s npc_timer matches 4 run function explore_wanlockhead:npc/co_001/step_3

execute if score @s npc_seq matches 64 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 6401
execute if score @s npc_seq matches 64 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 1.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6401"}}]
execute if score @s npc_seq matches 64 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 6402
execute if score @s npc_seq matches 64 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 2.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6402"}}]
execute if score @s npc_seq matches 64 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 6403
execute if score @s npc_seq matches 64 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Placeholder dialogue 3.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6403"}}]
execute if score @s npc_seq matches 64 if score @s npc_timer matches 4 run function explore_wanlockhead:npc/co_001/step_4

# Fifth interaction ends with a final line and returns the guide home.
execute if score @s npc_seq matches 65 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 6501
execute if score @s npc_seq matches 65 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Repeat dialogue placeholder.\n",color:"white"},{text:"[Return to the entrance...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 6501"}}]
execute if score @s npc_seq matches 65 if score @s npc_timer matches 2 run function explore_wanlockhead:npc/co_001/finish

# Subsequent interactions repeat the same placeholder without a Next button.
execute if score @s npc_seq matches 66 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Cottage Guide] ",color:"yellow"},{text:"Repeat dialogue placeholder.\n",color:"white"}]
execute if score @s npc_seq matches 66 if score @s npc_timer matches 1 run data modify entity @e[type=text_display,tag=NPC-CO-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute if score @s npc_seq matches 66 if score @s npc_timer matches 1 run scoreboard players reset @s npc_seq

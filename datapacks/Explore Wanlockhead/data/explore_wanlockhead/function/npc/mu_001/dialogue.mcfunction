# First visit: each button advances one line; the final line completes the visit.
execute if score @s npc_seq matches 11 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 1101
execute if score @s npc_seq matches 11 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"Hello there, and welcome to Wanlockhead, the highest village in Scotland. It lies at over 1500 feet in the Lowther Hills, some thirty miles north of Dumfries and owes its existence to the mineral deposits in those hills.\n",color:"white"},{text:"[Next... (Click here or talk with me again!)]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 1101"}}]
execute if score @s npc_seq matches 11 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 1102
execute if score @s npc_seq matches 11 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"We're so glad to see a new face around, ready to explore the history of the village and the people who lived here?\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 1102"}}]
execute if score @s npc_seq matches 11 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 1103
execute if score @s npc_seq matches 11 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"Behind me is the museum, head inside to learn more about the village, how it came to be, and how the mines got started. We've also got gold panning out back, if you want to try your hand, you're free to keep anything you find!\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 1103"}}]
execute if score @s npc_seq matches 11 if score @s npc_timer matches 4 run scoreboard players set @s npc_prompt 1104
execute if score @s npc_seq matches 11 if score @s npc_timer matches 4 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"Around the village you'll find the library, cottage and mines. Each has their own guide to tell you more about the location, they also might need your help here and there. Once you're done, they'll hand you a token of their gratitude, try to collect them all!\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 1104"}}]
execute if score @s npc_seq matches 11 if score @s npc_timer matches 5 run scoreboard players set @s npc_prompt 1105
execute if score @s npc_seq matches 11 if score @s npc_timer matches 5 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"Here's a map of the village so you can find your way about, be careful not to wander too far!\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 1105"}}]
execute if score @s npc_seq matches 11 if score @s npc_timer matches 5 run function explore_wanlockhead:map/place
execute if score @s npc_seq matches 11 if score @s npc_timer matches 6 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"We hope you enjoy your time here, see you later!\n",color:"white"}]
execute if score @s npc_seq matches 11 if score @s npc_timer matches 6 run scoreboard players set @s mu_001_state 1
execute if score @s npc_seq matches 11 if score @s npc_timer matches 6 run tag @s remove mu_001_bound
execute if score @s npc_seq matches 11 if score @s npc_timer matches 6 run data modify entity @e[type=text_display,tag=NPC-MU-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute if score @s npc_seq matches 11 if score @s npc_timer matches 6 run scoreboard players reset @s npc_seq

# Repeat visit.
execute if score @s npc_seq matches 12 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"Have you got all the tokens? Keep exploring the village of Wanlockhead!\n",color:"white"}]
execute if score @s npc_seq matches 12 if score @s npc_timer matches 1 run data modify entity @e[type=text_display,tag=NPC-MU-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute if score @s npc_seq matches 12 if score @s npc_timer matches 1 run scoreboard players reset @s npc_seq

# All tokens collected.
execute if score @s npc_seq matches 13 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Wanlockhead Guide] ",color:"yellow"},{text:"Thanks for playing the Minecraft Experience of Wanlockhead. Hopefully we can see you in the village some day!\n",color:"white"}]
execute if score @s npc_seq matches 13 if score @s npc_timer matches 1 run scoreboard players set @s mu_001_state 2
execute if score @s npc_seq matches 13 if score @s npc_timer matches 1 run data modify entity @e[type=text_display,tag=NPC-MU-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute if score @s npc_seq matches 13 if score @s npc_timer matches 1 run scoreboard players reset @s npc_seq

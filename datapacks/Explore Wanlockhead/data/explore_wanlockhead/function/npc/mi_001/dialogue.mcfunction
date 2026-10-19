# Mines stages: movement happens only on an interaction after the final line at each stop.
execute if score @s npc_seq matches 41 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 4101
execute if score @s npc_seq matches 41 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Welcome to the Lochnell Mine, first things first, lets get you a hardhat. Wouldn't want you going in without proper safety equipment.\n",color:"white"},{text:"[Equip hardhat.]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4101"}}]
execute if score @s npc_seq matches 41 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 4102
execute if score @s npc_seq matches 41 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"This is Lochnell Mine, home to the only underground mine tour in Scotland. Active for 150 years from 1710 to 1860, the mine was excavated horizontally to follow a vein of ore called Galena, a mixture of lead and sulphur.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4102"}}]
execute if score @s npc_seq matches 41 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 4103
execute if score @s npc_seq matches 41 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"If you ever visit us in real life, don't do this... But since we are in Minecraft, take a pickaxe and grab some of the ore as we go!\n",color:"white"},{text:"[Equip pickaxe.]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4103"}}]
execute if score @s npc_seq matches 41 if score @s npc_timer matches 4 run scoreboard players set @s npc_prompt 4104
execute if score @s npc_seq matches 41 if score @s npc_timer matches 4 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"The section we'll explore is about 300 meters long, I'll tell you more about the mines inside, mind your head and don't forget your hard hat!\n",color:"white"},{text:"[Head inside...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4104"}}]
execute if score @s npc_seq matches 41 if score @s npc_timer matches 5 run scoreboard players set @s npc_prompt 4105
execute if score @s npc_seq matches 41 if score @s npc_timer matches 5 run function explore_wanlockhead:npc/mi_001/step_1

# Stage 2.
execute if score @s npc_seq matches 42 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 4201
execute if score @s npc_seq matches 42 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Watch your head as we head in. The timbers are low and the floor can be uneven. It stays between 10 and 12 degrees Celsius down here year-round. The mine naturally ventilates for the first 150 meters, but beyond that, a fan is required.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4201"}}]
execute if score @s npc_seq matches 42 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 4202
execute if score @s npc_seq matches 42 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"The first piece of Galena discovered in Williamson's Drift is worn down because the miners would touch it for good luck as they started their shifts.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4202"}}]
execute if score @s npc_seq matches 42 if score @s npc_timer matches 3 run function explore_wanlockhead:npc/mi_001/step_2

# Stage 3.
execute if score @s npc_seq matches 43 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 4301
execute if score @s npc_seq matches 43 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Mining was brutal work, heavily relying on children. Boys as young as eight worked outside in all seasons washing ore, and by twelve, they pulled ore sleds through the mine. These sleds weighed twice as much as the boys, and they earned just two or three pence for a 10-hour shift.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4301"}}]
execute if score @s npc_seq matches 43 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 4302
execute if score @s npc_seq matches 43 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"It wasn't until 1842 that it became illegal for boys under 10 to work underground.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4302"}}]
execute if score @s npc_seq matches 43 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 4303
execute if score @s npc_seq matches 43 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Hydrozincite, formed by acid rain reacting with zinc since the mine closed in 1860 has caused a white deposit on the walls down here. The orange you see is Iron Oxide, left behind when rainwater dissolves Iron Pyrite, or 'Fools Gold'. You'll also see green vegetation growing solely because of the artificial lighting.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4303"}}]
execute if score @s npc_seq matches 43 if score @s npc_timer matches 4 run function explore_wanlockhead:npc/mi_001/step_3

# Stage 4.
execute if score @s npc_seq matches 44 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 4401
execute if score @s npc_seq matches 44 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Here we are at the Gantry, the intersection where all three drifts (horizontal passages) connect. Notice the pick marks on the walls. Before explosives, the rock was dug entirely by hand using chisels or pickaxes.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4401"}}]
execute if score @s npc_seq matches 44 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 4402
execute if score @s npc_seq matches 44 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"To move men and ore vertically, they used a hand winch known as a Windlass and a bucket called a Kibble.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4402"}}]
execute if score @s npc_seq matches 44 if score @s npc_timer matches 3 run scoreboard players set @s npc_prompt 4403
execute if score @s npc_seq matches 44 if score @s npc_timer matches 3 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Miners worked in partnerships called 'Bargains', agreeing to extract a set amount of ore for a shared rate with a mine overseer. This allowed the mining companies to operate a large workforce with minimal supervision.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4403"}}]
execute if score @s npc_seq matches 44 if score @s npc_timer matches 4 run function explore_wanlockhead:npc/mi_001/step_4

# Stage 5.
execute if score @s npc_seq matches 45 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 4501
execute if score @s npc_seq matches 45 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Gunpowder was introduced here in the late 17th Century. It took two men two hours just to drill a 20-centimeter hole by hand for the explosives. A single blast only cleared enough rock to fill a modern wheelbarrow with rock and lead ore. Look up at the wooden platforms.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4501"}}]
execute if score @s npc_seq matches 45 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 4502
execute if score @s npc_seq matches 45 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Miners wedged stakes called 'stemples' across the veins to stand on. Rather than carrying waste rock—known as 'deads'—out of the mine, they stacked it on these timbers. When the wood inevitably rotted, the waste rock collapsed, frequently injuring the miners below.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4502"}}]
execute if score @s npc_seq matches 45 if score @s npc_timer matches 3 run function explore_wanlockhead:npc/mi_001/step_5

# Stage 6: the final interaction returns the guide to the entrance.
execute if score @s npc_seq matches 46 if score @s npc_timer matches 1 run scoreboard players set @s npc_prompt 4601
execute if score @s npc_seq matches 46 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"As the mine expanded in the mid-1800s, these rails were laid down so ore could be moved by mine carts. Below us is the Stope. This empty cavity where the galena was removed drops down another 1,000 feet.\n",color:"white"},{text:"[Next...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4601"}}]
execute if score @s npc_seq matches 46 if score @s npc_timer matches 2 run scoreboard players set @s npc_prompt 4602
execute if score @s npc_seq matches 46 if score @s npc_timer matches 2 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"This concludes the Lochnell Mine tour. Here's your token for guide at the museum. Lets head back!\n",color:"white"},{text:"[Return to the entrance...]",color:"green",click_event:{action:"run_command",command:"/trigger npc_next set 4602"}}]
execute if score @s npc_seq matches 46 if score @s npc_timer matches 3 run function explore_wanlockhead:npc/mi_001/finish

# Subsequent interactions repeat the placeholder.
execute if score @s npc_seq matches 47 if score @s npc_timer matches 1 run tellraw @s [{text:"\n\n[Mines Tour Guide] ",color:"yellow"},{text:"Repeat dialogue placeholder.\n",color:"white"}]
execute if score @s npc_seq matches 47 if score @s npc_timer matches 1 run data modify entity @e[type=text_display,tag=NPC-MI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute if score @s npc_seq matches 47 if score @s npc_timer matches 1 run scoreboard players reset @s npc_seq

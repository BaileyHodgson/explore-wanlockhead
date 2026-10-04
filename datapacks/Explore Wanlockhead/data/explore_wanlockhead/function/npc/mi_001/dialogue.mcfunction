# Stage 1: welcome and introduction
execute as @s[scores={npc_seq=41,npc_timer=2}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Welcome to the Lochnell Mine, first things first, lets get you a hardhat. Wouldn't want you going in without proper safety equipment.","color":"yellow"}
execute as @s[scores={npc_seq=41,npc_timer=100}] run tellraw @s {"text":"\n\n[Mines Tour Guide] This is Lochnell Mine, home to the only underground mine tour in Scotland. Active for 150 years from 1710 to 1860, the mine was excavated horizontally to follow a vein of ore called Galena, a mixture of lead and sulphur.","color":"yellow"}
execute as @s[scores={npc_seq=41,npc_timer=200}] run tellraw @s {"text":"\n\n[Mines Tour Guide] If you ever visit us in real life, don't do this... But since we are in Minecraft, take a pickaxe and grab some of the ore as we go!","color":"yellow"}
execute as @s[scores={npc_seq=41,npc_timer=300}] run tellraw @s {"text":"\n\n[Mines Tour Guide] The section we'll explore is about 300 meters long, I'll tell you more about the mines inside, mind your head and don't forget your hard hat!","color":"yellow"}
execute as @s[scores={npc_seq=41,npc_timer=301}] run function explore_wanlockhead:npc/mi_001/step_1

# Stage 2
execute as @s[scores={npc_seq=42,npc_timer=2}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Watch your head as we head in. The timbers are low and the floor can be uneven. It stays between 10 and 12 degrees Celsius down here year-round. The mine naturally ventilates for the first 150 meters, but beyond that, a fan is required.","color":"yellow"}
execute as @s[scores={npc_seq=42,npc_timer=100}] run tellraw @s {"text":"\n\n[Mines Tour Guide] The first piece of Galena discovered in Williamson's Drift is worn down because the miners would touch it for good luck as they started their shifts.","color":"yellow"}
execute as @s[scores={npc_seq=42,npc_timer=101}] run function explore_wanlockhead:npc/mi_001/step_2

# Stage 3
execute as @s[scores={npc_seq=43,npc_timer=2}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Mining was brutal work, heavily relying on children. Boys as young as eight worked outside in all seasons washing ore, and by twelve, they pulled ore sleds through the mine. These sleds weighed twice as much as the boys, and they earned just two or three pence for a 10-hour shift.","color":"yellow"}
execute as @s[scores={npc_seq=43,npc_timer=100}] run tellraw @s {"text":"\n\n[Mines Tour Guide] It wasn't until 1842 that it became illegal for boys under 10 to work underground.","color":"yellow"}
execute as @s[scores={npc_seq=43,npc_timer=200}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Hydrozincite, formed by acid rain reacting with zinc since the mine closed in 1860 has caused a white deposit on the walls down here. The orange you see is Iron Oxide, left behind when rainwater dissolves Iron Pyrite, or 'Fools Gold'. You'll also see green vegetation growing solely because of the artificial lighting.","color":"yellow"}
execute as @s[scores={npc_seq=43,npc_timer=201}] run function explore_wanlockhead:npc/mi_001/step_3

# Stage 4
execute as @s[scores={npc_seq=44,npc_timer=2}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Here we are at the Gantry, the intersection where all three drifts (horizontal passages) connect. Notice the pick marks on the walls. Before explosives, the rock was dug entirely by hand using chisels or pickaxes.","color":"yellow"}
execute as @s[scores={npc_seq=44,npc_timer=100}] run tellraw @s {"text":"\n\n[Mines Tour Guide] To move men and ore vertically, they used a hand winch known as a Windlass and a bucket called a Kibble.","color":"yellow"}
execute as @s[scores={npc_seq=44,npc_timer=200}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Miners worked in partnerships called 'Bargains', agreeing to extract a set amount of ore for a shared rate with a mine overseer. This allowed the mining companies to operate a large workforce with minimal supervision.","color":"yellow"}
execute as @s[scores={npc_seq=44,npc_timer=201}] run function explore_wanlockhead:npc/mi_001/step_4

# Stage 5
execute as @s[scores={npc_seq=45,npc_timer=2}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Gunpowder was introduced here in the late 17th Century. It took two men two hours just to drill a 20-centimeter hole by hand for the explosives. A single blast only cleared enough rock to fill a modern wheelbarrow with rock and lead ore. Look up at the wooden platforms.","color":"yellow"}
execute as @s[scores={npc_seq=45,npc_timer=100}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Miners wedged stakes called 'stemples' across the veins to stand on. Rather than carrying waste rock—known as 'deads'—out of the mine, they stacked it on these timbers. When the wood inevitably rotted, the waste rock collapsed, frequently injuring the miners below.","color":"yellow"}
execute as @s[scores={npc_seq=45,npc_timer=101}] run function explore_wanlockhead:npc/mi_001/step_5

# Stage 6: final interaction and return to the entrance
execute as @s[scores={npc_seq=46,npc_timer=2}] run tellraw @s {"text":"\n\n[Mines Tour Guide] As the mine expanded in the mid-1800s, these rails were laid down so ore could be moved by mine carts. Below us is the Stope. This empty cavity where the galena was removed drops down another 1,000 feet.","color":"yellow"}
execute as @s[scores={npc_seq=46,npc_timer=100}] run tellraw @s {"text":"\n\n[Mines Tour Guide] This concludes the Lochnell Mine tour. Here's your token for guide at the museum. Lets head back!","color":"yellow"}
execute as @s[scores={npc_seq=46,npc_timer=101}] run function explore_wanlockhead:npc/mi_001/finish

# Subsequent interactions use a repeat placeholder until the final copy is supplied.
execute as @s[scores={npc_seq=47,npc_timer=2}] run tellraw @s {"text":"\n\n[Mines Tour Guide] Repeat dialogue placeholder.","color":"yellow"}
execute as @s[scores={npc_seq=47,npc_timer=20}] run data modify entity @e[type=text_display,tag=NPC-MI-001_marker,sort=nearest,limit=1] text set value {text:"...",color:"yellow",bold:true}
execute as @s[scores={npc_seq=47,npc_timer=21..}] run scoreboard players reset @s npc_seq

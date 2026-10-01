# --- Sequence 11: First Visit ---
execute as @s[scores={npc_seq=11,npc_timer=2}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] Hello there, and welcome to Wanlockhead, the highest village in Scotland. It lies at over 1500 feet in the Lowther Hills, some thirty miles north of Dumfries and owes its existence to the mineral deposits in those hills.","color":"yellow"}
execute as @s[scores={npc_seq=11,npc_timer=100}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] We're so glad to see a new face around, ready to explore the history of the village and the people who lived here?","color":"yellow"}
execute as @s[scores={npc_seq=11,npc_timer=200}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] Behind me is the museum, head inside to learn more about the village, how it came to be, and how the mines got started. We've also got gold panning out back, if you want to try your hand, you're free to keep anything you find!","color":"yellow"}
execute as @s[scores={npc_seq=11,npc_timer=300}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] Around the village you'll find the library, cottage and mines. Each has their own guide to tell you more about the location, they also might need your help here and there. Once you're done, they'll hand you a token of their gratitude, try to collect them all!","color":"yellow"}
execute as @s[scores={npc_seq=11,npc_timer=400}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] Here's a map of the village so you can find your way about, be careful not to wander too far!","color":"yellow"}
execute as @s[scores={npc_seq=11,npc_timer=500}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] We hope you enjoy your time here, see you later!","color":"yellow"}
execute as @s[scores={npc_seq=11,npc_timer=501}] run scoreboard players set @s mu_001_state 1
execute as @s[scores={npc_seq=11,npc_timer=501}] run tag @s remove mu_001_bound
execute as @s[scores={npc_seq=11,npc_timer=502..}] run scoreboard players reset @s npc_seq

# --- Sequence 12: Repeat Visit ---
execute as @s[scores={npc_seq=12,npc_timer=2}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] Have you got all the tokens? Keep exploring the village of Wanlockhead!","color":"yellow"}
execute as @s[scores={npc_seq=12,npc_timer=100..}] run scoreboard players reset @s npc_seq

# --- Sequence 13: All Tokens Collected ---
execute as @s[scores={npc_seq=13,npc_timer=2}] run tellraw @s {"text":"\n\n[Wanlockhead Guide] Thanks for playing the Minecraft Experience of Wanlockhead. Hopefully we can see you in the village some day!","color":"yellow"}
execute as @s[scores={npc_seq=13,npc_timer=100..}] run scoreboard players reset @s npc_seq

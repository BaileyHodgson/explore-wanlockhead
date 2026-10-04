function explore_wanlockhead:core/reset

# ==========================================
# WORLD BORDER SETTINGS
# ==========================================
worldborder center -181.5 -97.5
worldborder set 510

# --- Wanlockhead Guide (NPC-MU-001) ---
summon mannequin -154.5 56 54.5 {Team:"museum_npcs",Tags:["museum_system","NPC-MU-001"],NoAI:1b,NoGravity:1b,Invulnerable:1b,profile:{texture:"entity/player/wide/sunny",model:"wide"}}
summon interaction -154.5 56 54.5 {Tags:["museum_system","NPC-MU-001_hit"],width:1.5f,height:2.2f}
summon text_display -154.5 58.5 54.5 {Tags:["museum_system","NPC-MU-001_marker"],billboard:"center",text:{text:"!",color:"red",bold:true},transformation:{scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Museum Guide 1 (NPC-MU-002) ---
summon mannequin -136.5 3 54.5 {Team:"museum_npcs",Tags:["museum_system","NPC-MU-002"],NoAI:1b,NoGravity:1b,Invulnerable:1b,profile:{texture:"entity/player/slim/efe",model:"slim"}}
summon interaction -136.5 3 54.5 {Tags:["museum_system","NPC-MU-002_hit"],width:1.5f,height:2.2f}
summon text_display -136.5 5.5 54.5 {Tags:["museum_system","NPC-MU-002_marker"],billboard:"center",text:{text:"!",color:"red",bold:true},transformation:{scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Museum Guide 2 (NPC-MU-003) ---
summon mannequin -135.5 3 43.5 {Team:"museum_npcs",Tags:["museum_system","NPC-MU-003"],NoAI:1b,NoGravity:1b,Invulnerable:1b,profile:{texture:"entity/player/wide/zuri",model:"wide"}}
summon interaction -135.5 3 43.5 {Tags:["museum_system","NPC-MU-003_hit"],width:1.5f,height:2.2f}
summon text_display -135.5 5.5 43.5 {Tags:["museum_system","NPC-MU-003_marker"],billboard:"center",text:{text:"!",color:"red",bold:true},transformation:{scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Mines Tour Guide (NPC-MI-001) ---
summon mannequin -265.5 46 -88.5 {Team:"museum_npcs",Tags:["museum_system","NPC-MI-001"],NoAI:1b,NoGravity:1b,Invulnerable:1b,profile:{texture:"entity/player/wide/steve",model:"wide"}}
summon interaction -265.5 46 -88.5 {Tags:["museum_system","NPC-MI-001_hit"],width:1.5f,height:2.2f}
summon text_display -265.5 48.5 -88.5 {Tags:["museum_system","NPC-MI-001_marker"],billboard:"center",text:{text:"!",color:"red",bold:true},transformation:{scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Library Guide (NPC-LI-001) ---
summon mannequin -38.5 71 0.5 {Team:"museum_npcs",Tags:["museum_system","NPC-LI-001"],NoAI:1b,NoGravity:1b,Invulnerable:1b,profile:{texture:"entity/player/slim/alex",model:"slim"}}
summon interaction -38.5 71 0.5 {Tags:["museum_system","NPC-LI-001_hit"],width:1.5f,height:2.2f}
summon text_display -38.5 73.5 0.5 {Tags:["museum_system","NPC-LI-001_marker"],billboard:"center",text:{text:"!",color:"red",bold:true},transformation:{scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Cottage Guide (NPC-CO-001) ---
summon mannequin -396.5 48 -319.5 {Team:"museum_npcs",Tags:["museum_system","NPC-CO-001"],NoAI:1b,NoGravity:1b,Invulnerable:1b,profile:{texture:"entity/player/wide/kai",model:"wide"}}
summon interaction -396.5 48 -319.5 {Tags:["museum_system","NPC-CO-001_hit"],width:1.5f,height:2.2f}
summon text_display -396.5 50.5 -319.5 {Tags:["museum_system","NPC-CO-001_marker"],billboard:"center",text:{text:"!",color:"red",bold:true},transformation:{scale:[2.0f,2.0f,2.0f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Museum Door 1 Outside (DOOR-MU-001) ---
summon interaction -135.5 56 62.0 {Tags:["museum_system","DOOR-MU-001"],width:2.0f,height:2.0f}
summon text_display -135.5 57.25 62.0 {Tags:["museum_system","DOOR-MU-001_marker"],billboard:"center",text:{text:"Enter 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Museum Door 1 Inside (DOOR-MU-002) ---
summon interaction -144.5 3 48.0 {Tags:["museum_system","DOOR-MU-002"],width:2.0f,height:2.0f}
summon text_display -144.5 4.25 48.0 {Tags:["museum_system","DOOR-MU-002_marker"],billboard:"center",text:{text:"Exit 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Museum Door 2 Outside (DOOR-MU-003) ---
summon interaction -119.0 57 70.5 {Tags:["museum_system","DOOR-MU-003"],width:2.0f,height:2.0f}
summon text_display -119.0 58.25 70.5 {Tags:["museum_system","DOOR-MU-003_marker"],billboard:"center",text:{text:"Enter 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Museum Door 2 Inside (DOOR-MU-004) ---
summon interaction -128.0 6 57.5 {Tags:["museum_system","DOOR-MU-004"],width:2.0f,height:2.0f}
summon text_display -128.0 7.25 57.5 {Tags:["museum_system","DOOR-MU-004_marker"],billboard:"center",text:{text:"Exit 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Library Door 1 Outside (DOOR-LI-001) ---
summon interaction -42.5 72 -1.5 {Tags:["museum_system","DOOR-LI-001"],width:1.0f,height:2.0f}
summon text_display -42.5 73.25 -1.5 {Tags:["museum_system","DOOR-LI-001_marker"],billboard:"center",text:{text:"Enter 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Library Door 1 Inside (DOOR-LI-002) ---
summon interaction -37.5 51 -5.5 {Tags:["museum_system","DOOR-LI-002"],width:1.0f,height:2.0f}
summon text_display -37.5 52.25 -5.5 {Tags:["museum_system","DOOR-LI-002_marker"],billboard:"center",text:{text:"Exit 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Cottage Door 1 Outside (DOOR-CO-001) ---
summon interaction -395.5 48 -321.5 {Tags:["museum_system","DOOR-CO-001"],width:1.0f,height:2.0f}
summon text_display -395.5 49.25 -321.5 {Tags:["museum_system","DOOR-CO-001_marker"],billboard:"center",text:{text:"Enter 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Cottage Door 1 Inside (DOOR-CO-002) ---
summon interaction -389.5 8 -316.5 {Tags:["museum_system","DOOR-CO-002"],width:2.0f,height:2.0f}
summon text_display -389.5 9.25 -316.5 {Tags:["museum_system","DOOR-CO-002_marker"],billboard:"center",text:{text:"Exit 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# --- Cottage Door 2 Inside (DOOR-CO-003) ---
summon interaction -401.5 8 -316.5 {Tags:["museum_system","DOOR-CO-003"],width:2.0f,height:2.0f}
summon text_display -401.5 9.25 -316.5 {Tags:["museum_system","DOOR-CO-003_marker"],billboard:"center",text:{text:"Exit 🖱",color:"yellow",bold:true},transformation:{scale:[1.5f,1.5f,1.5f],translation:[0.0f,0.0f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}

# RESET PLAYER
tp @a -166.40 56.00 54.34 -90 0
gamemode adventure @a

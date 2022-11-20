// Guitar Hero
// #ID = 7994
function profile_slot() => dword(0x00b8a698)
//Venues Indices:
//1. Opening Licks: 0-4
//2. Axe-Grinders: 5-9
//3. Thrash and Burn: 10-14
//4. Return of the Shred: 15-19
//5. Fret-Burners: 20-24
//6. Face-Melters: 25-29
function populate_profile_alt_clears(difficulty_table, start, end){
    logic = always_false()
    for i in range(0, 7){
        logic = logic || sum_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), b => prev(dword(b)) == 1) == 4 &&
        measured(sum_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), b => dword(b) == 1) == 5, profile_slot() == i)
    }
    return logic
}
//Career Tables
easy_clears = {
    0:0x00b8c5a4,
    1:0x00b8d474,
    2:0x00b99514,
    3:0x00b9b2b4,
    4:0x00b9edf4,
    5:0x00ba2934,
    6:0x00ba6474,
    7:0x00ba9fb4
}
achievement(
    "Easy Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 0, 4)        
)
achievement(
    "Easy Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 5, 9)
)
achievement(
    "Easy Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 10, 14)
)
achievement(
    "Easy Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 15, 19)
)
achievement(
    "Easy Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 20, 24)
)
medium_clears = {
    0:0x00b93af4,
    1:0x00b97774,
    2:0x00b9c184,
    3:0x00b9fcc4,
    4:0x00ba3804,
    5:0x00ba7344,
    6:0x00baae84,
    7:0x00bae9c4
}
achievement(
    "Medium Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 0, 4)        
)
achievement(
    "Medium Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 5, 9)
)
achievement(
    "Medium Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 10, 14)
)
achievement(
    "Medium Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 15, 19)
)
achievement(
    "Medium Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 20, 24)
)
achievement(
    "Medium Face-Melters",
    "Clear all Career mode songs in the \"Face-Melters\" setlist on Medium (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(medium_clears, 25, 29)
)
hard_clears = {
    0:0x00b949c4,
    1:0x00b98644,
    2:0x00b9d054,
    3:0x00ba0b94,
    4:0x00ba46d4,
    5:0x00ba8214,
    6:0x00babd54,
    7:0x00baf894
}
achievement(
    "Hard Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Hard (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(hard_clears, 0, 4)        
)
achievement(
    "Hard Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 5, 9)
)
achievement(
    "Hard Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 10, 14)
)
achievement(
    "Hard Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 15, 19)
)
achievement(
    "Hard Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 20, 24)
)
achievement(
    "Hard Face-Melters",
    "Clear all Career mode songs in the \"Face-Melters\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 25, 29)
)
expert_clears = {
    0:0x00b8a8b4,
    1:0x00b92ae4,
    2:0x00b9a3e4,
    3:0x00b9df24,
    4:0x00ba1a64,
    5:0x00ba55a4,
    6:0x00ba90e4,
    7:0x00bacc24
}
achievement(
    "Expert Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Expert (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(expert_clears, 0, 4)        
)
achievement(
    "Expert Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 5, 9)
)
achievement(
    "Expert Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 10, 14)
)
achievement(
    "Expert Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 15, 19)
)
achievement(
    "Expert Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 20, 24)
)
achievement(
    "Expert Face-Melters",
    "Clear all Career mode songs in the \"Face-Melters\" setlist on Expert (One Profile)",
    points=25,
    trigger=
        populate_profile_alt_clears(expert_clears, 25, 29)
)
function populate_profile_star_clears(difficulty_table, songs, start, end){
    logic = always_false()
    for i in range(0, 7)
       {     
            logic = logic ||
            unless(profile_slot() != i) &&
            tally_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), songs - 1, b => once(prev(dword(b)) == 5)) &&
            measured(tally_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), songs, b => once(prev(dword(b)) == 5))) &&
            never(tally_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), songs, b => once(prev(dword(b)) == 5)))            
       }          
    return logic
}
easy_stars = {
    0:0x00b8c5ac, 
    1:0x00b8d47c,
    2:0x00b9951c,
    3:0x00b9b2bc,
    4:0x00b9edfc,
    5:0x00ba293c,
    6:0x00ba647c,
    7:0x00ba9fbc
}
achievement(
    "Easy Stars, Easy Points",
    "Obtain 5 star clears on all Career mode songs on Easy (One Profile)",
    points=10,
    trigger=
        populate_profile_star_clears(easy_stars, 25, 0, 24)
)
medium_stars = {
    0:0x00b93afc,
    1:0x00b9777c,
    2:0x00b9c18c,
    3:0x00b9fccc,
    4:0x00ba380c,
    5:0x00ba734c,
    6:0x00baae8c,
    7:0x00bae9cc
}
achievement(
    "Medium Career, But Still... Five Stars!",
    "Obtain 5 star clears on all Career mode songs on Medium (One Profile)",
    points=25,
    trigger=
        populate_profile_star_clears(medium_stars, 30, 0, 29)
)
hard_stars = {
    0:0x00b949cc,
    1:0x00b9864c,
    2:0x00b9d05c,
    3:0x00ba0b9c,
    4:0x00ba46dc,
    5:0x00ba821c,
    6:0x00babd5c,
    7:0x00baf89c
}
achievement(
    "Hard Rhythm Rocker",
    "Obtain 5 star clears on all Career mode songs on Hard (One Profile)",
    points=50,
    trigger=
        populate_profile_star_clears(hard_stars, 30, 0, 29)
)
expert_main_list_names = {
    0:{"Name": "I Love Rock & Roll", "Score": 10},
    1:{"Name": "I Wanna Be Sedated", "Score": 10},
    2:{"Name": "Thunder Kiss 65", "Score": 10},
    3:{"Name": "Smoke On The Water", "Score": 10},
    4:{"Name": "Infected", "Score": 10},
    5:{"Name": "Iron Man", "Score": 10},
    6:{"Name": "More Than A Feeling", "Score": 10},
    7:{"Name": "You Got Another Thing Comin'", "Score": 10},
    8:{"Name": "Take Me Out", "Score": 10},
    9:{"Name": "Sharp Dressed Man", "Score": 10},
    10:{"Name": "Killer Queen", "Score": 10},
    11:{"Name": "Hey You", "Score": 10},
    12:{"Name": "Stellar", "Score": 10},
    13:{"Name": "Heart Full of Black", "Score": 10},
    14:{"Name": "Symphony of Destruction", "Score": 10},
    15:{"Name": "Ziggy Stardust", "Score": 10},
    16:{"Name": "Fat Lip", "Score": 10},
    17:{"Name": "Cochise", "Score": 10},
    18:{"Name": "Take It Off", "Score": 10},
    19:{"Name": "Unsung", "Score": 10},
    20:{"Name": "Spanish Castle Magic", "Score": 10},
    21:{"Name": "Higher Ground", "Score": 10},
    22:{"Name": "No One Knows", "Score": 10},
    23:{"Name": "Ace of Spades", "Score": 10},
    24:{"Name": "Crossroads", "Score": 10},
    25:{"Name": "Godzilla", "Score": 10},
    26:{"Name": "Texas Flood", "Score": 10},
    27:{"Name": "Frankenstein", "Score": 10},
    28:{"Name": "Cowboys From Hell", "Score": 10},
    29:{"Name": "Bark At The Moon", "Score": 10}
}
expert_stars = {
    0:0x00b8a8bc,
    1:0x00b92aec,
    2:0x00b9a3ec,
    3:0x00b9df2c,
    4:0x00ba1a6c,
    5:0x00ba55ac,
    6:0x00ba90ec,
    7:0x00bacc2c
}
function five_star_clear(indice){
    logic=always_false()
    for i in range(0, 7){
        logic = logic || profile_slot() == i &&
                prev(dword(expert_stars[i] + (0x20 * indice))) != 5 &&
                dword(expert_stars[i] + (0x20 * indice)) == 5
    }
    return logic
}
function save_protection() => prev(byte(0x00b8a8bd)) != 0
for i in range(0, length(expert_main_list_names) - 1){
    achievement(
        expert_main_list_names[i]["Name"] + " - Expert Five Stars",
        "Get an Expert Five Star clear on " + expert_main_list_names[i]["Name"] + " in Career mode.",
        points= expert_main_list_names[i]["Score"],
        trigger=
            save_protection() &&
            five_star_clear(i)
    )    
}
bonus_list = {
    0:{"ID":0x0044cc24, "NAME": "Fire It Up", "CUTOFF": 120777, "SCORE": 10},
    1:{"ID":0x0044cabc, "NAME": "Cheat On The Church", "CUTOFF": 176865, "SCORE": 10},
    2:{"ID":0x0044ca61, "NAME": "Caveman Rejoice", "CUTOFF": 142482, "SCORE": 10},
    3:{"ID":0x0044cb63, "NAME": "Eureka, I've Found Love", "CUTOFF": 121245, "SCORE": 10},
    4:{"ID":0x0044c93b, "NAME": "All Of This", "CUTOFF": 124704, "SCORE": 10},
    5:{"ID":0x0044c97d, "NAME": "Behind The Mask", "CUTOFF": 84600, "SCORE": 10},
    6:{"ID":0x0044c9d3, "NAME": "The Breaking Wheel", "CUTOFF": 252516, "SCORE": 10},
    7:{"ID":0x0044ca29, "NAME": "Callout", "CUTOFF": 149853, "SCORE": 10},
    8:{"ID":0x0044cb21, "NAME": "Decontrol", "CUTOFF": 185346, "SCORE": 25},
    9:{"ID":0x0044cb96, "NAME": "Even Rats", "CUTOFF": 214314, "SCORE": 10},
    10:{"ID":0x0044cbd3, "NAME": "Farewell Myth", "CUTOFF": 172083, "SCORE": 10},
    11:{"ID":0x0044cc82, "NAME": "Fly On The Wall", "CUTOFF": 134109, "SCORE": 10},
    12:{"ID":0x0044ccd3, "NAME": "Get Ready 2 Rokk", "CUTOFF": 172014, "SCORE": 25},
    13:{"ID":0x0044cd29, "NAME": "Guitar Hero", "CUTOFF": 178146, "SCORE": 10},
    14:{"ID":0x0044cd70, "NAME": "Hey", "CUTOFF": 84000, "SCORE": 10},
    15:{"ID":0x0044cd94, "NAME": "Sail Your Ship By", "CUTOFF": 155376, "SCORE": 10},
    16:{"ID":0x0044cdef, "NAME": "Story of My Love", "CUTOFF": 188118, "SCORE": 10}
}
function song_ID() => dword(0x00b96100)
function screen_ID() => dword(0x00369334)
//0x00b962e0=In Song
//0x00bb17e0=Loading Into Results
//0x00bb18d0=Results Screen
load_results = 0x00bb17e0
results_screen = 0x00bb18d0
function score() => dword(dword(dword(0xb95ef4)  + 0x0) + 0x20)
function difficulty() => dword(0x00b960f8)
expert = 3
my_id = 268085
for i in range(0, 16){
    achievement(
        bonus_list[i]["NAME"] + " - Expert Five Stars",
        "Get an Expert Five star clear on the Bonus song " + "\"" + bonus_list[i]["NAME"] + "\"",
        points=bonus_list[i]["SCORE"],
        id = my_id,
        trigger=
            song_ID() == bonus_list[i]["ID"] &&
            difficulty() == expert &&
            score() >= bonus_list[i]["CUTOFF"] &&
            prev(screen_ID()) == load_results &&
            screen_ID() == results_screen
    )
    my_id = my_id + 1
}
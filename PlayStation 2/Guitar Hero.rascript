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
        logic = logic || sum_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), b => prev(dword(b))) == 4 &&
        measured(sum_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), b => dword(b)) == 5, profile_slot() == i)
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
       {     //
            logic = logic ||
            unless(profile_slot() != i) &&
            tally_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), songs - 1, b => once(prev(byte(b)) == 5)) &&
            measured(tally_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), songs, b => once(byte(b) == 5))) &&
            never(tally_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), songs, b => once(prev(byte(b)) == 5)))            
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
                prev(byte(expert_stars[i] + (0x20 * indice))) != 5 &&
                byte(expert_stars[i] + (0x20 * indice)) == 5
    }
    return logic
}
screen_ID = dword(0x00369334)
screen_game_load = 0xb8c440
function get_curr_screen(param){
    return screen_ID == param
}
function save_protection() => !prev(get_curr_screen(screen_game_load))
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
in_song = 0x00b962e0
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
//Define the order in which all tables store profile number & difficulty for MeasuredIf conditions on shop achievements (Where applicable).
difficulty_profiles = {
    0:{"Profile":0, "Difficulty":3},
    1:{"Profile":1, "Difficulty":3},
    2:{"Profile":0, "Difficulty":1},
    3:{"Profile":0, "Difficulty":2},
    4:{"Profile":1, "Difficulty":1},
    5:{"Profile":1, "Difficulty":2},
    6:{"Profile":2, "Difficulty":3},
    7:{"Profile":2, "Difficulty":1},
    8:{"Profile":2, "Difficulty":2},
    9:{"Profile":3, "Difficulty":3},
    10:{"Profile":3, "Difficulty":1},
    11:{"Profile":3, "Difficulty":2},
    12:{"Profile":4, "Difficulty":3},
    13:{"Profile":4, "Difficulty":1},
    14:{"Profile":4, "Difficulty":2},
    15:{"Profile":5, "Difficulty":3},
    16:{"Profile":5, "Difficulty":1},
    17:{"Profile":5, "Difficulty":2},
    18:{"Profile":6, "Difficulty":3},
    19:{"Profile":6, "Difficulty":1},
    20:{"Profile":6, "Difficulty":2},
    21:{"Profile":7, "Difficulty":3},
    22:{"Profile":7, "Difficulty":1},
    23:{"Profile":7, "Difficulty":2}
}
//Array starts for song shop flags: each difficulty (Medium-Expert) per save slot.
shop_guitar_heads = {
    0:0x00b8afec,
    1:0x00b9321c,
    2:0x00b9422c,
    3:0x00b950fc,
    4:0x00b97eac,
    5:0x00b98d7c,
    6:0x00b9ab1c,
    7:0x00b9c8bc,
    8:0x00b9d78c,
    9:0x00b9e65c,
    10:0x00ba03fc,
    11:0x00ba12cc,
    12:0x00ba219c,
    13:0x00ba3f3c,
    14:0x00ba4e0c,
    15:0x00ba5cdc,
    16:0x00ba7a7c,
    17:0x00ba894c,
    18:0x00ba981c,
    19:0x00bab5bc,
    20:0x00bac48c,
    21:0x00bad35c,
    22:0x00baf0fc,
    23:0x00baffcc
}
function shop_cheevo_guitars(){ //7 Guitar flags total.    
    logic = always_false() 
    for i in range(0, 23){
    measure_when = profile_slot() == difficulty_profiles[i]["Profile"] && difficulty() == difficulty_profiles[i]["Difficulty"]
        logic = logic || 
                        prev(sum_of(range(shop_guitar_heads[i], shop_guitar_heads[i] + 6 * 32, 32), b => dword(b))) == 6 &&
                        measured(sum_of(range(shop_guitar_heads[i], shop_guitar_heads[i] + 6 * 32, 32), b => dword(b)) == 7, measure_when)                                                                                                                                         
    }
    return logic
}
achievement(
    "Guitars to Rock On!",
    "Buy all Guitars from the shop! (All on One Difficulty)",
    points=5,
    trigger=
        shop_cheevo_guitars()
)
shop_skins_padding = { //In memory, skins have dummy values in between actual flags (probably placeholders). This array will be used to summate the actual flags and skip over dummy ones.
    0:0,
    1:32,
    2:32,
    3:64,
    4:32,
    5:32,
    6:64,
    7:32,
    8:32,
    9:64,
    10:32,
    11:32,
    12:64,
    13:32,
    14:32,
    15:64,
    16:32,
    17:32,
    18:64,
    19:32,
    20:32,
    21:64,
    22:32,
    23:32,
    24:64,
    25:32,
    26:32,
    27:64
}
shop_skins_heads = {
    0:0x00b8b14c,
    1:0x00b9337c,
    2:0x00b9438c,
    3:0x00b9525c,
    4:0x00b9800c,
    5:0x00b98edc,
    6:0x00b9ac7c,
    7:0x00b9ca1c,
    8:0x00b9d8ec,
    9:0x00b9e7bc,
    10:0x00ba055c,
    11:0x00ba142c,
    12:0x00ba22fc,
    13:0x00ba409c,
    14:0x00ba4f6c,
    15:0x00ba5e3c,
    16:0x00ba7bdc,
    17:0x00ba8aac,
    18:0x00ba997c,
    19:0x00bab71c,
    20:0x00bac5ec,
    21:0x00bad4bc,
    22:0x00baf25c,
    23:0x00bb012c

}
function skins_generate_sum_chain(base_address) {
    my_list = 0
    for i  in range(0, 27) {
        base_address = base_address + shop_skins_padding[i]
        my_list = my_list + dword(base_address)
        
    }
    return my_list
}
function shop_cheevo_skins(){
    logic = always_false()
    for i in range(0, 23){
        measure_when = profile_slot() == difficulty_profiles[i]["Profile"] && difficulty() == difficulty_profiles[i]["Difficulty"]
        address_list = skins_generate_sum_chain(shop_skins_heads[i])
        logic = logic || prev(address_list) == 27 && measured(address_list == 28, measure_when)
    }
    return logic
}
achievement(
    "Customizer Freak",
    "Buy all Skins from the shop! (All on One Difficulty)",
    points=10,
    trigger=
        shop_cheevo_skins()
)
shop_bonus_array_heads = {
    0:0x00b8ac6c,
    1:0x00b92e9c,
    2:0x00b93eac,
    3:0x00b94d7c,
    4:0x00b97b2c,
    5:0x00b989fc,
    6:0x00b9a79c,
    7:0x00b9c53c,
    8:0x00b9d40c,
    9:0x00b9e2dc,
    10:0x00ba007c,
    11:0x00ba0f4c,
    12:0x00ba1e1c,
    13:0x00ba3bbc,
    14:0x00ba4a8c,
    15:0x00ba595c,
    16:0x00ba76fc,
    17:0x00ba85cc,
    18:0x00ba949c,
    19:0x00bab23c,
    20:0x00bac10c,
    21:0x00bacfdc,
    22:0x00baed7c,
    23:0x00bafc4c
}
function shop_cheevo_songs(){ //17 Bonus song flags total.    
    logic = always_false() 
    for i in range(0, 23){
        measure_when = profile_slot() == difficulty_profiles[i]["Profile"] && difficulty() == difficulty_profiles[i]["Difficulty"]
        logic = logic || 
                        prev(sum_of(range(shop_bonus_array_heads[i], shop_bonus_array_heads[i] + 16 * 32, 32), b => dword(b))) == 16 &&
                        measured(sum_of(range(shop_bonus_array_heads[i], shop_bonus_array_heads[i] + 16 * 32, 32), b => dword(b)) == 17, measure_when)                                                                                                                                         
    }
    return logic
}
achievement(
        "Song Collector",
        "Buy all extra songs from the shop! (All on One Difficulty)",
        points=10,
        trigger=
            shop_cheevo_songs()
)
function shop_cheevo_char(head_array){
    logic = always_false()
    for i in range(0, 23){
        shop_check = profile_slot() == difficulty_profiles[i]["Profile"] && difficulty() == difficulty_profiles[i]["Difficulty"]
        logic = logic  || shop_check && prev(dword(head_array[i])) == 0 && dword(head_array[i]) == 1
    }
    return logic
}
shop_character_izzy_sparks_heads = {
    0:0x00b8af2c,
    1:0x00b9315c,
    2:0x00b9416c,
    3:0x00b9503c,
    4:0x00b97dec,
    5:0x00b98cbc,
    6:0x00b9aa5c,
    7:0x00b9c7fc,
    8:0x00b9d6cc,
    9:0x00b9e59c,
    10:0x00ba033c,
    11:0x00ba120c,
    12:0x00ba20dc,
    13:0x00ba3e7c,
    14:0x00ba4d4c,
    15:0x00ba5c1c,
    16:0x00ba79bc,
    17:0x00ba888c,
    18:0x00ba975c,
    19:0x00bab4fc,
    20:0x00bac3cc,
    21:0x00bad29c,
    22:0x00baf03c,
    23:0x00baff0c
}
achievement(
    "Sparkin' It Up!",
    "Purchase Izzy Sparks from the shop!",
    points=10,
    trigger=
        save_protection() && 
        shop_cheevo_char(shop_character_izzy_sparks_heads)
)
shop_character_grim_ripper_heads = {
    0:0x00b8af6c,
    1:0x00b9319c,
    2:0x00b941ac,
    3:0x00b9507c,
    4:0x00b97e2c,
    5:0x00b98cfc,
    6:0x00b9aa9c,
    7:0x00b9c83c,
    8:0x00b9d70c,
    9:0x00b9e5dc,
    10:0x00ba037c,
    11:0x00ba124c,
    12:0x00ba211c,
    13:0x00ba3ebc,
    14:0x00ba4d8c,
    15:0x00ba5c5c,
    16:0x00ba79fc,
    17:0x00ba88cc,
    18:0x00ba979c,
    19:0x00bab53c,
    20:0x00bac40c,
    21:0x00bad2dc,
    22:0x00baf07c,
    23:0x00baff4c
}
achievement(
    "Death Speaks",
    "Purchase Grim Ripper from the shop!",
    points=10,
    trigger=
        save_protection() &&
        shop_cheevo_char(shop_character_grim_ripper_heads)
)
shop_video_heads = {
    0:0x00b8b64c,
    1:0x00b9387c,
    2:0x00b9488c,
    3:0x00b9575c,
    4:0x00b9850c,
    5:0x00b993dc,
    6:0x00b9b17c,
    7:0x00b9cf1c,
    8:0x00b9ddec,
    9:0x00b9ecbc,
    10:0x00ba0a5c,
    11:0x00ba192c,
    12:0x00ba27fc,
    13:0x00ba459c,
    14:0x00ba546c,
    15:0x00ba633c,
    16:0x00ba80dc,
    17:0x00ba8fac,
    18:0x00ba9e7c,
    19:0x00babc1c,
    20:0x00bacaec,
    21:0x00bad9bc,
    22:0x00baf75c,
    23:0x00bb062c
}
function shop_cheevo_videos(){ //3 Video shop flags total.   
    logic = always_false() 
    for i in range(0, 23){
    measure_when = profile_slot() == difficulty_profiles[i]["Profile"] && difficulty() == difficulty_profiles[i]["Difficulty"]
        logic = logic || 
                        prev(sum_of(range(shop_video_heads[i], shop_video_heads[i] + 2 * 32, 32), b => dword(b))) == 2 &&
                        measured(sum_of(range(shop_video_heads[i], shop_video_heads[i] + 2 * 32, 32), b => dword(b)) == 3, measure_when)                                                                                                                                         
    }
    return logic
}
achievement(
    "Lore Collector",
    "Purchase all Videos from the shop! (All on One Difficulty)",
    points=10,
    trigger=
        shop_cheevo_videos()
)
leaderboard_list = {
    0:{"Name":"I Love Rock & Roll", "ID":0x0044c301},
    1:{"Name":"I Wanna Be Sedated", "ID":0x0044c3db},
    2:{"Name":"Thunder Kiss 65", "ID":0x0044c7d4},
    3:{"Name":"Smoke On The Water", "ID":0x0044c593},
    4:{"Name":"Infected", "ID":0x0044c366},
    5:{"Name":"Iron Man", "ID":0x0044c3a3},
    6:{"Name":"More Than A Feeling", "ID":0x0044c487},
    7:{"Name":"You Got Another Thing Comin'", "ID":0x0044c85d},
    8:{"Name":"Take Me Out", "ID":0x0044c74b},
    9:{"Name":"Sharp Dressed Man", "ID":0x0044c533},
    10:{"Name":"Killer Queen", "ID":0x0044c43b},
    11:{"Name":"Hey You", "ID":0x0044c27d},
    12:{"Name":"Stellar", "ID":0x0044c662},
    13:{"Name":"Heart Full of Black", "ID":0x0044c218},
    14:{"Name":"Symphony of Destruction", "ID":0x0044c69a},
    15:{"Name":"Ziggy Stardust", "ID":0x0044c8e5},
    16:{"Name":"Fat Lip", "ID":0x0044c157},
    17:{"Name":"Cochise", "ID":0x0044c06e},
    18:{"Name":"Take It Off", "ID":0x0044c709},
    19:{"Name":"Unsung", "ID":0x0044c82a},
    20:{"Name":"Spanish Castle Magic", "ID":0x0044c5f3},
    21:{"Name":"Higher Ground", "ID":0x0044c2b0},
    22:{"Name":"No One Knows", "ID":0x0044c4ec},
    23:{"Name":"Ace of Spades", "ID":0x0044bf61},
    24:{"Name":"Crossroads", "ID":0x0044c110},
    25:{"Name":"Godzilla", "ID":0x0044c1db},
    26:{"Name":"Texas Flood", "ID":0x0044c78d},
    27:{"Name":"Frankenstein", "ID":0x0044c18a},
    28:{"Name":"Cowboys From Hell", "ID":0x0044c0b0},
    29:{"Name":"Bark At The Moon", "ID":0x0044c009},
    30:{"Name":"Fire It Up", "ID":0x0044cc24},
    31:{"Name":"Cheat On The Church", "ID":0x0044cabc},
    32:{"Name":"Caveman Rejoice", "ID":0x0044ca61},
    33:{"Name":"Eureka, I've Found Love", "ID":0x0044cb63},
    34:{"Name":"All Of This", "ID":0x0044c93b},
    35:{"Name":"Behind The Mask", "ID":0x0044c97d},
    36:{"Name":"The Breaking Wheel", "ID":0x0044c9d3},
    37:{"Name":"Callout", "ID":0x0044ca29},
    38:{"Name":"Decontrol", "ID":0x0044cb21},
    39:{"Name":"Even Rats", "ID":0x0044cb96},
    40:{"Name":"Farewell Myth", "ID":0x0044cbd3},
    41:{"Name":"Fly On The Wall", "ID":0x0044cc82},
    42:{"Name":"Get Ready 2 Rokk", "ID":0x0044ccd3},
    43:{"Name":"Guitar Hero", "ID":0x0044cd29},
    44:{"Name":"Hey", "ID":0x0044cd70},
    45:{"Name":"Sail Your Ship By", "ID":0x0044cd94},
    46:{"Name":"Story of My Love", "ID":0x0044cdef}
}
function game_state() => dword(0x00b96018)
in_menu = 0
in_game = 1
restart = 2
//function difficulty() => dword(0x00b960f8)
difficulty_list = {
    0:"Easy",
    1:"Medium",
    2:"Hard",
    3:"Expert"
}
for i in range(0, 46){ //Song list length
    for j in range(0, 3){
        leaderboard(
            leaderboard_list[i]["Name"] + " - " + difficulty_list[j],
            "Highest score!",
            game_state() == in_game && screen_ID() == in_song && difficulty() == j && song_ID() == leaderboard_list[i]["ID"] && score() != 0,
            score() < prev(score()) || game_state() == in_menu,
            game_state() == in_game && screen_ID() == results_screen,
            score(),
            "VALUE",
            false
        )
    }
}
//Rich Presence
function combo() => dword(dword(dword(0xb95ef4)  + 0x0) + 0x24) //Required for in-song string!
songs_rp_list = { //ID:ASCII string Song Name
    0x0044c301:"I Love Rock & Roll",
    0x0044c3db:"I Wanna Be Sedated",
    0x0044c7d4:"Thunder Kiss 65",
    0x0044c593:"Smoke On The Water",
    0x0044c366:"Infected",
    0x0044c3a3:"Iron Man",
    0x0044c487:"More Than A Feeling",
    0x0044c85d:"You Got Another Thing Comin'",
    0x0044c74b:"Take Me Out",
    0x0044c533:"Sharp Dressed Man",
    0x0044c43b:"Killer Queen",
    0x0044c27d:"Hey You",
    0x0044c662:"Stellar",
    0x0044c218:"Heart Full of Black",
    0x0044c69a:"Symphony of Destruction",
    0x0044c8e5:"Ziggy Stardust",
    0x0044c157:"Fat Lip",
    0x0044c06e:"Cochise",
    0x0044c709:"Take It Off",
    0x0044c82a:"Unsung",
    0x0044c5f3:"Spanish Castle Magic",
    0x0044c2b0:"Higher Ground",
    0x0044c4ec:"No One Knows",
    0x0044bf61:"Ace of Spades",
    0x0044c110:"Crossroads",
    0x0044c1db:"Godzilla",
    0x0044c78d:"Texas Flood",
    0x0044c18a:"Frankenstein",
    0x0044c0b0:"Cowboys From Hell",
    0x0044c009:"Bark At The Moon",
    0x0044cc24:"Fire It Up",
    0x0044cabc:"Cheat On The Church",
    0x0044ca61:"Caveman Rejoice",
    0x0044cb63:"Eureka, I've Found Love",
    0x0044c93b:"All Of This",
    0x0044c97d:"Behind The Mask",
    0x0044c9d3:"The Breaking Wheel",
    0x0044ca29:"Callout",
    0x0044cb21:"Decontrol",
    0x0044cb96:"Even Rats",
    0x0044cbd3:"Farewell Myth",
    0x0044cc82:"Fly On The Wall",
    0x0044ccd3:"Get Ready 2 Rock",
    0x0044cd29:"Guitar Hero",
    0x0044cd70:"Hey",
    0x0044cd94:"Sail Your Ship By",
    0x0044cdef:"Story of My Love"
}
rich_presence_conditional_display(screen_ID() == in_song, "🎵 Rockin' out to {0} on {1}! Points: {2} Combo : {3}",
    rich_presence_lookup("Song", song_ID(), songs_rp_list),
    rich_presence_lookup("Difficulty", difficulty(), difficulty_list),
    rich_presence_macro("Number", score()),
    rich_presence_macro("Number", combo())
) 
rich_presence_display("In Menu")
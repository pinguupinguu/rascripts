// We Wish You a Merry Christmas
// #ID = 35950


//Thanks again souzooka for the following function!
addr = (v) => v // Dummy accessor for ptr for if the pointed-to address is desired
// Pointer mask for custom memory map
RA_MASK = 0x1FFFFFFF
function ptr(base, offsets, accessor=dword_be)
{
    val = base
    val = val & RA_MASK
    
    for i in range(0, length(offsets) - 1)
    {
        addr = val + offsets[i]
        if (i == length(offsets) - 1)
        {
            val = accessor(addr)
            if accessor == double32_be
                // Get most significant bits for a double
                val = accessor(addr + 4)
        }
        else
        {
            val = dword_be(addr)
            val = val & RA_MASK
        }
    }
    
    return val
}
index = dword_be(0x001c63a0)
save_padding = 0x2ff8
function save_index_pointer(base, accessor){
    return accessor((index * save_padding)  + base)
}



player_num = dword_be(0x001c62e4)
function get_curr_players(param){
    return player_num == param
}

background_ID = dword_be(0x001c63fc)
bkgd_livingroom = 0x00
bkgd_hotcoco = 0x1
bkgd_candylane = 0x2
bkgd_deckhalls = 0x3
bkgd_letterwrite = 0x4
bkgd_elfhunt = 0x5
bkgd_stickers = 0x6
bkgd_presentcatch = 0x7
bkgd_reindeerjump = 0x8
bkgd_santasleigh = 0x9
function get_curr_bkgd(param){
    return background_ID == param
}

//Minigame Addresses:
//Deck the Halls:
minigame_deck_score = dword_be(0x001bd89c)
minigame_deck_combo = dword_be(0x001bd8a0)
minigame_deck_state = dword_be(0x001bc488)
deck_lost = 8

minigame_presents_score = dword_be(0x001ce3d0)
minigame_presents_lives = dword_be(0x001ce4ec)
minigame_presents_state = dword_be(0x001ce078)
presents_lost = 5

minigame_santasleigh_score = dword_be(0x001fdec0)
minigame_santasleigh_presents = ptr(dword_be(0x001fddec), [0x18, 0x1e4], dword_be)
minigame_santasleigh_state = dword_be(0x001fdb28)
sleigh_lost = 9


minigame_reindeer_height = dword_be(0x001fd4c4)
minigame_reindeer_boost = dword_be(0x001fd494)
minigame_reindeer_state = dword_be(0x001fd1c8)
reindeer_lost = 3

minigame_hotcoco_score = dword_be(0x001c6d44)
minigame_hotcoco_timer = float_be(0x001c6ffc)
minigame_hotcoco_state = dword_be(0x001c69a8)
coco_lost = 0xa

minigame_candycane_currframe = dword_be(0x001be2c8)
minigame_candycane_array_start = 0x001be308
minigame_candycane_state = dword_be(0x001bdce8)
lanes_lost = 0x6

minigame_elfhunt_puzzle_index = dword_be(0x001c55cc)
minigame_elfhunt_state = dword_be(0x001c5328)
puzzle_select = 0


function get_candycane_sum(param){
    return sum_of(range(param, param + 80, 4), b => dword_be(b))   
}


//Progression
function ornament_unlock(curr_bkgd, base, accessor){
    return index==prev(index) && get_curr_bkgd(curr_bkgd) && save_index_pointer(base, accessor) > prev(save_index_pointer(base, accessor))
}
ornament_base = 0x001ce5f4
ornament_titles = [
    "Master of the Toys",
    "Bagging Another One!",
    "Santa's Little Helper",
    "Hoppin' Up the Presents!",
    "Drink Mix Master",
    "Elf Punishment"
]
ornament_desc = [
    "Unlock the 'Deck the Halls' ornament by beating the default high score of 3.000 points!",
    "Unlock the 'Present Catch' ornament by beating the default high score of 500 points!",
    "Unlock the 'Santa's Sleigh' ornament by beating the default high score of 3.000 points!",
    "Unlock the 'Reindeer Games' ornament by beating the default high score of 1000M!",
    "Unlock the 'Hot Chocolate' ornament by beating the default high score of 250 points!",
    "Unlock the 'Candy Cane Lanes' ornament by beating the default high score of 125 points!"    
]
ornament_bkgds = [
    bkgd_deckhalls,
    bkgd_presentcatch,
    bkgd_santasleigh,
    bkgd_reindeerjump,
    bkgd_hotcoco,
    bkgd_candylane
]

ornament_flags = [
    bit5,
    bit2,
    bit4,
    bit3,
    bit1,
    bit6
]
for i in range(0, 5){
    achievement(
        ornament_titles[i],
        ornament_desc[i],
        points=10,
        type="progression",
        trigger=
            ornament_unlock(ornament_bkgds[i], ornament_base, ornament_flags[i])
    )        
}
deckhall_round = dword_be(0x001bd8dc)
deckhall_combo = dword_be(0x001bd8a0)
achievement(
    "Decked Out for New Opportunities",
    "Clear ten rounds of 'Deck the Halls'",
    points=10,
    trigger=
        get_curr_bkgd(bkgd_deckhalls) &&
        get_curr_players(1) &&
        prev(deckhall_round) == 9 && 
        deckhall_round == 10        
)
achievement(
    "Frozen Gridmaster",
    "Obtain a combo of 7 or more on a single move in 'Deck the Halls'",
    points=10,
    trigger=
        get_curr_bkgd(bkgd_deckhalls) &&
        get_curr_players(1) &&
        prev(deckhall_combo) == 6 &&
        deckhall_combo == 7
)

achievement(
    "Never a Christmas Quite Like This",
    "Score 2000 points in 'Present Catch' without losing a life",
    points=10,
    trigger=
        get_curr_bkgd(bkgd_presentcatch) &&
        get_curr_players(1) &&
        minigame_presents_lives == 5 &&
        trigger_when(prev(minigame_presents_score) < 2000 && minigame_presents_score >= minigame_presents_score)
)



function reindeer_get_height(param){
    return get_curr_bkgd(bkgd_reindeerjump) &&
        minigame_reindeer_state == 2 && //Playing
        get_curr_players(1) &&
        prev(minigame_reindeer_height) < param &&
        minigame_reindeer_height >= param
}
achievement(
    "Rudolph the Jump Nose Reindeer!",
    "Jump to a height of 1500M or higher!",
    points=5,
    trigger=
        reindeer_get_height(1500)
)
achievement(
    "Fly Me to the MOOOON!",
    "Jump to a height of 2000M or higher!",
    points=10,
    trigger=
        reindeer_get_height(2000)
)
achievement(
    "The Spirit of Christmas",
    "Jump to a height of 5000M or higher and spread Christmas joy!",
    points=25,
    trigger=
       reindeer_get_height(5000)
)

//RP Calls
basic_bkgds = {
    0:"In the Living Room",
    4:"Writing a Letter to Santa!",
    6:"Playing with Stickers. Fun!"    
}

boosted = {
    0x3f800000:"Inactive!",
    0x0:"Inactive!"
}
rich_presence_conditional_display(!get_curr_players(1) && !get_curr_bkgd(bkgd_livingroom) && !get_curr_bkgd(bkgd_stickers) 
                                   && !get_curr_bkgd(bkgd_letterwrite), "Spreading Christmas joy with more than one player. How kind!")
rich_presence_conditional_display(get_curr_bkgd(bkgd_deckhalls) && minigame_deck_state >= deck_lost, "Game Over on Deck the Halls!" )
rich_presence_conditional_display(get_curr_bkgd(bkgd_deckhalls), "Playing Deck the Halls! Score: {0} | Combo: {1}x",
    rich_presence_macro("Score", minigame_deck_score),
    rich_presence_macro("Number", minigame_deck_combo)
)
rich_presence_conditional_display(get_curr_bkgd(bkgd_presentcatch) && minigame_presents_state >= presents_lost, "Game Over on Present Catch!")
rich_presence_conditional_display(get_curr_bkgd(bkgd_presentcatch), "Playing Present catch! Score: {0} | Lives: {1}/5",
    rich_presence_macro("Score", minigame_presents_score),
    rich_presence_macro("Number", minigame_presents_lives)
)
rich_presence_conditional_display(get_curr_bkgd(bkgd_santasleigh) && minigame_santasleigh_state >= sleigh_lost, "Game Over on Santa's Sleigh!")
rich_presence_conditional_display(get_curr_bkgd(bkgd_santasleigh), "Playing Santa's Sleigh! Score: {0} | Presents: {1}",
    rich_presence_macro("Score", minigame_santasleigh_score),
    rich_presence_macro("Number", minigame_santasleigh_presents)
)
rich_presence_conditional_display(get_curr_bkgd(bkgd_reindeerjump) && minigame_reindeer_state >= reindeer_lost, "Game Over on Reindeer Games!")
rich_presence_conditional_display(get_curr_bkgd(bkgd_reindeerjump), "Playin Reindeer Games! Height: {0}M | Boost: {1}",
    rich_presence_macro("Number", minigame_reindeer_height),
    rich_presence_lookup("Boost", minigame_reindeer_boost, boosted, "Active!")
)
rich_presence_conditional_display(get_curr_bkgd(bkgd_hotcoco) && minigame_hotcoco_state >= coco_lost, "Game Over on Hot Chocolate!")
rich_presence_conditional_display(get_curr_bkgd(bkgd_hotcoco), "Playing Hot Chocolate! Score: {0} | ⏰ {1}",
    rich_presence_macro("Score", minigame_hotcoco_score),
    rich_presence_macro("Seconds", minigame_hotcoco_timer)
)
rich_presence_conditional_display(get_curr_bkgd(bkgd_candylane) && minigame_candycane_state >= lanes_lost, "Game Over on Candy Cane Lanes!")
rich_presence_conditional_display(get_curr_bkgd(bkgd_candylane), "Playin on Candy Cane Lanes! Frame: {0}",
    rich_presence_macro("Number", minigame_candycane_currframe + 1)
)
rich_presence_conditional_display(get_curr_bkgd(bkgd_elfhunt) && minigame_elfhunt_state == puzzle_select, "Selecting a puzzle in Elf Hunt!")
rich_presence_conditional_display(get_curr_bkgd(bkgd_elfhunt) && minigame_elfhunt_state >= 5, "Completed all objectives on Elf Hunt #{0}",
    rich_presence_macro("Number", minigame_elfhunt_puzzle_index + 1)
)
rich_presence_conditional_display(get_curr_bkgd(bkgd_elfhunt), "Hunting on Elf Hunt puzzle #{0}",
    rich_presence_macro("Number", minigame_elfhunt_puzzle_index + 1)
)
rich_presence_display("{0}",
    rich_presence_lookup("Default", background_ID, basic_bkgds, "Loading...")
)

function minigame_state_change(param, last, next){
    return prev(param) == last && param == next
}

/*
background_ID = dword_be(0x001c63fc)
bkgd_livingroom = 0x00
bkgd_hotcoco = 0x1
bkgd_candylane = 0x2
bkgd_deckhalls = 0x3
bkgd_letterwrite = 0x4
bkgd_elfhunt = 0x5
bkgd_stickers = 0x6
bkgd_presentcatch = 0x7
bkgd_reindeerjump = 0x8
bkgd_santasleigh = 0x9
*/
leaderboard(
    "Deck the Halls - Matching Master!",
    "Highest score",
    get_curr_bkgd(bkgd_deckhalls) && get_curr_players(1) && (always_false() || minigame_state_change(minigame_deck_state, 6, 2)  || minigame_state_change(minigame_deck_state, 0xb, 0)),
    !get_curr_bkgd(bkgd_deckhalls) || prev(minigame_deck_state) !=  0 && minigame_deck_state == 0,
    minigame_state_change(minigame_deck_state, 6, 8),
    minigame_deck_score
    
)
leaderboard(
    "Present Catch - Bagging ALL Presents!",
    "Highest score - single life",
    get_curr_bkgd(bkgd_presentcatch) && get_curr_players(1) &&  (always_false() || minigame_state_change(minigame_presents_state, 1 ,2) || minigame_state_change(minigame_presents_state, 8, 0)),
    !get_curr_bkgd(bkgd_presentcatch) || prev(minigame_presents_state) != 0 && minigame_presents_state == 0,
    minigame_presents_lives < prev(minigame_presents_lives),
    minigame_presents_score
)
leaderboard(
    "Present Catch - Bagging Presents!",
    "Highest score - single game",
    get_curr_bkgd(bkgd_presentcatch) && get_curr_players(1) &&  (always_false() || minigame_state_change(minigame_presents_state, 1 ,2) || minigame_state_change(minigame_presents_state, 8, 0)),
    !get_curr_bkgd(bkgd_presentcatch) || prev(minigame_presents_state) != 0 && minigame_presents_state == 0,
    minigame_state_change(minigame_presents_state,2, 5),
    minigame_presents_score
)
leaderboard(
    "Santa's Sleigh - Delivery Assistance!",
    "Highest score",
    get_curr_bkgd(bkgd_santasleigh) && get_curr_players(1) &&  (always_false() || minigame_state_change(minigame_santasleigh_state, 1 ,2) || minigame_state_change(minigame_santasleigh_state, 0xb, 0)),
    !get_curr_bkgd(bkgd_santasleigh) || prev(minigame_santasleigh_state) != 0 && minigame_santasleigh_state == 0,
    minigame_state_change(minigame_santasleigh_state, 5, 9),
    minigame_santasleigh_score
    
    
)
leaderboard(
    "Reindeer Games - Soaring Limits!",
    "Highest height in meters (Boosts Allowed)",
    get_curr_bkgd(bkgd_reindeerjump) && get_curr_players(1) && (always_false() || minigame_state_change(minigame_reindeer_state, 1 , 2) || minigame_state_change(minigame_reindeer_state, 7 , 0)),
    !get_curr_bkgd(bkgd_reindeerjump) || prev(minigame_reindeer_state) != 0 && minigame_reindeer_state == 0,
    minigame_state_change(minigame_reindeer_state, 2, 3),
    minigame_reindeer_height
    
)
leaderboard(
    "Reindeer Games - Reaching Limits!",
    "Highest height in meters (NO Boosts Allowed)",
    get_curr_bkgd(bkgd_reindeerjump) && get_curr_players(1) && (always_false() || minigame_state_change(minigame_reindeer_state, 1 , 2) || minigame_state_change(minigame_reindeer_state, 7 , 0)),
    !get_curr_bkgd(bkgd_reindeerjump) || prev(minigame_reindeer_state) != 0 && minigame_reindeer_state == 0,
    always_false() || minigame_state_change(minigame_reindeer_state, 2, 3) || (minigame_reindeer_boost != 0x0 && minigame_reindeer_boost != 0x3f800000) ,
    minigame_reindeer_height
    
)
leaderboard(
    "Hot Chocolate - 'Oh, WE GOT IT!'",
    "Highest score",
    get_curr_bkgd(bkgd_hotcoco) && get_curr_players(1) && (always_false() || minigame_state_change(minigame_hotcoco_state, 3 , 4) || minigame_state_change(minigame_hotcoco_state, 0xd , 0)),
    !get_curr_bkgd(bkgd_hotcoco) || prev(minigame_hotcoco_state) != 0 && minigame_hotcoco_state == 0,
    minigame_state_change(minigame_hotcoco_state, 5, 0xa),
    minigame_hotcoco_score
)

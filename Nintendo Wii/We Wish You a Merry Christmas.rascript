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
lanes_lost = 0x6

minigame_elfhunt_puzzle_index = dword_be(0x001c55cc)
minigame_elfhunt_state = dword_be(0x001c5328)
puzzle_select = 0


function get_candycane_sum(param){
    return sum_of(range(param, param + 80, 4), b => dword_be(b))   
}
minigame_candycane_state = dword_be(0x001bdce8)


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
    "Reindeer Games - Soaring Limits!",
    "Highest heignt in meters (Boosts Allowed)",
    get_curr_bkgd(bkgd_reindeerjump) && (always_false() || minigame_state_change(minigame_reindeer_state, 1 , 2) || minigame_state_change(minigame_reindeer_state, 7 , 0)),
    !get_curr_bkgd(bkgd_reindeerjump),
    minigame_state_change(minigame_reindeer_state, 2, 3),
    minigame_reindeer_height
    
)
leaderboard(
    "Reindeer Games - Reaching Limits!",
    "Highest heignt in meters (NO Boosts Allowed)",
    get_curr_bkgd(bkgd_reindeerjump) && (always_false() || minigame_state_change(minigame_reindeer_state, 1 , 2) || minigame_state_change(minigame_reindeer_state, 7 , 0)),
    !get_curr_bkgd(bkgd_reindeerjump),
    always_false() || minigame_state_change(minigame_reindeer_state, 2, 3) || (minigame_reindeer_boost != 0x0 && minigame_reindeer_boost != 0x3f800000),
    minigame_reindeer_height
    
)
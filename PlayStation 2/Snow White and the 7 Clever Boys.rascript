// Snow White and the 7 Clever Boys
// #ID = 20554

screen_ID = dword(0x001d2410)
screen_menu = 0xffffffff
screen_painting = 0x00
screen_puzzle_sliding = 0x1
screen_puzzle_matching = 0x2
screen_puzzle_jigsaw = 0x3
screen_movie = 0x4
screen_settings = 0x5
function get_curr_screen(param){
    return screen_ID == param
}
addr = (v) => v // Dummy accessor for ptr for if the pointed-to address is desired
function ptr(base, offsets, accessor=dword_be)
{
    val = base
    val = val
    
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
            val = dword(addr)
            val = val
        }
    }
    
    return val
}
puzzle_data = dword(0x001d23fc)
offset_jigsaw_bkgd = [0]
offset_jigsaw_puzzleid = [0xc]
offset_jigsaw_boolean_complete = [0x58]
offset_jigsaw_boolean_timeup = [0x5c]
offset_jigsaw_timer = [0x4c]

offset_sliding_id = [4]
offset_sliding_boolean_complete = [0xd4]
offset_sliding_timer = [0xcc]

offset_painting_bkgd = [0]
offset_painting_id = [0x18]


//Jigsaw Puzzles:
jigsaw_names = [
    "Deer Crossing",
    "Talented Singer",
    "Queen of Hearts",
    "Disco Fiasco",
    "Careless Whisper",
    "My Little Pony",
    "True Love's Kiss",
    "Camping Trip",
    "Tweety & the Magical Gems",
    "The Brickster's Revenge"    
]
jigsaw_desc = [
    "Solve the first jigsaw puzzle!",
    "solve the second jigsaw puzzle!",
    "Solve the third jigsaw puzzle!",
    "Solve the fourth jigsaw puzzle!",
    "Solve the fifth jigsaw puzzle!",
    "Solve the sixth jigsaw puzzle!",
    "Solve the seventh jigsaw puzzle!",
    "Solve the eighth jigsaw puzzle!",
    "Solve the ninth jigsaw puzzle!",
    "Solve the tenth jigsaw puzzle!"    
]
jigsaw_badges = [
    "511374",
    "511375",
    "511376",
    "511377",
    "511378",
    "511379",
    "511381",
    "511382",
    "511383",
    "511384"
]
jigsaw_id = [
    451800,
    451801,
    451802,
    451803,
    451804,
    451805,
    451806,
    451807,
    451808,
    451809
]
for i in range(0,9){
    achievement(
        jigsaw_names[i],
        jigsaw_desc[i],
        points=2,
        badge=jigsaw_badges[i],
        id=jigsaw_id[i],
        trigger=
            get_curr_screen(screen_puzzle_jigsaw) &&
            ptr(puzzle_data, offset_jigsaw_puzzleid, dword) == i &&
            ptr(puzzle_data, offset_jigsaw_boolean_timeup, dword) == 0 &&
            prev(ptr(puzzle_data, offset_jigsaw_boolean_complete, dword)) == 0 &&
            ptr(puzzle_data, offset_jigsaw_boolean_complete, dword) == 1
    )
}
slidingpuzzle_names = [
    "Peeking from the Chimney",
    "Through the Hundred Acre Wood",
    "Shaggy's Twin",
    "A Big Smooch",
    "Cavern Parkour",
    "Stealing Goods",
    "A Baby Intercepts the Thieves!",
    "Roller-Skatin' Through This One",
    "A Quick Run",
    "C-A-M-P-F-I-R-E S-O-N-G SONG!"   
]
slidingpuzzle_desc = [
        "Solve the first sliding puzzle!",
    "solve the second sliding puzzle!",
    "Solve the third sliding puzzle!",
    "Solve the fourth sliding puzzle!",
    "Solve the fifth sliding puzzle!",
    "Solve the sixth sliding puzzle!",
    "Solve the seventh sliding puzzle!",
    "Solve the eighth sliding puzzle!",
    "Solve the ninth sliding puzzle!",
    "Solve the tenth sliding puzzle!"  
]
for i in range(0,9){
    achievement(
        slidingpuzzle_names[i],
        slidingpuzzle_desc[i],
        points=5,
        trigger=
            get_curr_screen(screen_puzzle_sliding) &&
            ptr(puzzle_data, offset_sliding_id, dword) == i &&
            ptr(puzzle_data, offset_sliding_timer, float) != 0.0 &&
            prev(ptr(puzzle_data, offset_sliding_boolean_complete, dword)) == 0 &&
            ptr(puzzle_data, offset_sliding_boolean_complete, dword) == 1
    )
    
}

matching_puzzle_names = [
    "Harold's New Friend",
    "Weird Memory Storage...",
    "Following Moose Tracks!",
    "This Isn't Caillou!",
    "The Door to Narnia?"
    
]
matching_puzzle_desc = [
    "Complete the first matching puzzle!",
    "Complete the second matching puzzle!",
    "Complete the third matching puzzle!",
    "Complete the fourth matching puzzle!",
    "Complete the fifth matching puzzle!"
]
offset_puzzle_matchingid = [0x4]
offset_matching_timer = [0x80]
offset_matching_clear = [0x88]

for i in range(0,4){
    achievement(
        matching_puzzle_names[i],
        matching_puzzle_desc[i],
        points=5,
        type="progression",
        trigger=
            get_curr_screen(screen_puzzle_matching) &&
            ptr(puzzle_data, offset_puzzle_matchingid, dword) == i &&
            prev(ptr(puzzle_data, offset_matching_clear, dword)) == 0 &&
            ptr(puzzle_data, offset_matching_clear, dword) == 1
        
    )
}





//RP Calls
default_screens = {
    screen_menu:"In the Main Menu...",
    screen_settings:"Setting Options...",
    screen_movie:"Watching the Snow White & the Seven Clever Boys movie..."
}
solving_jigsaw = {
    0:"Solving",
    1:"Completed"
}
rich_presence_conditional_display(get_curr_screen(screen_puzzle_matching) &&  ptr(puzzle_data, offset_puzzle_matchingid, dword) == 0xffffffff, "Selecting a matching puzzle!")

rich_presence_conditional_display(get_curr_screen(screen_puzzle_matching) && ptr(puzzle_data, offset_puzzle_matchingid, dword) != 0xffffffff, "Solving matching puzzle {0}! Time Elapsed: {1}",
    rich_presence_macro("Number", ptr(puzzle_data, offset_puzzle_matchingid, dword) + 1),
    rich_presence_macro("Seconds", ptr(puzzle_data, offset_matching_timer, float))
)

rich_presence_conditional_display(get_curr_screen(screen_puzzle_jigsaw) &&  ptr(puzzle_data, offset_jigsaw_bkgd, dword) == 0, "{0} jigsaw puzzle {1}! Time Elapsed: {2}",
    rich_presence_lookup("IsSolving", ptr(puzzle_data, offset_jigsaw_boolean_complete, dword), solving_jigsaw),
    rich_presence_macro("Number", ptr(puzzle_data, offset_jigsaw_puzzleid, dword) + 1),
    rich_presence_macro("Seconds", ptr(puzzle_data, offset_jigsaw_timer, float))
  )
rich_presence_conditional_display(get_curr_screen(screen_puzzle_jigsaw) && ptr(puzzle_data, offset_jigsaw_bkgd, dword) == 1, "Selecting a jigsaw puzzle!")

rich_presence_conditional_display(get_curr_screen(screen_puzzle_sliding) && ptr(puzzle_data, offset_sliding_id, dword) == 0xffffffff, "Selecting a sliding puzzle!")
rich_presence_conditional_display(get_curr_screen(screen_puzzle_sliding) && ptr(puzzle_data, offset_sliding_id, dword) != 0xffffffff, "Solving sliding puzzle {0}! Time Elapsed: {1}",
    rich_presence_macro("Number", ptr(puzzle_data, offset_sliding_id, dword) + 1),
    rich_presence_macro("Seconds", ptr(puzzle_data, offset_sliding_timer, float))

)

rich_presence_conditional_display(get_curr_screen(screen_painting) && ptr(puzzle_data, offset_painting_bkgd, dword) == 0, "Painting with beautiful colors on painting #{0}",
    rich_presence_macro("Number", ptr(puzzle_data, offset_painting_id, dword) + 1)
)
rich_presence_conditional_display(get_curr_screen(screen_painting) && ptr(puzzle_data, offset_painting_bkgd, dword) == 1, "Selecting a painting!")


rich_presence_display("{0}",
    rich_presence_lookup("Screen_Default", screen_ID, default_screens, "Loading...")
)

//LBs - Sliding Puzzles:
for i in range(0, 9){
    leaderboard(
        "Sliding Puzzle " + i + 1 + " - Time",
        "Fastest time to clear",
        get_curr_screen(screen_puzzle_sliding) && ptr(puzzle_data, offset_sliding_id, dword) == i && prev(ptr(puzzle_data, offset_sliding_timer, float)) < 1.0 && ptr(puzzle_data, offset_sliding_timer, float) >= 1.0,
        get_curr_screen(screen_menu) || ptr(puzzle_data, offset_sliding_id, dword) != i,
        prev(ptr(puzzle_data, offset_sliding_boolean_complete, dword)) == 0 && ptr(puzzle_data, offset_sliding_boolean_complete, dword) == 1,
        ptr(puzzle_data, offset_sliding_timer, float),
        "SECS",
        true
    )        
}

for i in range(0, 4){
  leaderboard(
      "Matching Puzzle " + i + 1 + " - Time",
      "Fastest time to clear",
      get_curr_screen(screen_puzzle_sliding) && ptr(puzzle_data, offset_puzzle_matchingid, dword) == i && prev(ptr(puzzle_data, offset_matching_timer, float)) < 1.0 && ptr(puzzle_data, offset_matching_timer, float) >= 1.0,
      get_curr_screen(screen_menu) || ptr(puzzle_data, offset_puzzle_matchingid, dword) != i,
      prev(ptr(puzzle_data, offset_matching_clear, dword)) == 0 && ptr(puzzle_data, offset_matching_clear, dword) == 1,
       ptr(puzzle_data, offset_matching_timer, float),
       "SECS",
       true
  )  
  
}
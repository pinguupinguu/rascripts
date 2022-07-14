// SuperLite 1500 Series: Nankuro 2
// #ID = 14583
//==========FORUM TOPIC INFO=========
// ROM: SuperLite 1500 Series: NumCro 2 (Japan) - REDUMP
// RA Hash: 92568cd142107e84ad2129d61a83b402
// $0670BC: [32bit] Game Screen
//          0x0b=In Menu
//          0x0e=Playing Puzzle
function game_state() => dword(0x0670bc)
in_select = 0xb
in_puzzle = 0xe
// $0074bC: [32bit] Game Loaded
//          0x00=False
//          0x01=True
// Check last puzzle address loaded record is not 0.
function save_protection() => never(dword(0x74bc) == 0 ||dword(0x07cf5c) == 0)
// $07C7F4: [140 bytes] 9x9 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
nine_nine_table = range(0x07c7f4, 0x07c7f4 + 140, 4)   
// $07C984: [148 bytes] 11x11 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
elev_elev_table = range(0x07c984, 0x07c984 + 148, 4)
// $07CB14: [132 bytes] 11x15 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
elev_fift_table = range(0x07Cb14, 0x07cb14 + 132, 4)
// $07CCA4: [144 bytes] 13x13 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
thirt_thirt_table = range(0x07cca4, 0x07cca4 + 144, 4)
// $07CE34: [300 bytes] 13x17 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
thirt_seven_table = range(0x07ce34, 0x07ce34 + 300, 4)
function puzzle_cheev(name, my_id, my_points, size, table, start, count){
    desc = "Complete " + size + " puzzles " + start + "-" + start + count - 1
    mem_array = []
    prev_array = []
    start = start - 1
    for i in range(start, start + count - 1){
        array_push(mem_array, once(dword(table[i]) != 0xffffffff))
        array_push(prev_array, once(prev(dword(table[i])) != 0xffffffff))
    }
    achievement(
        name,
        desc,
        id=my_id,
        points=my_points,
        trigger=
            
            tally(count - 1, prev_array) &&
            measured(tally(count, mem_array)) &&
            never(tally(count, prev_array)) &&
            save_protection()
    )
}
//==========Progression: 9x9 Puzzles==========
puzzle_cheev("Welcome to Word Mania!", 195930, 5, "9x9", nine_nine_table, 1, 5)
puzzle_cheev("Crossing Things Off",195931, 5, "9x9", nine_nine_table, 6, 5)
puzzle_cheev("Word Advocate", 195932, 5,  "9x9", nine_nine_table, 11, 5)
puzzle_cheev("Word Predictor", 195933, 5,  "9x9", nine_nine_table, 16, 5)
puzzle_cheev("Nankuro Noob 1", 195934, 5,  "9x9", nine_nine_table, 21, 5)
puzzle_cheev("Nankuro Noob 2", 195935, 5,  "9x9",  nine_nine_table, 26, 5)
puzzle_cheev("Nankuro Noob 3", 195936, 5, "9x9", nine_nine_table, 31, 5)
//==========Progression: 11x11 Puzzles==========
puzzle_cheev("Nankuro Ni Player Series 1", 195937, 5, "11x11", elev_elev_table, 1, 5)
puzzle_cheev("Nankuro Ni Player Series 2", 195938, 5,  "11x11", elev_elev_table, 6, 5)
puzzle_cheev("Nankuro Ni Player Series 3", 195939, 5,  "11x11", elev_elev_table, 11, 5)
puzzle_cheev("Nankuro Ni Player Series 4", 195940, 5,  "11x11", elev_elev_table, 16, 5)
puzzle_cheev("Nankuro Ni Player Series 5", 195941, 5,  "11x11", elev_elev_table, 21, 5)
puzzle_cheev("Nankuro Ni Player Series 6", 195942, 5, "11x11", elev_elev_table, 26, 6)
puzzle_cheev("Nankuro Ni Player Series 7", 195943, 5, "11x11", elev_elev_table, 32, 6)
//==========Progression: 11x15 Puzzles==========
puzzle_cheev("Nankuro Ni Intermediate 1", 195944, 25, "11x15", elev_fift_table, 1, 11)
puzzle_cheev("Nankuro Ni Intermediate 2", 195945, 25, "11x15", elev_fift_table, 12, 11)
puzzle_cheev("Nankuro Ni Intermediate 3", 195946, 25, "11x15", elev_fift_table, 23, 11)
//=========Progression: 13x13 Puzzles==========
puzzle_cheev("Nankuro Ni Advanced 1", 195947, 10, "13x13", thirt_thirt_table, 1, 6)
puzzle_cheev("Nankuro Ni Advanced 2", 195948, 10, "13x13", thirt_thirt_table, 7, 6)
puzzle_cheev("Nankuro Ni Advanced 3", 195949, 10, "13x13", thirt_thirt_table, 13, 6)
puzzle_cheev("Nankuro Ni Advanced 4", 195950, 10, "13x13", thirt_thirt_table, 19, 6)
puzzle_cheev("Nankuro Ni Advanced 5", 195951, 10, "13x13", thirt_thirt_table, 25, 6)
puzzle_cheev("Nankuro Ni Advanced 6", 195952, 10, "13x13", thirt_thirt_table, 31, 6)
//==========Progression: 13x17 Puzzles==========
puzzle_cheev("Nankuro Ni Master 1", 195953, 10, "13x17", thirt_seven_table, 1, 5)
puzzle_cheev("Nankuro Ni Master 2", 195954, 10, "13x17", thirt_seven_table, 6, 5)
puzzle_cheev("Nankuro Ni Master 3", 195955, 10, "13x17", thirt_seven_table, 11, 5)
puzzle_cheev("Nankuro Ni Master 4", 195956, 10, "13x17", thirt_seven_table, 16, 5)
puzzle_cheev("Nankuro Ni Master 5", 195957, 10, "13x17", thirt_seven_table, 21, 5)
puzzle_cheev("Nankuro Ni Master 6", 195958, 10, "13x17", thirt_seven_table, 26, 5)
puzzle_cheev("Nankuro Ni Master 7", 195959, 10, "13x17", thirt_seven_table, 31, 5)
puzzle_cheev("Nankuro Ni Master 8", 195960, 10, "13x17", thirt_seven_table, 36, 5)
puzzle_cheev("Nankuro Ni Master 9", 195961, 10, "13x17", thirt_seven_table, 41, 5)
puzzle_cheev("Nankuro Ni Master 10", 195962, 10, "13x17", thirt_seven_table, 46, 5)
puzzle_cheev("Nankuro Ni Master 11", 195963, 10, "13x17", thirt_seven_table, 51, 5)
puzzle_cheev("Nankuro Ni Master 12", 195964, 10, "13x17", thirt_seven_table, 56, 5)
puzzle_cheev("Nankuro Ni Master 13", 195965, 10, "13x17", thirt_seven_table, 61, 5)
puzzle_cheev("Nankuro Ni Master 14", 195966, 10, "13x17", thirt_seven_table, 66, 5)
puzzle_cheev("Nankuro Ni Grand Master", 195967, 10, "13x17", thirt_seven_table, 71, 5)
// $1B0040: [8bit] Puzzle State
//          0xa= In Puzzle
//          0x1e=Save Message Pops Up
function puzzle_state() => byte(0x1B0040)
solving = 0xa
clear = 0x1e
// $1B0042: [8bit] Level Frozen
//          0x00=False
//          0x01=True

// $07C798: [8bit] Selected Puzzle Size
//          0x00=9x9
//          0x01=11x11
//          0x02=11x15
//          0x03=13x13
//          0x04=13x17
categories = {
    0:"9x9",
    1:"11x11",
    2:"11x15",
    3:"13x13",
    4:"13x17"
}
function puzzle_category() => byte(0x07c798)
// $07C79A: [8bit] Puzzle Number
function puzzle_number() => byte(0x07c79a)
// $07C7A0: [32bit] Puzzle Timer (Frames)
function puzzle_timer() => dword(0x7c7a0)
//==========RICH PRESENCE==========
rich_presence_conditional_display(game_state() == in_puzzle, "Solving {0} 🧩 {1} ⏳{2}",
    rich_presence_lookup("PuzzleType", puzzle_category(), categories),
    rich_presence_macro("Number", puzzle_number()),
    rich_presence_value("Timer", puzzle_timer(), "FRAMES")    
)
rich_presence_display("In Menu...")
//==========LEADERBOARDS==========
id=29870
leaderboard(
    "9x9 Puzzles",
    "No. 1",
    game_state() == in_puzzle && puzzle_category() == 0 && puzzle_number() == 1 && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
)

for i in range(2, 35){
    id = id + 1
    leaderboard(    
    " ",
    "No. " + i,
    game_state() == in_puzzle && puzzle_category() == 0 && puzzle_number() == i && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
    )    
}
id = id + 1
leaderboard(
    "11x11 Puzzles",
    "No. 1",
    game_state() == in_puzzle && puzzle_category() == 1 && puzzle_number() == 1 && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
)
for i in range(2, 37){
    id = id + 1
    leaderboard(
    " ",
    "No. " + i,
    game_state() == in_puzzle && puzzle_category() == 1 && puzzle_number() == i && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
    )
}
id = id + 1
leaderboard(
    "11x15 Puzzles",
    "No. 1",
    game_state() == in_puzzle && puzzle_category() == 2 && puzzle_number() == 1 && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
)
for i in range(2, 33){
    id = id + 1
    leaderboard(    
    " ",
    "No. " + i,
    game_state() == in_puzzle && puzzle_category() == 2 && puzzle_number() == i && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
    )
}
id = id + 1
leaderboard(
    "13x13 Puzzles",
    "No. 1",
    game_state() == in_puzzle && puzzle_category() == 3 && puzzle_number() == 1 && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
)
for i in range(2, 36){
    id = id + 1
    leaderboard(
    " ",
    "No. " + i,
    game_state() == in_puzzle && puzzle_category() == 3 && puzzle_number() == i && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
    )
}
id = id + 1
leaderboard(
    "13x17 Puzzles",
    "No. 1",
    game_state() == in_puzzle && puzzle_category() == 4 && puzzle_number() == 1 && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
)
for i in range(2, 75){
    id = id + 1
    leaderboard(
    " ",
    "No. " + i,
    game_state() == in_puzzle && puzzle_category() == 4 && puzzle_number() == i && puzzle_timer() > prev(puzzle_timer()),
    game_state() == in_select,
    prev(puzzle_state()) == solving && puzzle_state() == clear,
    puzzle_timer(),
    "FRAMES",
    false,
    id
    )
}
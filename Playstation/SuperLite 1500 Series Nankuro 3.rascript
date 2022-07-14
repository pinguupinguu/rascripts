// SuperLite 1500 Series: Nankuro 3
// #ID = 14584

// $068070: [32bit] Game Screen
//          0x0b=In Menu
//          0x0e=Playing Puzzle
function game_state() => dword(0x068070)
in_select = 0xb
in_puzzle = 0xe
// $0074BC: [32bit] Game Loaded
//          0x00=False
//          0x01=True
// Check last puzzle record not = 0. 
function save_protection() => never(dword(0x07fb3c) == 0 || dword(0x74bc) == 0)
// $07F49C: [160 bytes] 9x9 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
nine_nine_table = range(0x07f49c, 0x07f49c + 160, 4)
// $07F62C: [280 bytes] 11x11 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
elev_elev_table = range(0x07f62c, 0x07f62c + 280, 4)
// $07F7BC: [60 bytes] 11x15 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
elev_fift_table = range(0x07f7bc, 0x07f7bc + 60, 4)
// $07F94C: [200 bytes] 13x13 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
thirt_thirt_table = range(0x07f94c, 0x07f94c + 200, 4)
// $07FADC: [100 bytes] 13x17 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
thirt_seven_table = range(0x07fadc, 0x07fadc + 100, 4)
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
            save_protection() &&
            tally(count - 1, prev_array) &&
            measured(tally(count, mem_array)) &&
            never(tally(count, prev_array))
    )
}
//==========Progression: 9x9 Puzzles==========
puzzle_cheev("Third Round - GO!", 197099, 10, "9x9", nine_nine_table, 1, 10)
puzzle_cheev("Do You Need a Reminder?", 197100, 10, "9x9", nine_nine_table, 11, 10)
puzzle_cheev("Where Do I Put These Symbols!", 197101, 10, "9x9", nine_nine_table, 21, 10)
puzzle_cheev("Bigger Opportunites To Come", 197102, 10, "9x9", nine_nine_table, 31, 10)
//=========Progression: 11x11 Puzzles==========
puzzle_cheev("Nankuro Mittsu 1", 197103, 10, "11x11", elev_elev_table, 1, 10)
puzzle_cheev("Nankuro Mittsu 2", 197104, 10, "11x11", elev_elev_table, 11, 10)
puzzle_cheev("Nankuro Mittsu 3", 197105, 10, "11x11", elev_elev_table, 21, 10)
puzzle_cheev("Nankuro Mittsu 4", 197106, 10, "11x11", elev_elev_table, 31, 10)
puzzle_cheev("Nankuro Mittsu 5", 197107, 10, "11x11", elev_elev_table, 41, 10)
puzzle_cheev("Nankuro Mittsu 6", 197108, 10, "11x11", elev_elev_table, 51, 10)
puzzle_cheev("Nankuro Mittsu 7", 197109, 10, "11x11", elev_elev_table, 61, 10)
//==========Progression: 11x15 Puzzles==========
puzzle_cheev("Nankuro Mittsu 8", 197110, 5, "11x15", elev_fift_table, 1, 5)
puzzle_cheev("Nankuro Mittsu 9", 197111, 5, "11x15", elev_fift_table, 6, 5)
puzzle_cheev("Nankuro Mittsu 10", 197112, 5, "11x15", elev_fift_table, 11, 5)
//==========Progression: 13x13 Puzzles==========
puzzle_cheev("Solving Manners 1", 197113, 25, "13x13", thirt_thirt_table, 1, 10)
puzzle_cheev("Solving Manners 2", 197114, 25, "13x13", thirt_thirt_table, 11, 10)
puzzle_cheev("Solving Manners 3", 197115, 25, "13x13", thirt_thirt_table, 21, 10)
puzzle_cheev("Solving Manners 4", 197116, 25, "13x13", thirt_thirt_table, 31, 10)
puzzle_cheev("Solving Manners 5", 197117, 25, "13x13", thirt_thirt_table, 41, 10)
//==========Progression: 13x17 Puzzles==========
puzzle_cheev("Nankuro 3rd Time Graduate 1", 197118, 10, "13x17", thirt_seven_table, 1, 5)
puzzle_cheev("Nankuro 3rd Time Graduate 2", 197119, 10, "13x17", thirt_seven_table, 6, 5)
puzzle_cheev("Nankuro 3rd Time Graduate 3", 197120, 10, "13x17", thirt_seven_table, 11, 5)
puzzle_cheev("Nankuro 3rd Time Graduate 4", 197121, 10, "13x17", thirt_seven_table, 16, 5)
puzzle_cheev("Nankuro 3rd Time Graduate 5", 197122, 10, "13x17", thirt_seven_table, 21, 5)
// $1B0040: [8bit] Puzzle State
//          0x0b=In Game
//          0x1f=Save Message Pops Up
function puzzle_state() => byte(0x1b0040)
solving = 0xb
clear = 0x1f
// $1B0042: [8bit] Level Frozen
//          0x00=False
//          0x01=True
// $07F440: [8bit] Selected Puzzle Size
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
function puzzle_category() => byte(0x07f440)
// $07F442: [8bit] Puzzle Number
function puzzle_number() => byte(0x07f442)
// $07F448: [32bit] Puzzle Timer (Frames)
function puzzle_timer() => dword(0x07f448)
//==========RICH PRESENCE==========
rich_presence_conditional_display(game_state() == in_puzzle, "Solving {0} 🧩 {1} ⏳{2}",
    rich_presence_lookup("PuzzleType", puzzle_category(), categories),
    rich_presence_macro("Number", puzzle_number()),
    rich_presence_value("Timer", puzzle_timer(), "FRAMES")    
)
rich_presence_display("In Menu...")
//==========LEADERBOARDS==========
id=30112
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
for i in range(2, 40){
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
for i in range(2, 70){
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
for i in range(2, 15){
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
for i in range(2, 50){
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
for i in range(2, 25){
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
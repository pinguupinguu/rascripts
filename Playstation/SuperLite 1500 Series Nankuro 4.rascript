// SuperLite 1500 Series: Nankuro 4
// #ID = 14585


// $0686FC: [32bit] Game Screen
//          0x0b=In Menu
//          0x0e=Playing Puzzle
function game_state() => dword(0x0686fc)
in_select = 0xb
in_puzzle = 0xe
// $0074BC: [32bit] Game Loaded
//          0x00=False
//          0x01=True
function save_protection() => never(dword(0x080258) == 0 || dword(0x74bc) == 0)

// $07FB2C: [80 bytes] 9x9 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
nine_nine_table = range(0x07fb2c, 0x072fb2c + 80, 4)
// $07FCBC: [120 bytes] 11x11 Puzzles
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
elev_elev_table = range(0x07Fcbc, 0x07Fcbc + 120, 4)
// $07FE4C: [160 bytes] 11x15 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
elev_fift_table = range(0x07fe4c, 0x07fe4c + 160, 4)
// $07FFDC: [200 bytes] 13x13 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
thirt_thirt_table = range(0x07ffdc, 0x07ffdc + 200, 4)
// $08016C: [240 bytes] 13x17 Puzzles - Record Time Table
//          Record Number = this_address + puzzle num - 1
//          Record Type = [32bit] Record Time (Frames)
thirt_seven_table = range(0x08016c, 0x08016c + 240, 4)
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
puzzle_cheev("Beginner Fourth Edition 1", 190820, 10, "9x9", nine_nine_table, 1, 10)
puzzle_cheev("Beginner Fourth Edition 2", 190821, 10, "9x9", nine_nine_table, 11, 10)
//=========Progression: 11x11 Puzzles==========
puzzle_cheev("Nankuro Shi 1", 190822, 10, "11x11", elev_elev_table, 1, 10)
puzzle_cheev("Nankuro Shi 2", 190823, 10, "11x11", elev_elev_table, 11, 10)
puzzle_cheev("Nankuro Shi 3", 190824, 10, "11x11", elev_elev_table, 21, 10)
//==========Progression: 11x15 Puzzles==========
puzzle_cheev("Nankuro Shi 4", 190825, 10, "11x15", elev_fift_table, 1, 10)
puzzle_cheev("Nankuro Shi 5", 190826, 10, "11x15", elev_fift_table, 11, 10)
puzzle_cheev("Nankuro Shi 6", 190827, 10, "11x15", elev_fift_table, 21, 10)
puzzle_cheev("Nankuro Shi 7", 190828, 10, "11x15", elev_fift_table, 31, 10)
//==========Progression: 13x13 Puzzles==========
puzzle_cheev("Advanced Fourth Edition 1", 190829, 10, "13x13", thirt_thirt_table, 1, 10)
puzzle_cheev("Advanced Fourth Edition 2", 190830, 10, "13x13", thirt_thirt_table, 11, 10)
puzzle_cheev("Advanced Fourth Edition 3", 190831, 10, "13x13", thirt_thirt_table, 21, 10)
puzzle_cheev("Advanced Fourth Edition 4", 190832, 10, "13x13", thirt_thirt_table, 31, 10)
puzzle_cheev("Advanced Fourth Edition 5", 190833, 10, "13x13", thirt_thirt_table, 41, 10)
//==========Progression: 13x17 Puzzles==========
puzzle_cheev("Fourth Grandmaster 1", 190834, 25, "13x17", thirt_seven_table, 1, 10)
puzzle_cheev("Fourth Grandmaster 2", 190835, 25, "13x17", thirt_seven_table, 11, 10)
puzzle_cheev("Fourth Grandmaster 3", 190836, 25, "13x17", thirt_seven_table, 21, 10)
puzzle_cheev("Fourth Grandmaster 4", 190837, 25, "13x17", thirt_seven_table, 31, 10)
puzzle_cheev("Fourth Grandmaster 5", 190838, 25, "13x17", thirt_seven_table, 41, 10)
puzzle_cheev("Nankuro1500 Rockstar", 190839, 25, "13x17", thirt_seven_table, 51, 10)
//==========RICH PRESENCE==========
// $1B0040: [8bit] Puzzle State
//          0xb= In Puzzle
//          0x1f=Save Message Pops Up
solving = 0xb
clear = 0x1f
// $1B0042: [8bit] Level Frozen
//          0x00=False
//          0x01=True
// $07FAD0: [8bit] Selected Puzzle Size
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
function puzzle_category() => byte(0x07fad0)
// $07FAD2: [8bit] Puzzle Number
function puzzle_number() => byte(0x07fad2)
// $07FAD8: [32bit] Puzzle Timer (Frames)
function puzzle_timer() => dword(0x07fad8)
rich_presence_conditional_display(game_state() == in_puzzle, "Solving {0} 🧩 {1} ⏳{2}",
    rich_presence_lookup("PuzzleType", puzzle_category(), categories),
    rich_presence_macro("Number", puzzle_number()),
    rich_presence_value("Timer", puzzle_timer(), "FRAMES")    
)
rich_presence_display("In Menu...")









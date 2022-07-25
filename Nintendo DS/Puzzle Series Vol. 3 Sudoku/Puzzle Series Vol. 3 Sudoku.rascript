// Puzzle Series Vol. 3: Sudoku
// #ID = 20072

// $0F2944: [32bit] Rank Test Progression
//          0x00=On Bronze
//          0x01=On Silver
//          0x02=On Gold
//          0x03=On Platinum
//          0x04=Cleared!
function rank_progression() => dword(0x0f2944)



// $0FD0D8: [32bit] Game Pointer (When 0 = Inactive & Good for Save Protection)
function game_pointer() => tbyte(0x0fd0d8)
//          +0x15dcc=[32bit] Puzzle State Flag
//          -----------0x00=Solving
//          -----------0x0b=Clear
function puzzle_flag() => dword(game_pointer() + 0x15dcc)
//          +0x15de0 =[32bit] Current Puzzle Timer (Frames)
function puzzle_timer() => dword(game_pointer() + 0x15de0)
// $10971C: [32bit] Solved Flag (In Game)
//          0x00=Solving
//          0x0b=Clear

// $109730: [32bit] Puzzle Frame Timer (In Game)
// $1124C0: [32bit] Active Puzzle Number
function active_num() => dword(0x1124c0)
// $1124C4: [32bit] Active Puzzle Category
//          0x00=Easy
//          0x01=Normal
//          0x02=Hard
//          0x03=Rank Test
function active_category() => dword(0x1124c4)
category = {
    0:"Easy",
    1:"Normal",
    2:"Hard"
}
// $1124C8: [32bit] Active Rank Test Puzzle
//          0x01=Bronze
//          0x02=Silver
//          0x03=Gold
//          0x04=Platinum
function active_rank() => dword(0x1124c8)
ranks = {
    1:"Bronze",
    2:"Silver",
    3:"Gold",
    4:"Platinum"
}
// $0F2948: [280 bytes] Easy Puzzle Frame Timer Table
//          Each [32bit] = Record Frame Timer
//          Puzzle Number = Table Index + 1
// $0F2A60: [560 bytes] Normal Puzzle Frame Timer Table
//          Each [32bit] = Record Frame Timer
//          Puzzle Number = Table Index + 1
// $0F2C90: [360 bytes] Hard Puzzle Frame Timer Table
//          Each [32bit] = Record Frame Timer
//          Puzzle Number = Table Index + 1
puzzle_table = {
    0:{"Difficulty":"Easy", "Addr":0x0f2948, "Count":70, "point_scale":2},
    1:{"Difficulty":"Normal", "Addr":0x0f2a60, "Count":140, "point_scale":3},
    2:{"Difficulty":"Hard", "Addr":0x0f2c90, "Count":90, "point_scale":5}
}

for puzzle in puzzle_table {
    my_count = puzzle_table[puzzle]["Count"]
    my_address = puzzle_table[puzzle]["Addr"]
    for i in range(0, my_count - 1, 10){
        achievement(
            puzzle_table[puzzle]["Difficulty"] + " Number Pusher " + (i + 10) ,
            "Clear " + puzzle_table[puzzle]["Difficulty"] + " puzzles " + i + 1 + "-" + i + 10,
            points=puzzle_table[puzzle]["point_scale"],
            trigger=
                game_pointer() != 0 && //Save Protection.
                prev(sum_of(range(my_address + (i * 4), my_address + ((i + 9) * 4), 4), b => dword(b) / dword(b))) == 9 &&
                measured(sum_of(range(my_address + (i * 4), my_address + ((i + 9) * 4), 4), b => dword(b) / dword(b)) == 10)
        )               
    }    
}
function rank_cheevo(rank, rank_num, offset, my_points){
    achievement(
        rank + " Medalist",
        "Clear the " + rank + " Certification Problem!",
        points=my_points,
        trigger=
            active_category() == 3 &&
            active_rank() == rank_num &&
            game_pointer() != 0 &&
            puzzle_flag() == 0xb
    )
}
// $0F2DF8: [32bit] Bronze Rank Test Record Frame Timer
// $0F2DFC: [32bit] Silver Rank Test Record Frame Timer
// $0F2E00: [32bit] Gold Rank Test Record Frame Timer
// $0F2E04: [32bit] Platinum Rank Test Record Frame Timer
offset = 0x0f2df8
for i in range(1, 4){
    rank_cheevo(ranks[i], i, offset, i + 1)
    offset = offset + 0x4
}

rich_presence_conditional_display(game_pointer() != 0 && active_category() == 3, "Solving the {0} Rank Certification Problem! ⏳ {1}",
    rich_presence_lookup("Rank", active_rank(), ranks),
    rich_presence_value("Timer", puzzle_timer()/60, "SECS")
)
rich_presence_conditional_display(game_pointer() != 0, "Solving {0} 🧩 {1} ⏰ {2}",
    rich_presence_lookup("Category", active_category(), category),
    rich_presence_macro("Number", active_num() + 1),
    rich_presence_value("Timer", puzzle_timer()/60, "SECS")
)
rich_presence_display("In Menu 🧩 {0}/300 🏅 {1}/4",
    rich_presence_value("Puzzle", sum_of(range(0x0f2948, 0x0f2df4, 4), b => dword(b) / dword(b))),
    rich_presence_macro("Number", rank_progression())
)

for i in range(0, 69){
    leaderboard(
        "Easy Puzzle " + i + 1 + " - Speedrun",
        "Fastest solve!",
        active_category() == 0 && active_num() == i && prev(puzzle_timer()) == 0 && puzzle_timer() == 1,
        always_false() || prev(game_pointer()) != 0 && game_pointer() == 0 || puzzle_timer() < prev(puzzle_timer()),
        puzzle_flag() == 0xb,
        always_true(),
        "FRAMES",
        true
    )    
}
for i in range(0, 139){
    leaderboard(
        "Normal Puzzle " + i + 1 + " - Speedrun",
        "Fastest solve!",
        active_category() == 1 && active_num() == i && prev(puzzle_timer()) == 0 && puzzle_timer() == 1,
        always_false() || prev(game_pointer()) != 0 && game_pointer() == 0 || puzzle_timer() < prev(puzzle_timer()),
        puzzle_flag() == 0xb,
        always_true(),
        "FRAMES",
        true
    )    
}
for i in range(0, 89){
    leaderboard(
        "Hard Puzzle " + i + 1 + " - Speedrun",
        "Fastest solve!",
        active_category() == 2 && active_num() == i && prev(puzzle_timer()) == 0 && puzzle_timer() == 1,
        always_false() || prev(game_pointer()) != 0 && game_pointer() == 0 || puzzle_timer() < prev(puzzle_timer()),
        puzzle_flag() == 0xb,
        puzzle_timer(),
        "FRAMES",
        true
    )    
}
rank_test_times = [0x34bc0, 0x2bf20, 0x23280, 0x1a5e0] //Bronze to Platinum, Starting from 1h, adding + 10min (FRAMES) for each higher rank.
for i in range(1, 4){
    leaderboard(
        ranks[i] + " Rank Certification Problem - Speedrun",
        "Fastest solve!",
        active_category() == 3 && active_rank() == i && puzzle_timer() < prev(puzzle_timer()),
        prev(game_pointer()) != 0 && game_pointer() == 0,
        puzzle_flag() == 0xb,
        rank_test_times[i - 1] - puzzle_timer(),
        "FRAMES",
        false
    )
    
}





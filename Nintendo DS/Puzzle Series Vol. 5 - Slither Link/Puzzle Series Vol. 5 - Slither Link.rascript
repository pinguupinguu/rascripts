// Puzzle Series Vol. 5 - Slither Link
// #ID = 15921

// $04C888: [32bit] Profile 1 - Number of Stars
//          Stars Per puzzle
//          Category:Stars
//          Getting Started:3
//          Kind:4
//          Ordinary:5
//          Difficult:6
// $04CBB4: [80 bytes] Profile 1 -  Getting Started Time Records
//          (20 total)
//          Each puzzle [32bit] Time (Frames) Address
puzzles_started = 0x04c3d0
function getting_started_table() => range(puzzles_started, puzzles_started + 76, 4) 
// $04CC04: [400 bytes] Profile 1 - Kind Time Records
//          (100 total)
//          Each puzzle [32bit] Time (Frames) Address
puzzles_kind = 0x04c420
function kind_table() => range(puzzles_kind, puzzles_kind + 396, 4)
// $04CD94: [400 bytes] Profile 1 - Ordinary Time Records
//          (100 total)
//          Each puzzle [32bit] Time (Frames) Address
puzzles_ordinary = 0x04c5b0
function ordinary_table() => range(puzzles_ordinary, puzzles_ordinary + 396, 4)
// $04CF24: [200 bytes] Profile 1 - Difficult Time Records
//          (50 total)
//          Each puzzle [32bit] Time (Frames) Address
puzzles_difficult = 0x04c740
function difficult_table() => range(puzzles_difficult, puzzles_difficult + 196, 4)
// $04D06C: [32bit] Other Stars!!
// $04D3B4: [80 bytes] Profile 2 -  Getting Started Time Records
//          (20 total)
//          Each puzzle [32bit] Time (Frames) Address
// $04D404: [400 bytes] Profile 2 - Kind Time Records
//          (100 total)
//          Each puzzle [32bit] Time (Frames) Address
// $04D594: [400 bytes] Profile 2 - Ordinary Time Records
//          (100 total)
//          Each puzzle [32bit] Time (Frames) Address
// $04D724: [200 bytes] Profile 1 - Difficult Time Records
//          (50 total)
//          Each puzzle [32bit] Time (Frames) Address
// $152FD3: [8bit] Profile Number
//          Offset between profiles for data pointer: +0x800
//          Values:
//          0=Left Profile
//          1=Right Profile
function profile_number() => byte(0x152fd3)
function profile_protection() => profile_number() == prev(profile_number())
function progression(table, target) =>    
    prev(sum_of(table, b => dword(b) / dword(b))) == target - 1 &&
    measured(sum_of(table, b => dword(b) / dword(b)) == target) &&
   // measured(sum_of(table, b => dword(b) / dword(b))) == target) &&
    profile_protection()

achievement(
    "Puzzle Apprentice",
    "Clear 10 puzzles in Getting Started mode",
    points=5,
    trigger=
        progression(getting_started_table(), 10)
)
achievement(
    "Beginner's Triumph",
    "Clear 20 puzzles in Getting Started mode",
    points=5,
    trigger=
        progression(getting_started_table(), 20)
)
achievement(
    "Path Navigator",
    "Clear 20 puzzles in Kind mode",
    points=5,
    trigger=
        progression(kind_table(), 20)
) 
achievement(
    "Loop Enthusiast",
    "Clear 40 puzzles in Kind mode",
    points=5,
    trigger=
        progression(kind_table(), 40)
)
achievement(
    "Puzzle Enthusiast",
    "Clear 60 puzzles in Kind mode",
    points=5,
    trigger=
        progression(kind_table(), 60)
)
achievement(
    "Mind Teaser",
    "Clear 80 puzzles in Kind mode",
    points=5,
    trigger=
        progression(kind_table(), 80)
)
achievement(
    "Puzzle Master",
    "Clear 100 puzzles in Kind mode",
    points=5,
    trigger=
        progression(kind_table(), 100)
)
achievement(
    "Line Master",
    "Clear 20 puzzles in Ordinary mode",
    points=10,
    trigger=
        progression(ordinary_table(), 20)
)
achievement(
    "Grid Conqueror",
    "Clear 40 puzzles in Ordinary mode",
    points=10,
    trigger=
        progression(ordinary_table(), 40)
)
achievement(
    "Puzzle Veteran",
    "Clear 60 puzzles in Ordinary mode",
    points=10,
    trigger=
        progression(ordinary_table(), 60)
)
achievement(
    "Challenge Solver",
    "Clear 80 puzzles in Ordinary mode",
    points=10,
    trigger=
        progression(ordinary_table(), 80)
)
achievement(
    "Puzzle Maestro",
    "Clear 100 puzzles in Ordinary mode",
    points=10,
    trigger=
        progression(ordinary_table(), 100)
)

achievement(
    "Trailblazer",
    "Clear 25 puzzles in Difficult mode",
    points=25,
    trigger=
        progression(difficult_table(), 25)
)
achievement(
    "Challenge Overcomer",
    "Clear 50 puzzles in Difficult mode",
    points=25,
    trigger=
        progression(difficult_table(), 50)
)
// $04D06C: [16bit] Number of Stars
function stars() => word(0x04c888)
function star_cheevo(title, desc_bit, target, my_points) {
        achievement(
        title,
        "Earn " + desc_bit +  " " + target + " stars!",
        points=my_points,
        trigger=
            profile_protection() &&
            prev(stars()) != 0 &&
            prev(stars()) < target && 
            stars() >= target
    )
}
star_cheevo("Star Seeker", "at least", 200, 5)
star_cheevo("Puzzling Prodigy", "at least", 400, 5)
star_cheevo("Constellation Champion", "at least", 600, 5)
star_cheevo("Stellar Strategist", "at least", 800, 10)
star_cheevo("Puzzle Mastermind", "at least", 1000, 10)
star_cheevo("Galactic Genius", "all", 1260, 25)
function state() => dword(0x11aae8)
function frametimer() => dword(0x11ab08)
function puzzle_num() => dword(0x15314c) +1
function difficulty() => dword(0x153138)
difficulty_rp = {
    0:"Getting Started (入門)",
    1:"Kind (やさしい)",
    2:"Ordinary (ふつう)",
    3:"Difficult (むずかしい)"
}
rich_presence_conditional_display(state() <0xfff, "Solving a {0} puzzle {1} {2}",
    rich_presence_lookup("Difficulty", difficulty(), difficulty_rp),
    rich_presence_macro("Number", puzzle_num()),
    rich_presence_value("Timer", frametimer(), "FRAMES")
)
rich_presence_display("In Menu")
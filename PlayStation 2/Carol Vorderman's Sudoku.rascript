// Carol Vorderman's Sudoku
// #ID = 24896

// $1FC744: [32bit] Screen ID
//          0xffffffff=Loading/Selecting Profile - Save Protection
//          0x00=Intro Video
//          0x01=Load Screen
//          0x03=Main Menu
//          0x44=Loading Player Profile
inactive = 0xffffffff
function save_protection() => prev(dword(0x1fc744)) != inactive
// $2A69B8: [NBit] Option Menu Flags,  0x00=Off, 0x01=On
//          Bit1=Auto Highlights
//          Assists
//          Bit2=Auto Pencil Marks
//          Bit3=Selector Help
//          Bit4=Broken Rules
//          Bit5=Errors
// $2A69B9: [NBit] Menu Option, 0x00=Off, 0x01=On
//          Bit0=Autosave Active

// $2A6F5C: [32bit] Current Points For Level
// $2A6F60: [32bit] Current Puzzle Timer
// $2A6F77: [8bit] Lives - 3 Strikes
// $2A6F7C: [32bit] Puzzle Number - Num + 1
// $2A6F80: [32bit] Puzzle Number (Maximum)


// $2A69A0: [16bit] Difficulty
//          0x00=Easy
//          0x01=Medium
//          0x02=Hard
//          0x03=Super Difficult
function difficulty() => word(0x2a69a0)
easy = 0
medium = 1
hard = 2
super_difficult = 3
// $2A69A2: [16bit] Game Mode
//          0x00=Classic
//          0x01=Beat The Clock
//          0x02=Extra Time
//          0x03=Perfection
//          0x04=3 Strikes
//          0x05=Career Mode
//          0x06=Challenge Carol
function game_mode() => word(0x2a69a2)
classic = 0
beat_the_clock = 1
extra_time = 2
perfection = 3
three_strikes = 4
// $2A6A91: [81 bytes] Solution Grid
solution_start = 0x2a6a91
// $2A6AE2: [81 bytes] Grid
grid = 0x2a6ae2
function grid_check() => all_of(range(solution_start, solution_start + 80), b => byte(b) == byte(b + 0x51))
function grid_change() => any_of(range(grid, grid + 80), b => byte(b) != prev(byte(b)))

function measured_arg(target){
    if(target != 0) return measured(repeated(target, grid_change() && grid_check()))
    else return grid_change() && grid_check()
}

function grid_clear_cheevo(target, difficulty, mode) =>
    measured_arg(target) &&
    unless(game_mode() != mode) &&
    unless(difficulty() != difficulty) 

achievement(
    "Classic Round: Easy",
    "Complete 5 puzzles on Easy difficulty in Classic mode(One Session)",
    points=2,
    trigger=
        grid_clear_cheevo(5, easy, classic)
)
achievement(
    "Classic Round: Medium",
    "Complete 5 puzzles on Medium difficulty in Classic mode (One Session)",
    points=3,
    trigger=
        grid_clear_cheevo(5, medium, classic)
)
achievement(
    "Classic Round: Hard",
    "Complete 5 puzzles on Hard difficulty in Classic mode (One Session)",
    points=4,
    trigger=
        grid_clear_cheevo(5, hard, classic)
)
achievement(
    "Classic Round: Super Difficult",
    "Complete 5 puzzles on Super Difficult in Classic mode (One Session)",
    points=5,
    trigger=
        grid_clear_cheevo(5, super_difficult, classic)
)
achievement(
    "Easy Time Cruncher",
    "Complete a puzzle on Easy in Beat The Clock mode",
    points=2,
    trigger=
        grid_clear_cheevo(0, easy, beat_the_clock)
)
achievement(
    "Medium Time Cruncher",
    "Complete a puzzle on Medium in Beat The Clock mode",
    points=3,
    trigger=
        grid_clear_cheevo(0, medium, beat_the_clock)
)
achievement(
    "Hard Time Crusher",
    "Complete a puzzle on Hard in Beat The Clock mode",
    points=4,
    trigger=
        grid_clear_cheevo(0, hard, beat_the_clock)
)
achievement(
    "Super Difficult Time Crusher",
    "Complete a puzzle on Super Difficult in Beat The Clock mode",
    points=5,
    trigger=
        grid_clear_cheevo(0, super_difficult, beat_the_clock)
)
achievement(
    "Swift Solver",
    "Complete a puzzle on Easy in Extra Time mode",
    points=2,
    trigger=
        grid_clear_cheevo(0, easy, extra_time)
)
achievement(
    "Timed Sharpness",
    "Complete a puzzle on Medium in Extra Time mode",
    points=3,
    trigger=
        grid_clear_cheevo(0, medium, extra_time)
)
achievement(
    "Timed Puzzler",
    "Complete a puzzle on Hard in Extra Time mode",
    points=4,
    trigger=
        grid_clear_cheevo(0, hard, extra_time)
)
achievement(
    "Timed Wizard",
    "Complete a puzzle on Super Difficult in Extra Time mode",
    points=5,
    trigger=
        grid_clear_cheevo(0, super_difficult, extra_time)
)
achievement(
    "Flawless Foundation",
    "Complete a puzzle on Easy in Perfection mode",
    points=2,
    trigger=
        grid_clear_cheevo(0, easy, perfection)
)
achievement(
    "Precision Maestro",
    "Complete a puzzle on Medium in Perfection mode",
    points=3,
    trigger=
        grid_clear_cheevo(0, medium, perfection)
)
achievement(
    "Unyielding Precision",
    "Complete a puzzle on Hard in Perfection mode",
    points=4,
    trigger=
        grid_clear_cheevo(0, hard, perfection)
)
achievement(
    "Immaculate Victory",
    "Complete a puzzle on Super Difficult in Perfection mode",
    points=5,
    trigger=
        grid_clear_cheevo(0, super_difficult, perfection)
)
achievement(
    "Life's Guardian",
    "Complete a puzzle on Easy in 3 Strikes mode",
    points=2,
    trigger=
        grid_clear_cheevo(0, easy, three_strikes)
)
achievement(
    "Life's Shield",
    "Complete a puzzle on Medium in 3 Strikes mode",
    points=3,
    trigger=
        grid_clear_cheevo(0, medium, three_strikes)
)
achievement(
    "Life's Sustainer",
    "Complete a puzzle on Hard in 3 Strikes mode",
    points=4,
    trigger=
        grid_clear_cheevo(0, hard, three_strikes)
)
achievement(
    "Life's Guardian Angel",
    "Complete a puzzle on Super Difficult in 3 Strikes mode",
    points=5,
    trigger=
        grid_clear_cheevo(0, super_difficult, three_strikes)
)

// $2A6990: [8bit] Career -  Current Belt Rank Achieved
//          0x00=White Belt
//          0x01=Yellow Belt
//          0x02=Orange Belt
//          0x03=Green Belt
//          0x04=Blue Belt
//          0x05=Brown Belt
//          0x06=Black Belt
//          0x07=Graduated. Wow!
function belt() => byte(0x2a6990)
// $2A6991: [8bit] Career - Current Belts Completed Within Rank
function belt_number() => byte(0x2a6991)
white_belt = 0
yellow_belt = 1
orange_belt = 2
green_belt = 3
blue_belt = 4
brown_belt = 5
black_belt = 6
graduated = 7
function advance_tier(addr, current, new) =>
    save_protection() &&
        prev(addr) == current &&
        addr == new
achievement(
    "Beginner's Belt",
    "Obtain your White Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(belt(), white_belt, yellow_belt)
)
achievement(
    "A New Yellow Rank",
    "Obtain your Yellow Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(belt(), yellow_belt, orange_belt)
)
achievement(
    "Orange You Glad You Got This Rank",
    "Obtain your Orange Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(belt(), orange_belt, green_belt)
)
achievement(
    "Mean Green Belt",
    "Obtain your Green Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(belt(), green_belt, blue_belt)
)
achievement(
    "This Rank Gives Me the Blues",
    "Obtain your Blue belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(belt(), blue_belt, brown_belt)
)
achievement(
    "Got All the Ranks for This Color?",
    "Obtain your Brown Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(belt(), brown_belt, black_belt)
)
achievement(
    "Sudoku Karate Master!",
    "Obtain your Black Belt in Career mode by clearing the puzzles! Try to challenge Carol next.",
    points=10,
    trigger=
        advance_tier(belt(), black_belt, graduated)
)
// $2A6992: [8bit] Challenge Carol - Current Challenge Level
//          0x00=1st Dan
//          0x01=2nd Dan
//          0x02=3rd Dan
//          0x03=4th Dan
//          0x04=Graduated. Wow!
// $2A6993: [8bit] Challenge Carol - Current Challenges Completed Within Rank
function dan_level() => byte(0x2a6992)
achievement(
    "Challenging Carol - Level 1 - Fight!",
    "Obtain the rank of 1st Dan in Challenge Carol mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(dan_level(), 0, 1)
)
achievement(
    "2nd Dan Conqueror",
    "Obtain the rank of 2nd Dan in Challenge Carol mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(dan_level(), 1, 2)
)
achievement(
    "3rd Dan Man",
    "Obtain the rank of 3rd Dan in Challenge Carol mode by clearing the puzzles!",
    points=5,
    trigger=
        advance_tier(dan_level(), 2, 3)
)
achievement(
    "The Dan Master!",
    "Obtain the rank of 4th Dan in Challenge Carol mode by clearing the puzzles!",
    points=10,
    trigger=
        advance_tier(dan_level(), 3, 4)
)




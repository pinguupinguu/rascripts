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

// $2A6991: [8bit] Career - Current Belts Completed Within Rank
// $2A6992: [8bit] Challenge Carol - Current Challenge Level
//          0x00=1st Dan
//          0x01=2nd Dan
//          0x02=3rd Dan
//          0x03=4th Dan
// $2A6993: [8bit] Challenge Carol - Current Challenges Completed Within Rank
// $2A69A0: [16bit] Difficulty
//          0x00=Easy
//          0x01=Medium
//          0x02=Hard
//          0x03=Super Difficult
// $2A69A2: [16bit] Game Mode
//          0x00=Classic
//          0x01=Beat The Clock
//          0x02=Extra Time
//          0x03=Perfection
//          0x04=3 Strikes
//          0x05=Career Mode
//          0x06=Challenge Carol
// $2A69B8: [NBit] Option Menu Flags,  0x00=Off, 0x01=On
//          Bit1=Auto Highlights
//          Assists
//          Bit2=Auto Pencil Marks
//          Bit3=Selector Help
//          Bit4=Broken Rules
//          Bit5=Errors
// $2A69B9: [NBit] Menu Option, 0x00=Off, 0x01=On
//          Bit0=Autosave Active
// $2A6A91: [81 bytes] Solution Grid
// $2A6AE2: [81 bytes] Grid
// $2A6F5C: [32bit] Current Points For Level
// $2A6F60: [32bit] Current Puzzle Timer
// $2A6F77: [8bit] Lives - 3 Strikes
// $2A6F7C: [32bit] Puzzle Number - Num + 1
// $2A6F80: [32bit] Puzzle Number (Maximum)

// $2A6990: [8bit] Career -  Current Belt Rank Achieved
//          0x00=White Belt
//          0x01=Yellow Belt
//          0x02=Orange Belt
//          0x03=Green Belt
//          0x04=Blue Belt
//          0x05=Brown Belt
//          0x06=Black Belt
function belt() => byte(0x2a6990)
white_belt = 0
yellow_belt = 1
orange_belt = 2
green_belt = 3
blue_belt = 4
brown_belt = 5
black_belt = 6
function belt_advance(current, new) =>
    save_protection() &&
        prev(belt()) == current &&
        belt() == new
achievement(
    "Beginner's Belt",
    "Obtain your White Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        belt_advance(white_belt, yellow_belt)
)
achievement(
    "A New Yellow Rank",
    "Obtain your Yellow Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        belt_advance(yellow_belt, orange_belt)
)
achievement(
    "Orange You Glad You Got This Rank",
    "Obtain your Orange Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        belt_advance(orange_belt, green_belt)
)
achievement(
    "Mean Green Belt",
    "Obtain your Green Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        belt_advance(green_belt, blue_belt)
)
achievement(
    "This Rank Gives Me the Blues",
    "Obtain your Blue belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        belt_advance(blue_belt, brown_belt)
)
achievement(
    "Got All the Ranks for This Color?",
    "Obtain your Brown Belt in Career mode by clearing the puzzles!",
    points=5,
    trigger=
        belt_advance(brown_belt, black_belt)
)




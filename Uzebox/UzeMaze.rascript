// UzeMaze
// #ID = 24801

// $0EBD: [16bit] Moves
// $0EBF: [8bit] Level
function level() => byte(0x0ebf)
// $0EC0: [16bit] Level Time (Frames @ 60fps)
// $0EC2: [8bit] Flds
function flds() => byte(0xec2)
function progression(start, end, count) => measured(tally_of(range(start,end), count, b =>  once(level() == b && prev(flds()) == 1 && flds() == 0)))

achievement(
    "Slidin' Noobie",
    "Clear puzzles 1-10 (One Session)",
    points=2, 
    trigger=
        progression(1, 10, 10)
)
achievement(
    "A Sliding Test",
    "Clear puzzles 11-20 (One Session)",
    points=3,
    trigger=
        progression(11, 20, 10)
)
achievement(
    "Filler Queen",
    "Clear puzzles 21-30 (One Session)",
    points=2,
    trigger=
        progression(21, 30, 10)
)
achievement(
    "Black Paint Removal",
    "Clear puzzles 31-40 (One Session)",
    points=3,
    trigger=
        progression(31, 40, 10)
)
achievement(
    "Maze Dasher",
    "Clear puzzles 41-50 (One Session)",
    points=5,
    trigger=
        progression(41, 50, 10)
)
achievement(
    "Master of Mazes",
    "Clear puzzles 51-58 (One Session)",
    points=5,
    trigger=
        progression(51, 58, 8)
)

//clear level 54 in under 45 moves.
//Clear level 55 in under 60 moves.
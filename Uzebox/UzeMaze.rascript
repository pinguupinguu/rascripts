// UzeMaze
// #ID = 24801
// $0EBD: [16bit] Moves
function moves() => word(0x0ebd)
// $0EBF: [8bit] Level
function level() => byte(0x0ebf)
// $0EC0: [16bit] Level Time (Frames @ 60fps)
function timer() => word(0x0ec0)
// $0EC2: [8bit] Flds
function flds() => byte(0xec2)
function end_puzzle() => prev(flds()) == 1 && flds() == 0
function progression(start, end, count) => measured(tally_of(range(start,end), count, b =>  once(level() == b && end_puzzle())))

achievement(
    "Slidin' Noobie",
    "Clear puzzles 1-10 (One Session)",
    points=5, 
    trigger=
        progression(1, 10, 10)
)
achievement(
    "A Sliding Test",
    "Clear puzzles 11-20 (One Session)",
    points=5,
    trigger=
        progression(11, 20, 10)
)
achievement(
    "Filler Queen",
    "Clear puzzles 21-30 (One Session)",
    points=5,
    trigger=
        progression(21, 30, 10)
)
achievement(
    "Black Paint Removal",
    "Clear puzzles 31-40 (One Session)",
    points=5,
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
achievement(
    "Button Masher",
    "Complete a level in under 5 seconds!",
    points=5,
    trigger=
        timer() != 0 &&
        timer() < 0x12c && //5 seconds = 0x12c @ 60frames
        trigger_when(end_puzzle())
)
function mvmt_target(lvl, goal) =>
    level() == lvl &&
    moves() <= goal &&
    moves() != 0 &&
    trigger_when(end_puzzle())
achievement(
    "Movement Training I",
    "Clear level 49 in 55 moves or less",
    points=5,
    trigger=
        mvmt_target(49, 55)
)
//Clear level 49 in under 55 moves
achievement(
    "Movement Training II",
    "Clear level 54 in 45 moves or less",
    points=5,
    trigger=
        mvmt_target(54, 45)
)
achievement(
    "Movement Training III",
    "Clear level 55 in 60 moves or less",
    points=5,
    trigger=
        mvmt_target(55, 60)
)
//clear level 54 in under 45 moves.
//Clear level 55 in under 60 moves.
function star_ui() => byte(0x039c) == 0x2a //Check far left side of graphic box of level select to make a line for LBs & RP!
for i in range (1, 58){
    leaderboard(
        "Level " + i + " - Movement",
        "Lowest number of moves to clear puzzle",
        level() == i && prev(moves()) == 0 && moves() == 1,
        moves() < prev(moves()) || star_ui(),
        end_puzzle(),
        moves(),
        "Value",
        false
    )
    leaderboard(
        "Level " + i + " - Speedrun",
        "Fastest clear",
        level() == i && prev(timer()) == 0 && timer() == 1,
        timer() < prev(timer()) || star_ui(),
        end_puzzle(),
        timer(),
        "FRAMES",
        true
    )            
}
function cursor() => byte(0x0eb8)

rich_presence_conditional_display(star_ui(), "Using the level select!")
rich_presence_conditional_display(cursor() != 0 && flds() == 0, "Solved puzzle {0}",
    rich_presence_macro("Number", level())
)
rich_presence_conditional_display(cursor() != 0 && flds() != 0, "Solving puzzle {0} {1}",
    rich_presence_macro("Number", level()),
    rich_presence_value("Timer", timer(), "FRAMES")
)
rich_presence_display("In Menu")
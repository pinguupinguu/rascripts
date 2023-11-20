// ~Hack~ UzeMaze RA
// #ID = 25084

// $039C: [8bit] UI Graphic - Star Left Piece of Select Level Box
//        0x2a=Star
// $0EB8: [8bit] Cursor Location
//        !=0 means in game!
// $0EBD: [16bit] Moves
function moves() => word(0x0f4d)
// $0F1F: [8bit] Level
function level() => byte(0x0f4f)
// $0EC2: [8bit] flds
function flds() => byte(0x0f52)
// $0EC0: [16bit] Level Time (Frames @ 60fps)
function star_ui() => byte(0x042c) == 0x2a
function uibox_lvl_clr() => byte(0x03ac)
function lvl_clr(lvl, limit) =>
    level() == lvl &&
    moves() <= limit &&
    trigger_when(prev(uibox_lvl_clr()) == 0x20 && uibox_lvl_clr() == 0x2a) &&
    byte(0x42c) != 0x2a && //No Level Select
    byte(0x0383) != 0x2a
function levels_cleared(cnt) => tally_of(range(1, 15, 1), cnt, b => once(level() == b && prev(flds()) == 1 && flds() == 0))
achievement(
    "Move-Free Solver",
    "Solve all fifteen puzzles in one session",
    points=5,
    trigger=
        levels_cleared(14) &&
        measured(levels_cleared(15))
)
achievement(
    "Hexadigital's Challenge!",
    "Solve Hexadigital's puzzle (#1) in 59 moves or less",
    points=5,
    trigger=
        lvl_clr(1, 59)
)
//StingX2
achievement(
    "StingX2's Challenge",
    "Solve StingX2's puzzle (#2) in 62 moves or less",
    points=5,
    trigger=
        lvl_clr(2, 62)
)
achievement(
    "Daroachie's Challenge",
    "Solve Daroachie's puzzle (#3) in 17 moves or less",
    points=2,
    trigger=
        lvl_clr(3, 17)
)
//Xalerzyx
achievement(
    "Xalerzyx's Challenge",
    "Solve Xalerzyx's puzzle (#4) in 31 moves or less",
    points=2,
    trigger=
        lvl_clr(4, 31)
)
achievement(
    "Sutarion's Challenge",
    "Solve Sutarion's puzzle (#5) in 65 moves or less",
    points=5,
    trigger=
        lvl_clr(5, 65)
)
achievement(
    "Bryan1150's Challenge",
    "Solve Bryan1150's puzzle (#6) in 112 moves or less",
    points=10,
    trigger=
        lvl_clr(6, 112)
)
achievement(
    "EldridgeCrimson's Challenge",
    "Solve EldridgeCrimson's puzzle (#7) in 18 moves or less",
    points=3,
    trigger=
        lvl_clr(7, 18)
)
//1st prize
achievement(
    "1stPrize's Challenge",
    "Solve 1stPrize's puzzle (#8) in 77 moves or less",
    points=5,
    trigger=
        lvl_clr(8, 77)
)
//MarioKness
achievement(
    "MarioKness' Challenge",
    "Solve MarioKness' puzzle (#9) in 26 moves or less",
    points=3,
    trigger=
        lvl_clr(9, 26)
)
achievement(
    "NEOMAR's Challenge",
    "Solve NEOMAR's puzzle (#10) in 81 moves or less",
    points=5,
    trigger=
        lvl_clr(10, 81)
)
achievement(
    "ZeeRA's Challenge",
    "Solve ZeeRA's puzzle (#11) in 35 moves or less",
    points=5,
    trigger=
        lvl_clr(11, 35)
)
achievement(
    "Labuff's Challenge",
    "Solve Labuff's puzzle (#12) in 21 moves or less",
    points=3,
    trigger=
        lvl_clr(12, 21)
)
achievement(
    "Triforce's Challenge",
    "Solve Triforce'z puzzle (#13) in 53 moves or less",
    points=5,
    trigger=
        lvl_clr(13, 53)
)
achievement(
    "LadyLumina's Challenge",
    "Solve LadyLumina's puzzle (#14) in 36 moves or less",
    points=5,
    trigger=
        lvl_clr(14, 36)
)
achievement(
    "pinguupinguu's Challenge",
    "Solve pinguupinguu's puzzle (#15) in 36 moves or less",
    points=5,
    trigger=
        lvl_clr(15, 36)
)
function state_solved() => byte(0x03ac) == 0x2a && flds() == 0
function timer() => word(0x0f50)
rp_puzzlenames = {
    1:"Hexadigital",
    2:"StingX2",
    3:"Daroachie",
    4:"Xalerzyx",
    5:"Sutarion",
    6:"Bryan1150",
    7:"EldridgeCrimson",
    8:"1stPrize",
    9:"MarioKness",
    10:"NEOMAR",
    11:"ZeeRA",
    12:"Labuff",
    13:"Triforce",
    14:"LadyLumina",
    15:"pinguupinguu"
}
rich_presence_conditional_display(state_solved(), "Solved {0} 's puzzle in {1} moves!",
    rich_presence_lookup("Name", level(), rp_puzzlenames),
    rich_presence_macro("Number", moves())
)
rich_presence_conditional_display(star_ui(), "Selecting a level...")
rich_presence_conditional_display(timer() != 0 && flds() != 0, "Solving {0}'s puzzle! Moves: {1} {2}",
    rich_presence_lookup("Name", level(), rp_puzzlenames),
    rich_presence_macro("Number", moves()),
    rich_presence_value("Time", timer(), "MILLISECS")
    
)
rich_presence_display("In Title Screen")
function end_puzzle() => prev(flds()) == 1 && flds() == 0








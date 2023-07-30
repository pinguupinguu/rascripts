// ~Hack~ UzeMaze RA
// #ID = 25084

// $039C: [8bit] UI Graphic - Star Left Piece of Select Level Box
//        0x2a=Star
// $0EB8: [8bit] Cursor Location
//        !=0 means in game!
// $0EBD: [16bit] Moves
function moves() => word(0xebd)
// $0F1F: [8bit] Level
function level() => byte(0x0f1f)
// $0EC2: [8bit] flds
function flds() => byte(0x0ec2)
// $0EC0: [16bit] Level Time (Frames @ 60fps)
function lvl_clr(lvl, limit) =>
    level() == lvl &&
    moves() <= limit &&
    trigger_when(prev(flds()) == 1 && flds() == 0)
achievement(
    "Hexadigital's Challenge!",
    "Solve Hexadigital's puzzle (#1) in 59 moves or less",
    points=5,
    trigger=
        lvl_clr(1, 59)
)
//StingX2
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
    points=2,
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
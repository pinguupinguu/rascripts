// Zoop9
// #ID = 17157

// $1D905E: [16bit] Number of Bonus Springs
function springs() => word(0x1D905E)
// $1D9240: [16bit] Current Combo
function combo() => word(0x1D9240)
// $1DC226: [8bit] Game B Level Start
//          0x00=Level 1
// $1DC227: [8bit] Active Game
//          0x00=Game A
//          0x01=Game B
function active_game() => byte(0x1DC227)
mode = {
    0:"A",
    1:"B"
}
// $1DC228: [8bit] Game B Difficulty (Determines Number of Starting Shapes)
// $1DC229: [8bit] Game A Level Start
//          0x00=Level 1
// $1DC22B: [8bit] Game A Difficulty (Determines Number of Starting Shapes)
// $1DD3C9: [8bit] Demo Text Displayed
//          0x00=No
//          0x01=Yes
function demo_mode() => byte(0x1DD3C9)
// $1E1C5A: [16bit] Current Color
//          0x00=Blue
//          0x01=Green
//          0x02=Purple
//          0x03=Red
//          0x04=Proximity Bomb
//          0x05=Line Bomb
//          0x06=Color Bomb
// $1E1C6A: [16bit] Orientation
//          0x01=Right
//          0x02=Down
//          0x03=Left
//          0x04=Up
function orientation() => word(0x1E1C6A)
right = 1
down = 2
left = 3
up = 4
// $1E1C6C: [16bit] Score Amt * 65536
//          When Other Score Address rolls over 0xffff, address is incremented by 1.
function score_scale() => word(0x1E1C6C) * 65536
// $1E1C6E: [16bit] Score
function score() => word(0x1E1C6E)
// $1E3E4E: [16bit] Stage
function stage() => word(0x1E3E4E)
// $1E3E5E: [16bit] Shapes Left
function shapes() => word(0x1E3E5E)
// $1E3E6E: [16bit] Pieces Frozen
//          0x00=No
//          0x01=Yes
//          
//          Death Occurs When Address = 1 while Shapes != 0
achievement(
    "Shape Journey Has Started",
    "Clear your first round of Zoop!",
    points=4,
    trigger=
        demo_mode() == 0 &&
        prev(shapes()) != 0 &&
        shapes() == 0
)
achievement(
    "Advanced Columnist",
    "Get 5,000 points for clearing a full vertical column!",
    points=5,
    trigger=
        demo_mode() == 0 &&
        prev(combo()) == 3 &&
        combo() == 4 &&
        (always_false() || orientation() == up || orientation() == down)
        
)
achievement(
    "Advanced Rower",
    "Get 10,000 points for clearing a full horizontal row!",
    points=10,
    trigger=
        demo_mode() == 0 &&
        prev(combo()) == 6 &&
        combo() == 7 &&
        (always_false() || orientation() == left || orientation() == right)
)
rich_presence_conditional_display(demo_mode() == 1, "In Demo")
rich_presence_conditional_display(stage() == 0, "In Menu about to start their first game!")
rich_presence_display("Zoopin' in Game {0} on Stage {1}. Points: {2}",
    rich_presence_lookup("Game", active_game(), mode),
    rich_presence_macro("Number", stage()),
    rich_presence_macro("Number", score_scale() + score())

)


// Zoop9
// #ID = 17157
// $1D905E: [16bit] Number of Bonus Springs
function springs() => word(0x1D905E)
// $1D9240: [16bit] Current Combo
function combo() => word(0x1D9240)
// $1DC226: [8bit] Game B Level Start
//          0x00=Level 1
function game_b_start() => byte(0x1DC226)
// $1DC227: [8bit] Active Game
//          0x00=Game A
//          0x01=Game B
function active_game() => byte(0x1DC227)
game_a = 0
game_b = 1
mode = {
    0:"A",
    1:"B"
}
// $1DC228: [8bit] Game B Difficulty (Determines Number of Starting Shapes)
function game_b_difficulty() => byte(0x1C228)
// $1DC229: [8bit] Game A Level Start
//          0x00=Level 1
function game_a_start() => byte(0x1DC229)
// $1DC22B: [8bit] Game A Difficulty (Determines Number of Starting Shapes)
function game_a_difficulty() => byte(0x1DC22B)
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
function color() => word(0x1E1C5A)
proximity_bomb = 4
line_bomb = 5
color_bomb = 6
// $1E1C6A: [16bit] Orientation
//          0x00=Up
//          0x01=Right
//          0x02=Down
//          0x03=Left
function orientation() => word(0x1E1C6A)
up = 0
right = 1
down = 2
left = 3
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
function pieces_froze() => word(0x1E3E6E)
// $1E0D4C: [32bit] Game State Check
//          0x00000000=In Menu
//          0x0000c000=In Game
in_game = 0xc000
function state() => dword(0x1E0D4C)
function game_check() => demo_mode() == 0 && state() == in_game        
achievement(
    "Shape Journey Has Started",
    "Clear your first round of Zoop!",
    points=4,
    trigger=
        demo_mode() == 0 &&
        game_check() &&
        prev(shapes()) != 0 &&
        shapes() == 0
)
function clear_stage(game_mode, stage) =>
    game_check() &&
    active_game() == game_mode &&
    stage() == stage &&
    shapes() < prev(shapes()) &&
    shapes() == 0
achievement(
    "Zoop Da Loop",
    "Clear Stage 5 (Game A, Level Start = 0, Difficulty = Any)",
    points=10,
    trigger=
        clear_stage(game_a, 5)
)
achievement(
    "Continuous Grid!",
    "Clear Stage 10 (Game A, Level Start = 0, Difficulty = Any)",
    points=25, 
    trigger=
        clear_stage(game_a, 10)
)
achievement(
    "Shape EXP",
    "Clear Stage 5 (Game B, Level Start = 0, Difficulty = Any)",
    points=10,
    trigger=
        clear_stage(game_b, 5)
)
achievement(
    "Level Grinding Is Boring...",
    "Clear Stage 10 (Game B, Level Start = 0, Difficulty = Any)",
    points=25,
    trigger=
        clear_stage(game_b, 10)
)
function stage_hit() => once(stage() == 1 && state() > prev(state()) && never(shapes() != 0 &&   pieces_froze() > prev(pieces_froze())))
function challenge_stage(game_mode, target, game_diff, stage_start) => //Difficulty is DEFAULTED to four.
         unless(active_game() != game_mode) &&
         unless(game_diff != 4) &&
         unless(stage_start != 0) &&
         stage_hit() &&
         trigger_when(stage() == target && shapes() < prev(shapes()) && shapes() == 0)
achievement(
    "Advanced Shape Shooter",
    "Clear Stage 5 without taking Game Over. (Game A, Level Start = 0, Difficulty = 4)",
    points=25,
    trigger=
        challenge_stage(game_a, 5, game_a_difficulty(), game_a_start())
)
achievement(
    "Maniacal Shape Shooter",
    "Clear Stage 10 without taking Game Over. (Game A, Level Start = 0, DIfficulty = 4)",
    points=100,
    trigger=
        challenge_stage(game_a, 10, game_a_difficulty(), game_a_start())
)
achievement(
    "Game A Is Harder",
    "Clear Stage 5 without taking Game Over. (Game B, Level Start = 0, Difficulty = 4)",
    points=25,
    trigger=
        challenge_stage(game_b, 5, game_b_difficulty(), game_b_start())
)
achievement(
    "Game B Master",
    "Clear Stage 10 without taking Game Over. (Game B, Level Start = 0, DIfficulty = 4)",
    points=50,
    trigger=
        challenge_stage(game_b, 10, game_b_difficulty(), game_b_start())
)
function score_cheevo(target) => 
        game_check() &&
        prev(score()) < target &&
        score() >= target
achievement(
    "A Collection of Zoops",
    "Hold 25.000 points at once",
    points=10,
    trigger=
        score_cheevo(25000)
)
achievement(
    "King Zooper!",
    "Hold 50.000 points at once",
    points=10,
    trigger=
        score_cheevo(50000)
)
achievement(
    "Advanced Columnist",
    "Get 5,000 points for clearing a full vertical column!",
    points=5,
    trigger=
        game_check() &&
        prev(combo()) == 4 &&
        combo() == 5 &&
        (always_false() || orientation() == up || orientation() == down)        
)
achievement(
    "Advanced Rower",
    "Get 10,000 points for clearing a full horizontal row!",
    points=10,
    trigger=
        game_check() &&
        prev(combo()) == 6 &&
        combo() == 7 &&
        (always_false() || orientation() == left || orientation() == right)
)
function powerup(target) => game_check() && prev(color()) != target && color() == target
achievement(
    "Approximate Shot",
    "Obtain the Proximity Bomb powerup",
    points=2,
    trigger=
        powerup(proximity_bomb)
)
achievement(
    "Lineman",
    "Obtain the Line Bomb powerup",
    points=2,
    trigger=
        powerup(line_bomb)
)
achievement(
    "A Colorful Shot",
    "Obtain the Color Bomb powerup",
    points=2,
    trigger=
        powerup(color_bomb)
)
achievement(
    "Spring Shapes Away!",
    "Collect five bonus springs and clear all shapes on the grid!",
    points=5,
    trigger=
        game_check() &&
        prev(springs()) == 4 &&
        springs() == 5
)
rich_presence_conditional_display(demo_mode() == 1, "In Demo")
rich_presence_conditional_display(state() == 0xc000, "Zoopin' in Game {0} on Stage {1}. Points: {2}",
    rich_presence_lookup("Game", active_game(), mode),
    rich_presence_macro("Number", stage()),
    rich_presence_macro("Number", score_scale() + score())
)
rich_presence_display("In Menu")
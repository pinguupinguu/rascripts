// Bursting Balloons
// #ID = 24644


// $1752: [16bit] BCD Score
function score() => word(0x1752)
// $1756: [8bit] Lives
function lives() => byte(0x1756)
function progression(target) =>
    prev(score()) < target &&
    score() == target
achievement(
    "Paddle Beater",
    "Win a game",
    5,
    trigger=
        progression(0x480)
)
achievement(
    "Paddle Smacker",
    "Win two games.",
    10,
    trigger=
        progression(0x960)
)
achievement(
    "Paddle Champion!",
    "Win three games.",
    points=25,
    trigger=
        progression(0x1440)
)


// $0204: [NBit] Ballon Flags Green Row 2, Left Half
//        Each Bitflag = 1 brick
// $0205: [NBit] Ballon Flags Green Row 1, Left Half
//        Each Bitflag = 1 brick
// $0214: [NBit] Ballon Flags Green Row 2, Right Half
//        Each Bitflag = 1 brick
// $0215: [NBit] Ballon Flags Green Row 1, Right Half
//        Each Bitflag = 1 brick
function green_rows() => sum_of([0x205,  0x204, 0x214, 0x215], b => bitcount(b))
function blue_row_one() => sum_of([0x203, 0x213], b => bitcount(b))
// $0202: [NBit] Ballon Flags Blue Row 2 Left Half
//        Each Bitflag = 1 brick
// $0203: [NBit] Ballon Flags Blue Row 1, Left Half
//        Each Bitflag = 1 brick
// $0212: [NBit] Balloon Flags Blue Row 2 Right Half
// $0213: [NBit] Balloon Flags Blue Row 1 Right Half
function blue_rows() => sum_of([0x202, 0x203, 0x212, 0x213], b => bitcount(b))
function red_row_one() => sum_of([0x201, 0x211], b => bitcount(b))
// $0200: [NBit] Balloon Flags Red Row 2 Left Half
//        Each Bitflag = 1 brick
// $0201: [NBit] Balloon Flags Red Row 1 Left Half
//        Each Bitflag = 1 brick
// $0210: [NBit] Balloon Flags Red Row 2 Right Half
// $0211: [NBit] Balloon Flags Red Row 1 Right Half
function red_rows() => sum_of([0x200, 0x201, 0x210, 0x211], b => bitcount(b))
function first_brick_reset() => byte(0x0200) > prev(byte(0x0200)) //This function checks if the top left brick resets.
//Deathless
achievement(
    "Bricked Up",
    "Win a game without losing a life.",
    points=10,
    trigger=
        prev(green_rows() + blue_rows() + red_rows()) != 0 &&
        trigger_when(green_rows() + blue_rows() + red_rows() == 0) &&
        disable_when(lives() < prev(lives()), first_brick_reset())
)
achievement(
    "Neat Boi I",
    "Clear all green bricks without clearing a blue brick!",
    points=5,
    trigger=
        blue_row_one() == 15 &&
        prev(green_rows()) != 0 &&
        trigger_when(green_rows() == 0)
)
achievement(
    "Neat Boi II",
    "Clear all blue bricks without hitting any red bricks!",
    points=10,
    trigger=
        red_row_one() == 15 &&
        prev(blue_rows()) != 0 &&
        trigger_when(blue_rows() == 0)
)
function paddle_axis() => byte(0x025a) //X-Coordinate
achievement(
    "The Weeee! Zone",
    "Make the ball go as fast as possible by going into this area.",
    points=0,
    trigger=
        paddle_axis() > 9 &&
        paddle_axis() == 9
)

rich_presence_conditional_display(score() != 0, "Playing a game! Score: {0} Lives: {1}",
    rich_presence_macro("Number", bcd(score())),
    rich_presence_macro("Number", lives())
)
rich_presence_display("About to start a game!")

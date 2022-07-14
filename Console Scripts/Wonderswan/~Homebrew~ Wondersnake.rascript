// ~Homebrew~ Wondersnake
// #ID = 19897
// $0000: [16bit] Score (BCD)
function score() => bcd(word(0x000000))
// $001A: [8bit] Number of Fruits Left
function fruits_left() => byte(0x00001A)
// $004C: [8bit] Game State
//        0x00=In Menu
//        0x01=In Game
function state() => byte(0x00004C)
// $0058: [8bit] Level ID
// $080a: [8bit] Tile Check
//        0x01=Level Screen
//        0x02=In Level
//        0x10=Dead
function tile() => byte(0x00080a)
function level() => byte(0x000058)
point_assign = {
    0:2,
    1:2,
    2:3,
    3:3,
    4:3,
    5:4,
    6:4,
    7:4,
    8:4,
    9:4,
    10:4,
    11:4,
    12:4,
    13:5,
    14:5,
    15:5,
    16:5,
    17:5,
    18:5,
    19:10    
}
for i in range(0, 19){
    achievement(
        "Fruit Addict " + i + 1,
        "Clear Level " + i + 1,
        points= point_assign[i],
        trigger=
            level() == i &&
            prev(fruits_left()) == 1 &&
            fruits_left() == 0
    )
    leaderboard(
        "Level " + i + 1 + " Speedrun",
        "Fastest level clear!",
        level() == i && prev(tile()) == 1 && tile() == 2,
        tile() == 0x10,
        prev(fruits_left()) == 1 && fruits_left() == 0,
        always_true(),
        "FRAMES",
        true
    )
}
achievement(
    "Fruit Ninja 1",
    "Beat Levels 1-10 without dying!",
    points=10,
    trigger=
        once(prev(level()) == 0 && prev(tile()) == 1 && tile() == 2) &&
        trigger_when(level() == 9 && prev(fruits_left()) == 1 && fruits_left() == 0) &&
        never(tile() == 0x10)
)
achievement(
    "Fruit Ninja 2",
    "Beat Levels 11-20 without dying!",
    points=10,
    trigger=
        once(prev(level()) == 10 && prev(tile()) == 1 && tile() == 2) &&
        trigger_when(level() == 19 && prev(fruits_left()) == 1 && fruits_left() == 0) &&
        never(tile() == 0x10)
)
rich_presence_conditional_display(level() == 20, "Beat the game.    Wow    !!!")
rich_presence_conditional_display(tile() == 0x10, "Game Over!")
rich_presence_conditional_display(tile() != 0, "Playing Level {0} {1}/10 {2}",
    rich_presence_macro("Number", level() + 1),
    rich_presence_macro("Number", 10 - fruits_left()),
    rich_presence_macro("Number", score()) 
)
rich_presence_display("In Menu")
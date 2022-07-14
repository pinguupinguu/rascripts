// Berzerk
// #ID = 8948

// $002E: [8bit] Evil Otto Timer - Overflow
// $002F: [8bit] Evil Otto Timer
function otto_timer() => word(0x2e) //Take merge amt - save some lines. :)
// $0079: [8bit] Player Amt
//        0x01=1 Player
//        0x02=2 Player. Wow!
function player_count() => byte(0x79)
// $00C5: [NBit] Player State
//        When 0 > InGame
//        Bit1=Moving to new room
//        Bit2=Death
function game_check() => high4(0xc5)
function state_new_room() => bit1(0xc5)
function state_death() => bit2(0xc5)
// $00C7: [8bit] Max Number of Robots in Current Maze
// $00C8: [8bit] Robots Left - Each Maze
function robots_left() => byte(0xc8)
// $0100: [Lower 4] Score - Hundred-Thousands
// $0101: [Lower 4] Score - Ten-Thousands
// $0102: [Lower 4] Score - Thousands
function thousands() => low4(0x102)
// $0103: [Lower 4] Score - Hundreds
function hundreds() => low4(0x103)
// $0104: [Lower 4] Score - Tens
function tens() => low4(0x104)
// $0105: [Lower 4] Score - Ones
function score_sum() => tens() * 10 + hundreds() * 100 + thousands() * 1000
// $0108: [8bit] Lives
function lives() => byte(0x108)
function score_cheevo(amt) => player_count() == 1 && prev(score_sum()) < amt && score_sum() >= amt
achievement(
    "Shooting Wonder",
    "Score at least 1,000 points",
    3,
    trigger=
        
        score_cheevo(1000)
)
achievement(
    "Getting Warmer",
    "Score at least 3,000 points",
    5,
    trigger=
        score_cheevo(3000)
)
achievement(
    "Extra Chance",
    "Score at least 5,000 points and gain an extra life",
    10,
    trigger=
        score_cheevo(5000)
)
achievement(
    "Darkness Fails",
    "Clear all enemies in a maze before Evil Otto spawns",
    2,
    trigger=
        player_count() == 1 &&
        otto_timer() != 0 &&
        prev(robots_left()) != 0 &&
        robots_left() == 0 &&
        prev(state_death()) == 0
)
achievement(
    "Explorer",
    "Navigate through 30 mazes (One Session)",
    10,
    trigger=
        unless(player_count() != 1) &&
        measured(repeated(30, game_check() == 0 && state_new_room() > prev(state_new_room())))
)
achievement(
    "Daredevil",
    "Fully clear 10 mazes without taking game over.",
    5,
    trigger=
        trigger_when(repeated(10, game_check() == 0 && state_new_room() > prev(state_new_room()))) &&
        never(lives() == 0 && state_death() > prev(state_death()))
)

rich_presence_conditional_display(game_check() == 0, "Pew pewing away... Score: {0}",
    rich_presence_value("Score", score_sum())
)
rich_presence_display("Menu...")


// Champion Billiards
// #ID = 17986

// $0100: [24bit BCD] Score (Val * 10)
function score_raw() => tbyte(0x0100)
function actual_score() => bcd(tbyte(0x0100)) * 10
// $0109: [NBit] Clear Type
//        Bit0=Normal
//        Bit4=Perfect Achieved
function level_not_clear() => byte(0x0109) == 0
function perfect_clear() => bit4(0x0109) > prev(bit4(0x0109))
// $010C: [8bit] Round Number (Add +1 to this address to get acutal number)
function round() => byte(0x010c)
// $010D: [8bit] Extra Balls
function balls() => byte(0x10d)
// $0112: [8bit] Num of Players
function player_cnt() => byte(0x0112)
// $0115: Shot Flag
//        [Lower4] Number of Shots Left
//        [Bit7] Color of Shot Balls
//        0x00=Red
//        0x01=Blue
function shots_left() => low4(0x0115)
// $0182: [8bit] Game State
//        0x00=In Game
//        0xff=In Menu/Demo
function game_state() => byte(0x0182)
in_game = 0
in_menu = 0xff
function progression(title, desc, points, start, end) {
     achievement(
        title,
        desc,
        points,
        trigger=
            game_state() == in_game &&
            player_cnt() == 1 &&
            prev(round()) == start &&
            round() == end
    )
}   
progression("Precision At It's Finest", "Complete Rounds 1-5", 5, 4, 5)
progression("Be Cueful!", "Complete Rounds 6-10", 5, 9, 10)
progression("Rackin' Points", "Complete Rounds 11-15", 5, 14, 15)
progression("Shot Caller", "Complete Rounds 16-20", 5, 19, 20)
progression("Table Titan", "Complete Rounds 21-25", 5, 24, 25)
progression("Pocket Sinker", "Complete Rounds 26-30", 10, 29, 30)
progression("Powershooter", "Complete Rounds 31-35", 10, 34, 35)
progression("Break Specialist", "Complete Rounds 36-40", 10, 39, 40)
progression("Felt Pro", "Complete Rounds 41-45", 10, 44, 45)
progression("Ball Annihilator", "Complete Rounds 46-50", 25, 49, 50) //Game loops back to stage 1.
achievement(
    "Perfect Pool Plays",
    "Achieve a perfect clear on any stage!",
    points=10,
    trigger=
        game_state() == in_game &&
        player_cnt() == 1 &&
        perfect_clear()
)
function balls() => byte(0x010d)
achievement(
    "Creature Hatcher",
    "Gain extra balls by breaking a ball, and hatch an animal!",
    points=5,
    trigger=
        game_state() == in_game &&
        player_cnt() == 1 &&
        any_of(range(0x20, 0xc0, 0x20), b => prev(byte(b)) != 0xa && byte(b) == 0xa)
)
function ball_not_loaded() => byte(0x012c) == 0
rich_presence_conditional_display(ball_not_loaded(), "Booting...")
rich_presence_conditional_display(game_state() == in_game, "Shootin' on Round {0}. [🏆 {1}] [🎱 {2}] [Shots Left: {3}]",
    rich_presence_macro("Number", round() + 1),
    rich_presence_macro("Score", actual_score()),
    rich_presence_macro("Number", balls()),
    rich_presence_macro("Number", shots_left())
)
rich_presence_display("In Menu")
leaderboard(
    "High Score",
    "Highest score after game over or end of Round 50 on first pass",
    prev(game_state()) == in_menu && game_state() == in_game && round() == 0,
    always_false(),
    always_false() || level_not_clear() && balls() == 0 && shots_left() == 0 || prev(round()) == 49 && round() == 50,
    actual_score(),
    "Score",
    false
)   



// Dynamite Bowl
// #ID = 22559

// $BE15: [8bit] Game Mode
//        0x00=A
//        0xFF=B
function game_mode() => byte(0xbe15)
A=0x00
B=0xFF

// $BE16: [8bit] Number of Players
function player_count() => byte(0xbe16)
// $BEA8: [8bit] Frame Number
function frame_number() => byte(0xbea8)
// $BEE3: [8bit] Game State
//        0x00=In Menu
//        0x02=In Game
//        0x02>0x01=End Game
in_menu = 0
in_game = 2
end_game = 1
function game_state() => byte(0xbee3)
// $CC90: [8bit] Player 1  Frame Score - Shot 1
// $CC95: [8bit] Player 1  Frame Score - Shot 2
// $CC9A: [BCD] Player 1 Score - Tens & Ones
function ones() => low4(0xcc9a)
function tens() => high4(0xcc9a) * 10
// $CC9F: [BCD] Player 1 Score - Hundreds
function hundreds() => low4(0xcc9f) * 100
function score() => ones() + tens() + hundreds()
// $CFF7: [8bit] Demo
//        0x00=No
//        0x01=Yes. Wow!
function no_demo() => byte(0xcff7) != 1

function score_cheevo(game, target) =>
    no_demo() &&
    game_mode() == game &&
    player_count() == 1 &&
    game_state() == in_game &&
    prev(score()) < target && 
    score() >= target
function game_b_throws() => low4(0xbf0b) + high4(0xbf0b) * 10
function game_b_end() => prev(byte(0x00bf72)) == 0x00 && byte(0x00bf72) == 0xff
function game_b_cheevo(throws) =>
    no_demo() &&
    game_mode() == B &&
    player_count() == 1 &&   
    game_b_throws() <= throws &&
    game_state() == in_game &&
    game_b_end()
achievement(
    "Yoko's First Rodeo",
    "Score 50 points or more in Game A!",
    points=3,
    trigger=
        score_cheevo(A, 50)
)
achievement(
    "Watch The Gutters!",
    "Score 100 points or more in Game A!",
    points=5,
    trigger=
        score_cheevo(A, 100)
)
achievement(
    "Learning Ball Control",
    "Score 150 points or more in Game A!",
    points=5,
    trigger=
        score_cheevo(A, 150)
)
achievement(
    "Learning Ball Spin",
    "Score 200 points or more in Game A!",
    points=5,
    trigger=
        score_cheevo(A, 200)
)
achievement(
    "PBA Certified",
    "Score 250 points or more in Game A!",
    points=10,
    trigger=
        score_cheevo(A, 250)
)
achievement(
    "Out of This World!",
    "Score 300 points in Game A and get a special surprise!",
    points=25,
    trigger=
        score_cheevo(A, 300)
)
achievement(
    "Yoko's Second Rodeo",
    "Beat Game B in 80 throws or less!",
    points=2,
    trigger=
        game_b_cheevo(80)
)
achievement(
    "The Lane Needs More Oil!",
    "Beat Game B in 70 throws or less!",
    points=5,
    trigger=
        game_b_cheevo(70)
)
achievement(
    "PBA Tour Time!",
    "Beat Game B in 60 throws or less!",
    points=5,
    trigger=
        game_b_cheevo(60)
)
achievement(
    "PBA Semi-Finalist",
    "Beat Game B in 50 throws or less!",
    points=5,
    trigger=
        game_b_cheevo(50)
)
achievement(
    "PBA Finalist",
    "Beat Game B in 40 throws or less!",
    points=10,
    trigger=
        game_b_cheevo(40)
)
achievement(
    "Better Than Perfection",
    "Beat Game B in 30 throws or less!",
    points=25,
    trigger=
        game_b_cheevo(30)
)
rp_game = {
    0:"A",
    0xFF:"B"
}
rich_presence_conditional_display(!(no_demo()), "Viewing the Demo...")
rich_presence_conditional_display(game_mode() == A && game_state() == in_game && player_count() > 1, "Bowling Game {0} with {1} players!",
    rich_presence_lookup("Game", game_mode(), rp_game),
    rich_presence_macro("Number", player_count())
)
rich_presence_conditional_display(game_mode() == A && game_state() == in_game, "Bowling Game A, Points: {0}",
    rich_presence_macro("Number", score())
)
rich_presence_conditional_display(game_mode() == B && game_state() == in_game, "Bowling Game B, Number of Throws: {0}",
    rich_presence_macro("Number", game_b_throws())
)
rich_presence_display("In Menu")
function lb(game){
    leaderboard(
        "Game " + rp_game[game],
        "Highest Score!",
        no_demo() && game_mode() == game && prev(game_state()) == in_menu && game_state() == in_game,
        always_false(),
        prev(game_state()) == in_game && game_state() == end_game,
        score(),
        "Score",
        false
    )
}
lb(0x00)
function game_b_ones() => low4(0x00bf00)
function game_b_tens() => high4(0x00bf00) * 10
function game_b_hundreds() => low4(0x00bf01) * 100

leaderboard(
    "Game B - Current Score Bal",
    "Land directly on 500 to win!",
    no_demo() && game_mode() == 0xff && player_count() == 1 && prev(game_state()) == in_menu && game_state() == in_game,
    game_b_end(),
    always_false(),
    game_b_hundreds() + game_b_tens() + game_b_ones(),
    "Score",
    false
)
leaderboard(
    "Game B - Lowest Throws",
    "Lowest Number of throws to beat the game!",
    no_demo() && game_mode() == 0xff && player_count() == 1 && prev(game_state()) == in_menu && game_state() == in_game,
    always_false(),
    game_b_end(),
    game_b_throws(),
    "Score",
    true
)

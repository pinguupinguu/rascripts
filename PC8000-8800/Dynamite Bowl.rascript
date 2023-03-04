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
    game_state() == in_game &&
    prev(score()) < target && 
    score() >= target

achievement(
    "Yoko's First Rodeo",
    "Score 50 points or more in Game A!",
    points=2,
    trigger=
        score_cheevo(B, 50)
)
achievement(
    "Watch The Gutters!",
    "Score 100 points or more in Game A!",
    points=5,
    trigger=
        score_cheevo(B, 100)
)
achievement(
    "Learning Ball Control",
    "Score 150 points or more in Game A!",
    points=5,
    trigger=
        score_cheevo(B, 150)
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
    "Yoko's Second Rodeo",
    "Score 50 points or more in Game B!",
    points=2,
    trigger=
        score_cheevo(B, 50)
)
achievement(
    "The Lane Needs More Oil!",
    "Score 100 points or more in Game B!",
    points=5,
    trigger=
        score_cheevo(B, 100)
)
achievement(
    "PBA Tour Time!",
    "Score 150 points or more in Game B!",
    points=5,
    trigger=
        score_cheevo(B, 150)
)
achievement(
    "PBA Semi-Finalist",
    "Score200 points or more in Game B!",
    points=5,
    trigger=
        score_cheevo(B, 200)
)
achievement(
    "PBA Finalist",
    "Score 250 points or more in Game B!",
    points=10,
    trigger=
        score_cheevo(B, 250)
)

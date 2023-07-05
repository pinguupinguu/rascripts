// Draughts | Checkers
// #ID = 21631
// $00E9: Milisecond Frame Timer
// $00ED: [BCD] P1 Game Timer (Sec)
// $00EE: [BCD] P2 Game Timer (Sec)
// $00EF: [BCD] P1 Game Timer (Min)
// $00F0: [BCD] P2 Game Timer (Min)
// $00F1: [8bit] P2 Flash Side
//        0x11 > 0x77 = win!
function player_two_flash_pause() => unless(once(prev(byte(0x00f1)) == 0x11 && byte(0x00f1) == 0x77))
// $00F2: red player flash
//        0x44 > 0x77
function player_one_flash() => prev(byte(0x00f2)) == 0x44 && trigger_when(byte(0x00f2) == 0x77) 
// $048B: [NBit] Inputs
//        Bit6=Start (Default F1)
function start() => bit6(0x048b)
//        Bit7=Select (Default F2)
// $051E: [8bit] Mode
function mode() => byte(0x051e)
function mode_pause() => unless(once(mode() != prev(mode())))
// $05C8: [8bit] State
//        0x00=In Game
//        0xee=Selecting Option
function state() => byte(0x05c8)
in_game = 0
in_option = 0xee
function progression(num) => //Put the mode number in!
    mode() == num &&
    mode_pause() &&
    player_one_flash() &&
    player_two_flash_pause() &&
    (always_false()
    || never(prev(state()) != in_option && start() > prev(start()))    
    )
achievement(
    "Ready or Draught, Here We Go!",
    "Win against the CPU on Mode 3!",
    points=5,
    trigger=
        progression(3)
)
achievement(
    "Diagonal Alley",
    "Win against the CPU on Mode 4!",
    points=5,
    trigger=
        progression(4)
)
achievement(
    "Harder Times to Get Crowns",
    "Win against the CPU on Mode 5!",
    points=10,
    trigger=
        progression(5)
)
achievement(
    "Crowned Against Hard Times",
    "Win against the CPU on Mode 6!",
    points=10,
    trigger=
        progression(6)
)
achievement(
    "Difficult Times, Difficult Moves",
    "Win against the CPU on Mode 7!",
    points=10,
    trigger=
        progression(7)
)
achievement(
    "CPU Frier",
    "Win against the CPU on Mode 8!",
    points=10,
    trigger=
        progression(8)
)
start = 1
for i in range(9, 14){
    achievement(
        "Checkers Eliminator " + start,
        "Win against the CPU on Mode " + i + "!",
        points=5,
        trigger=
            mode() == i &&
            mode_pause() &&
            byte(0x0553) == 0 &&
            prev(byte(0x00f1)) == 0x11 && trigger_when(byte(0x00f1) == 0x77) &&
            (always_false()
                || never(prev(state()) != in_option && start() > prev(start()))    
            )
    )
    start = start + 1
}
modes = {
    1:"Player v.s. Player",
    2:"Player v.s. Player",    
    3:"Player v.s. CPU (Easy)",
    4:"Player v.s. CPU (Easy)",
    5:"Player v.s. CPU (Hard)",
    6:"Player v.s. CPU (Hard)",
    7:"Player v.s. CPU (Difficult)",
    8:"Player v.s. CPU (Difficult)",
    15:"Custom Board Placements"
    
}
rich_presence_display("Playing a game of {0} on Mode {1}",
    rich_presence_lookup("Mode", bcd(mode()), modes, "Player v.s. CPU - Elimination"),
    rich_presence_macro("Number", bcd(mode()))
)

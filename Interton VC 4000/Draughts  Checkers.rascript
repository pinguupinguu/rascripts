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
function progression(num) => //Put the mode number in!
    mode() == num &&
    mode_pause() &&
    player_one_flash() &&
    player_two_flash_pause() &&
    (always_false()
    || never(prev(state()) == in_game && start() > prev(start()))    
    )
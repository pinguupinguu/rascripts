// Breakout 2000
// #ID = 7904

//CONSTANTS
OFF = 0
ON = 1

// $1D1050: [8bit] Score - Ones
function ones() => byte(0x1d1050)
// $1D1051: [8bit] Score - Tens
function tens() => byte(0x1d1051) * 10
// $1D1052: [8bit] Score - Hundreds
function hundreds() => byte(0x1d1052) * 100
// $1D1053: [8bit] Score - Thousands
function thousands() => byte(0x1d1053) * 1000
function score() => thousands() + hundreds() + tens() + ones() 
// $1D1083: [8bit] LevelID
//          0x00=0-0
//          0x01=0-1
//          0x02=0-2
//          0x03=0-3
//          0x04=0-4
//          0x05=1-0
//          0x06=1-1
//          0x07=1-2
//          0x08=1-3
//          0x09=1-4
//          0x0a=2-0
//          0x0b=2-1
//          0x0c=2-2
//          0x0d=2-3
//          0x0e=2-4
//          0x0f=3-0
//          0x10=3-1
//          0x11=3-2
//          0x12=3-3
//          0x13=3-4
//          0x14=4-0
//          0x15=4-1
//          0x16=4-2
//          0x17=4-3
//          0x18-4-4
//          0x19=5-0
//          0x1a=5-1
//          0x1b=5-2
//          0x1c=5-3
//          0x1d=5-4
//          0x1e=6-0
//          0x1f=6-1
//          0x20=6-2
//          0x21=6-3
//          0x22=6-4
//          0x23=7-0
//          0x24=7-1
//          0x25=7-2
//          0x26=7-3
//          0x27=7-4
//          0x28=8-0
//          0x29-8-1
//          0x2a-8-2
//          0x2b=8-3
//          0x2c=8-4
//          0x2d=9-0
//          0x2e=9-1
//          0x2f=9-2
//          0x30=9-3
//          0x31=9-4
rp_levels = {
    0x00: "0-0",
    0x01: "0-1",
    0x02: "0-2",
    0x03: "0-3",
    0x04: "0-4",
    0x05: "1-0",
    0x06: "1-1",
    0x07: "1-2",
    0x08: "1-3",
    0x09: "1-4",
    0x0a: "2-0",
    0x0b: "2-1",
    0x0c: "2-2",
    0x0d: "2-3",
    0x0e: "2-4",
    0x0f: "3-0",
    0x10: "3-1",
    0x11: "3-2",
    0x12: "3-3",
    0x13: "3-4",
    0x14: "4-0",
    0x15: "4-1",
    0x16: "4-2",
    0x17: "4-3",
    0x18: "4-4",
    0x19: "5-0",
    0x1a: "5-1",
    0x1b: "5-2",
    0x1c: "5-3",
    0x1d: "5-4",
    0x1e: "6-0",
    0x1f: "6-1",
    0x20: "6-2",
    0x21: "6-3",
    0x22: "6-4",
    0x23: "7-0",
    0x24: "7-1",
    0x25: "7-2",
    0x26: "7-3",
    0x27: "7-4",
    0x28: "8-0",
    0x29: "8-1",
    0x2a: "8-2",
    0x2b: "8-3",
    0x2c: "8-4",
    0x2d: "9-0",
    0x2e: "9-1",
    0x2f: "9-2",
    0x30: "9-3",
    0x31: "9-4"
}
function level_ID() => byte(0x1d1083)
// $1D1958: [8bit] Ball State
//          0x00=Not Launched
//          0x01=Launched
// $1D1A0E: [8bit] Power Flag - Catch Mode
// $1D1A0F: [8bit] Cheat Flag - Lightning Ball
// $1D2F8F: [8bit] Number of Bricks Left
function brick_count() => byte(0x1d2f8f)
// $1D2FA9: [8bit] Number of Balls
function ball_count() => byte(0x1d2fa9)
// $1D2FB1: [NBit] Input Buttons
//          Bit1=1
//          Bit2=2
//          Bit3=3
//          Bit4=4
//          Bit5=5
//          Bit6=6
//          Bit7=7
// $1D2FB2: [NBit] Input Buttons
//          Bit0=8
//          Bit1=9
// CHEATS LIST
//99 Balls	1 + 3 + 5
//Enable catch mode	7 + 8 + 9 + 4
//Have the ability to catch the ball	7 + 8 + 9 + 3
//Level Skip	1 + 6 + 7
//Lighting Cannon	7 + 8 + 9 + 2
//Super Ball	7+8+9+1
//World Skip	1 + 5 + 7
function ninetynine_cheat() => unless(once(bit1(0x1d2fb1) == 1 && bit3(0x1d2fb1) == 1 && bit5(0x1d2fb1) == 1))
function enable_catch_cheat() => unless(once(bit7(0x1d2fb1) == 1 && bit0(0x1d2fb2) == 1 && bit1(0x1d2fb2) == 1  && bit4(0x1d2fb1) == 1))
function catch_mode_cheat() => unless(once(bit7(0x1d2fb1) == 1 && bit0(0x1d2fb2) == 1 && bit1(0x1d2fb2) == 1  && bit3(0x1d2fb1) == 1))
function cannon_cheat() => unless(once(bit7(0x1d2fb1) == 1 && bit0(0x1d2fb2) == 1 && bit1(0x1d2fb2) == 1  && bit2(0x1d2fb1) == 1))
function super_ball_cheat() => unless(once(bit7(0x1d2fb1) == 1 && bit0(0x1d2fb2) == 1 && bit1(0x1d2fb2) == 1  && bit1(0x1d2fb1) == 1))
function cheat_protection() => ninetynine_cheat() && enable_catch_cheat() && catch_mode_cheat() && cannon_cheat() && super_ball_cheat()
// $1D2FB9: [8bit] Player 1 IsControlled
//          0x00=Yes
//          0x01=No, Controlled by Demo
function demo_lock() => unless(byte(0x1d2fb9) != 0)
// $1D45F9: [8bit] Enemy Blocks Left
// $1D462D: [8bit] Skill Level - Player One
//          0x00=Novice
//          0x01=Normal
//          0x02=Expert
function skill_level() => byte(0x1d462d)

// $1D462E: [8bit] Skill Level - Player Two
//          0x00=Novice
//          0x01=Normal
//          0x02=Expert
//          0x03=Computer
//          0x04=None
skill_level_novice = 0
skill_level_normal = 1
skill_level_expert = 2
computer_player = 3
skill_none = 4
function skill_level_player_two() => byte(0x1d462e)
function solo_check() => unless(skill_level_player_two() != skill_none)
function versus_check() => skill_level_player_two() == computer_player
// $1D462F: [8bit] Paddle Speed Option - Game
//          0x00=Slow
//          0x01=Medium
//          0x02=Fast
function speed() => byte(0x1d462f)
slow = 0
medium = 1
fast = 2
// $1D4633: [8bit] Game Mode
//          0x00=Breakout Classic
//          0x01=Breakout 2000
function game_mode() => byte(0x1d4633)
classic=0
breakout_new=1
// $1D4634: [8bit] Breakout Classic - Catch Option
//          0x00=Off
//          0x01=On
function classic_option_catch() => byte(0x1d4634)
// $1D4635: [8bit] Breakout Classic - Breakthru Option
//          0x00=Off
//          0x01=On
function classic_option_breakthru() => byte(0x1d4635)
// $1D463B: [8bit] Music Volume
// $1D463F: [8bit] Effects Volume

//Classic Mode Cheevos
function classic_clear(ID) =>
        game_mode() == classic &&
        classic_option_catch() == OFF &&
        classic_option_breakthru() == OFF &&
        prev(level_ID()) == ID - 1 &&
        level_ID() == ID
//achievement(
//    "Level 0-0",
//    "Clear Breakout 2000 Level 0-0 as a solo player",
//    points=5,
 //   trigger=
 //       game_mode() == breakout_new &&
 //           solo_check() &&
 //           score() != 0 &&
 //           level_ID() == 0 &&
 //           brick_count() < prev(brick_count()) &&
 //           brick_count() == 0 &&
 //           demo_lock() &&
 //           cheat_protection()
//)        
        
my_points = 0
my_id = 222157        
for i in range(0, 49){
    if(i < 15) my_points = 5
    else if(i >= 15 && i < 49) my_points = 10
    else my_points = 25
    achievement(
        "Level " + rp_levels[i],
        "Clear Breakout 2000 Level " + rp_levels[i] + " as a solo player",
        id=my_id,
        points=my_points,        
        trigger=
            game_mode() == breakout_new &&
            solo_check() &&
            level_ID() == i &&
            prev(brick_count()) == 1 &&
            brick_count() == 0 &&
            demo_lock() &&
            cheat_protection()            
    )
    my_id = my_id + 1
}
achievement(
    "Back to the Good Old Days",
    "Clear a round of Breakout Classic (No Catch or Breakthru)",
    id=222207,
    points=2,
    trigger=
        classic_clear(1)       
)
achievement(
    "Classic Cleared!",
    "Clear a game of Breakout Classic (No Catch or Breakthru)",
    id=222208,
    points=3,
    trigger=
        classic_clear(2)
)
achievement(
    "You Got Some Balls",
    "Clear a game of Breakout Classic on Expert, Fast 🏓 Speed (No Catch or Breakthru)",
    id=222209,
    points=10,
    trigger=
        classic_clear(2) &&
        skill_level() == skill_level_expert &&
        speed() == fast
)
achievement(
    "You Got Real Balls",
    "Clear a game of Breakout Classic on Expert, Fast 🏓 Speed, without losing a ball (No Catch or Breakthru)",
    id=222210,
    points=25,
    trigger=
       game_mode() == classic &&
       classic_option_catch() == OFF &&
       classic_option_breakthru() == OFF &&
       skill_level() == skill_level_expert &&
       speed() == fast &&
       ball_count() == 5 && //Default start value for Classic is 5 balls.
       trigger_when(prev(level_ID()) == 1 && level_ID() == 2) 
)
rich_presence_display("Playing Jaguar Breakout...Wow!")










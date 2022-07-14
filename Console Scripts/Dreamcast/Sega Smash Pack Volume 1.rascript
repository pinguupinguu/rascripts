// Sega Smash Pack: Volume 1
// #ID = 19152
// $0080F0: Game Identifier [8 Bytes]
//          --- ALTBEAST — Altered Beast
//          --- COLUMNS — Columns
//          --- DDEX4 — Sega Swirl / Virtua Cop 2 (PC Engine)
//          --- GOLDAXE — Golden Axe
//          --- PHSTAR2 — Phantasy Star II
//          --- REVSHIN — Revenge of Shinobi
//          --- SHFORCE — Shining Force
//          --- SONIC1 — Sonic the Hedgehog
//          --- STRAGE2 — Streets of Rage 2
//          --- VECTORM — Vectorman
//          --- WRESTWAR — Wrestle War
function identifier_one() => dword(0x80f0) == 0x554c4f43
function identifier_two() => dword(0x80f4) == 0x20534e4d
// $0080FC: Selected a Game?
//          0x01: In a game (See 0x80f0 or 0x8280).
//          0x20: Out of a game: need to choose one.
function in_columns() => byte(0x80fc) == 1
function columns_id_check() => identifier_one() && identifier_two() && in_columns() //Combines ASCII Magic word && in-game check.
// $302581: [Columns] [8bit] Flash Columns - Cleared
//          0x00=No
//          0xff=Yes
function columns_menu_flash_clear() => prev(byte(0x302581)) == 0 && byte(0x302581) == 0xff
// $306180: [Columns] [8bit] Menu Game Mode Chosen
//          0x00=Original Game
//          0x01=Flash Columns
function columns_menu_mode() => byte(0x306180)
original = 0
flash_columns = 1
// $306181: [Columns] [8bit] Menu Modes - Selected Player Mode         
//          0x00=1P
//          0x01=2P
//          0x03=Doubles
function columns_menu_players() => byte(0x306181)
one_player = 0
two_player = 1
doubles = 3
player_rp = {
    0:"1P",
    1:"2P",
    3:"Doubles"
}
// $306182: [Columns] [8bit] Original Game/Flash Columns - Difficulty (P1)
//          0x00=Novice
//          0x01=Amateur
//          0x02=Pro
function columns_menu_class() => byte(0x306182)
novice = 0
amateur = 1
pro = 2
classes_rp = {
    0:"Novice",
    1:"Amateur",
    2:"Pro"
}
// $306184: [Columns] [8bit] Original Game - Level
function columns_menu_original_level() => byte(0x306184)
// $306186: [Columns] [8bit] Flash Columns - Height
//          0x07=Maximum Height
function columns_menu_flash_height() => byte(0x306186)
max_height = 7
// $306188: [Columns] [8bit] Original Game - Time Trial On
//          0x00=No
//          0x01=Yes
function original_time_switch() => byte(0x306188)
off = 0
on = 1
// $30618A: [Columns] [8bit] Original Game/Flash Columns - BGM
//          0x00=Clotho
//          0x01=Lathesis
//          0x02=Atropos
function original_bgm_switch() => byte(0x30618a)
bgm_vals = {
    0:"Clotho",
    1:"Lathesis",
    2:"Atropos"
}
// $3061A9: [Columns] [8bit] Selected Mode
//          0x00=Arcade
//          0x01=Menu
//          0x02=Options
function columns_internal_game_mode() => byte(0x3061a9)
arcade = 0 
menu_modes = 1
options = 2
// $3065A0: [Columns] Score Digits
//          
//          [Upper4] Score - Ten Millions
//          [Lower4] Score - Millions
// $3065A1: [Columns] Score Digits
//          
//          [Upper4] Score - Hundred Thousands
//          [Lower4] Score - Ten Thousands Weeeeeeeeee!
// $3065A2: [Columns] Score Digits
//          
//          [Upper4] Score - Hundreds
//          [Lower4] Score - Thousands
// $3065A3: [Columns] Score Digits
//          
//          [Upper4] Score - Tens
//          [Lower4] Score - Ones
// ====================================
//Read as 32bit Big Endian number to dodge having to use each 4bit values toward
//add source with multiplication
// ====================================
function score_display() => dword_be(0x3065a0)
// $3065A6: [Columns] [16bit BE] Number of Jewels Broken
// $30659C: [Columns] [32bit BE] Score - Actual
function score_value() => dword_be(0x30659c)
function jewels() => word_be(0x3065a6)
// $3065B3: [Columns] [8bit] Level Number Display
function columns_level_display() => byte(0x3065b3)
// $3065CE: [Columns] [8bit] Arcade Mode - Difficulty
//          0x00=Easy
//          0x01=Medium
//          0x02=Hard
function columns_arcade_difficulty() => byte(0x3065CE)
arcade_easy = 0
arcade_med = 1
arcade_hard = 2
arcade_difficulty_rp = {
    0:"Easy",
    1:"Medium",
    2:"Hard"
}
// $3065E8: [Columns] [8bit] Time Trial Mode - Timer (Minutes)
function timer_minutes() => byte(0x3065e8)
// $3065E9: [Columns] [8bit] Time Trial Mode - Timer (Seconds)
function timer_seconds() => byte(0x3065e9)
function timer() => timer_seconds() + timer_minutes() * 60
// $3065F5: [Columns] [8bit] GamePaused
//          0x00=No
//          0xff=Paused
function columns_paused() => byte(0x3065f5)
function columns_gamecheck_arcade() => columns_id_check() && columns_internal_game_mode() == arcade && score_display() != 0 
function columns_gamecheck_original() => columns_id_check() && columns_internal_game_mode() == 1 && columns_menu_mode() == original && score_display() != 0
function columns_gamecheck_flash() => columns_id_check() && columns_internal_game_mode() == 1 && columns_menu_mode() == flash_columns && timer() != 0
// ==================ACHIEVEMENTS==================

//NOTE: Any number above 9 needs to be read in as hex number because it's really BCD. By reading in hex, we avoid having to use it for logic checks which is preferred.
achievement(
    "Journey Has Started",
    "[Columns] Clear Level 0 on Easy in Aracde Mode",
    points=2,
    id=220362,
    trigger=
        columns_gamecheck_arcade() &&
        columns_arcade_difficulty() == arcade_easy &&
        prev(columns_level_display()) == 0 &&
        columns_level_display() == 1
)
achievement(
    "Piece of Cake",
    "[Columns] Starting on Easy (Lvl 0), clear level 5 in Arcade Mode",
    points=3,
    id=220363,
    trigger=
        columns_gamecheck_arcade() &&
        columns_arcade_difficulty() == arcade_easy &&
        prev(columns_level_display()) == 5 &&
        columns_level_display() == 6
)
achievement(
    "Speed is Nothing!",
    "[Columns] Starting on Medium (Lvl 5), clear level 10 in Arcade Mode",
    points=5,
    id=220364,
    trigger=
        columns_gamecheck_arcade() &&
        columns_arcade_difficulty() == arcade_med &&
        prev(columns_level_display()) == 9 &&
        columns_level_display() == 0x10 
)
achievement(
    "Go Quicker!",
    "[Columns] Starting on Medium (Lvl 5), clear level 15 in Arcade Mode",
    points=10,
    id=220365,
    trigger=
        columns_gamecheck_arcade() &&
        columns_arcade_difficulty() == arcade_med &&
        prev(columns_level_display()) == 0x15 &&
        columns_level_display() == 0x16
)
achievement(
    "A New Challenger Approaches",
    "[Columns] Starting on Hard (Lvl 10), clear level 20 in Arcade Mode",
    points=10,
    id=220366,
    trigger=
        columns_gamecheck_arcade() &&
        columns_arcade_difficulty() == arcade_hard &&
        prev(columns_level_display()) == 0x20 &&
        columns_level_display() == 0x21
)
achievement(
    "Breakin' Jewels Breakin' Fingers",
    "[Columns] Starting on Hard (Lvl 10), clear level 25 in Arcade Mode",
    points=10,
    id=220367,
    trigger=
        columns_gamecheck_arcade() &&
        columns_arcade_difficulty() == arcade_hard &&
        prev(columns_level_display()) == 0x25 &&
        columns_level_display() == 0x26
)
achievement(
    "Master of Stacks",
    "[Columns] Starting on Hard (Lvl 10), clear level 30 in Arcade Mode",
    points=25,
    id=220368,
    trigger=
        columns_gamecheck_arcade() &&
        columns_arcade_difficulty() == arcade_hard &&
        prev(columns_level_display()) == 0x30 &&
        columns_level_display() == 0x31
)
function jewel_cheevo(count) =>
        columns_gamecheck_arcade() &&
        prev(jewels()) < count &&
        jewels() >= count
achievement(
    "Collecting Bounty",
    "[Columns] Break 100 jewels in one game of Arcade Mode",
    points=5,
    id=220369,
    trigger=
        jewel_cheevo(100)
)
achievement(
    "Which One Shines More?",
    "[Columns] Break 300 jewels in one game of Arcade Mode",
    points=10,
    id=220370,
    trigger=
        jewel_cheevo(300)
)
achievement(
    "Diamond Splendor",
    "[Columns] Break 500 jewels in one game of Arcade Mode",
    points=10,
    id=220371,
    trigger=
        jewel_cheevo(500)
)
function arcade_score(target_score, diff) => 
        columns_gamecheck_arcade() && 
        columns_arcade_difficulty() == diff && 
        prev(score_value()) < target_score && 
        score_value() >= target_score
achievement(
    "The Long Vertical Gauntlet",
    "[Columns] Get at least 50.000 points on Easy in Arcade Mode",
    points=10,
    id=220372,
    trigger=
        arcade_score(50000, arcade_easy)
)
achievement(
    "An Average Challenge",
    "[Columns] Get at least 70.000 points on Medium in Arcade Mode",
    points=25,
    id=220373,
    trigger=
        arcade_score(70000, arcade_med)
)
achievement(
    "Conqueror of Arcade Mode",
    "[Columns] Get at least 100.000 points on Hard in Arcade Mode",
    points=25,
    id=220374,
    trigger=
        arcade_score(100000, arcade_hard)
)
function flash_time(time_secs) => 
        columns_gamecheck_flash() && 
        timer() <= time_secs && 
        columns_menu_flash_clear() &&
        columns_menu_players() == one_player
achievement(
    "No, I'm the Real Flash",
    "[Columns] Clear a game of Flash Columns in 1 minute or less",
    points=5,
    id=220375,
    trigger=
        flash_time(60)
)
achievement(
    "I'm The Flash!",
    "[Columns] Clear a game of Flash Columns in 30 seconds or less",
    points=5,
    id=220376,
    trigger=
        flash_time(30)
)
achievement(
    "Smoking Speed",
    "[Columns] Clear a game of Flash Columns in 10 seconds or less",
    points=10,
    id=220377,
    trigger=
        flash_time(10)    
)
achievement(
    "Faster Than Lightning",
    "[Columns] Clear a game of Flash Columns at maximum height in under 2 minutes!",
    points=10,
    id=220378,
    trigger=
        flash_time(120) &&
        columns_menu_flash_height() == max_height
)
achievement(
    "Definitely Not Worth Flashing",
    "[Columns] Clear a game of Flash Columns at maximum height on Pro Difficulty!",
    points=25,
    id=220379,
    trigger=
        columns_gamecheck_flash() &&
        columns_menu_flash_clear() &&
        columns_menu_class() == pro &&
        columns_menu_flash_height() == max_height &&
        columns_menu_players() == one_player
)
function original_time(score) =>
        columns_gamecheck_original() &&
        prev(score_value()) < score &&
        score_value() >= score &&
        original_time_switch() == on
achievement(
    "Running Against the Clock",
    "[Columns] Get 30.000 score in one game of Original mode with Time Trial on!",
    points=5,
    id=220380,
    trigger=
         original_time(30000)
)
achievement(
    "Dreaming to Be Sonic",
    "[Columns] Get 50.000 score in one game of Original mode with Time Trial on!",
    points=10,
    id=220381,
    trigger=
        original_time(50000)
)
achievement(
    "Need for Speed",
    "[Columns] Get 70.000 score in one game of Original Mode with Time Trial on!",
    points=25,
    id=220382,
    trigger=
        original_time(70000)
)
achievement(
    "Wombo Combo",
    "[Columns] Get a combo jewel break of 10 or higher!",
    points=5,
    id=220383,
    trigger=
        columns_id_check() &&
        jewels() > prev(jewels()) &&
        (jewels() - prev(jewels())) >= 10                
)
// ==================RICH PRESENCE==================
rich_presence_conditional_display(columns_id_check() && columns_paused() == 0xff, "[Columns] Paused In-Game...")
rich_presence_conditional_display(columns_gamecheck_arcade(), "[Columns] Playing in Arcade Mode on {0}. 🏆 {1}  💎 {2}",
    rich_presence_lookup("ColArcadeDiff", columns_arcade_difficulty(), arcade_difficulty_rp),
    rich_presence_value("ColScore", bcd(score_display())),
    rich_presence_value("ColJewels", jewels())
)
//With RP, check if Timer is ACTIVE in Original mode, since this is an option in-game.
rich_presence_conditional_display(columns_gamecheck_original() && original_time_switch() == on, "[Columns] Playing an Original Game on Lvl {0}, {1} Class, {2} mode. 🏆 {3} 💎 {4} ⏳ {5}",
    rich_presence_value("ColLvl", columns_level_display()),
    rich_presence_lookup("ColClass", columns_menu_class(), classes_rp),
    rich_presence_lookup("ColMode", columns_menu_players(), player_rp),
    rich_presence_value("ColScore", bcd(score_display())),
    rich_presence_value("ColJewels", jewels()),
    rich_presence_value("ColTime", timer(), "SECS")
)
rich_presence_conditional_display(columns_gamecheck_original(), "[Columns] Playing an Original Game on Lvl {0}, {1} Class, {2} mode. 🏆 {3} 💎 {4}",
    rich_presence_value("ColLvl", columns_level_display()),
    rich_presence_lookup("ColClass", columns_menu_class(), classes_rp),
    rich_presence_lookup("ColMode", columns_menu_players(), player_rp),
    rich_presence_value("ColScore", bcd(score_display())),
    rich_presence_value("ColJewels", jewels())
)
rich_presence_conditional_display(columns_gamecheck_flash(), "[Columns] Playing a game of Flash Columns on Lvl {0}, {1} Class. ⏳ {2}",
    rich_presence_value("ColLvl", columns_level_display()),
    rich_presence_lookup("ColClass", columns_menu_class(), classes_rp),
    rich_presence_value("ColTime", timer(), "SECS")
)
rich_presence_conditional_display(columns_id_check(), "[Columns] In Menu...")
rich_presence_display("Null") //We generate this null string in our local RP so that the conditionals are generated for the merged RP for the pack.
// $3061C8: [Columns] [16ibt] Demo Timer - Wow!
// $3065F8: [Columns] [16bit BE] Original Game/Flash Columns - Frame Countdown Timer to Start Level
function columns_internal_frametimer() => word_be(0x3065f8)
// $306743: [Columns] [8bit] Arcade Mode Countdown Timer - P2 - Display
// $306744: [Columns] [8bit] Arcade Mode Countdown Timer - P2 - Actual
// $3065D3: [Columns] [8bit] Arcade Mode Countdown Timer - P1- Display
// $3065D4: [Columns] [8bit] Arcade Mode Countdown Timer - P1 - Actual
// $302580: [Columns] [NBit] Game Mechanics Control
//                    Bit1=In Game/In Control
//                    Bit2=Game Clear
function columns_start_game() => bit1(0x302580) > prev(bit1(0x302580))
function columns_end_game() => bit2(0x302580) > prev(bit2(0x302580))
// Good for leaderboards? ^^
leaderboard(
    "Columns Arcade Mode - Easy",
    "Highest Score (No Pause)",
    columns_id_check() && columns_internal_game_mode() == arcade && columns_arcade_difficulty() == arcade_easy && prev(score_value()) == 0 && score_value() != 0,
    prev(columns_paused()) == 0 && columns_paused() == 0xff,
    columns_end_game(),
    score_value()
)
leaderboard(
    "Columns Arcade Mode - Medium",
    "Highest Score (No Pause)",
    columns_id_check() && columns_internal_game_mode() == arcade && columns_arcade_difficulty() == arcade_med && prev(score_value()) == 20000 && score_value() > 20000,
    prev(columns_paused()) == 0 && columns_paused() == 0xff,
    columns_end_game(),
    score_value()
)
leaderboard(
    "Columns Arcade Mode - Hard",
    "Highest Score (No Pause)",
    columns_id_check() && columns_internal_game_mode() == arcade && columns_arcade_difficulty() == arcade_hard && prev(score_value()) == 50000 && score_value() > 50000,
    prev(columns_paused()) == 0 && columns_paused() == 0xff,
    columns_end_game(),
    score_value()
)
//Generate Original Mode Time Trial Leaderboards
for i in range(0, 2){
    for j in range(0, 9){
        leaderboard(
            "Columns Original Time Trial: " + classes_rp[i] + ", Lvl " + j,
            "Highest Score",
            columns_id_check() && columns_internal_game_mode() == 1 && columns_menu_mode() == original && columns_menu_class() == i && columns_menu_original_level() == j && 
                columns_internal_frametimer() < prev(columns_internal_frametimer()) && columns_internal_frametimer() == 0 && columns_menu_players() == one_player && original_time_switch() == on,
            always_false(),
            always_false() || timer() < prev(timer()) && timer() == 0 || columns_end_game() ,
            score_value()
        )
    }
}
//Generate Flash Columns Leaderboards
for i in range(0, 2){
    for j in range(0, 7){
        leaderboard(
            "Flash Columns: " + classes_rp[i] + " Height " + j + 2,
            "Fastest Clear Time",
            columns_id_check() && columns_internal_game_mode() == 1 && columns_menu_mode() == flash_columns && columns_menu_class() == i && columns_menu_flash_height() == j &&
                columns_internal_frametimer() < prev(columns_internal_frametimer()) && columns_internal_frametimer() == 0 && columns_menu_players() == one_player,
                columns_end_game() && byte(0x302581) == 0,
                columns_menu_flash_clear() && columns_end_game(),
                timer(),
                "SECS",
                true
        )
    }
}
// ==================OTHER GAME CODE NOTES==================
// LAST DUMP DATE: 5-23-2022
// ====================================
// $008280: DDEX4 Game Identifier [10 Bytes]
//          --- VirtuaCop2 — Virtua Cop 2
//          --- filled with FF — Sega Swirl
// $2F9D81: [Wrestle War] [8-bit] Options - Level
//          --- 00 | Normal
//          --- 01 | Easy
//          --- 02 | Hard
// $2F9D83: [Wrestle War] [8-bit] Options - Control
//          --- 00 | (A) Punch / (B) Kick / (C) Hold
//          --- 01 | (A) Kick / (B) Hold / (C) Punch
//          --- 02 | (A) Hold / (B) Punch / (C) Kick
// $2F9D85: [Wrestle War] [8-bit] Options - Time
//          --- 00 | 3 Minutes
//          --- 01 | 5 Minutes
//          --- 02 | None
// $2F9D98: [VECTORM] [8-bit] Options - Sound Effects
//          --- 00 | Off
//          --- 01 | On
// $2F9D99: [VECTORM] [8-bit] Options - Music
//          --- 00 | Off
//          --- 01 | On
// $2F9D9A: [VECTORM] [8-bit] Options - Difficulty
//          --- 00 | Lame
//          --- 01 | Wicked
//          --- 02 | Insane
// $2F9D9B: [VECTORM] [8-bit] Options - Music Test
//          --- 00 | Title
//          --- 01 | Intro
//          --- 02 | Info
//          --- 03 | Win
//          --- 04 | Port
//          --- 05 | Ocean
//          --- 06 | Bunker
//          --- 07 | Field
//          --- 08 | Disco
//          --- 09 | Train
// $2F9D9C: [VECTORM] [8-bit] Options - Sound Test
//          --- 01 | First Sound
//          --- 39 | 57th Sound
// $2F9D9D: [VECTORM] [8-bit] Options - Buttons
//          --- 00 | C Jump AB Shoot
//          --- 01 | B Jump AC Shoot
//          --- 02 | A Jump BC Shoot
// $2F9D9F: [VECTORM] [8-Bit] Debug Cheat - Starting Health
// $2F9DA0: [VECTORM] [8-Bit] Debug Cheat - Starting Lives
// $2F9DA1: [VECTORM] [8-Bit] Debug Cheat - Starting Level
//          --- 10 | Sega Logo
//          --- 00 | Day 1
//          --- 01 | Day 2
//          --- 02 | Day 3
//          --- 03 | Day 4
//          --- 04 | Day 5
//          --- 05 | Day 6
//          --- 06 | Day 7
//          --- 07 | Day 8
//          --- 08 | Day 9
//          --- 09 | Day 10
//          --- 0a | Day 11
//          --- 0b | Day 12
//          --- 0c | Day 13
//          --- 0d | Day 14
//          --- 0e | Day 15
//          --- 0f | Day 16
// $2F9DA2: [VECTORM] [8-Bit] Debug Cheat - Starting Shot
// $2FDD8E: [Sonic 1] [8-bit]
//          Special Stage - Entered
//          (b)0: Yes

// $303980: [Shining Force]
//          Current Chapter?
// $303981: [Shining Force]
//          Current Location?
//          0x01 - Ancients' Gate (Battle 1)
//          0x03 - Guardiana
//          0x04 - Cabin (Gort)
//          0x05 - Alterone
//          0x06 - Manarina
//          0x07 - Rindo
//          
//          Chapter 2
//          0x03 - Cavern of Darkness
//          0x04 - The Rindo Circus
//          0x05 - Chapel battle
//          0x07 - Rindo
//          0x08 - Shade Abbey
//          
//          Chapter 3
//          0x03 - Bustoke
//          
//          Chapter 5
//          0x01 - Ship (Battle 15)
//          0x04 - Waral
// $3039CA: [Shining Force]
//          Cursor X Axis
// $3039CB: [Shining Force]
//          Cursor Y Axis
// $3039D1: [Shining Force]
//          Chapter 2 - Items in Battle 6 (0x02, 0x03, 0x00)
//          bit3 - Power Staff
//          bit4 - Wooden Staff
//          bit5 - Medical Herb
//          bit6 - Power Ring
//          bit7 - Orb of Light
//          Battle 7 (Tent) (0x02, 0x04)
//          bit0 - 50 Coins
//          bit1 - Steel Arrow
//          bit2 - Defense Potion
//          Chapter 3
//          Battle 9 (Cave) (0x03, 0x01)
//          bit6 - Sugoi Mizugi
//          bit7 - Moon Stone
//          Battle 11 (Laser Eye) (0x03, 0x02)
//          bit5 - Kitui Huku
//          
//          Chapter 4 Battle 13 (0x04, 0x02)
//          bit7 - Kenji
// $3039D2: [Shining Force]
//          Events
//          bit5 - Chapter 1 END  (0x01, 0x05, 0x00)
//          bit5 - Chapter 2 END (0x02, 0x08, 0x00)
//          bit5 - Chapter 3 END (0x03, 0x02, 0x00)
//          bit5 - Chapter 4 END (0x04, 0x05, 0x00)
// $3039D3: [Shining Force]
//          Chapter 1 Events
//          bit0 - Win Battle 1 (0x01, 0x01, 0x00)
//          bit1 - Win Battle 2 (0x01, 0x00, 0x01)
//          bit2 - Win Battle 3 (0x01, 0x00, 0x00)
//          bit3 - Win Battle 4 (0x01, 0x02, 0x00)
//          
//          Chapter 2
//          bit0 - Win Battle 5 (0x02, 0x01, 0x00)
//          bit1 - Win Battle 6 (0x02, 0x03, 0x00)
//          bit2 - Win Battle 7 (0x02, 0x04)
//          bit3 - Win Battle 8 (0x02, 0x05)
//          
//          Chapter 3
//          bit0 - Win Battle 9 (0x03, 0x01)
//          bit1 - Win Battle 10 (0x03, 0x00)
//          bit2 - Win Battle 11 (0x03, 0x02)
//          
//          Chapter 4
//          bit0 - Win Battle 12 (0x04, 0x__)
//          bit1 - Win Battle 13 (0x04, 0x02)
//          bit2 - Win Battle 14 (0x04, 0x__)
//          
//          Chapter 5
//          bit0 - Win Battle 15 (0x05, 0x01)
//          bit1 - Win Battle 16 (0x05, 0x02)
//          bit2 - Win Battle 17
// $3039D6: [Shining Force]
//          Chapter 1 Events
//          bit6 - Get 100 gold from the king
//          Chapter 3 Events (0x03,0x03,0x03)
//          bit2 - Use Lunar Dew on Zylo
//          bit3 - Deliver Moon Stone
//          bit4 - Door to Zylo opened
//          bit6 - Meet Kokichi out back
//          bit7 - Kokichi crashes
// $3039D7: [Shining Force]
//          Chapter 2 Events
//          Rindo (0x07)
//          bit5 - Talk to Crock the Genius
//          Manarina (0x06)
//          bit4 - Turned into a chicken
//          bit5 - Turned back into human
//          Rindo (0x07)
//          bit6 - Watch play
//          bit7 - Watch play
//          Shade Abbey (0x08)
//          bit6 - Talk to guard
//          bit7 - Talk to guy in basement
// $3039D8: [Shining Force]
//          Chapter 1 Events
//          bit4 - After forgiving King Alderone
//          Chapter 2 Events (0x03,0x03,0x03)
//          bit0 - Talk to Mayor of Rindo
//          bit1 - Grandson is missing
//          bit3 - Learn about Shade Abbey
//          bit4 - After the cave
//          Chapter 3
//          Events - Bustoke (0x03, 0x03)
//          bit0 - Talk to woman about Laser Eye
//          bit2 - Get Lunar Dew
//          bit3 - Kokichi's assistant leaves
//          bit4 - Search engine
//          Chapter 4 - Events
//          Pao (0x04, 0x06)
//          bit0 - Talk to Elliott
// $3039D9: [Shining Force]
//          Chapter 1 Events
//          bit1 - Mae joins
//          bit2 - Examine Dragon Head
//          bit4 - Talk to Alderone King
//          bit6-7 - Prison cell
//          Chapter 4 - Events
//          Pao (0x04, 0x06)
//          bit0 - Talk to Elliott
//          bit1 - Talk to the Queen
//          bit2 - Pao moves
//          bit3 - Battle against Elliott starts
//          
//          Pao Second Location
//          bit4 - Domingo egg hatches
//          bit5 - Domingo leaves
//          bit6 - Guntz leaves
// $3039DB: [Shining Force]
//          Chapter 1 Events
//          bit3 - Ken, Luke, Tao, and Lowe approach
//          
//          Chapter 2 Events
//          Manarina (0x06)
//          bit1 - Get past guard as chicken
//          
//          Rindo (0x02, 0x07, 0x02)
//          bit5 - Flames on ship
//          bit6 - Bye bye, ship
// $3039DC: [Shining Force]
//          Chapter 2 Events
//          Manarina (0x06)
//          bit1 - Talk to Anri
//          bit5 - Use Orb of Light (0x02, 0x06, 0x03)
//          bit6 - Secret door opens
// $3039DD: [Shining Force]
//          Chapter 1 Events
//          bit0 - Gort joins (0x01, 0x03, 0x00)
//          bit1 - Khris joins (0x01, 0x05, 0x02)
//          Chapter 2 Events
//          bit1 - Person gets out of way (0x02, 0x06, 0x01)
//          bit4 - Board ship (0x02, 0x07, 0x02)
//          bit6 - It's a trap (0x02, 0x05, 0x00)
//          bit7 - Gain access to circus tent (0x02, 0x07, 0x00)
// $3039E0: [Shining Force]
//          Chapter 2 Events
//          Rindo (0x07)
//          bit0 - Talk to Guntz
//          
//          Manarina (0x06)
//          bit1 - Obtain Domingo egg
// $3039EE: [Shining Force]
//          Chapter 1 Treasure
//          Guardiana (0x03)
//          bit0 - Empty
//          bit1 - Power Potion
//          bit2 - Defense Potion
//          bit3 - 50 Coins
//          bit4 - Angel Wing
//          bit5 - Antidote
//          bit6 - Medical Herb
//          
//          Chapter 2 Chests
//          Rindo (0x07)
//          bit1 - Speed Ring
//          
//          Chapter 4 Chests
//          Pao (0x06)
//          bit0 - Bread of Life
//          bit1 - Empty
//          bit2 - Legs of Haste
//          bit4 - Long Sword
//          Pao Second Location (0x04, 0x07)
//          bit5 - Elven Arrow
//          bit6 - Steel Sword
//          bit7 - Empty
//          
//          Chapter 5 Chests
//          Waral  (0x05, 0x04)
//          bit0 - Shower of Cure
//          bit1 - Mobility Ring
//          bit2 - Bread of Life
//          bit3 - Defense Potion
//          bit4 - Medical Herb
// $3039EF: [Shining Force]
//          Chapter 1 Chests
//          Alderone (0x05)
//          bit1 - Medical Herb
//          bit2 - Empty
//          bit3 - 70 Coins
//          bit4 - Bronze Lance
//          bit6 - Medical Herb
//          bit7 - Empty
// $3039F0: [Shining Force]
//          Chapter 1 Chests
//          Alderone (0x05)
//          bit0 - Middle Sword
//          bit1 - Empty
//          bit2 - Healing Seed
//          bit4 - Power Potion
//          bit6 - 50 Coins
//          bit7 - Healing Seed
// $3039F1: [Shining Force]
//          Chapter 1 Chests
//          Alderone (0x05)
//          bit0 - 50 coins
//          bit1 - Bread of Life
//          bit2 - Middle Sword
//          bit3 - 100 coins
//          bit4 - Wooden Staff
//          bit5 - Defense Potion
//          bit6 - Nothing
//          bit7 - Nothing
// $3039F2: [Shining Force]
//          Chapter 1 Chests
//          Alderone (0x05)
//          bit0 - 50 coins
//          bit1 - Wooden Arrow
//          bit2 - Healing Seed
//          bit3 - Empty
// $303A0A: [Shining Force]
//          Events
//          bit2 - Zylo joins
//          bit5 - Jogurt joins
// $303A0B: [Shining Force]
//          Event Flags for Recruits
//          bit1 - Gong joins (0x01, 0x04)
//          bit2 - Diane joins (0x03, 0x03)
//          bit3 - Hans joins
//          bit5 - Amon joins (0x02, 0x08)
//          bit6 - Balbaroy joins (0x02, 0x08)
//          bit7 - Kokichi joins (0x04, 0x06, 0x04)
// $303A0C: [Shining Force]
//          Event Flags for Recruits
//          
//          bit0 - Luke joins
//          bit1 - Guntz joins
//          bit2 - Anri joins (0x02, 0x06)
//          bit4 - Tao joins
//          bit5 - Domingo joins
//          bit6 - Lowe joins
// $303A0D: [Shining Force]
//          Event Flags for Recruits
//          
//          bit0 - Max joins?
//          bit1 - Mae joins
//          bit2 - Pelle joins
//          bit3 - Ken joins
//          bit4 - Vankar joins
//          bit5 - Earnest joins (0x04,0x08)
//          bit6 - Arthur joins (0x02, 0x06, 0x03)
//          bit7 - Gort joins
// $303A10: [S.F.]
//          [8-Bit] Gold - Overflow
// $303A11: [S.F.]
//          [8-Bit] Gold
// $303A12: [Shining Force]
//          [64-Bits] Character Name - Max/Hero
// $303A1C: [Shining Force]
//          [8-Bit] Max - Current Class
// $303A1D: [Shining Force]
//          [8-Bit] Max - Current Level
// $303A1E: [Shining Force]
//          [8-Bit] Max - Base Attack Stat
// $303A1F: [Shining Force]
//          [8-Bit] Max - Defense Stat
// $303A20: [Shining Force]
//          [8-Bit] Max - Agility Stat
// $303A21: [Shining Force]
//          [8-Bit] Max - Move Stat
// $303A23: [Shining Force]
//          [8-Bit] Max - Current Experience
// $303A25: [Shining Force]
//          [8-Bit] Max - Max HP
// $303A27: [Shining Force]
//          [8-Bit] Max - Current HP
// $303A28: [Shining Force]
//          [8-Bit] Max - Max MP
// $303A29: [Shining Force]
//          [8-Bit] Max - Current MP
// $303A2C: [Shining Force]
//          [8-Bit] Max - Inventory Slot 1
// $303A2D: [Shining Force]
//          [8-Bit] Max - Inventory Slot 2
// $303A2E: [Shining Force]
//          [8-Bit] Max - Inventory Slot 3
// $303A2F: [Shining Force]
//          [8-Bit] Max - Inventory Slot 4
// $303A30: [Shining Force]
//          [8-Bit] Max - Spell Slot 1
// $303A31: [Shining Force]
//          [8-Bit] Max - Spell Slot 2
// $303A32: [Shining Force]
//          [8-Bit] Max - Spell Slot 3
// $303A33: [Shining Force]
//          [8-Bit] Max - Spell Slot 4
// $303A3A: [Shining Force]
//          [64-Bits] Character Name - Mae
// $303A44: [Shining Force]
//          [8-Bit] Mae - Current Class
// $303A45: [Shining Force]
//          [8-Bit] Mae - Current Level
// $303A46: [Shining Force]
//          [8-Bit] Mae - Base Attack Stat
// $303A47: [Shining Force]
//          [8-Bit] Mae - Defense Stat
// $303A48: [Shining Force]
//          [8-Bit] Mae - Agility Stat
// $303A49: [Shining Force]
//          [8-Bit] Mae - Move Stat
// $303A4B: [Shining Force]
//          [8-Bit] Mae - Current Experience
// $303A4D: [Shining Force]
//          [8-Bit] Mae - Max HP
// $303A4F: [Shining Force]
//          [8-Bit] Mae - Current HP
// $303A50: [Shining Force]
//          [8-Bit] Mae - Max MP
// $303A51: [Shining Force]
//          [8-Bit] Mae - Current MP
// $303A54: [Shining Force]
//          [8-Bit] Mae - Inventory Slot 1
// $303A55: [Shining Force]
//          [8-Bit] Mae - Inventory Slot 2
// $303A56: [Shining Force]
//          [8-Bit] Mae - Inventory Slot 3
// $303A57: [Shining Force]
//          [8-Bit] Mae - Inventory Slot 4
// $303A58: [Shining Force]
//          [8-Bit] Mae - Spell Slot 1
// $303A59: [Shining Force]
//          [8-Bit] Mae - Spell Slot 2
// $303A5A: [Shining Force]
//          [8-Bit] Mae - Spell Slot 3
// $303A5B: [Shining Force]
//          [8-Bit] Mae - Spell Slot 4
// $303A62: [Shining Force]
//          [64-Bits] Character Name - Pelie
// $303A6C: [Shining Force]
//          [8-Bit] Pelie - Current Class
// $303A6D: [Shining Force]
//          [8-Bit] Pelie - Current Level
// $303A6E: [Shining Force]
//          [8-Bit] Pelie - Base Attack Stat
// $303A6F: [Shining Force]
//          [8-Bit] Pelie - Defense Stat
// $303A70: [Shining Force]
//          [8-Bit] Pelie - Agility Stat
// $303A71: [Shining Force]
//          [8-Bit] Pelie - Move Stat
// $303A73: [Shining Force]
//          [8-Bit] Pelie - Current Experience
// $303A75: [Shining Force]
//          [8-Bit] Pelie - Max HP
// $303A77: [Shining Force]
//          [8-Bit] Pelie - Current HP
// $303A78: [Shining Force]
//          [8-Bit] Pelie - Max MP
// $303A79: [Shining Force]
//          [8-Bit] Pelie - Current MP
// $303A7C: [Shining Force]
//          [8-Bit] Pelie - Inventory Slot 1
// $303A7D: [Shining Force]
//          [8-Bit] Pelie - Inventory Slot 2
// $303A7E: [Shining Force]
//          [8-Bit] Pelie - Inventory Slot 3
// $303A7F: [Shining Force]
//          [8-Bit] Pelie - Inventory Slot 4
// $303A80: [Shining Force]
//          [8-Bit] Pelie - Spell Slot 1
// $303A81: [Shining Force]
//          [8-Bit] Pelie - Spell Slot 2
// $303A82: [Shining Force]
//          [8-Bit] Pelie - Spell Slot 3
// $303A83: [Shining Force]
//          [8-Bit] Pelie - Spell Slot 4
// $303A8A: [Shining Force]
//          [64-Bits] Character Name - Ken
// $303A94: [Shining Force]
//          [8-Bit] Ken - Current Class
// $303A95: [Shining Force]
//          [8-Bit] Ken - Current Level
// $303A96: [Shining Force]
//          [8-Bit] Ken - Base Attack Stat
// $303A97: [Shining Force]
//          [8-Bit] Ken - Defense Stat
// $303A98: [Shining Force]
//          [8-Bit] Ken - Agility Stat
// $303A99: [Shining Force]
//          [8-Bit] Ken - Move Stat
// $303A9B: [Shining Force]
//          [8-Bit] Ken - Current Experience
// $303A9D: [Shining Force]
//          [8-Bit] Ken - Max HP
// $303A9F: [Shining Force]
//          [8-Bit] Ken - Current HP
// $303AA0: [Shining Force]
//          [8-Bit] Ken - Max MP
// $303AA1: [Shining Force]
//          [8-Bit] Ken - Current MP
// $303AA4: [Shining Force]
//          [8-Bit] Ken - Inventory Slot 1
// $303AA5: [Shining Force]
//          [8-Bit] Ken - Inventory Slot 2
// $303AA6: [Shining Force]
//          [8-Bit] Ken - Inventory Slot 3
// $303AA7: [Shining Force]
//          [8-Bit] Ken - Inventory Slot 4
// $303AA8: [Shining Force]
//          [8-Bit] Ken - Spell Slot 1
// $303AA9: [Shining Force]
//          [8-Bit] Ken - Spell Slot 2
// $303AAA: [Shining Force]
//          [8-Bit] Ken - Spell Slot 3
// $303AAB: [Shining Force]
//          [8-Bit] Ken - Spell Slot 4
// $303AB2: [Shining Force]
//          [64-Bits] Character Name - Vankar
// $303ABC: [Shining Force]
//          [8-Bit] Vankar - Current Class
// $303ABD: [Shining Force]
//          [8-Bit] Vankar - Current Level
// $303ABE: [Shining Force]
//          [8-Bit] Vankar - Base Attack Stat
// $303ABF: [Shining Force]
//          [8-Bit] Vankar - Defense Stat
// $303AC0: [Shining Force]
//          [8-Bit] Vankar - Agility Stat
// $303AC1: [Shining Force]
//          [8-Bit] Vankar - Move Stat
// $303AC3: [Shining Force]
//          [8-Bit] Vankar - Current Experience
// $303AC5: [Shining Force]
//          [8-Bit] Vankar - Max HP
// $303AC7: [Shining Force]
//          [8-Bit] Vankar - Current HP
// $303AC8: [Shining Force]
//          [8-Bit] Vankar - Max MP
// $303AC9: [Shining Force]
//          [8-Bit] Vankar - Current MP
// $303ACC: [Shining Force]
//          [8-Bit] Vankar - Inventory Slot 1
// $303ACD: [Shining Force]
//          [8-Bit] Vankar - Inventory Slot 2
// $303ACE: [Shining Force]
//          [8-Bit] Vankar - Inventory Slot 3
// $303ACF: [Shining Force]
//          [8-Bit] Vankar - Inventory Slot 4
// $303AD0: [Shining Force]
//          [8-Bit] Vankar - Spell Slot 1
// $303AD1: [Shining Force]
//          [8-Bit] Vankar - Spell Slot 2
// $303AD2: [Shining Force]
//          [8-Bit] Vankar - Spell Slot 3
// $303AD3: [Shining Force]
//          [8-Bit] Vankar - Spell Slot 4
// $303ADA: [Shining Force]
//          [64-Bits] Character Name - Earnest
// $303AE4: [Shining Force]
//          [8-Bit] Earnest - Current Class
// $303AE5: [Shining Force]
//          [8-Bit] Earnest - Current Level
// $303AE6: [Shining Force]
//          [8-Bit] Earnest - Base Attack Stat
// $303AE7: [Shining Force]
//          [8-Bit] Earnest - Defense Stat
// $303AE8: [Shining Force]
//          [8-Bit] Earnest - Agility Stat
// $303AE9: [Shining Force]
//          [8-Bit] Earnest - Move Stat
// $303AEB: [Shining Force]
//          [8-Bit] Earnest - Current Experience
// $303AED: [Shining Force]
//          [8-Bit] Earnest - Max HP
// $303AEF: [Shining Force]
//          [8-Bit] Earnest - Current HP
// $303AF0: [Shining Force]
//          [8-Bit] Earnest - Max MP
// $303AF1: [Shining Force]
//          [8-Bit] Earnest - Current MP
// $303AF4: [Shining Force]
//          [8-Bit] Earnest - Inventory Slot 1
// $303AF5: [Shining Force]
//          [8-Bit] Earnest - Inventory Slot 2
// $303AF6: [Shining Force]
//          [8-Bit] Earnest - Inventory Slot 3
// $303AF7: [Shining Force]
//          [8-Bit] Earnest - Inventory Slot 4
// $303AF8: [Shining Force]
//          [8-Bit] Earnest - Spell Slot 1
// $303AF9: [Shining Force]
//          [8-Bit] Earnest - Spell Slot 2
// $303AFA: [Shining Force]
//          [8-Bit] Earnest - Spell Slot 3
// $303AFB: [Shining Force]
//          [8-Bit] Earnest - Spell Slot 4
// $303B02: [Shining Force]
//          [64-Bits] Character Name - Arthur
// $303B0C: [Shining Force]
//          [8-Bit] Arthur - Current Class
// $303B0D: [Shining Force]
//          [8-Bit] Arthur - Current Level
// $303B0E: [Shining Force]
//          [8-Bit] Arthur - Base Attack Stat
// $303B0F: [Shining Force]
//          [8-Bit] Arthur - Defense Stat
// $303B10: [Shining Force]
//          [8-Bit] Arthur - Agility Stat
// $303B11: [Shining Force]
//          [8-Bit] Arthur - Move Stat
// $303B13: [Shining Force]
//          [8-Bit] Arthur - Current Experience
// $303B15: [Shining Force]
//          [8-Bit] Arthur - Max HP
// $303B17: [Shining Force]
//          [8-Bit] Arthur - Current HP
// $303B18: [Shining Force]
//          [8-Bit] Arthur - Max MP
// $303B19: [Shining Force]
//          [8-Bit] Arthur - Current MP
// $303B1C: [Shining Force]
//          [8-Bit] Arthur - Inventory Slot 1
// $303B1D: [Shining Force]
//          [8-Bit] Arthur - Inventory Slot 2
// $303B1E: [Shining Force]
//          [8-Bit] Arthur - Inventory Slot 3
// $303B1F: [Shining Force]
//          [8-Bit] Arthur - Inventory Slot 4
// $303B20: [Shining Force]
//          [8-Bit] Arthur - Spell Slot 1
// $303B21: [Shining Force]
//          [8-Bit] Arthur - Spell Slot 2
// $303B22: [Shining Force]
//          [8-Bit] Arthur - Spell Slot 3
// $303B23: [Shining Force]
//          [8-Bit] Arthur - Spell Slot 4
// $303B2A: [Shining Force]
//          
//          [64-Bit] Character Name - Gort
// $303B34: [Shining Force]
//          [8-Bit] Gort - Current Class
// $303B35: [Shining Force]
//          [8-Bit] Gort - Current Level
// $303B36: [Shining Force]
//          [8-Bit] Gort - Base Attack Stat
// $303B37: [Shining Force]
//          [8-Bit] Gort - Defense Stat
// $303B38: [Shining Force]
//          [8-Bit] Gort - Agility Stat
// $303B39: [Shining Force]
//          [8-Bit] Gort - Move Stat
// $303B3B: [Shining Force]
//          [8-Bit] Gort - Current Experience
// $303B3D: [Shining Force]
//          [8-Bit] Gort - Max HP
// $303B3F: [Shining Force]
//          [8-Bit] Gort - Current HP
// $303B40: [Shining Force]
//          [8-Bit] Gort - Max MP
// $303B41: [Shining Force]
//          [8-Bit] Gort - Current MP
// $303B44: [Shining Force]
//          [8-Bit] Gort - Inventory Slot 1
// $303B45: [Shining Force]
//          [8-Bit] Gort - Inventory Slot 2
// $303B46: [Shining Force]
//          [8-Bit] Gort - Inventory Slot 3
// $303B47: [Shining Force]
//          [8-Bit] Gort - Inventory Slot 4
// $303B48: [Shining Force]
//          [8-Bit] Gort - Spell Slot 1
// $303B49: [Shining Force]
//          [8-Bit] Gort - Spell Slot 2
// $303B4A: [Shining Force]
//          [8-Bit] Gort - Spell Slot 3
// $303B4B: [Shining Force]
//          [8-Bit] Gort - Spell Slot 4
// $303B52: [Shining Force]
//          
//          [64-Bit] Character Name - Luke
// $303B5C: [Shining Force]
//          [8-Bit] Luke - Current Class
// $303B5D: [Shining Force]
//          [8-Bit] Luke - Current Level
// $303B5E: [Shining Force]
//          [8-Bit] Luke - Base Attack Stat
// $303B5F: [Shining Force]
//          [8-Bit] Luke - Defense Stat
// $303B60: [Shining Force]
//          [8-Bit] Luke - Agility Stat
// $303B61: [Shining Force]
//          [8-Bit] Luke - Move Stat
// $303B63: [Shining Force]
//          [8-Bit] Luke - Current Experience
// $303B65: [Shining Force]
//          [8-Bit] Luke - Max HP
// $303B67: [Shining Force]
//          [8-Bit] Luke - Current HP
// $303B68: [Shining Force]
//          [8-Bit] Luke - Max MP
// $303B69: [Shining Force]
//          [8-Bit] Luke - Current MP
// $303B6C: [Shining Force]
//          [8-Bit] Luke - Inventory Slot 1
// $303B6D: [Shining Force]
//          [8-Bit] Luke - Inventory Slot 2
// $303B6E: [Shining Force]
//          [8-Bit] Luke - Inventory Slot 3
// $303B6F: [Shining Force]
//          [8-Bit] Luke - Inventory Slot 4
// $303B70: [Shining Force]
//          [8-Bit] Luke - Spell Slot 1
// $303B71: [Shining Force]
//          [8-Bit] Luke - Spell Slot 2
// $303B72: [Shining Force]
//          [8-Bit] Luke - Spell Slot 3
// $303B73: [Shining Force]
//          [8-Bit] Luke - Spell Slot 4
// $303B7A: [Shining Force]
//          
//          [64-Bit] Character Name - Guntz
// $303B84: [Shining Force]
//          [8-Bit] Guntz - Current Class
// $303B85: [Shining Force]
//          [8-Bit] Guntz - Current Level
// $303B86: [Shining Force]
//          [8-Bit] Guntz - Base Attack Stat
// $303B87: [Shining Force]
//          [8-Bit] Guntz - Defense Stat
// $303B88: [Shining Force]
//          [8-Bit] Guntz - Agility Stat
// $303B89: [Shining Force]
//          [8-Bit] Guntz - Move Stat
// $303B8B: [Shining Force]
//          [8-Bit] Guntz - Current Experience
// $303B8D: [Shining Force]
//          [8-Bit] Guntz - Max HP
// $303B8F: [Shining Force]
//          [8-Bit] Guntz - Current HP
// $303B90: [Shining Force]
//          [8-Bit] Guntz - Max MP
// $303B91: [Shining Force]
//          [8-Bit] Guntz - Current MP
// $303B94: [Shining Force]
//          [8-Bit] Guntz - Inventory Slot 1
// $303B95: [Shining Force]
//          [8-Bit] Guntz - Inventory Slot 2
// $303B96: [Shining Force]
//          [8-Bit] Guntz - Inventory Slot 3
// $303B97: [Shining Force]
//          [8-Bit] Guntz - Inventory Slot 4
// $303B98: [Shining Force]
//          [8-Bit] Guntz - Spell Slot 1
// $303B99: [Shining Force]
//          [8-Bit] Guntz - Spell Slot 2
// $303B9A: [Shining Force]
//          [8-Bit] Guntz - Spell Slot 3
// $303B9B: [Shining Force]
//          [8-Bit] Guntz - Spell Slot 4
// $303BA2: [Shining Force]
//          
//          [64-Bit] Character Name - Anri
// $303BAC: [Shining Force]
//          [8-Bit] Anri - Current Class
// $303BAD: [Shining Force]
//          [8-Bit] Anri - Current Level
// $303BAE: [Shining Force]
//          [8-Bit] Anri - Base Attack Stat
// $303BAF: [Shining Force]
//          [8-Bit] Anri - Defense Stat
// $303BB0: [Shining Force]
//          [8-Bit] Anri - Agility Stat
// $303BB1: [Shining Force]
//          [8-Bit] Anri - Move Stat
// $303BB3: [Shining Force]
//          [8-Bit] Anri - Current Experience
// $303BB5: [Shining Force]
//          [8-Bit] Anri - Max HP
// $303BB7: [Shining Force]
//          [8-Bit] Anri - Current HP
// $303BB8: [Shining Force]
//          [8-Bit] Anri - Max MP
// $303BB9: [Shining Force]
//          [8-Bit] Anri - Current MP
// $303BBC: [Shining Force]
//          [8-Bit] Anri - Inventory Slot 1
// $303BBD: [Shining Force]
//          [8-Bit] Anri - Inventory Slot 2
// $303BBE: [Shining Force]
//          [8-Bit] Anri - Inventory Slot 3
// $303BBF: [Shining Force]
//          [8-Bit] Anri - Inventory Slot 4
// $303BC0: [Shining Force]
//          [8-Bit] Anri - Spell Slot 1
// $303BC1: [Shining Force]
//          [8-Bit] Anri - Spell Slot 2
// $303BC2: [Shining Force]
//          [8-Bit] Anri - Spell Slot 3
// $303BC3: [Shining Force]
//          [8-Bit] Anri - Spell Slot 4
// $303BCA: [Shining Force]
//          
//          [64-Bit] Character Name - Alef
// $303BD4: [Shining Force]
//          [8-Bit] Alef - Current Class
// $303BD5: [Shining Force]
//          [8-Bit] Alef - Current Level
// $303BD6: [Shining Force]
//          [8-Bit] Alef - Base Attack Stat
// $303BD7: [Shining Force]
//          [8-Bit] Alef - Defense Stat
// $303BD8: [Shining Force]
//          [8-Bit] Alef - Agility Stat
// $303BD9: [Shining Force]
//          [8-Bit] Alef - Move Stat
// $303BDB: [Shining Force]
//          [8-Bit] Alef - Current Experience
// $303BDD: [Shining Force]
//          [8-Bit] Alef - Max HP
// $303BDF: [Shining Force]
//          [8-Bit] Alef - Current HP
// $303BE0: [Shining Force]
//          [8-Bit] Alef - Max MP
// $303BE1: [Shining Force]
//          [8-Bit] Alef - Current MP
// $303BE4: [Shining Force]
//          [8-Bit] Alef - Inventory Slot 1
// $303BE5: [Shining Force]
//          [8-Bit] Alef - Inventory Slot 2
// $303BE6: [Shining Force]
//          [8-Bit] Alef - Inventory Slot 3
// $303BE7: [Shining Force]
//          [8-Bit] Alef - Inventory Slot 4
// $303BE8: [Shining Force]
//          [8-Bit] Alef - Spell Slot 1
// $303BE9: [Shining Force]
//          [8-Bit] Alef - Spell Slot 2
// $303BEA: [Shining Force]
//          [8-Bit] Alef - Spell Slot 3
// $303BEB: [Shining Force]
//          [8-Bit] Alef - Spell Slot 4
// $303BF2: [Shining Force]
//          
//          [64-Bit] Character Name - Tao
// $303BFC: [Shining Force]
//          [8-Bit] Tao - Current Class
// $303BFD: [Shining Force]
//          [8-Bit] Tao - Current Level
// $303BFE: [Shining Force]
//          [8-Bit] Tao - Base Attack Stat
// $303BFF: [Shining Force]
//          [8-Bit] Tao - Defense Stat
// $303C00: [Shining Force]
//          [8-Bit] Tao - Agility Stat
// $303C01: [Shining Force]
//          [8-Bit] Tao - Move Stat
// $303C03: [Shining Force]
//          [8-Bit] Tao - Current Experience
// $303C05: [Shining Force]
//          [8-Bit] Tao - Max HP
// $303C07: [Shining Force]
//          [8-Bit] Tao - Current HP
// $303C08: [Shining Force]
//          [8-Bit] Tao - Max MP
// $303C09: [Shining Force]
//          [8-Bit] Tao - Current MP
// $303C0C: [Shining Force]
//          [8-Bit] Tao - Inventory Slot 1
// $303C0D: [Shining Force]
//          [8-Bit] Tao - Inventory Slot 2
// $303C0E: [Shining Force]
//          [8-Bit] Tao - Inventory Slot 3
// $303C0F: [Shining Force]
//          [8-Bit] Tao - Inventory Slot 4
// $303C10: [Shining Force]
//          [8-Bit] Tao - Spell Slot 1
// $303C11: [Shining Force]
//          [8-Bit] Tao - Spell Slot 2
// $303C12: [Shining Force]
//          [8-Bit] Tao - Spell Slot 3
// $303C13: [Shining Force]
//          [8-Bit] Tao - Spell Slot 4
// $303C1A: [Shining Force]
//          
//          [64-Bit] Character Name - Domingo
// $303C24: [Shining Force]
//          [8-Bit] Domingo - Current Class
// $303C25: [Shining Force]
//          [8-Bit] Domingo - Current Level
// $303C26: [Shining Force]
//          [8-Bit] Domingo - Base Attack Stat
// $303C27: [Shining Force]
//          [8-Bit] Domingo - Defense Stat
// $303C28: [Shining Force]
//          [8-Bit] Domingo - Agility Stat
// $303C29: [Shining Force]
//          [8-Bit] Domingo - Move Stat
// $303C2B: [Shining Force]
//          [8-Bit] Domingo - Current Experience
// $303C2D: [Shining Force]
//          [8-Bit] Domingo - Max HP
// $303C2F: [Shining Force]
//          [8-Bit] Domingo - Current HP
// $303C30: [Shining Force]
//          [8-Bit] Domingo - Max MP
// $303C31: [Shining Force]
//          [8-Bit] Domingo - Current MP
// $303C34: [Shining Force]
//          [8-Bit] Domingo - Inventory Slot 1
// $303C35: [Shining Force]
//          [8-Bit] Domingo - Inventory Slot 2
// $303C36: [Shining Force]
//          [8-Bit] Domingo - Inventory Slot 3
// $303C37: [Shining Force]
//          [8-Bit] Domingo - Inventory Slot 4
// $303C38: [Shining Force]
//          [8-Bit] Domingo - Spell Slot 1
// $303C39: [Shining Force]
//          [8-Bit] Domingo - Spell Slot 2
// $303C3A: [Shining Force]
//          [8-Bit] Domingo - Spell Slot 3
// $303C3B: [Shining Force]
//          [8-Bit] Domingo - Spell Slot 4
// $303C42: [Shining Force]
//          
//          [64-Bit] Character Name - Lowe
// $303C4C: [Shining Force]
//          [8-Bit] Lowe - Current Class
// $303C4D: [Shining Force]
//          [8-Bit] Lowe - Current Level
// $303C4E: [Shining Force]
//          [8-Bit] Lowe - Base Attack Stat
// $303C4F: [Shining Force]
//          [8-Bit] Lowe - Defense Stat
// $303C50: [Shining Force]
//          [8-Bit] Lowe - Agility Stat
// $303C51: [Shining Force]
//          [8-Bit] Lowe - Move Stat
// $303C53: [Shining Force]
//          [8-Bit] Lowe - Current Experience
// $303C55: [Shining Force]
//          [8-Bit] Lowe - Max HP
// $303C57: [Shining Force]
//          [8-Bit] Lowe - Current HP
// $303C58: [Shining Force]
//          [8-Bit] Lowe - Max MP
// $303C59: [Shining Force]
//          [8-Bit] Lowe - Current MP
// $303C5C: [Shining Force]
//          [8-Bit] Lowe - Inventory Slot 1
// $303C5D: [Shining Force]
//          [8-Bit] Lowe - Inventory Slot 2
// $303C5E: [Shining Force]
//          [8-Bit] Lowe - Inventory Slot 3
// $303C5F: [Shining Force]
//          [8-Bit] Lowe - Inventory Slot 4
// $303C60: [Shining Force]
//          [8-Bit] Lowe - Spell Slot 1
// $303C61: [Shining Force]
//          [8-Bit] Lowe - Spell Slot 2
// $303C62: [Shining Force]
//          [8-Bit] Lowe - Spell Slot 3
// $303C63: [Shining Force]
//          [8-Bit] Lowe - Spell Slot 4
// $303C6A: [Shining Force]
//          
//          [64-Bit] Character Name - Khris
// $303C74: [Shining Force]
//          [8-Bit] Khris - Current Class
// $303C75: [Shining Force]
//          [8-Bit] Khris - Current Level
// $303C76: [Shining Force]
//          [8-Bit] Khris - Base Attack Stat
// $303C77: [Shining Force]
//          [8-Bit] Khris - Defense Stat
// $303C78: [Shining Force]
//          [8-Bit] Khris - Agility Stat
// $303C79: [Shining Force]
//          [8-Bit] Khris - Move Stat
// $303C7B: [Shining Force]
//          [8-Bit] Khris - Current Experience
// $303C7D: [Shining Force]
//          [8-Bit] Khris - Max HP
// $303C7F: [Shining Force]
//          [8-Bit] Khris - Current HP
// $303C80: [Shining Force]
//          [8-Bit] Khris - Max MP
// $303C81: [Shining Force]
//          [8-Bit] Khris - Current MP
// $303C84: [Shining Force]
//          [8-Bit] Khris - Inventory Slot 1
// $303C85: [Shining Force]
//          [8-Bit] Khris - Inventory Slot 2
// $303C86: [Shining Force]
//          [8-Bit] Khris - Inventory Slot 3
// $303C87: [Shining Force]
//          [8-Bit] Khris - Inventory Slot 4
// $303C88: [Shining Force]
//          [8-Bit] Khris - Spell Slot 1
// $303C89: [Shining Force]
//          [8-Bit] Khris - Spell Slot 2
// $303C8A: [Shining Force]
//          [8-Bit] Khris - Spell Slot 3
// $303C8B: [Shining Force]
//          [8-Bit] Khris - Spell Slot 4
// $303C92: [Shining Force]
//          
//          [64-Bit] Character Name - Torasu
// $303C9C: [Shining Force]
//          [8-Bit] Torasu - Current Class
// $303C9D: [Shining Force]
//          [8-Bit] Torasu - Current Level
// $303C9E: [Shining Force]
//          [8-Bit] Torasu - Base Attack Stat
// $303C9F: [Shining Force]
//          [8-Bit] Torasu - Defense Stat
// $303CA0: [Shining Force]
//          [8-Bit] Torasu - Agility Stat
// $303CA1: [Shining Force]
//          [8-Bit] Torasu - Move Stat
// $303CA3: [Shining Force]
//          [8-Bit] Torasu - Current Experience
// $303CA5: [Shining Force]
//          [8-Bit] Torasu - Max HP
// $303CA7: [Shining Force]
//          [8-Bit] Torasu - Current HP
// $303CA9: [Shining Force]
//          [8-Bit] Torasu - Max MP
// $303CAC: [Shining Force]
//          [8-Bit] Torasu - Inventory Slot 1
// $303CAD: [Shining Force]
//          [8-Bit] Torasu - Inventory Slot 2
// $303CAE: [Shining Force]
//          [8-Bit] Torasu - Inventory Slot 3
// $303CAF: [Shining Force]
//          [8-Bit] Torasu - Inventory Slot 4
// $303CB0: [Shining Force]
//          [8-Bit] Torasu - Spell Slot 1
// $303CB1: [Shining Force]
//          [8-Bit] Torasu - Spell Slot 2
// $303CB2: [Shining Force]
//          [8-Bit] Torasu - Spell Slot 3
// $303CB3: [Shining Force]
//          [8-Bit] Torasu - Spell Slot 4
// $303CBA: [Shining Force]
//          
//          [64-Bit] Character Name - Gong
// $303CC4: [Shining Force]
//          [8-Bit] Gong - Current Class
// $303CC5: [Shining Force]
//          [8-Bit] Gong - Current Level
// $303CC6: [Shining Force]
//          [8-Bit] Gong - Base Attack Stat
// $303CC7: [Shining Force]
//          [8-Bit] Gong - Defense Stat
// $303CC8: [Shining Force]
//          [8-Bit] Gong - Agility Stat
// $303CC9: [Shining Force]
//          [8-Bit] Gong - Move Stat
// $303CCB: [Shining Force]
//          [8-Bit] Gong - Current Experience
// $303CCD: [Shining Force]
//          [8-Bit] Gong - Max HP
// $303CCF: [Shining Force]
//          [8-Bit] Gong - Current HP
// $303CD0: [Shining Force]
//          [8-Bit] Gong - Max MP
// $303CD1: [Shining Force]
//          [8-Bit] Gong - Current MP
// $303CD4: [Shining Force]
//          [8-Bit] Gong - Inventory Slot 1
// $303CD5: [Shining Force]
//          [8-Bit] Gong - Inventory Slot 2
// $303CD6: [Shining Force]
//          [8-Bit] Gong - Inventory Slot 3
// $303CD7: [Shining Force]
//          [8-Bit] Gong - Inventory Slot 4
// $303CD8: [Shining Force]
//          [8-Bit] Gong - Spell Slot 1
// $303CD9: [Shining Force]
//          [8-Bit] Gong - Spell Slot 2
// $303CDA: [Shining Force]
//          [8-Bit] Gong - Spell Slot 3
// $303CDB: [Shining Force]
//          [8-Bit] Gong - Spell Slot 4
// $303CE2: [Shining Force]
//          
//          [64-Bit] Character Name - DIane
// $303CEC: [Shining Force]
//          [8-Bit] Diane - Current Class
// $303CED: [Shining Force]
//          [8-Bit] Diane - Current Level
// $303CEE: [Shining Force]
//          [8-Bit] Diane - Base Attack Stat
// $303CEF: [Shining Force]
//          [8-Bit] Diane - Defense Stat
// $303CF0: [Shining Force]
//          [8-Bit] Diane - Agility Stat
// $303CF1: [Shining Force]
//          [8-Bit] Diane - Move Stat
// $303CF3: [Shining Force]
//          [8-Bit] Diane - Current Experience
// $303CF5: [Shining Force]
//          [8-Bit] Diane - Max HP
// $303CF7: [Shining Force]
//          [8-Bit] Diane - Current HP
// $303CF8: [Shining Force]
//          [8-Bit] Diane - Max MP
// $303CF9: [Shining Force]
//          [8-Bit] Diane - Current MP
// $303CFC: [Shining Force]
//          [8-Bit] Diane - Inventory Slot 1
// $303CFD: [Shining Force]
//          [8-Bit] Diane - Inventory Slot 2
// $303CFE: [Shining Force]
//          [8-Bit] Diane - Inventory Slot 3
// $303CFF: [Shining Force]
//          [8-Bit] Diane - Inventory Slot 4
// $303D00: [Shining Force]
//          [8-Bit] Diane - Spell Slot 1
// $303D01: [Shining Force]
//          [8-Bit] Diane - Spell Slot 2
// $303D02: [Shining Force]
//          [8-Bit] Diane - Spell Slot 3
// $303D03: [Shining Force]
//          [8-Bit] Diane - Spell Slot 4
// $303D0A: [Shining Force]
//          
//          [64-Bit] Character Name - Hans
// $303D14: [Shining Force]
//          [8-Bit] Hans - Current Class
// $303D15: [Shining Force]
//          [8-Bit] Hans - Current Level
// $303D16: [Shining Force]
//          [8-Bit] Hans - Base Attack Stat
// $303D17: [Shining Force]
//          [8-Bit] Hans - Defense Stat
// $303D18: [Shining Force]
//          [8-Bit] Hans - Agility Stat
// $303D19: [Shining Force]
//          [8-Bit] Hans - Move Stat
// $303D1B: [Shining Force]
//          [8-Bit] Hans - Current Experience
// $303D1D: [Shining Force]
//          [8-Bit] Hans - Max HP
// $303D1F: [Shining Force]
//          [8-Bit] Hans - Current HP
// $303D20: [Shining Force]
//          [8-Bit] Hans - Max MP
// $303D21: [Shining Force]
//          [8-Bit] Hans - Current MP
// $303D24: [Shining Force]
//          [8-Bit] Hans - Inventory Slot 1
// $303D25: [Shining Force]
//          [8-Bit] Hans - Inventory Slot 2
// $303D26: [Shining Force]
//          [8-Bit] Hans - Inventory Slot 3
// $303D27: [Shining Force]
//          [8-Bit] Hans - Inventory Slot 4
// $303D28: [Shining Force]
//          [8-Bit] Hans - Spell Slot 1
// $303D29: [Shining Force]
//          [8-Bit] Hans - Spell Slot 2
// $303D2A: [Shining Force]
//          [8-Bit] Hans - Spell Slot 3
// $303D2B: [Shining Force]
//          [8-Bit] Hans - Spell Slot 4
// $303D32: [Shining Force]
//          
//          [64-Bit] Character Name - Lyle
// $303D3C: [Shining Force]
//          [8-Bit] Lyle - Current Class
// $303D3D: [Shining Force]
//          [8-Bit] Lyle - Current Level
// $303D3E: [Shining Force]
//          [8-Bit] Lyle - Base Attack Stat
// $303D3F: [Shining Force]
//          [8-Bit] Lyle - Defense Stat
// $303D40: [Shining Force]
//          [8-Bit] Lyle - Agility Stat
// $303D41: [Shining Force]
//          [8-Bit] Lyle - Move Stat
// $303D43: [Shining Force]
//          [8-Bit] Lyle - Current Experience
// $303D45: [Shining Force]
//          [8-Bit] Lyle - Max HP
// $303D47: [Shining Force]
//          [8-Bit] Lyle - Current HP
// $303D48: [Shining Force]
//          [8-Bit] Lyle - Max MP
// $303D49: [Shining Force]
//          [8-Bit] Lyle - Current MP
// $303D4C: [Shining Force]
//          [8-Bit] Lyle - Inventory Slot 1
// $303D4D: [Shining Force]
//          [8-Bit] Lyle - Inventory Slot 2
// $303D4E: [Shining Force]
//          [8-Bit] Lyle - Inventory Slot 3
// $303D4F: [Shining Force]
//          [8-Bit] Lyle - Inventory Slot 4
// $303D50: [Shining Force]
//          [8-Bit] Lyle - Spell Slot 1
// $303D51: [Shining Force]
//          [8-Bit] Lyle - Spell Slot 2
// $303D52: [Shining Force]
//          [8-Bit] Lyle - Spell Slot 3
// $303D53: [Shining Force]
//          [8-Bit] Lyle - Spell Slot 4
// $303D5A: [Shining Force]
//          [64-Bit] Character Name - Amon
// $303D64: [Shining Force]
//          [8-Bit] Amon - Current Class
// $303D65: [Shining Force]
//          [8-Bit] Amon - Current Level
// $303D66: [Shining Force]
//          [8-Bit] Amon - Base Attack Stat
// $303D67: [Shining Force]
//          [8-Bit] Amon - Defense Stat
// $303D68: [Shining Force]
//          [8-Bit] Amon - Agility Stat
// $303D69: [Shining Force]
//          [8-Bit] Amon - Move Stat
// $303D6B: [Shining Force]
//          [8-Bit] Amon - Current Experience
// $303D6D: [Shining Force]
//          [8-Bit] Amon - Max HP
// $303D6F: [Shining Force]
//          [8-Bit] Amon - Current HP
// $303D70: [Shining Force]
//          [8-Bit] Amon - Max MP
// $303D71: [Shining Force]
//          [8-Bit] Amon - Current MP
// $303D74: [Shining Force]
//          [8-Bit] Amon - Inventory Slot 1
// $303D75: [Shining Force]
//          [8-Bit] Amon - Inventory Slot 2
// $303D76: [Shining Force]
//          [8-Bit] Amon - Inventory Slot 3
// $303D77: [Shining Force]
//          [8-Bit] Amon - Inventory Slot 4
// $303D78: [Shining Force]
//          [8-Bit] Amon - Spell Slot 1
// $303D79: [Shining Force]
//          [8-Bit] Amon - Spell Slot 2
// $303D7A: [Shining Force]
//          [8-Bit] Amon - Spell Slot 3
// $303D7B: [Shining Force]
//          [8-Bit] Amon - Spell Slot 4
// $303D80: [Wrestle War] [8-bit] Player 1 - Health
// $303D82: [Shining Force]
//          
//          [64-Bit] Character Name - Balbaroy
// $303D86: [VECTORM] [16-Bit] Cheat - Debug Menu
//          --- dfe7 | Debug shown
// $303D8C: [Shining Force]
//          [8-Bit] Balbaroy - Current Class
// $303D8D: [Shining Force]
//          [8-Bit] Balbaroy - Current Level
// $303D8E: [Shining Force]
//          [8-Bit] Balbaroy - Base Attack Stat
// $303D8F: [Shining Force]
//          [8-Bit] Balbaroy - Defense Stat
// $303D90: [Shining Force]
//          [8-Bit] Balbaroy - Agility Stat
// $303D91: [Shining Force]
//          [8-Bit] Balbaroy - Move Stat
// $303D93: [Shining Force]
//          [8-Bit] Balbaroy - Current Experience
// $303D95: [Shining Force]
//          [8-Bit] Balbaroy - Max HP
// $303D97: [Shining Force]
//          [8-Bit] Balbaroy - Current HP
// $303D98: [Shining Force]
//          [8-Bit] Balbaroy - Max MP
// $303D99: [Shining Force]
//          [8-Bit] Balbaroy - Current MP
// $303D9C: [Shining Force]
//          [8-Bit] Balbaroy - Inventory Slot 1
// $303D9D: [Shining Force]
//          [8-Bit] Balbaroy - Inventory Slot 2
// $303D9E: [Shining Force]
//          [8-Bit] Balbaroy - Inventory Slot 3
// $303D9F: [Shining Force]
//          [8-Bit] Balbaroy - Inventory Slot 4
// $303DA0: [Shining Force]
//          [8-Bit] Balbaroy - Spell Slot 1
// $303DA1: [Shining Force]
//          [8-Bit] Balbaroy - Spell Slot 2
// $303DA2: [Shining Force]
//          [8-Bit] Balbaroy - Spell Slot 3
// $303DA3: [Shining Force]
//          [8-Bit] Balbaroy - Spell Slot 4
// $303DAA: [Shining Force]
//          
//          [64-Bit] Character Name - Kokichi
// $303DB4: [Shining Force]
//          [8-Bit] Kokichi - Current Class
// $303DB5: [Shining Force]
//          [8-Bit] Kokichi - Current Level
// $303DB6: [Shining Force]
//          [8-Bit] Kokichi - Base Attack Stat
// $303DB7: [Shining Force]
//          [8-Bit] Kokichi - Defense Stat
// $303DB8: [Shining Force]
//          [8-Bit] Kokichi - Agility Stat
// $303DB9: [Shining Force]
//          [8-Bit] Kokichi - Move Stat
// $303DBB: [Shining Force]
//          [8-Bit] Kokichi - Current Experience
// $303DBD: [Shining Force]
//          [8-Bit] Kokichi - Max HP
// $303DBF: [Shining Force]
//          [8-Bit] Kokichi - Current HP
// $303DC0: [Shining Force]
//          [8-Bit] Kokichi - Max MP
// $303DC1: [Shining Force]
//          [8-Bit] Kokichi - Current MP
// $303DC4: [Shining Force]
//          [8-Bit] Kokichi - Inventory Slot 1
// $303DC5: [Shining Force]
//          [8-Bit] Kokichi - Inventory Slot 2
// $303DC6: [Shining Force]
//          [8-Bit] Kokichi - Inventory Slot 3
// $303DC7: [Shining Force]
//          [8-Bit] Kokichi - Inventory Slot 4
// $303DC8: [Shining Force]
//          [8-Bit] Kokichi - Spell Slot 1
// $303DC9: [Shining Force]
//          [8-Bit] Kokichi - Spell Slot 2
// $303DCA: [Shining Force]
//          [8-Bit] Kokichi - Spell Slot 3
// $303DCB: [Shining Force]
//          [8-Bit] Kokichi - Spell Slot 4
// $303DD2: [Shining Force]
//          [64-Bit] Character Name - Bleu
// $303DDC: [Shining Force]
//          [8-Bit] Bleu - Current Class
// $303DDD: [Shining Force]
//          [8-Bit] Bleu - Current Level
// $303DDE: [Shining Force]
//          [8-Bit] Bleu - Base Attack Stat
// $303DDF: [Shining Force]
//          [8-Bit] Bleu - Defense Stat
// $303DE0: [Shining Force]
//          [8-Bit] Bleu - Agility Stat
// $303DE1: [Shining Force]
//          [8-Bit] Bleu - Move Stat
// $303DE3: [Shining Force]
//          [8-Bit] Bleu - Current Experience
// $303DE5: [Shining Force]
//          [8-Bit] Bleu - Max HP
// $303DE7: [Shining Force]
//          [8-Bit] Bleu - Current HP
// $303DE8: [Shining Force]
//          [8-Bit] Bleu - Max MP
// $303DE9: [Shining Force]
//          [8-Bit] Bleu - Current MP
// $303DEC: [Shining Force]
//          [8-Bit] Bleu - Inventory Slot 1
// $303DED: [Shining Force]
//          [8-Bit] Bleu - Inventory Slot 2
// $303DEE: [Shining Force]
//          [8-Bit] Bleu - Inventory Slot 3
// $303DEF: [Shining Force]
//          [8-Bit] Bleu - Inventory Slot 4
// $303DF0: [Shining Force]
//          [8-Bit] Bleu - Spell Slot 1
// $303DF1: [Shining Force]
//          [8-Bit] Bleu - Spell Slot 2
// $303DF2: [Shining Force]
//          [8-Bit] Bleu - Spell Slot 3
// $303DF3: [Shining Force]
//          [8-Bit] Bleu - Spell Slot 4
// $303DFA: [Shining Force]
//          [64-Bit] Character Name - Adam
// $303E04: [Shining Force]
//          [8-Bit] Adam - Current Class
// $303E05: [Shining Force]
//          [8-Bit] Adam - Current Level
// $303E06: [Shining Force]
//          [8-Bit] Adam - Base Attack Stat
// $303E07: [Shining Force]
//          [8-Bit] Adam - Defense Stat
// $303E08: [Shining Force]
//          [8-Bit] Adam - Agility Stat
// $303E09: [Shining Force]
//          [8-Bit] Adam - Move Stat
// $303E0B: [Shining Force]
//          [8-Bit] Adam - Current Experience
// $303E0D: [Shining Force]
//          [8-Bit] Adam - Max HP
// $303E0F: [Shining Force]
//          [8-Bit] Adam - Current HP
// $303E10: [Shining Force]
//          [8-Bit] Adam - Max MP
// $303E11: [Shining Force]
//          [8-Bit] Adam - Current MP
// $303E14: [Shining Force]
//          [8-Bit] Adam - Inventory Slot 1
// $303E15: [Shining Force]
//          [8-Bit] Adam - Inventory Slot 2
// $303E16: [Shining Force]
//          [8-Bit] Adam - Inventory Slot 3
// $303E17: [Shining Force]
//          [8-Bit] Adam - Inventory Slot 4
// $303E18: [Shining Force]
//          [8-Bit] Adam - Spell Slot 1
// $303E19: [Shining Force]
//          [8-Bit] Adam - Spell Slot 2
// $303E1A: [Shining Force]
//          [8-Bit] Adam - Spell Slot 3
// $303E1B: [Shining Force]
//          [8-Bit] Adam - Spell Slot 4
// $303E22: [Shining Force]
//          
//          [64-Bit] Character Name - Zylo
// $303E2C: [Shining Force]
//          [8-Bit] Zylo - Current Class
// $303E2D: [Shining Force]
//          [8-Bit] Zylo - Current Level
// $303E2E: [Shining Force]
//          [8-Bit] Zylo - Base Attack Stat
// $303E2F: [Shining Force]
//          [8-Bit] Zylo - Defense Stat
// $303E30: [Shining Force]
//          [8-Bit] Zylo - Agility Stat
// $303E31: [Shining Force]
//          [8-Bit] Zylo - Move Stat
// $303E33: [Shining Force]
//          [8-Bit] Zylo - Current Experience
// $303E35: [Shining Force]
//          [8-Bit] Zylo - Max HP
// $303E37: [Shining Force]
//          [8-Bit] Zylo - Current HP
// $303E38: [Shining Force]
//          [8-Bit] Zylo - Max MP
// $303E39: [Shining Force]
//          [8-Bit] Zylo - Current MP
// $303E3C: [Shining Force]
//          [8-Bit] Zylo - Inventory Slot 1
// $303E3D: [Shining Force]
//          [8-Bit] Zylo - Inventory Slot 2
// $303E3E: [Shining Force]
//          [8-Bit] Zylo - Inventory Slot 3
// $303E3F: [Shining Force]
//          [8-Bit] Zylo - Inventory Slot 4
// $303E40: [Shining Force]
//          [8-Bit] Zylo - Spell Slot 1
// $303E41: [Shining Force]
//          [8-Bit] Zylo - Spell Slot 2
// $303E42: [Shining Force]
//          [8-Bit] Zylo - Spell Slot 3
// $303E43: [Shining Force]
//          [8-Bit] Zylo - Spell Slot 4
// $303E4A: [Shining Force]
//          [64-Bit] Character Name - Musashi
// $303E54: [Shining Force]
//          [8-Bit] Musashi - Current Class
// $303E55: [Shining Force]
//          [8-Bit] Musashi - Current Level
// $303E56: [Shining Force]
//          [8-Bit] Musashi - Base Attack Stat
// $303E57: [Shining Force]
//          [8-Bit] Musashi - Defense Stat
// $303E58: [Shining Force]
//          [8-Bit] Musashi - Agility Stat
// $303E59: [Shining Force]
//          [8-Bit] Musashi - Move Stat
// $303E5B: [Shining Force]
//          [8-Bit] Musashi - Current Experience
// $303E5D: [Shining Force]
//          [8-Bit] Musashi - Max HP
// $303E5F: [Shining Force]
//          [8-Bit] Musashi - Current HP
// $303E60: [Shining Force]
//          [8-Bit] Musashi - Max MP
// $303E61: [Shining Force]
//          [8-Bit] Musashi - Current MP
// $303E64: [Shining Force]
//          [8-Bit] Musashi - Inventory Slot 1
// $303E65: [Shining Force]
//          [8-Bit] Musashi - Inventory Slot 2
// $303E66: [Shining Force]
//          [8-Bit] Musashi - Inventory Slot 3
// $303E67: [Shining Force]
//          [8-Bit] Musashi - Inventory Slot 4
// $303E68: [Shining Force]
//          [8-Bit] Musashi - Spell Slot 1
// $303E69: [Shining Force]
//          [8-Bit] Musashi - Spell Slot 2
// $303E6A: [Shining Force]
//          [8-Bit] Musashi - Spell Slot 3
// $303E6B: [Shining Force]
//          [8-Bit] Musashi - Spell Slot 4
// $303E72: [Shining Force]
//          [64-Bit] Character Name - Hanzou
// $303E7C: [Shining Force]
//          [8-Bit] Hanzou - Current Class
// $303E7D: [Shining Force]
//          [8-Bit] Hanzou - Current Level
// $303E7E: [Shining Force]
//          [8-Bit] Hanzou - Base Attack Stat
// $303E7F: [Shining Force]
//          [8-Bit] Hanzou - Defense Stat
// $303E80: [Wrestle War] [8-bit] Player 2 - Health
//          
//          [Shining Force]
//          [8-Bit] Jogurt - Agility Stat
// $303E81: [Shining Force]
//          [8-Bit] Hanzou - Move Stat
// $303E83: [Shining Force]
//          [8-Bit] Hanzou - Current Experience
// $303E85: [Shining Force]
//          [8-Bit] Hanzou - Max HP
// $303E87: [Shining Force]
//          [8-Bit] Hanzou - Current HP
// $303E88: [Shining Force]
//          [8-Bit] Hanzou - Max MP
// $303E89: [Shining Force]
//          [8-Bit] Hanzou - Current MP
// $303E8C: [Shining Force]
//          [8-Bit] Hanzou - Inventory Slot 1
// $303E8D: [Shining Force]
//          [8-Bit] Hanzou - Inventory Slot 2
// $303E8E: [Shining Force]
//          [8-Bit] Hanzou - Inventory Slot 3
// $303E8F: [Shining Force]
//          [8-Bit] Hanzou - Inventory Slot 4
// $303E90: [Shining Force]
//          [8-Bit] Hanzou - Spell Slot 1
// $303E91: [Shining Force]
//          [8-Bit] Hanzou - Spell Slot 2
// $303E92: [Shining Force]
//          [8-Bit] Hanzou - Spell Slot 3
// $303E93: [Shining Force]
//          [8-Bit] Hanzou - Spell Slot 4
// $303E9A: [Shining Force]
//          [64-Bit] Character Name - Jogurt
// $303EA4: [Shining Force]
//          [8-Bit] Jogurt - Current Class
// $303EA5: [Shining Force]
//          [8-Bit] Jogurt - Current Level
// $303EA6: [Shining Force]
//          [8-Bit] Jogurt - Base Attack Stat
// $303EA7: [Shining Force]
//          [8-Bit] Jogurt - Defense Stat
// $303EA9: [Shining Force]
//          [8-Bit] Jogurt - Move Stat
// $303EAB: [Shining Force]
//          [8-Bit] Jogurt - Current Experience
// $303EAD: [Shining Force]
//          [8-Bit] Jogurt - Max HP
// $303EAF: [Shining Force]
//          [8-Bit] Jogurt - Current HP
// $303EB0: [Shining Force]
//          [8-Bit] Jogurt - Max MP
// $303EB1: [Shining Force]
//          [8-Bit] Jogurt - Current MP
// $303EB4: [Shining Force]
//          [8-Bit] Jogurt - Inventory Slot 1
// $303EB5: [Shining Force]
//          [8-Bit] Jogurt - Inventory Slot 2
// $303EB6: [Shining Force]
//          [8-Bit] Jogurt - Inventory Slot 3
// $303EB7: [Shining Force]
//          [8-Bit] Jogurt - Inventory Slot 4
// $303EB8: [Shining Force]
//          [8-Bit] Jogurt - Spell Slot 1
// $303EB9: [Shining Force]
//          [8-Bit] Jogurt - Spell Slot 2
// $303EBA: [Shining Force]
//          [8-Bit] Jogurt - Spell Slot 3
// $303EBB: [Shining Force]
//          [8-Bit] Jogurt - Spell Slot 4
// $303EEA: [Shining Force]
//          [8-Bit] Max's level when promoted
// $303F81: [Wrestle War] [8-bit] Player 2 - Character
//          --- 00 | Mohawk Kid
//          --- 01 | Sledge Hammer
//          --- 02 | Mr. J
//          --- 03 | Don Dambuster
//          --- 04 | Nim Rod Falcon
//          --- 05 | Titan Morgan
//          --- 06 | Buckskin Rodgers
//          --- 07 | Grand Kong
// $303F8B: [Wrestle War] [8-bit] Ring Out - Timer
// $303F8E: STRAGE2 - Alt Level End Flag?
//          0xe0 must be held for a length of time.
// $303F9B: STRAGE2 - Sound Data [16-bit]
//          Most tracks have a beat, and this one often keeps up with the music like a metronome. This is mostly useful when the victory theme plays.
//          Watch for prev being 0x0101 then swap to 0x0000 for popping cheevos. For popping leaderboards, use in conjunction with 0x383f8e and note the first value here is 0x0001.
// $303FDE: [Wrestle War] [8-bit] Opponents beaten
//          --- Bit0 | Mohawk Kid (1st Wrestler)
//          --- Bit1 | Sledge Hammer (San Francisco; SWF Title)
//          --- Bit2 | Mr. J (Minneapolis)
//          --- Bit3 | Don Dambuster (New York)
//          --- Bit4 | Nim Rod Falcon (Miami)
//          --- Bit5 | Titan Morgan (Dellas; SWA Title)
//          --- Bit6 | Bucksin Rodgers (7th Wrestler)
//          --- Bit7 | Grand Kong (8th Wrestler)
// $303FDF: Current Match
// $304002: STRAGE2 - End of Level Sequence Active (Includes Score Tally)
//          This is only semi-reliable when 0x309a49 is set to 0xff.
// $304681: STRAGE2 - Specific Option in Menu
//          0x00: Difficulty Level
//          0x01: Number of Lives
//          0x02: Music Test
//          0x03: Sound Effect Test
//          0x04: Voice Test
//          0x05: Level Select
//          0x06: Exit Options
// $304683: STRAGE2 - Cheat Option Active
//          To activate, hold A and B on controller 2 while selecting Options. This by itself doesn't disqualify cheevos or leaderboards. Review the individual cheevos to determine what is allowed.
// $304EA0: [Altered Beast] Lives
// $304EA2: [Altered Beast] [8-bit] [BCD] Current Score xx000000
// $304EA3: [Altered Beast] [8-bit] [BCD] Current Score xx0000
// $304EA4: [Altered Beast] [8-bit] [BCD] Current Score 00xx00
// $305D80: [PSII] Rolf's status
//          
//          bit 7 - poisoned
// $305D83: [PSII] [8-bit] Rolf's current HP
// $305D85: [PSII] [8-bit] Rolf's max HP
// $305D87: [PSII] [8-bit] Rolf's current TP
// $305D89: [PSII] [8-bit] Rolf's max TP
// $305D8B: [PSII] [8-bit] Rolf's level
// $305D8E: [PSII] [16-bit] Rolf's XP
// $305D95: [PSII] [8-bit] Rolf's agility
// $305D9D: [PSII] [8-bit] Rolf's attack
// $305D9F: [PSII] [8-bit] Rolf's defense
// $305DA0: [PSII] [8-bit] Rolf's equipped headgear
//          
//          0x17 - Headgear
//          0x18 - Ribbon
//          0x19 - Fibergear
//          0x1a - Sil Ribbon
//          0x1b - Sil Crown
//          0x1c - Titanigear
//          0x1d - Titanimet
//          0x1f - Jwl Ribbon
//          0x20 - Crescegear
//          0x21 - Snow Crown
//          0x22 - Wind Scarf
//          0x23 - Color Scarf
//          0x24 - Storm Gear
//          0x25 - Laconigear
//          0x26 - Laconiamet
//          0x27 - Neimet
//          0x28 - Neicrown
//          0x29 - Magic Cap
//          0x2a - Mogic Cap
// $305DA1: [PSII] [8-bit] Rolf's right hand weapon
//          
//          0x00 - No equip
//          0x56 - Knife
//          0x57 - Dagger
//          0x58 - Scapel
//          0x59 - Steel Bar
//          0x5a - Boomerang
//          0x5b - Slasher
//          0x5c - Sword
//          0x5d - Whip
//          0x5e - Ceram Sword
//          0x5f - Ceram Knife
//          0x60 - Ceram Bar
//          0x61 - Laser Slshr
//          0x62 - Lasr Swrd
//          0x63 - Lasr Bar
//          0x64 - Laser Knife
//          0x65 - Sword of Ang
//          0x66 - Fire Slshr
//          0x67 - Fire Staff
//          0x68 - Lacn Mace
//          0x69 - Lac Dagger
//          0x6a - AC Slashr
//          0x6b - Lac Sword
//          0x6c - Neisword
//          0x6d - Neislasher
//          0x6e - Bow Gun
//          0x6f - Sonic Gun
//          0x70 - Shotgun
//          0x71 - Silentshot
//          0x72 - Poisonshot
//          0x73 - Acidshot
//          0x74 - Cannon
// $305DA2: [PSII] [8-bit] Rolf's left hand weapon
// $305DA3: [PSII] [8-bit] Rolf's equipped armor
//          
//          0x00 - No equip
//          0x2b - Carbonsuit
//          0x2c - Carbonvest
//          0x2d - Fibercoat
//          0x2e - Fibercape
//          0x2f - Fibervest
//          0x30 - Ttnm Armor
//          0x31 - Ttnm Cape
//          0x32 - Ttnm Chest
//          0x33 - Crmc Armor
//          0x34 - Crmc Cape
//          0x35 - Crmc Chest
//          0x36 - Amber Robe
//          0x37 - Crystanish
//          0x38 - Crystcape
//          0x39 - Crystchest
//          0x3a - Laconinish
//          0x3b - Laconcape
//          0x3c - Laconchest
//          0x3d - Nei Armor
//          0x3f - Neicape
// $305DA4: [PSII] [8-bit] Rolf's equipped shoes
//          
//          0x3f - Shoes
//          0x40 - Sandals
//          0x41 - Boots
//          0x42 - Knife Boots
//          0x43 - Long Boots
//          0x44 - Hirza Boots
//          0x45 - Shune Boots
// $305DA5: [PSII] Rolf's learned attack techs
//          
//          bit 0 - Learned Foi
//          bit 1 - learned Gifoi and Tsu
//          bit 2 - learned Zan
// $305DA6: [PSII] Rolf's learned support/heal techs
//          
//          0x01 - No techs learned, can learn techs
//          0x02 - Learned Ryuka
//          0x03 - Learned Hinas
//          0x04 - Learned Res
//          0x05 - Learned Gires
//          
//          bit 7 - Learned Musik
// $305DA7: [PSII] [8-bit] Number of items in Rolf's inventory
// $305DA8: [PSII] [8-bit] First item in Rolf's inventory
//          
//          If item is equipment bit 7 is added to indicate it is equipped
//          
//          0x01 - Small Key
//          0x02 - Dynamite
//          0x04 - Manurera Gum
//          0x09 - Letter
//          0x0b - Manuera Leaf
//          0x11 - Monomate
//          0x12 - Dimate
// $305DA9: [PSII] [8-bit] Rolf's second inventory item
// $305DAA: [PSII] [8-bit] Rolf's third inventory item
// $305DAB: [PSII] [8-bit] Rolf's fifth inventory item
// $305DAC: [PSII] [8-bit] Rolf's fifth inventory item
// $305DAD: [PSII] [8-bit] Rolf's sixth inventory item
// $305DAE: [PSII] [8-bit] Rolf's Seventh inventory item
// $305DAF: [PSII] [8-bit] Rolf's eighth inventory item
// $305DB0: [PSII] [8-bit] Rolf's ninth inventory item
// $305DB1: [PSII] [8-bit] Rolf's tenth inventory item
// $305DB2: [PSII] [8-bit] Rolf's eleventh inventory item
// $305DB3: [PSII] [8-bit] Rolf's twefth inventory item
// $305DB4: [PSII] [8-bit] Rolf's thirteenth inventory item
// $305DB5: [PSII] [8-bit] Rolf's fourteenth inventory item
// $305DB6: [PSII] [8-bit] Rolf's fifteenth inventory item
// $305DB7: [PSII] [8-bit] Rolf's sixteenth inventory item
// $305DC0: [PSII] Nei's status
//          
//          bit 7 - poisoned
// $305DC3: [PSII] [8-bit] Nei's current HP
// $305DC5: [PSII] [8-bit] Nei's max HP
// $305DC7: [PSII] [8-bit] Nei's current TP
// $305DC9: [PSII] [8-bit] Nei's max TP
// $305DCB: [PSII] [8-bit] Nei's level
// $305DCE: [PSII] [16-bit] Nei's XP
// $305DD5: [PSII] [8-bit] Nei's Agility
// $305DDD: [PSII] [8-bit] Nei's Attack
// $305DDF: [PSII] [8-bit] Nei's defense
// $305DE0: [PSII] [8-bit] Nei's equipped headgear
// $305DE1: [PSII] [8-bit] Nei's right hand weapon
//          
//          0x00 - Nothing equipped
//          0x059 - Steel Bar
// $305DE2: [PSII] [8-bit] Nei's left hand weapon
// $305DE3: [PSII] [8-bit] Nei's equipped armor
// $305DE4: [PSII] [8-bit] Nei's equipped footwear
//          
//          0x00 - No equip
//          0x40 - Sandals
// $305DE5: [PSII] [8-bit] Nei's attach techs
//          
//          bit 0 only - Can learn, none available
// $305DE6: [PSII] Nei's learned support/heal techs
//          
//          bit 0 - Learned Anti
//          bit 1 - Learned Res
//          bit 2 - Learned Sak, Nasak
//          bit 7 - Learned Musik
// $305DE7: [PSII] [8-bit] Number of items in Nei's inventory
// $305DE8: [PSII] [8-bit] First item in Nei's inventory
// $305DE9: [PSII] [8-bit] Second item in Nei's inventory
// $305DEA: [PSII] [8-bit] Third item in Nei's inventory
// $305DEB: [PSII] [8-bit] Fourth item in Nei's inventory
// $305DEC: [PSII] [8-bit] Fifth item in Nei's inventory
// $305DED: [PSII] [8-bit] Sixth item in Nei's inventory
// $305DEE: [PSII] [8-bit] Seventh item in Nei's inventory
// $305DEF: [PSII] [8-bit] Eighth item in Nei's inventory
// $305DF0: [PSII] [8-bit] Nei's ninth inventory item
// $305DF1: [PSII] [8-bit] Nei's tenth inventory item
// $305DF2: [PSII] [8-bit] Nei's eleventh inventory item
// $305DF3: [PSII] [8-bit] Nei's twefth inventory item
// $305DF4: [PSII] [8-bit] Nei's thirteenth inventory item
// $305DF5: [PSII] [8-bit] Nei's fourteenth inventory item
// $305DF6: [PSII] [8-bit] Nei's fifteenth inventory item
// $305DF7: [PSII] [8-bit] Nei's sixteenth inventory item
// $305E00: [PSII] Rudo's status
//          
//          bit 7 - poisoned
// $305E03: [PSII] [8-bit] Rudo's current HP
// $305E05: [PSII] [8-bit] Rudo's max HP
// $305E0B: [PSII] [8-bit] Rudo's level
// $305E20: [PSII] [8-bit] Rudo's equipped headgear
// $305E21: [PSII] [8-bit] Rudo's right hand weapon
// $305E22: [PSII] [8-bit] Rudo's left hand weapon
// $305E23: [PSII] [8-bit] Rudo's equipped armor
// $305E24: [PSII] [8-bit] Rudo's equipped footwear
// $305E26: [PSII] Rudo's learned support techs
//          
//          bit 7 - learned Musik
// $305E27: [PSII] [8-bit] Number of items in Rudo's inventory
// $305E28: [PSII] [8-bit] First item in Rudo's inventory
// $305E29: [PSII] [8-bit] Second item in Rudo's inventory
// $305E2A: [PSII] [8-bit] Third item in Rudo's inventory
// $305E2B: [PSII] [8-bit] Fourth item in Rudo's inventory
// $305E2C: [PSII] [8-bit] Fifth item in Rudo's inventory
// $305E2D: [PSII] [8-bit] Sixth item in Rudo's inventory
// $305E2E: [PSII] [8-bit] Seventh item in Rudo's inventory
// $305E2F: [PSII] [8-bit] Eighth item in Rudo's inventory
// $305E30: [PSII] [8-bit] Ninth item in Rudo's inventory
// $305E31: [PSII] [8-bit] Tenth item in Rudo's inventory
// $305E32: [PSII] [8-bit] Eleventh item in Rudo's inventory
// $305E33: [PSII] [8-bit] Twelfth item in Rudo's inventory
// $305E34: [PSII] [8-bit] Thirteenth item in Rudo's inventory
// $305E35: [PSII] [8-bit] Fourteenth item in Rudo's inventory
// $305E36: [PSII] [8-bit] Fifteenth item in Rudo's inventory
// $305E37: [PSII] [8-bit] Sixteenth item in Rudo's inventory
// $305E40: [PSII] Any;s status
//          
//          bit 7 - poisoned
// $305E43: [PSII] [8-bit] Amy's current HP
// $305E45: [PSII] [8-bit] Amy's max HP
// $305E47: [PSII] [8-bit] Amy's current TP
// $305E49: [PSII] [8-bit] Amy's max TP
// $305E4B: [PSII] [8-bit] Amy's level
// $305E60: [PSII] [8-bit] Amy's equipped headwear
// $305E61: [PSII] [8-bit] Amy's right hand weapon
// $305E62: [PSII] [8-bit] Amy's left hand weapon
// $305E63: [PSII] [8-bit] Amy's equipped armor
// $305E64: [PSII] [8-bit] Amy's equipped footwear
// $305E65: [PSII] [8-bit] Amy's available attack techs
//          
//          bit 0 - Can learn, none available
//          bit 1 - Shu
// $305E66: [PSII] [8-bit] Amy's Heal/Support techs
//          
//          0x01 - Res
//          
//          bit 7 - Learned Musik
// $305E67: [PSII] [8-bit] Amoutn of items in Amy's inventory
// $305E68: [PSII] [8-bit] Amy's inventory slot 1
// $305E69: [PSII] [8-bit] Amy's inventory slot 2
// $305E6A: [PSII] [8-bit] Amy's inventory slot 3
// $305E6B: [PSII] [8-bit] Amy's inventory slot 4
// $305E6C: [PSII] [8-bit] Amy's inventory slot 5
// $305E6D: [PSII] [8-bit] Amy's inventory slot 6
// $305E6E: [PSII] [8-bit] Amy's inventory slot 7
// $305E6F: [PSII] [8-bit] Amy's inventory slot 8
// $305E70: [PSII] [8-bit] Amy's inventory slot 9
// $305E71: [PSII] [8-bit] Amy's inventory slot 10
// $305E72: [PSII] [8-bit] Amy's inventory slot 11
// $305E73: [PSII] [8-bit] Amy's inventory slot 12
// $305E74: [PSII] [8-bit] Amy's inventory slot 13
// $305E75: [PSII] [8-bit] Amy's inventory slot 14
// $305E76: [PSII] [8-bit] Amy's inventory slot 15
// $305E77: [PSII] [8-bit] Amy's inventory slot 16
// $305E84: [Golden Axe] [8-bit] Mode
//          0x00 - Arcade
//          0x02 - The Duel
//          0x04 - Beginner
// $305E8B: [PSII] [8-bit] Hugh's level
// $305EA0: [PSII] [8-bit] Hugh's equipped headgear
// $305EA1: [PSII] [8-bit] Hugh's right hand weapon
// $305EA2: [PSII] [8-bit] Hugh's left hand weapon
// $305EA3: [PSII] [8-bit] Hugh's equipped armor
// $305EA4: [PSII] [8-bit] Hugh's equipped footwear
// $305EA6: [PSII] Hugh's learned support/heal techs
//          
//          bit 7 - learned Musik
// $305EA7: [PSII] [8-bit] Number of items in Hugh's inventory
// $305EA8: [PSII] [8-bit] Hugh's inventory slot 1
// $305EA9: [PSII] [8-bit] Hugh's inventory slot 2
// $305EAA: [PSII] [8-bit] Hugh's inventory slot 3
// $305EAB: [PSII] [8-bit] Hugh's inventory slot 4
// $305EAC: [PSII] [8-bit] Hugh's inventory slot 5
// $305EAD: [PSII] [8-bit] Hugh's inventory slot 6
// $305EAE: [PSII] [8-bit] Hugh's inventory slot 7
//          
//          [Golden Axe] [8-Bit] Last Used Spell
//          Char	Spell _	Mem
//          Tyris	6	0x09
//          Ax	4	0x0b
//          Tyris	5	0x0d
//          Gilius	2	0x0f
//          Tyris	2	0x11
//          Ax	1	0x12
//          Ax	2	0x13
//          Ax	3	0x14
//          Gilius	1	0x17
//          Gilius	3	0x18
//          Tyris	1	0x20
//          Tyris	4	0x23
//          Tyris	3	0x25
// $305EAF: [PSII] [8-bit] Hugh's inventory slot 8
// $305EB0: [PSII] [8-bit] Hugh's inventory slot 9
// $305EB1: [PSII] [8-bit] Hugh's inventory slot 10
// $305EB2: [PSII] [8-bit] Hugh's inventory slot 11
// $305EB3: [PSII] [8-bit] Hugh's inventory slot 12
// $305EB4: [PSII] [8-bit] Hugh's inventory slot 13
// $305EB5: [PSII] [8-bit] Hugh's inventory slot 14
// $305EB6: [PSII] [8-bit] Hugh's inventory slot 15
// $305EB7: [PSII] [8-bit] Hugh's inventory slot 16
// $305EC3: [PSII] [8-bit] Anna's current HP
// $305ECB: [PSII] [8-bit] Anna's level
// $305EE0: [PSII] [8-bit] Anna's equipped headgear
// $305EE1: [PSII] [8-bit] Anna's right hand weapon
// $305EE2: [PSII] [8-bit] Anna's left hand weapon
// $305EE3: [PSII] [8-bit] Anna's equipped armor
// $305EE4: [PSII] [8-bit] Anna's equipped shoes
// $305EE5: [PSII] [8-bit] Anna's attack techs
// $305EE6: [PSII] Anna's learned support/heal techs
//          
//          bit 7 - learned Musik
// $305EE7: [PSII] [8-bit] Number of items in Anna's inventory
// $305EE8: [PSII] [8-bit] Anna's inventory item 1
// $305EE9: [PSII] [8-bit] Anna's inventory item 2
// $305EEA: [PSII] [8-bit] Anna's inventory item 3
// $305EEB: [PSII] [8-bit] Anna's inventory item 4
// $305EEC: [PSII] [8-bit] Anna's inventory item 5
// $305EED: [PSII] [8-bit] Anna's inventory item 6
// $305EEE: [PSII] [8-bit] Anna's inventory item 7
// $305EEF: [PSII] [8-bit] Anna's inventory item 8
// $305EF0: [PSII] [8-bit] Anna's inventory item 9
// $305EF1: [PSII] [8-bit] Anna's inventory item 10
// $305EF2: [PSII] [8-bit] Anna's inventory item 11
// $305EF3: [PSII] [8-bit] Anna's inventory item 12
//          
//          [Golden Axe] [8-bit] In-Game Identifier
//          0x04 - Main Menu
//          0x08 - Character Select
//          0x0c - In-Game - Aracde
//          0x10 - Demo
//          0x18 - Arcade Map Interlude Screen
//          0x20 - Results Screen
//          0x28 - Beginner End Screen
//          0x1c - Bonus Level
//          0x2c - Credits
//          0x30 - Duel Credits
//          0x3c - Duel UI Message Screen Win or Loss
//          0x34 - Battle Announcement Transition
//          0x38 - In Game - The Duel
//          0x40 - Game Over
// $305EF4: [PSII] [8-bit] Anna's inventory item 13
// $305EF5: [PSII] [8-bit] Anna's inventory item 14
// $305EF6: [PSII] [8-bit] Anna's inventory item 15
// $305EF7: [PSII] [8-bit] Anna's inventory item 16
// $305F0B: [PSII] [8-bit] Kain's level
// $305F20: [PSII] [8-bit] Kain's equipped headgear
// $305F21: [PSII] [8-bit] Kain's right hand weapon
// $305F22: [PSII] [8-bit] Kain's left hand weapon
// $305F23: [PSII] [8-bit] Kain's equipped armor
// $305F24: [PSII] [8-bit] Kain's equipped shoes
// $305F25: [PSII] [8-bit] Kain's attach techs
// $305F26: [PSII] Kain's learned support/heal techs
//          
//          bit 7 - learned Musik
// $305F27: [PSII] [8-bit] Number of items in Kain's inventory
// $305F28: [PSII] [8-bit] Kain's inventory item 1
// $305F29: [PSII] [8-bit] Kain's inventory item 2
// $305F2A: [PSII] [8-bit] Kain's inventory item 3
// $305F2B: [PSII] [8-bit] Kain's inventory item 4
// $305F2C: [PSII] [8-bit] Kain's inventory item 5
// $305F2D: [PSII] [8-bit] Kain's inventory item 6
// $305F2E: [PSII] [8-bit] Kain's inventory item 7
// $305F2F: [PSII] [8-bit] Kain's inventory item 8
// $305F30: [PSII] [8-bit] Kain's inventory item 9
//          
//          [Golden Axe] [8-bit] Level Select Activated
// $305F31: [PSII] [8-bit] Kain's inventory item 10
// $305F32: [PSII] [8-bit] Kain's inventory item 11
// $305F33: [PSII] [8-bit] Kain's inventory item 12
// $305F34: [PSII] [8-bit] Kain's inventory item 13
// $305F35: [PSII] [8-bit] Kain's inventory item 14
// $305F36: [PSII] [8-bit] Kain's inventory item 15
// $305F37: [PSII] [8-bit] Kain's inventory item 16
// $305F41: [Golden Axe] [8-Bit] Bool - Currently Casting
// $305F43: [PSII] [8-bit] Shir's current HP
// $305F4B: [PSII] [8-bit] Shir's level
// $305F60: [PSII] Shir's equipped headwear
// $305F65: [PSII] [8-bit] Shir's learned attack techs
// $305F66: [PSII] Shir's learned support/heal techs
//          
//          bit 7 - learned Musik
// $305F67: [PSII] [8-bit] Number of items in Shir's inventory
// $305F68: [PSII] [8-bit] Shir's inventory item 1
// $305F69: [PSII] [8-bit] Shir's inventory item 2
// $305F6A: [PSII] [8-bit] Shir's inventory item 3
// $305F6B: [PSII] [8-bit] Shir's inventory item 4
// $305F6C: [PSII] [8-bit] Shir's inventory item 5
// $305F6D: [PSII] [8-bit] Shir's inventory item 6
// $305F6E: [PSII] [8-bit] Shir's inventory item 7
// $305F6F: [PSII] [8-bit] Shir's inventory item 8
// $305F70: [PSII] [8-bit] Shir's inventory item 9
// $305F71: [PSII] [8-bit] Shir's inventory item 10
// $305F72: [PSII] [8-bit] Shir's inventory item 11
// $305F73: [PSII] [8-bit] Shir's inventory item 12
// $305F74: [PSII] [8-bit] Shir's inventory item 13
// $305F75: [PSII] [8-bit] Shir's inventory item 14
// $305F76: [PSII] [8-bit] Shir's inventory item 15
// $305F77: [PSII] [8-bit] Shir's inventory item 16
// $305F82: [PSII] [16-bit BE] Enemy 1 current HP
// $305F84: [PSII] [16-bit BE] Enemy 1 max HP
//          
//          0x4c04 - Neifirst
// $305F8B: [PSII] [8-bit] Enemy 1 meseta dropped
// $305FC3: [PSII] [8-bit] Enemy 2 current HP
// $305FC5: [PSII] [8-bit] Enemy 2 max HP
// $305FCB: [PSII] [8-bit] Enemy 2 meseta dropped
// $305FED: [Golden Axe] [8-Bit]
//          Number of living enemies on screen
// $306003: [PSII] [8-bit] Enermy 3 current HP
// $306005: [PSII] [8-bit] Enemy 3 max HP
// $30600B: [PSII] [8-bit] Enemy 3 meseta dropped

// $306181: [Wrestle War] [8-bit] Game State
//          --- 00 | Game Launch
//          --- 01 | Sega Screen
//          --- 02 | Sega Screen vanishs
//          --- 03 | Titlescreen
//          --- 05 | Loading
//          --- 06 | Ingame
//          --- 09 | Loading Demo
//          --- 0A | Demo


// $30618E: [Wrestle War] [8-bit] Game Information
//          --- Bit0 | 0 = 1 Player / 1 = 2 Player
// $306193: [Wrestle War] [8-bit] In-Game State
//          --- 01 | World Map
//          --- 02 | Loading
//          --- 03 | Announcement Start
//          --- 04 | Intro
//          --- 05 | Fight
//          --- 07 | Fight lost
//          --- 09 | Game Over
//          --- 0A | Fight over
//          --- 0B | Result Screen
//          --- 0D | Counting
//          --- 0F | Fight won
// $306194: [Wrestle War] [32-bit, Byteswapped] Time left
// $3061A8: [RoS] Boss 4 Animation Timer [8-bit]
//          0x78=Start of terminator animation
// $3061A9: [RoS] Round 3 Boss Death Timer [8-bit]
//          Steps from 0x64 to 0x00 when HP=0 and boss takes a hit
//          Screen fadeout at 0x00
//          =================

// $3061AA: [RoS] Boss HP Stage 1 & 2 [8 bit]
//          Round 6 Spider-Man HP
//          Round 6 Batman HP
//          Round 7 Godzilla HP
// $3061B0: [RoS] Round 4 Boss HP [8-bit]
// $3061B4: [RoS] Round 7 Boss death animation timer [8-bit]
//          0xc8=Start of death animation

// $3061EA: [RoS] Boss HP Round 3 [8-bit]
// $3061F8: [RoS] Round 5 Boss HP Left Core [8-bit]
// $3061FE: [VECTORM] [8-bit] Game - Stage Level
//          --- FF | Title Menu Ending Bonus Stage
//          --- 10 | Sega Logo
//          --- 00 | Day 1
//          --- 01 | Day 2
//          --- 02 | Day 3
//          --- 03 | Day 4
//          --- 04 | Day 5
//          --- 05 | Day 6
//          --- 06 | Day 7
//          --- 07 | Day 8
//          --- 08 | Day 9
//          --- 09 | Day 10
//          --- 0a | Day 11
//          --- 0b | Day 12
//          --- 0c | Day 13
//          --- 0d | Day 14
//          --- 0e | Day 15
//          --- 0f | Day 16
// $306238: [RoS] Round 5 Boss HP Middle Core [8-bit]
// $306278: [RoS] Round 5 Boss HP Right Core [8-bit]
// $306385: [PSII] [8-bit] ID of last party member to join
// $306389: [PSII] [8-bit] FIrst Party member
//          
//          0x00 - Rolf
//          0x01 - Nei
//          0x02 - Rudo
//          0x03 - Amy
//          0x04 - Hugh
//          0x05 - Anna
//          0x06 - Kain
//          0x07 - Shir
// $30638B: [PSII] [8-bit] Second party member
// $30638D: [PSII] [8-bit] Third party member
// $30638F: [PSII] [8-bit] Fouth party member
// $3063A0: [PSII] [32-bit-BE] Meseta in possession
// $3063BB: [Shining Force]
//          [8-Bit] Enemy 1 - Max HP
// $3063BD: [Shining Force]
//          [8-Bit] Enemy 1 - Current HP
// $3063C1: [PSII] [8-bit] Location ID
//          
//          0x00 - Mota world map
//          0x01 - Skure B2F
//          0x02 - Skure B1F
//          0x03 - Skure 1F/Dezo World Map
//          0x04 - Paseo
//          0x05 - Arima
//          0x06 - Oputa
//          0x07 - Zema
//          0x08 - Kueri
//          0x09 - Piata
//          0x0a - Akuba
//          0x0b - Zosa
//          0x0c - Ryuon
//          0x0d - Paseo Bridge
//          0x0e - North Bridge
//          0x0f - Western Bridge
//          0x10 - Lutz's Room
//          0x11 - Esper Mansion
//          0x12 - Uzo Island
//          0x13 - Climatrol (Underwater)
//          0x14 - Crevice B2F
//          0x15 - Crevice B1F
//          0x16 - Crevice 1F
//          0x17 - Shure 1F
//          0x18 - Shure 2F
//          0x19 - Shure 3F
//          0x1a - Shure 4F
//          0x1b - Nido 1F
//          0x1c - Nido 2F
//          0x1d - Nido 3F
//          0x1e - Roron B3F
//          0x1f - Roron B3F
//          0x21 - Roron B2F
//          0x22 - Roron B1F
//          0x23 - Roron 1F
//          0x24 - Yellow Dam 1F
//          0x25 - Yellow Dam 2F
//          0x26 - Yellow Dam 3F
//          0x27 - Yellow Dam 4F
//          0x28 - Red Dam B1
//          0x29 - Red Dam 1F
//          0x2a - Red Dam 2F
//          0x2b - Blue Dam 1F
//          0x2c - Blue Dam 2F
//          0x2d - Blue Dam 3F
//          0x2e - Blue Dam 4F
//          0x2f - Blue Dam 5F
//          0x30 - Green Dam 1F
//          0x31 - Green Dam 2F
//          0x32 - Biosystems Lab B1F
//          0x33 - Biosystems Lab 1F
//          0x34 - Biosystems Lab 2F
//          0x35 - Biosystems Lab 3F
//          0x36 - Climatrol 1F
//          0x37 - Climatrol 2F
//          0x38 - Climatrol 3F
//          0x39 - Climatrol 4F
//          0x3a - Climatrol 5F
//          0x3b - Climatrol 6F
//          0x3c - Climatrol 7F
//          0x3d - Climatrol 8F
//          0x3e - Control Tower 1F
//          0x3f - Control Tower 2F
//          0x40 - Zema Bridge
//          0x41 - Gaira
//          0x43 - Naval 1F
//          0x44 - Naval 2F
//          0x45 - Naval 3F
//          0x46 - Naval 4F
//          0x47 - Naval 5F
//          0x48 - Menobe 1F
//          0x49 - Menobe 2F
//          0x4a - Menobe 3F
//          0x4b - Menobe 4F
//          0x4c - Ikuto B6F
//          0x4d - Ikuto B5F
//          0x4e - Ikuto B4F
//          0x4f - Ikuto B3F
//          0x50 - Ikuto B2F
//          0x51 - kuto B1F
//          0x52 - Ikuto 1F
//          0x53 - Guaron 1F
//          0x54 - Guaron 2F
//          0x55 - Guaron 3F
//          0x56 - Guaron 5F
//          0x57 - Guaron 7F
//          0x58 - Guaron 4F
//          0x59 - Guaron 6F
//          0x5a - Guaron 8F
//          0x5b - Guaron 9F
//          0x5c - Guaron 10F
//          0x5d - Guaron 12F
//          0x5e - Guaron 14F
//          0x5f - Guaron 11F
//          0x60 - Guaron 13F
//          0x61 - Guaron 15F
//          0x62 - Guaron 16F
//          0x63 - Noah 1F
// $3063D3: [PSII] [8-bit]
//          
//          0x00 - On foot
//          0x01 - On Jet Scooter
// $3063E3: [Shining Force]
//          [8-Bit] Enemy 2 - Max HP
// $3063E5: [Shining Force]
//          [8-Bit] Enemy 2 - Current HP
// $30640B: [Shining Force]
//          [8-Bit] Enemy 3 - Max HP
// $30640D: [Shining Force]
//          [8-Bit] Enemy 3 - Current HP
// $306433: [Shining Force]
//          [8-Bit] Enemy 4 - Max HP
// $306435: [Shining Force]
//          [8-Bit] Enemy 4 - Current HP
// $30645B: [Shining Force]
//          [8-Bit] Enemy 5 - Max HP
// $30645D: [Shining Force]
//          [8-Bit] Enemy 5 - Current HP
// $306483: [Shining Force]
//          [8-Bit] Enemy 6 - Max HP
// $306485: [Shining Force]
//          [8-Bit] Enemy 6 - Current HP
// $306495: [PSII] [8-bit]
//          
//          bit 0 - North Bridge is now passable
// $306496: [PSII] Jet Scooter
//          
//          bit 1 - Obtained
// $3064A0: [PSII]
//          
//          bit 0 - Mrura Leaf obtained
// $3064A2: [PSII]
//          
//          bit 0 - Recorder obtained
// $3064A3: [PSII]
//          
//          bit 0 - Green Card (Control Tower)
// $3064A4: [PSII]
//          
//          bit 0 - Blue Card (Control Tower)
// $3064A5: [PSII]
//          
//          bit 0 - Yellow Card (Control Tower)
// $3064A6: [PSII]
//          
//          bit 0 - Red Card (Control Tower)
// $3064A7: [PSII]
//          
//          bit 0 - Teim found
// $3064A9: [PSII] [8-bit]
//          
//          bit 0 - Biosystems Lab door blown up
// $3064AB: [Shining Force]
//          [8-Bit] Enemy 7 - Max HP
// $3064AD: [PSII]
//          
//          bit 0 - Green Dam opened
//          
//          [Shining Force]
//          [8-Bit] Enemy 7 - Current HP
// $3064AF: [PSII]
//          
//          bit 0 - Blue Dam opened
// $3064B1: [PSII]
//          
//          bit 0 - Yellow Dam opened
// $3064B3: [PSII]
//          
//          bit 0 - Red Damn opened
// $3064BF: [PSII]
//          
//          bit 0 - Reached satellite controls in Gaira
// $3064C3: [PSII] Lutz events
//          
//          0x00 - Not interacted
//          0x01 - Talked to one guard
//          0x02 - Talked to both guards
//          0x03 - Talked to Lutz
// $3064C4: [PSII]
//          
//          bit 0 - Bring Lutz all Nei items
// $3064C5: [PSII]
//          
//          bit 0 - Dark Force battle start
// $3064C7: [PSII]
//          
//          bit 0 - Mother Brain battle start
// $3064D3: [Shining Force]
//          [8-Bit] Enemy 8 - Max HP
// $3064D5: [Shining Force]
//          [8-Bit] Enemy 8 - Current HP
// $3064FB: [Shining Force]
//          [8-Bit] Enemy 9 - Max HP
// $3064FD: [Shining Force]
//          [8-Bit] Enemy 9 - Current HP
// $306501: [PSII] treasure
//          
//          bit 0 - 15000 meseta (Skure B2F)
// $306502: [PSII] Treasure
//          
//          bit 0 - Mogic Cap (Skure B2F)
// $306503: [PSII] Treasure
//          
//          bit 0 - 18000 meseta (Skure B2F)
// $306504: [PSII] Treasure
//          
//          bit = Magic Cap (Skure B2F)
// $306505: [PSII] Treasure
//          
//          bit 0 - 7800 meseta (Skure B2F)
// $306506: [PSII] Treasure
//          
//          bit 0 - Laconchest (Skure B2F)
// $306507: [PSII] Treasure
//          
//          bit 0 - 5600 meseta (Skure B2F)
// $306508: [PSII] treasure
//          
//          bit 0 - Gardaboots (Skure B1F)
// $306509: [PSII] Treasure
//          
//          bit 0 - 8600 meseta (Skure B1F)
// $30650A: [PSII] Treasure
//          
//          bit 0 - Magic Cap (Skure B1F)
// $30650B: [PSII] Treasure
//          
//          bit 0 - 12000 meseta (Skure B1F)
// $30650C: [PSII] Treasure
//          
//          bit 0 - 6400 meseta (Skure B1F)
// $30650E: [PSII] Treasure
//          
//          bit 0 - Prism (Esper Mansion)
// $30650F: [PSII] Treasure
//          
//          bit 0 - Neisword (Esper Mansion)
// $306510: [PSII] Treasure
//          
//          bit 0 - Monomate (Shure)
//          bit 7 - locked
// $306511: [PSII] Treasure
//          
//          bit 1 - 150 meseta (Shure)
//          bit 7 - locked
// $306512: [PSII] Treasure
//          
//          bit 0 - Dynamite (Shure)
//          bit 7 - locked
// $306513: [PSII] Treasure
//          
//          bit 0 - Dynamite (Shure)
//          bit 7 - locked
// $306514: [PSII] Treasure
//          
//          bit 0 - 40 meseta (Shure)
// $306515: [PSII] Treasure
//          
//          bit 0 - Dimate (Shure)
// $306516: [PSII] Treasure
//          
//          bit 0 - Headgear (Shure)
// $306517: [PSII] Treasure
//          
//          bit 0 - 200 meseta (Shure)
// $306518: [PSII] Treasure
//          
//          bit 0 - Sil Ribbon (Shure)
// $306519: [PSII] Treasure
//          
//          bit 0 - 20 meseta (Nido 2F)
// $30651A: [PSII] Treasure
//          
//          bit 0 - 100 meseta (Nido 2F)
// $30651B: [PSII] Treasure
//          f
//          bit 0 - Dimate (Nido 2F)
// $30651C: [PSII] Treasure
//          
//          bit 0 - Trimate (Nido 3F)
// $30651D: [PSII] Treasure
//          
//          bit 0 - 60 meseta (Nido 3F)
// $30651E: [PSII] Treasure
//          
//          bit 0 - Garbage (Roron B3F)
// $30651F: [PSII] Treasure
//          
//          bit 0 - Garbage (Roron B3F)
// $306520: [PSII] Treasure
//          
//          bit 0 - Ceram Bar (Roron B2F)
// $306521: [PSII] Treasure
//          
//          bit 0 - Garbage (Roron B2F)
// $306522: [PSII] Treasure
//          
//          bit 0 - Cannon (Roron B1F)
// $306523: [PSII] Treasure
//          
//          bit 0 - Garbage (Roron B1F)
//          
//          [Shining Force]
//          [8-Bit] Enemy 10 - Max HP
// $306524: [PSII] Treasure
//          
//          bit 0 - Escapipe (Yellow Dam 2F)
// $306525: [PSII] Treasure
//          
//          Bit 0 - Crystanish (Yellow Dam 3F)
//          
//          [Shining Force]
//          [8-Bit] Enemy 10 - Current HP
// $306526: [PSII] Treasure
//          
//          bit 0 - Crystcape (Yellow Dam 3F)
// $306527: [PSII] treasure
//          
//          bit 0 - Crystchest (Yellow Dam 3F)
// $306528: [PSII] Treasure
//          
//          bit 0 - Amber Robe (Yellow Dam 4F)
// $306529: [PSII] Treasure
//          
//          bit 0 - Sword of Ang (Red Damn B1)
// $30652A: [PSII] Treasure
//          
//          bit 0 - Fire Slshr (Red Dam)
// $30652B: [PSII] Treasure
//          
//          bit 0 - Fire Staff (Red Dam 2F)
// $30652C: [PSII] Treasure
//          
//          bit 0 - Antidote (Blue Dam 2F)
// $30652D: [PSII] Treasure
//          
//          bit 0 - Crescegear (Blue Dam 2F)
// $30652E: [PSII] Treasure
//          
//          bit 0 - Snow Crown (Blue Dam 3F)
// $30652F: [PSII] Treasure
//          
//          bit 0 - Star Mist (Blue Dam 3F)
// $306530: [PSII] Treasure
//          
//          bit 0 - Wind Scarf (Blue Dam 3F)
// $306531: [PSII] treasure
//          
//          bit 0 - Colorscarf (Blue Dam 4F)
// $306532: [PSII] Treasure
//          
//          bit 0 - Trimate (Blue Dam 4F)
// $306533: [PSII] treasure
//          
//          bit 0 - Storm Gear (Blue Dam 5F)
// $306534: [PSII] Treasure
//          
//          bit 0 - Star Mist (Green Dam 1F)
// $306535: [PSII] Treasure
//          
//          bit 0 - Aegis (Green Dam 1F)
// $306536: [PSII] Treasure
//          
//          bit 0 - Telepipe (Green Dam 1F)
// $306537: [PSII] Treasure
//          
//          bit 0 - GR Sleeves (Green Dam 2F)
// $306538: [PSII] Treasure
//          
//          bit 0 - Truth Slvs (Green Dam 2F)
// $306539: [PSII] Treasure
//          
//          bit 0 - Trimate (Biosystems B1F)
// $30653A: [PSII] Treasure
//          
//          bit 0 - Antidote (Biosystems B1F)
// $30653B: [PSII] Treasure
//          
//          bit 0 - Poisonshot (Biosystems B1F)
// $30653C: [PSII] Treasure
//          
//          bit 0 - Antidote (Biosystems 2F)
// $30653D: [PSII] Treasure
//          
//          bit 0 - Scapel (Biosystems 2F)
// $30653E: [PSII] Treasure
//          
//          bit 0 - Star Mist (Biosystems 2F)
// $30653F: [PSII] Treasure
//          
//          bit 0 - Dynamite (Biosystems 3F)
// $306540: [PSII] Treasure
//          
//          bit 0 - Jwl Ribbon (Climatrol 3F)
// $306541: [PSII] Treasure
//          
//          bit 0 - Fibervest (Climatrol 4F)
// $306542: [PSII] Treasure
//          
//          bit 0 - Knifeboots (Climatrol 5F)
// $306543: [PSII] Treasure
//          
//          bit 0 - Sil Ribbon (Climatrol 5F)
// $306544: [PSII] Treasure
//          
//          bit 0 - Sandals (Climatrol 7F)
// $306545: [PSII] Treasure
//          
//          bit 0 - Lasr Bar (Climatrol 7F)
// $306546: [PSII] Treasure
//          
//          bit 0 - Ceram Bar (Climatrol 7F)
// $306547: [PSII] Treasure
//          
//          bit 0 - Nei Shield (Naval 2F)
// $306548: [PSII] Treasure
//          
//          bit 0 - Nei Emel (Naval 2F)
// $306549: [PSII] Treasure
//          
//          bit 0 - Truth Slvs (Naval 2F)
// $30654A: [PSII] Treasure
//          
//          bit 0 - Trimate (Naval 2F)
// $30654B: [PSII] treasure
//          
//          bit 0 - Mir Emel (Naval 2F)
//          
//          
//          [Shining Force]
//          [8-Bit] Enemy 11 - Max HP
// $30654C: [PSII] treasure
//          
//          bit 0 - Lacon Emel (Naval 2F)
// $30654D: [PSII] treasure
//          
//          bit 0 - Gr Sleeves (Naval 2F)
//          
//          [Shining Force]
//          [8-Bit] Enemy 11 - Current HP
// $30654E: [PSII] Treasure
//          
//          bit 0 - Neicrown (Menobe 1F)
// $30654F: [PSII] Treasure
//          
//          bit 0 - Storm Gear (Menobe 2F)
// $306550: [PSII] Treasure
//          
//          bit 0 - Neimet (Menobe 3F)
// $306551: [PSII] Treasure
//          
//          bit 0 - Colorscarf (Menobe 3F)
// $306552: [PSII] Treasure
//          
//          bit 0 - Neislasher (Ikuto B5F)
// $306553: [PSII] Treasure
//          
//          bit 0 - Neishot (Ikuto B5F)
// $306554: [PSII] Treasure
//          
//          bit 0 - Fire Staff (Ikuto B4F)
// $306555: [PSII] Treasure
//          
//          bit 0 - Lacn Mace (Ikuto B4F)
// $306556: [PSII] Treasure
//          
//          bit 0 - Pls Cannon (Ikuto B3F)
// $306557: [PSII] Treasure
//          
//          bit 0 - Lac Dagger (Ikuto B2F)
// $306558: [PSII] Treasure
//          
//          bit 0 - Amber Robe (Guaron 1F)
// $306559: [PSII] Treasure
//          
//          bit 0 - Laconnish (Guaron 1F)
// $30655A: [PSII] Treasure
//          
//          bit 0 - Crystchest (Guaron 2F)
// $30655B: [PSII] Treasure
//          
//          bit 0 - Neicape (Guaron 8F)
// $30655C: [PSII] Treasure
//          
//          bit 0 - Crystcape (Guaron 9F)
// $30655D: [PSII] Treasure
//          
//          bit 0 - Neiarmor (Guaron 16F)
// $306573: [Shining Force]
//          [8-Bit] Enemy 12 - Max HP
// $306575: [Shining Force]
//          [8-Bit] Enemy 12 - Current HP
// $30658F: [RoS] Round 8 Boss Status [8-bit]
//          0x01=Rising into place
//          0x02=Waiting for fight to start
// $30659B: [Shining Force]
//          [8-Bit] Enemy 13 - Max HP
// $30659D: [Shining Force]
//          [8-Bit] Enemy 13 - Current HP

// $3065B0: [RoS] Round 8 Boss animation timer [8-bit]
//          0xff=Start of explosion when boss HP=0

// $3065B8: [RoS] Round 8 Boss HP [8-bit]
// $3065C3: [Shining Force]
//          [8-Bit] Enemy 14 - Max HP
// $3065C5: [Shining Force]
//          [8-Bit] Enemy 14 - Current HP

// $3065EB: [Shining Force]
//          [8-Bit] Enemy 15 - Max HP
// $3065ED: [Shining Force]
//          [8-Bit] Enemy 15 - Current HP

// $306C90: [Altered Beast] [8-bit] Current HP
//          0c = 3
// $306D80: [PSII] Current game state
//          
//          0x82 - On world map
//          0x84 - In town
//          0x8f - In bridge
//          0x92 - In battle
//          0x94 - Battle won
//          0x96 - Results
// $306DA2: [Sonic 1] [8-bit]
//          Player State
//          (b)0: Facing Left
//          (b)1: In Air
//          (b)2: In Ball
//          (b)3: On Object
//          (b)4: Jumped After Rolling
//          (b)5: Pushing
//          (b)6: Underwater
// $306DB0: [Wrestle War] [16-bit, Byteswapped] Player 1 - X-Coordinate
// $306DB8: [Wrestle War] [16-bit, Byteswapped] Player 1 - Y-Coordinate
// $306DC3: [Golden Axe] [8-Bit] Attack Used
//          0x0b = Jumping Attack
// $306DC7: [Wrestle War] [8-bit] Player 1 - Information
//          --- Bit0 | Attacking
//          --- Bit1 | Getting Hit
//          --- Bit3 | Special Attack
//          --- Bit5 | Resting
// $306DCC: [Wrestle War] [8-bit] Player 1 - Action
//          --- 00 | Punching
//          --- 01 | Kicking
//          --- 02 | Grabbing
//          --- 05 | Resting
//          --- 0A | Dropkick
//          --- 16 | Kick on Ground
// $306E30: [Wrestle War] [16-bit, Byteswapped] Player 2 - X-Coordinate
// $306E38: [Wrestle War] [16-bit, Byteswapped] Player 2 - Y-Coordinate
// $306E47: [Wrestle War] [8-bit] Player 2 - Information
//          --- Bit0 | Attacking
//          --- Bit1 | Getting Hit
//          --- Bit5 | Resting
// $306E4C: [Wrestle War] [8-bit] Player 2 - Action
// $307A2C: [VECTORM] [8-Bit] Debug Cheat - HitBox [ABACABB]
// $307D87: [RoS] Magic being used [1 bit]
//          0x01=Magic In Use
// $307E71: [RoS] Height of ceiling during 8-3 [8-bit]
//          0xe0 at start of boss fight, steps down
//          0x07=Bottom (Naoko killed, bad ending)
// $307E81: [RoS] Game Status [8-bit]
//          0x00=Start Menu
//          0x01=Title Screen
//          0x02=Game In Progress
//          0x03=Round Start
//          0x04=Stage/Round Clear
//          0x06=Options Menu
//          0x08=Ending
//          0x09=Demo/Story
// $307E83: [RoS] Player control status? [8-bit]
//          0x00=Player in control
//          0x01=Pause
//          0x02=Round Start
//          0x05=Only during Round Clear (not between stages)
//          0x08=Player does not have control
// $307E88: [RoS] Player input [8-bit]
//          Bit 7: Start
//          Bit 6: Magic
//          Bit 5: Jump
//          Bit 4: Attack
//          Bit 3: Right
//          Bit 2: Left
//          Bit 1: Up
//          Bit 0: Down
// $307E93: [RoS] Player Magic Select [8-bit]
//          0x00=Ikazuchi (lightning shield)
//          0x01=Kariu (Fire dragon)
//          0x02=Fushin (High jump)
//          0x03=Mijin (Self destruct)
// $307EBB: [RoS] Player current HP [8-bit]
// $307EBE: [RoS] Current Number of Shuriken [16-bit BE]
// $307EC1: [RoS] Player No of Lives [8-bit]
//          0x00=Game Over
// $307EC5: [RoS] Player No. of Magic remaining [8 bits]
// $307EC7: [RoS] Ikazuchi jutsu shield: Hits remaining [8-bit]
// $307ED5: [RoS] Round 8 Boss Wall Pause Timer [8-bit]
//          Goes to 0xb4 when switches on walls are hit
//          Steps back to 0x00 then ceiling starts to drop again
// $30803E: [VECTORM] [8-Bit] Sega Logo - X Times fired shots
// $30803F: [VECTORM] [8-Bit] Sega Logo - X Times head bumped logo
// $308040: [VECTORM] [8-Bit] Sega Logo - Get Ready - Startup
// $308069: [VECTORM] [8-Bit] Sega Logo - Total Letters Caught
// $30806B: [VECTORM] [8-Bit] Sega Logo - Total Letters Fallen
// $3080D8: [VECTORM] [16-bit] Game - X Coordinate Vectorman
// $3080DA: [VECTORM] [16-bit] Game - Y Coordinate Vectorman
// $3080E2: [VECTORM] [16-bit] Game - Player State
//          
//          --- 3020 | Normal
//          --- 1e20 | Crouching
//          --- 2a20-2220 | Jumping
//          --- 0810 | Bomb
//          --- 2620 | Drill
//          --- 0250 | Fish
//          --- 1010 | Spider
//          --- 2040 | Buggy
//          --- 0909 | Cheat
// $308114: [VECTORM] [16-bit] Game - Player Transformation
//          --- 9ee7 | Jet
//          --- b2e3 | Bomb
//          --- 44db | Drill
//          --- b0ea | Fish
//          --- 5af0 | Parachute
//          --- 6ef3 | Buggy
//          --- e2ee | Missile
// $30858F: [VECTORM] [8-bit] Options - Infomation
//          --- 01 | Max Health
//          --- 02 | Full Health
//          --- 03 | Health Point
//          --- 04 | 1Up
//          --- 05 | Drill Morph
//          --- 06 | Fish Morph
//          --- 07 | Missile Morph
//          --- 08 | Buggy Morph
//          --- 09 | Bomb Morph
//          --- 0a | Jet Morph
//          --- 0b | Parachute Morph
//          --- 0c | Rapid Fire Gun
//          --- 0d | Bolo Gun
//          --- 0e | Wave Gun
//          --- 0f | Nucleus Shield
//          --- 10 | Orb
//          --- 11 | 2X Multiplier
//          --- 12 | 3X Multiplier
//          --- 13 | 5X Multiplier
//          --- 14 | 10X Multiplier
//          --- 15 | Photon
//          --- 16 | Television
//          --- 17 | Shield Controller
//          --- 18 | Receiver
// $3085E5: [VECTORM] [8-bit] Game - Score
// $3085E6: [VECTORM] [8-bit] Game - Score
//          Overflows to 0x3085e5
// $3085E7: [VECTORM] [8-bit] Game - Score
//          Overflows to 0x3085e6
// $3085F5: [VECTORM] [8-bit] Game - Photons Collected
// $3085F7: [VECTORM] [8-bit] Game - Photons Total
// $3085F9: [VECTORM] [8-bit] Game - Orbs
// $3085FB: [VECTORM] [8-bit] Game - Max Orbs
// $3085FD: [VECTORM] [8-bit] Game - Lives
// $308601: [VECTORM] [8-bit] Game - Multiplyer
//          --- 00 | Default
//          --- 01 | x2
//          --- 02 | x3
//          --- 05 | x5
// $308602: [VECTORM] [16-bit] Game - Multiplyer - Time
// $308604: [VECTORM] [16-bit] Game - Power Up Icon
//          --- FFFF | Flashes when almost out
// $308605: [VECTORM] [8-bit] Game - Weapon Icon
//          --- 0 | Default
//          --- 1 | rapidfire
//          --- 2 | wave (spreadshot)
//          --- 3 | bolo
//          --- 4 | orb
//          --- 5 | shield
// $308607: [VECTORM] [8-bit] Game - Power Up QTY
// $30860C: [VECTORM] [8-bit] Game - TVs Destroyed
// $30860D: [VECTORM] [8-bit] Game - TVs Total
// $30860E: [VECTORM] [8-bit] Game - Shoot Checker
//          Turns to FF if you shoot in a level.
//          Without Shooting will grant you a 50k score bonus
// $30860F: [VECTORM] [0-bit] Demo
//          --- 0-bit = 1 | Demo Active
// $308610: [VECTORM] [8-bit] Game - Time - Minute
// $308611: [VECTORM] [8-bit] Game - Time - Second
// $308612: [VECTORM] [8-bit] Game - Time - Milisecond
// $308614: [VECTORM] [8-bit] Game - Camera Scroll Left
// $308615: [VECTORM] [8-bit] Game - Camera Scroll Right
// $308618: [VECTORM] [8-bit] Game - Camera Scroll Up
// $308619: [VECTORM] [8-bit] Game - Camera Scroll Down
// $308628: [VECTORM] [8-Bit] Cheat Input - [CALLACAB]
//          Turns to 0 after final input
// $30862B: [VECTORM] [8-Bit] Cheat Input - [ABRACADABRA]
//          Turns to 0 after final input
// $308635: [VECTORM] [8-Bit] Cheat - [DRACULA]
//          Turns to FF after last input
//          Causes slowdown when hit.
// $308636: [VECTORM] [8-Bit] Cheat - [ABRACADABRA]
//          Turns to FF after final input
//          Also [DRACULA] changes this to FF
//          Also [CALLACAB] changes this to FF
// $30867C: [VECTORM] [16-bit] Game - Ammout to add during a Level End
//          
//          --- 401f | Level Bonus
//          --- 204e | No Photon Collected Bonus
//          --- 983a | All Photons Collected
//          --- 983a | All TVs Destroyed
//          --- 50c3 | No Shooting Bonus
//          --- 60ea | Ending Bonus
// $308C8D: STRAGE2 - Player 1 Active Character
//          0x00: Max
//          0x02: Axel
//          0x04: Blaze
//          0x06: Skate
//          For Single Character Playthroughs, compare this with 0x3099d0 through 0x3099d3 to see if a different character was chosen.
// $308CB2: STRAGE2 - Player 1 Has Weapon?
//          0x01 if equipped.
// $308CB6: STRAGE2 - Player 1 Weapon Type
//          0xf8: Knife
//          0xf9: Lead Pipe
//          The sword or grenade value hasn't been identified, but for most cheevo purposes, it doesn't matter which type. Just have one equipped.
// $308CCF: STRAGE2 - Player 1 KO Counter
//          This increments one per enemy knocked out. This value resets upon losing a life or changing stages. Use carefully.
// $308CF3: STRAGE2 - High Score Entry - Letter Index
//          This is used for all three letters.
// $308D01: STRAGE2 - Player 1 Health
//          Max Health is 0x68. Lose a life on 0x00. When Health is 0x00 and Life Count is 0x00, the game is over.
// $308D03: STRAGE2 - Player 1 Life Counter (0 Counts)
// $308D16: STRAGE2 - BCD Score XX0000 [0-99]
// $308D17: STRAGE2 - BCD Score 00XX00 [0-99]
// $308D18: STRAGE2 - BCD Score 0000XX [0-99]
// $308D1A: STRAGE2 - Combo Timer?
//          On landing a hit on someone, set to 0xb4. When it hits 0x00, nothing special appears to happen.
// $308D25: STRAGE2 - Number of Continues
//          You start with three continues. Every time your life count goes to 0, subtract one. If you would normally hit 0 via subtraction, set to 0xff and the game is over.
//          When not playing the game, leave at 0.
// $308D35: STRAGE2 - Power Rank of Chosen Character?
// $308D38: STRAGE2 - High Score Entry - Letters [3 bytes BE]
//          This is more for fun.
// $308D9B: [Sonic 1] [8-bit]
//          Music ID (1)
//          (h)00: None
//          (h)12: Credits Theme
//          (h)15: Spring Yard Zone
//          (h)16: Final Zone
//          (h)17: Labyrinth Zone
//          (h)19: Continue?
//          (h)4D: Scrap Brain Zone
//          (h)52: Act Passed
//          (h)5D: Title Screen
//          (h)63: Green Hill Zone
//          (h)75: Marble Zone
//          (h)84: Extra Life
//          (h)98: Special Stage
//          (h)B0: Invincibility Theme
//          (h)BB: Game Over
//          (h)C7: Boss Theme
//          (h)C9: Star Light Zone
//          (h)DE: Ending Sequence
// $308DA9: [Sonic 1] [8-bit]
//          Music ID (2)
//          (h)00: None
//          (h)05: Extra Life
//          (h)07: Green Hill Zone
//          (h)08: Scrap Brain Zone
//          (h)15: Spring Yard Zone
//          (h)26: Star Light Zone
//          (h)44: Continue?
//          (h)45: Ending Sequence
//          (h)4D: Game Over
//          (h)51: Extra Continue
//          (h)72: Labyrinth Zone
//          (h)73: Marble Zone
//          (h)DC: Boss Theme
//          (h)FF: Invincibility Theme
// $308E01: STRAGE2 - Player 2 Health
// $308E03: STRAGE2 - Player 2 Life Counter (0 Counts)
//          This is set to 0xff if not in use.
// $308F01: STRAGE2 - Boss (Type 1) Health
// $308F03: STRAGE2 - Boss (Type 1) Health Bars Remaining
//          When this hits 0, clear the health to win.
// $309380: [Sonic 1] [8-bit]
//          Current Mode
//          (h)00: SEGA Screen
//          (h)04: Title Screen
//          (h)08: Demo
//          (h)0C: Normal Level
//          (h)10: Special Stage
//          (h)14: Continue Screen
//          (h)18: Ending Sequence
//          (h)1C: Credits
//          (h)88: Pre-Level (Demo)
//          (h)8C: Pre-Level
// $309382: [Sonic 1] [8-bit]
//          Held Button (Active Gameplay)
//          (b)0: Up
//          (b)1: Down
//          (b)2: Left
//          (b)3: Right
//          (b)4: B
//          (b)5: C
//          (b)6: A
//          (b)7: Start
// $309383: [Sonic 1] [8-bit]
//          Pressed Button (Active Gameplay)
//          (b)0: Up
//          (b)1: Down
//          (b)2: Left
//          (b)3: Right
//          (b)4: B
//          (b)5: C
//          (b)6: A
//          (b)7: Start
// $309384: [Sonic 1] [8-bit]
//          Held Button
//          (b)0: Up
//          (b)1: Down
//          (b)2: Left
//          (b)3: Right
//          (b)4: B
//          (b)5: C
//          (b)6: A
//          (b)7: Start
// $3093B2: [Sonic 1] [16-bit BE]
//          Frame Timer
//          (d)0: Default
// $3093BB: [Sonic 1] [8-bit]
//          Paused
//          (h)00: No
//          (h)01: Yes
// $3093DB: [VECTORM] [8-bit] Game - Weapon
//          --- 01 | Rapidfire
//          --- 02 | Wave (Spreadshot)
//          --- 03 | Bolo
//          --- 04 | Orb
//          --- 05 | Shield
// $3094C1: [PSII] [8-bit] Changes when steps are taken, likely an id for a sprite
//          
//          Starts at 0x00 then goes to 0x40, 0x80, 0xc0 and then back to 0x00.  Does this change in 16 steps so used as a step counter it would need to be divided by 16
// $309527: [Sonic 1] [8-bit]
//          Boss State
//          (h)00: Undefeated
//          (h)01: Defeated
//          (h)02: Capsule Destroyed
// $309551: [Sonic 1] [8-bit]
//          Combo Counter (x2)
//          (h)00: Default
// $309983: STRAGE2 - Game State
//          0x00: Sega Logo
//          0x04: Press Start / Title Screen
//          0x08: Demo
//          0x0c: Main Menu
//          0x10: Options
//          0x14: In-Game
//          0x18: Character Selection
//          0x1c: Ending
//          0x24: Intro Cards
//          0x28: Credits / High Score Table
// $309984: STRAGE2 - Decrementing Timer [16-bit BE]
//          For game states that move on without button presses, this gets set to an arbitrary value and counts down. On 0x0000, move to the next game state.
// $309988: STRAGE2 - Player 1 Buttons Held This Frame
//          bit0: Up
//          bit1: Down
//          bit2: Left
//          bit3: Right
//          bit4: B
//          bit5: C
//          bit6: A
//          bit7: Start
// $309989: STRAGE2 - Player 1 Buttons Pressed This Frame
//          bit0: Up
//          bit1: Down
//          bit2: Left
//          bit3: Right
//          bit4: B
//          bit5: C
//          bit6: A
//          bit7: Start
// $30998A: STRAGE2 - Player 2 Buttons Held This Frame
//          bit0: Up
//          bit1: Down
//          bit2: Left
//          bit3: Right
//          bit4: B
//          bit5: C
//          bit6: A
//          bit7: Start
// $30998B: STRAGE2 - Player 2 Buttons Pressed This Frame
//          bit0: Up
//          bit1: Down
//          bit2: Left
//          bit3: Right
//          bit4: B
//          bit5: C
//          bit6: A
//          bit7: Start
// $309999: STRAGE2 - Main Menu Selection
//          0x00: 1 Player
//          0x01: 2 Players
//          0x02: Duel Mode
//          0x03: Options
// $3099BC: STRAGE2 - BCD Time Left
//          When this and 0x3099bc are 0x00, you lose a life.
// $3099BD: STRAGE2 - BCD Frame Counter for Timer
//          When this hits 0x00, subtract one from 0x3099bc. If both are 0x00, lose a life.
// $3099BF: STRAGE2 - Is Paused?
//          0x00: Not Paused
//          0xFF: Paused
// $3099C3: STRAGE2 - Stage ID
//          0x00: Round 1
//          0x02: Round 2
//          0x04: Round 3
//          0x06: Round 4
//          0x08: Round 5
//          0x0a: Round 6
//          0x0c: Round 7
//          0x0e: Round 8
//          0x10: Ending
// $3099C5: STRAGE2 - Sub Stage ID
// $3099D0: STRAGE2 - Selecting Max?
//          This blinks between 0x00 and 0xFF when deciding, and stays on 0xFF when locked in for the first continue.
// $3099D1: STRAGE2 - Selecting Axel?
//          This blinks between 0x00 and 0xFF when deciding, and stays on 0xFF when locked in for the first continue.
// $3099D2: STRAGE2 - Selecting Blaze?
//          This blinks between 0x00 and 0xFF when deciding, and stays on 0xFF when locked in for the first continue.
// $3099D3: STRAGE2 - Selecting Skate?
//          This blinks between 0x00 and 0xFF when deciding, and stays on 0xFF when locked in for the first continue.
// $309A08: STRAGE2 - BCD Clear Bonus Score [16-bit BE]
//          This will tick down until it hits zero, then move on to the next score.
// $309A0C: STRAGE2 - BCD Time Bonus Score [16-bit BE]
//          This will tick down until it hits zero, then move on to the next score.
// $309A10: STRAGE2 - BCD Level Bonus Score [16-bit BE]
//          This will tick down until it hits zero, then move on to the next stage.
// $309A49: STRAGE2 - Is The Level Beaten?
//          0xFF means the level is beaten. Note that Round 7 does NOT set this.
// $309A85: STRAGE2 - Difficulty Level
//          0x00: Very Easy (Cheat Menu Required)
//          0x02: Easy
//          0x04: Normal
//          0x06: Hard
//          0x08: Hardest
//          0x0a: Mania (Cheat Menu Required)
// $309A87: STRAGE2 - Starting Life Count
//          You can select 1 - 9 (0x00 - 0x08). Higher numbers may require the cheat menu to be active.
// $309A89: STRAGE2 - Music Test Option
//          This goes from 0x00-0x25. Listen to the tune with the A button.
// $309A8B: STRAGE2 - Sound Effect Test Option
//          This goes from 0x00-0x31. Listen to the effect with the A button.
// $309A8D: STRAGE2 - Voice Test Option
//          This goes from 0x00-0x34. Listen to the voice with the A button.
// $309A8F: STRAGE2 - Starting Round (Cheat Menu Required)
//          This can be set from 0x00 - 0x07. If above 0 when the game starts, disqualify most cheevos.
// $309AB0: STRAGE2 - High Score Table [160 bytes]
// $309B71: [Altered Beast] In game state
//          be = sega
//          FF = black screen before title
//          00 = title screen proper
//          e8 = exit demo
//          03 = in game
// $309B81: [Altered Beast] Ending = 3
// $309B85: [Altered Beast] [8-bit] Level Select Menu - Level
//          0x00 - Normal
//          0x01 - Hard
//          0x02 - Hardest
// $309B86: [Altered Beast] [8-bit] Level Select Menu - Player
//          0x01 - 1
//          0x02 - 2
//          0x03 - 3
//          0x04 - 4
//          0x05 - 5
// $309B87: [Altered Beast] [8-bit] Level Select Menu - Power
//          0x04 - 1 Bar
//          0x08 - 2 Bars
//          0x0c - 3 Bars
//          0x10 - 4 Bars
//          0x14 - 5 Bars
// $309B89: [Altered Beast] [8-bit] Beast Select Cheat Menu - Round 1 Option
//          0x00 - Wolf
//          0x01 - Tiger
//          0x02 - Bear
//          0x03 - Dragon
// $309B8B: [Altered Beast] [8-bit] Beast Select Cheat Menu - Round 2 Option
//          0x00 - Wolf
//          0x01 - Tiger
//          0x02 - Bear
//          0x03 - Dragon
// $309B8D: [Altered Beast] [8-bit] Beast Select Cheat Menu - Round 3 Option
//          0x00 - Wolf
//          0x01 - Tiger
//          0x02 - Bear
//          0x03 - Dragon
// $309B8F: [Altered Beast] [8-bit] Beast Select Cheat Menu - Round 4 Option
//          0x00 - Wolf
//          0x01 - Tiger
//          0x02 - Bear
//          0x03 - Dragon
// $309B90: [Sonic 1] [16-bit BE]
//          Current Stage
//          (h)0000: Green Hill Act 1
//          (h)0001: Green Hill Act 2
//          (h)0002: Green Hill Act 3
//          (h)0100: Labyrinth Act 1
//          (h)0101: Labyrinth Act 2
//          (h)0102: Labyrinth Act 3
//          (h)0103: Scrap Brain Act 3
//          (h)0200: Marble Act 1
//          (h)0201: Marble Act 2
//          (h)0202: Marble Act 3
//          (h)0300: Star Light Act 1
//          (h)0301: Star Light Act 2
//          (h)0302: Star Light Act 3
//          (h)0400: Spring Yard Act 1
//          (h)0401: Spring Yard Act 2
//          (h)0402: Spring Yard Act 3
//          (h)0500: Scrap Brain Act 1
//          (h)0501: Scrap Brain Act 2
//          (h)0502: Final
//          (h)0600: Good Ending
//          (h)0601: Bad Ending
// $309B91: [Sonic] [8-bit] Current Stage
//          
//          [Altered Beast] [8-bit] Beast Select Cheat Menu - Round 5 Option
//          0x00 - Wolf
//          0x01 - Tiger
//          0x02 - Bear
//          0x03 - Dragon
// $309B92: [Sonic 1] [8-bit]
//          Current Lives
//          (d)3: Default
// $309B96: [Sonic 1] [8-bit]
//          Special Stage - Last
//          (h)00: None | Entered
//          (h)01: 1st
//          (h)02: 2nd
//          (h)03: 3rd
//          (h)04: 4th
//          (h)05: 5th
//          (h)06: 6th
// $309B97: [Altered Beast] [8-bit] Current Level
//          0x00 - 1
//          0x01 - 2
//          0x02 - 3
//          0x03 - 4
//          0x04 - 5
// $309BA0: [Sonic 1] [16-bit BE]
//          Current Rings
//          (d)0: Default
// $309BA3: [Sonic 1] [8-bit]
//          Current Minutes
//          (d)0: Default
// $309BA4: [Sonic 1] [8-bit]
//          Current Seconds
//          (d)0: Default
// $309BA5: [Sonic 1] [8-bit]
//          Current Frames
//          (d)0: Default
// $309BAB: [Golden Axe] [8-Bit] Level - The Duel
// $309BAC: [Sonic 1] [8-bit]
//          Shield
//          (h)00: No
//          (h)01: Yes
// $309BAD: [Golden Axe] [8-bit] Level - Arcade
// $309BAE: [Sonic 1] [8-bit]
//          Speed Shoes
//          (h)00: No
//          (h)01: Yes
// $309BB0: [Sonic 1] [8-bit]
//          Star Post Counter
//          (h)00: Default
// $309BB4: [Golden Axe] [8-Bit] Credits
// $309BD7: [Sonic 1] [8-bit]
//          No. of Emeralds
//          (d)0: Default
// $309BD8: [Sonic 1] [6 Bytes]
//          Emeralds Obtained
//          (h)00: Blue
//          (h)01: Yellow
//          (h)02: Pink
//          (h)03: Green
//          (h)04: Red
//          (h)05: Grey
// $309BF5: [Golden Axe] [8-Bit] Score
// $309BF7: [Golden Axe] [8-Bit] Total Lives Lost in Run (Spans Continues)
// $309BFC: [Golden Axe][8-Bit] Lives
// $309BFE: [Golden Axe] [8-bit] Current HP
// $309C00: [Golden Axe] [8-bit] Magic Count
// $309C03: [Golden Axe] [8-bit] Character
//          0x00 - Ax
//          0x01 - Tyris
//          0x02 - Gilius
// $309C90: [RoS] Player Score [32-bit BE]
//          Value is stored without last zero
// $309C94: [RoS] High Score [32-bit BE]
//          Value is stored without last zero
// $309CA1: [RoS] Map ID [8-bit]
//          Does not reset for demo mode, resets at main menu
//          0x00=1-1
//          0x01=1-2
//          0x02=1-Boss
//          0x03=2-1
//          0x04=2-2
//          0x05=2-Boss
//          0x06=3-1
//          0x07=3-2
//          0x08=3-Boss
//          0x09=4-1
//          0x0a=4-2
//          0x0b=4-Boss
//          0x0c=5-1
//          0x0d=5-2
//          0x0e=5-Boss
//          0x0f=6-1
//          0x10=6-2
//          0x11=6-Boss
//          0x12=7-1
//          0x13=7-2
//          0x14=7-Boss
//          0x15=8-1
//          0x16=8-2
//          0x17=8-Boss
// $309CA2: [RoS] Player shurikens [16-bit]
//          0x3e7=Infinite
// $309CA7: [RoS] Player Maximum HP [8-bit]
//          Valid range: 0x08-0x10
// $309CB5: [RoS] Game Difficulty [8-bit]
//          0x00=Easy
//          0x01=Normal
//          0x02=Hard
//          0x03=Hardest
// $309D03: [Sonic 1] [8-bit]
//          Level Select Selection
//          (h)00: Green Hill Act 1
//          (h)01: Green Hill Act 2
//          (h)02: Green Hill Act 3
//          (h)03: Labyrinth Act 1
//          (h)04: Labyrinth Act 2
//          (h)05: Labyrinth Act 3
//          (h)06: Marble Act 1
//          (h)07: Marble Act 2
//          (h)08: Marble Act 3
//          (h)09: Star Light Act 1
//          (h)0A: Star Light Act 2
//          (h)0B: Star Light Act 3
//          (h)0C: Spring Yard Act 1
//          (h)0D: Spring Yard Act 2
//          (h)0E: Spring Yard Act 3
//          (h)0F: Scrap Brain Act 1
//          (h)10: Scrap Brain Act 2
//          (h)11: Scrap Brain Act 3
//          (h)12: Final
//          (h)13: Special Stage
//          (h)14: Sound Select
// $309D05: [Sonic 1] [8-bit]
//          Level Select Sound ID
//          (h)00: Default
// $309D60: [Sonic 1] [8-bit]
//          Level Select
//          (h)00: No
//          (h)01: Yes
// $309D61: [Sonic 1] [16-bit BE]
//          Debug Mode
//          (h)0000: No
//          (h)0101: Yes
// $309D70: [Sonic 1] [16-bit BE]
//          Demo Mode
//          (h)0000: No
//          (h)0001: Yes
//          (h)8001: Credits
// $309D73: [Sonic 1] [8-bit]
//          Last Played Demo
//          (h)00: Special Stage
//          (h)01: Green Hill Act 1
//          (h)02: Marble Zone Act 1
//          (h)03: Spring Yard Act 1
// $309D7A: [Sonic 1] [8-bit]
//          Debug Active
//          (h)00: No
//          (h)01: Yes
// $8B67E0: [SS] Dynamic Timed Level Challenge [32-Bit]
// $D9CDEC: [SS] Dynamic Timed Level Challenge [32-bit]
// $D9DBDC: [SS]  Dynamic Timed Level Challenge [32-Bit] - My Save States for Timed Level Challenge Use This Block
// $D9DBE4: [SS] Total Score [32-Bit] - Timed Level Challenge Save States
// $D9DC08: [SS] Level - Timed Level Challenge Save States
// $D9DC0C: [SS] Goals Met (Not Incl. Time) - Timed Level Challenge Save States
// $D9DC14: [SS] Max Combo - Timed Level Challenge Save States
// $D9DC18: [SS] Num Singles - Timed Level Challenge Save States
// $D9DC1C: [SS] Column Bonus - Timed Level Challenge Save States
// $D9DC20: [SS] Total Moves - Timed Level Challenge Save States
// $D9E440: [SS] Dynamic Start - Untimed Level Challenge Save States
// $D9E448: [SS] Total Score -  Untimed Level Challenge Save States [32-Bit]
// $D9E46C: [SS] Current Level (0=Level 1) -  Untimed Level Challenge Save States
// $D9E470: [SS] Goals Met -  Untimed Level Challenge Save States
//          
//          Dynamic Timed Level Challenge [32-Bit]
// $D9E478: [SS] Max Combo -  Untimed Level Challenge Save States
// $D9E47C: [SS] Num Singles -  Untimed Level Challenge Save States
// $D9E480: [SS] Column Bonus -  Untimed Level Challenge Save States
// $D9E484: [SS] Total Moves -  Untimed Level Challenge Save States
// $D9E4B4: [SS] Dynamic Timed Level Challenge [32-Bit]
// $D9ECF8: [SS] Dynamic Timed Level Challenge [32-Bit]
// $DA0574: [SS] Dynamic Timed Level Challenge [32-Bit]
// $DF9804: [VC2] [8-bit] [Controller] Options - Difficulty
//          Easy - 0x00
//          Normal - 0x01
//          Hard - 0x02
// $DF9805: [VC2] [8-bit] [Controller] Options - Continues // Default 5
//          0x01 - 1
//          ...
//          0x09 - 9
// $DF9806: [VC2] [8-bit] [Controller] Options - Sight
//          0x00 - On
//          0x01 - Off
// $DF9807: [VC2] [8-bit] [Controller] Options - Audio
//          0x00 - Stereo
//          0x01 - Mono
// $DF9809: [VC2] [8-bit] [Controller] Options - Life 1P // Default 4
//          0x01 - 1
//          ...
//          0x09 - 9
// $DF980A: [VC2] [8-bit] [Controller] Options - Gun Looseness 1P
//          0x00 - 0
//          ...
//          0x01 - 30
// $DF98C9: [VC2] [8-bit] [Controller] Options - Gun Select
//          0x00 - Off
//          0x01 - On
// $DF98CA: [VC2] [8-bit] [Controller] Options - Auto Reload
//          0x00 - Off
//          0x01 - On
// $DF98CB: [VC2] [8-bit] [Controller] Options - Play Mode
//          0x00 - VC2mode
//          0x01 - VC1mode
// $DF98F0: [VC2] [8-bit] [Controller] Options - Vibration 1P
//          0x00 - On
//          0x01 - Off
// $DF9A02: [VC2] [8-bit] [Controller] Current Life 1P
// $DF9A0C: [32-bit] Current Score
// $DF9A14: [VC2] [16-bit] [Controller] Shots
// $DF9A1C: [VC2] [16-bit] [Controller] Hits
// $DF9A22: [VC2] [16-bit] [Controller] Civillians Shot
// $DF9A30: [VC2] [16-bit] [Controller] Gangsters Shot
// $DF9B0D: [VC2] [8-bit] [Controller] Credits
// $DF9B16: [VC2] [16-bit] [Controller] Stage Progression - Freezing stops moving to next spot on the rail
// $DF9B18: [VC2] [16-bit] [Controller] File
//          0x00 - Beginner
//          0x01 - Medium
//          0x02 - Expert
//          0x03 - File 4
// $DF9B1A: [VC2] [16-bit] [Controller] Scene
// $DF9B34: [VC2] [32-bit] [Controller] Game State
//          0x00 - Press Start Screen
//          0x01 - Arcade/Option Select Screen
//          0x02 - Stage Select
//          0x03 - Mission Selected
//          0x04 - File Title Screen
//          0x05/0x06 - Loading
//          0x07 - Mission Open Cutscene
//          0x08 - Moves into First Person View
//          0x09 - Playing
//          0x0c - Died
//          0x0d - Continue Screen
//          0x0e - Continue Timer Hits 0
//          0x0f - Game Over Screen
//          0x14 - Pause
//          0x16/0x17 - Choosing a Path to Take
// $DFA804: [VC2] [8-bit] [Light Gun] Options - Difficulty
//          0x00 - Easy
//          0x01 - Normal
//          0x02 - Hard
// $DFA805: [VC2] [8-bit] [Light Gun] Options - Continues // Default 5
//          0x01 - 1
//          ...
//          0x09 - 9
// $DFA806: [VC2] [8-bit] [Light Gun] Options - Sight
//          0x00 - On
//          0x01 - Off
// $DFA807: [VC2] [8-bit] [Light Gun] Options - Audio
//          0x00 - Stereo
//          0x01 - Mono
// $DFA809: [VC2] [8-bit] [Light Gun] Options - Life 1P // Default 4
//          0x01 - 1
//          ...
//          0x09 - 9
// $DFA80A: [VC2] [8-bit] [Light Gun] Options - Gun Looseness 1P
//          0x00 - 0
//          ...
//          0x01 - 30
// $DFA8C9: [VC2] [8-bit] [Light Gun] Options - Gun Select
//          0x00 - Off
//          0x01 - On
// $DFA8CA: [VC2] [8-bit] [Light Gun] Options - Auto Reload
//          0x00 - Off
//          0x01 - On
// $DFA8CB: [VC2] [8-bit] [Light Gun] Options - Play Mode
//          0x00 - VC2mode
//          0x01 - VC1mode
// $DFA8F0: [VC2] [8-bit] [Light Gun] Options - Vibration 1P
//          0x00 - On
//          0x01 - Off
// $DFAA02: [VC2] [8-bit] [Light Gun] Current Life 1P
// $DFAA0C: [VC2] [32-bit] [Light Gun] Current Score
// $DFAA14: [VC2] [16-bit] [Light Gun] Shots
// $DFAA1C: [VC2] [16-bit] [Light Gun] Hits
// $DFAA22: [VC2] [16-bit] [Light Gun] Civillians Shot
// $DFAA30: [VC2] [16-bit] [Light Gun] Gangsters Shot
// $DFAB0D: [VC2] [8-bit] [Light Gun] Credits
// $DFAB16: [VC2] [16-bit] [Light Gun] Stage Progression - Freezing stops moving to next spot on the rail
// $DFAB18: [VC2] [16-bit] [Light Gun] File
//          0x00 - Beginner
//          0x01 - Medium
//          0x02 - Expert
//          0x03 - File 4
// $DFAB1A: [VC2] [16-bit] [Light Gun] Scene
// $DFAB34: [VC2] [32-bit] [Light Gun] Game State
//          0x00 - Press Start Screen
//          0x01 - Arcade/Option Select Screen
//          0x02 - Stage Select
//          0x03 - Mission Selected
//          0x04 - File Title Screen
//          0x05/0x06 - Loading
//          0x07 - Mission Open Cutscene
//          0x08 - Moves into First Person View
//          0x09 - Playing
//          0x0c - Died
//          0x0d - Continue Screen
//          0x0e - Continue Timer Hits 0
//          0x0f - Game Over Screen
//          0x1a - Congratulations!
//          0x14 - Pause
//          0x16/0x17 - Choosing a Path to Take
// $DFC394: [32-bit] [VC2] [Controller] Scene End Identifier
//          0x00 - Playing
//          0xffffff9c - Scene End Tally
// $DFD394: [32-bit] [VC2] [Light Gun] Scene End Identifier
//          0x00 - Playing
//          0xffffff9c - Scene End Tally
// $E028FA: [SS] 0x01 - Current Selected Main menu item flash is on.
// $E02900: [SS] Not fully reliable (main menu and high scores re-use some things), but can reliably flag some conditions during play/at results.
//          
//          0x00 - Main Menu
//          0x06 - During Single Game Challenge Play
//          0x08 - End of Game! (Timed Single)
//          0x10 - During Level Challenge Play
//          0x1c - Sound Options
//          0x1e - Options
//          0x20 - End of Game! (Untimed Single) / Level Score (Level Challenge)
//          0x3e - Timed/Untimed Selection
//          
//          0x06->0x08 or 0x20 can indicate completion of single level challenge.
//          0x10 -> 0x20 can indiate completion of level challenge level (success or failure)
// $E76524: [SS] Screen ID? [32-Bit] Index into a table?
//          0x00d400d0/0x00a57ea8 - In-Game Goals Dialog
//          0x000e7e74/0x000fb0ac/000fe5f0  - Timed Challenge Layout
//          0x000fff20/000ff250 - Timed/Untimed Selection Dialog
//          0x000ff184 - Level Score/Goals Results Dialog/High Score/Main Menu
//          
//          Different dialogs have different addresses but they change from session to session. They remain the same for an entire level challenge, however.
// $E76528: [SS] Holds the root value of $0xe76524 when dialog is open. [32-Bit]
// $E7652C: 0x01 - Game Layout/Main Menu/Other Root Layout
//          0x02 - Dialog Displayed
// $E76E48: [Sega Swirl]
//          [32-Bit]  Timer for Timed Level Challenge (Seconds x 10)
//          Ticks down at same time as seconds ticks down.
//          0x4b0 (1200dec) == 120 Seconds,
//          0x4a6 (1190dec) == 119 Seconds,
//          etc
//          
//          0x3e8 when untimed. (This plus 0xe76e70==0 combine to show untimed)
// $E76E4C: [Sega Swirl] Current Level Score [32-Bit]
// $E76E50: [Sega Swirl] Current Total Score [32-Bit]
// $E76E54: [Sega Swirl]
//          Level Challenge Level (Timed and Untimed)
//          0 = Level 1,
//          1 = Level 2, etc.
// $E76E58: [Sega Swirl] Max Combo [32-Bit]
// $E76E5C: [Sega Swirl] Number of Singles [32-Bit]
// $E76E60: [Sega Swirl]
//          0x00 - Untimed Level
//          0x01 - Timed Level
// $E76E64: [Sega Swirl]
//          0x00 - Playing?
//          0x01 - Main Menu?
// $E76E6C: [Sega Swirl] Number of Moves [32-Bit]
// $E76E70: [Sega Swirl] Level Challenge Timed - Elapsed Seconds
// $E76E74: [Sega Swirl] Column Bonus [32-Bit]
// $EC76D0: [SS] Total Score [32-Bit]
// $EC76E0: [SS] Column Bonus Goal (Results/Goals Screen)
// $EC76E4: [SS] Score Goal (Results/Goals Screen) [32-Bit]
// $EC76E8: [SS] Max Combo Goal (Results/Goals Screen)
// $EC76EC: [SS] Time Goal (Results/Goals Screen)
// $EC76F0: [SS] Singles Goal (Results/Goals Screen)
// $EC76F4: [SS] Total Moves Goal (Results/Goals Screen)
// $EC76F8: [SS] Maybe related to pointing to Active Time Data? [32-Bit]
// $ED09E0: [SS] Seems to be pointer-realted to the dynamic data. [32-Bit] Possible Pointer? Inconsistent though...
//Muppets, The: On With the Show!
// #ID = 17807
// RA Hash: 8cc1dd1718b63c9675a5e5d28c14936b 
// $1058: [NBit] Inputs
//        Bit0=A
//        Bit1=B
//        Bit2=Select
//        Bit3=Start
//        Bit4=D-Pad Right
//        Bit5=D-Pad Left
//        Bit6=D-Pad Up
//        Bit7=D-Pad Down
function input_dpadleft() => bit5(0x001058)
// $1059: [NBit] Inputs
//        Bit0=R
//        Bit1=L
// $1460: [Pointer] Game Info
function game_pointer() => tbyte(0x001460)
function game_state() => dword(0x001460) //If 0, in menu.
    in_menu = 0
//        [24bit + 0x808c] [8bit] Electric Mayhem - Notes Hit
//        [24bit + 0x8248] [32bit] Pigs in Space/Fozzie - Timer (Seconds)
function bonus_timer() => byte(game_pointer() + 0x8248)
//        [24bit + 0x8258] [8bit] Jurassic Pork - Piggy Health
function piggy_health() => byte(game_pointer() + 0x8258)
//        [24bit + 0x825c] [8bit] Jurassic Pork - Pork Health
function pork_health() => byte(game_pointer() + 0x825c)
//        [24bit + 0x83f0] [8bit] Amazing Gonzo - Vehicle Health
//        [24bit + 0x83f4] [8bit] Amazing Gonzo - Balloon Count
//        [24bit + 0x83f8] [8bit] Amazing Gonzo - Target Count
//        [24bit + 0x846c] [8bit] Kermit's Banjo Bayou Serenade - Timer
function kermit_timer() => byte(game_pointer() + 0x846c)
//        [24bit + 0x8470] [8bit] Kermit's Banjo Bayou Serenade - Timer (Max Amt)
//        [24bit + 0x848c] [8bit] Kermit's Banjo Bayou Serenade - Num of Notes
function kermit_notes() => byte(game_pointer() + 0x848c)
//        [24bit + 0x8490] [8bit] Kermit's Banjo Bayou Serenade - Health
function kermit_health() => byte(game_pointer() + 0x8490)
//        [24bit + 0x84c8] [8bit] Muppet Labs - Timer (Seconds)
//        [24bit + 0x84f8] [8bit] Muppet Labs - Potion Progress (Decreases until 0)
//        [24bit + 0x8a1c] [8bit] The Swedish Chef Cooking Hour - Timer - Hard
//        [24bit + 0x8af4] [8bit] The Swedish Chef Cooking Hour - Timer - Medium
//        [24bit + 0x8BEC] [8bit] The Swedish Chef Cooking Hour - Timer - Easy
//        [24bit + 0x8C0C] [8bit] The Swedish Chef Cooking Hour - Number of Fruit on Counter - Easy
// $1464: [8bit] Difficulty
//        0x00=Easy
//        0x01=Medium
//        0x02=Hard
function difficulty() => byte(0x001464)
    easy=0
    medium=1
    hard=2
// $1468: [8bit] Difficulty/Bonus Unlock Flags
//        0x01=Medium Unlocked
//        0x02=Hard + Bonus 1 Unlocked
//        0x03=Bonus 2 Unlocked
function unlock_flag() => byte(0x001468)
// $1488: [32bit] Frame Counter ("Playtime" in One Session)
// $80D0: [8bit] Language
//        0x00=English
//        0x01=French
//        0x02=German
//        0x03=Italian
//        0x04=Spanish
//        0x05=Dutch
// $8688: [8bit] Game ID
//        0x00=Kermit's Banjo Bayou Serenade!
//        0x01=The Swedish Chef Cooking Hour
//        0x02=Muppet Labs
//        0x03=The Great Gonzo
//        0x04=Jurassic Pork
//        0x05=Electric Mayhem
//        0x06=Curtain Call (Ending Sequence)/Pigs in Space
//        0x07=Bonus Mini-Game - Fozzie
function game_ID() => byte(0x008688)
// $BDEC: [8bit] Star Results
function basic_progression(this_difficulty, unlock) =>
    difficulty() == this_difficulty &&
    prev(game_ID()) == 5 &&
    game_ID() == 6 &&
    prev(unlock_flag()) == unlock &&
    unlock_flag() == unlock + 1
achievement(
    "Setting Up the Show",
    "After starting a new game, complete the game on Easy difficulty, and unlock Medium!",
    id=160493,
    badge="180489",
    points=3,
    trigger=
        basic_progression(easy, 0)
)
achievement(
    "In Intermission",
    "After starting a new game, complete the game on Medium difficulty, and unlock Hard!",
    id=160494,
    badge="180490",
    points=5,
    trigger=
        basic_progression(medium, 1)
)
achievement(
    "Called for Encore!",
    "Finish the game on Hard mode, and unlock the final bonus game!",
    id=160495,
    badge="180491",
    points=10,
    trigger=
        basic_progression(hard, 2)
)
achievement(
    "In Flight",
    "During a bonus game, Fly for at least 2 minutes on a ship in space!",
    id=160496,
    badge="180492",
    points=5,
    trigger=
        game_ID() == 6 &&
        game_state() != in_menu &&
        bonus_timer() > prev(bonus_timer()) &&
        bonus_timer() == 0x78   
)
achievement(
    "Fozzie Dodgy",
    "During his bonus game, Help Fozzie dodge falling objects for at least 2 minutes!",
    id=160497,
    badge="180493",
    points=5,
    trigger=
        game_ID() == 7 &&
        game_state() != in_menu &&
        bonus_timer() > prev(bonus_timer()) &&
        bonus_timer() == 0x78
)
achievement(
    "Who Needs Notes, Anyway?",
    "Complete Kermit's Banjo Bayou Serenade on Hard difficulty without using any notes",
    id=160498,
    badge="180494",
    points=5,
    trigger=        
        difficulty() == hard &&
        kermit_health() != 0 &&
        unless(once(kermit_notes() < prev(kermit_notes()))) &&
        kermit_timer() < prev(kermit_timer()) &&
        kermit_timer() == 0 &&
        (always_false() ||
        (never(game_ID() != 0) &&
        never(game_state() == in_menu))                
        )
)
achievement(
    "Pork's Challenge",
    "Defeat Jurassic Pork on Hard difficulty without pressing left and taking damage (Reset in Menu)",
    id=160499,
    badge="180495",
    points=5,
    trigger=                         
        difficulty() == hard &&
        unless(once(input_dpadleft() == 1)) &&
        unless(once(piggy_health() < prev(piggy_health()))) &&
        pork_health() < prev(pork_health()) &&
        pork_health() == 0 &&
        (always_false() ||
        (never(game_ID() != 4) &&
        never(game_state() == in_menu))                
        )                
)

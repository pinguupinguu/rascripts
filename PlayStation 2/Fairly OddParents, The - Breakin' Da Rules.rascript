// Fairly OddParents, The - Breakin' Da Rules
// #ID = 19196
// $000540: [Offset] [32bit] - Selected Level ID (In Timmy's House)
//          See Offset 0x544 for values
// $000544: [Offset] [32bit] - Active Level ID
//          0x00=Tutorial
//          0x01=Crash Landing
//          0x02=The Vicky Virus
//          0x03=Chinless Blunder
//          0x04=Mini Timmy
//          0x05=A Badge Too Far
//          0x06=Bad Luck 101
//          0x07=Time Warped
//          0x08=A Dog's Life
//          0x09=The Ultimate Challenge
//          0x0b=Timmy's House
function current_level() => dword((dword(0x491a88)  ) + 0x544)
tutorial = 0x0
crash_landing = 0x1
vicky_virus = 0x2
chinless_blunder = 0x3
mini_timmy = 0x4
badge_far = 0x5
bad_luck = 0x6
time_warped = 0x7
dogs_life = 0x8
ult_challenge = 0x9
home = 0xb
function save_protection() => prev(dword(0x491a88)) != 0
// $5378A4: [Nbit] Level Completed Flags
//          Bit0=Tutorial
//          Bit1=The Vicky Virus
//          Bit2=A Badge Too Far
//          Bit3=Chinless Blunder
//          Bit4=Mini Timmy
//          Bit5=Crash Landing
//          Bit6=Time Warped
//          Bit7=Bad Luck 101
function tutorial_flag() => bit0(0x5378a4)
function vicky_flag() => bit1(0x5378a4)
function boyscouts_flag() => bit2(0x5378a4)
function blunder_flag() => bit3(0x5378a4)
function minitimmy_flag() => bit4(0x5378a4)
function crashlanding_flag() => bit5(0x5378a4)
function timewarped_flag() => bit6(0x5378a4)
function badluck_flag() => bit7(0x5378a4)
achievement(
    "Timmy's Dream",
    "Complete the Tutorial",
    points=5,
    trigger=
        save_protection() &&
        tutorial_flag() > prev(tutorial_flag())
)
achievement(
    "Better Get An Upgrade",
    "Complete The Vicky Virus",
    points=10,
    trigger=
        save_protection() &&
        vicky_flag() > prev(vicky_flag())
)
achievement(
    "Where's My Squirrley Scouts?!",
    "Complete A Badge Too Far",
    points=10,
    trigger=
        save_protection() &&
        boyscouts_flag() > prev(boyscouts_flag())
)
achievement(
    "A Helpful Sidekick",
    "Complete Chinless Blunder",
    points=10,
    trigger=
        save_protection() &&
        blunder_flag() > prev(blunder_flag())
)
achievement(
    "A Small Issue",
    "Complete Mini Timmy",
    points=10,
    trigger=
        save_protection() &&
        minitimmy_flag() > prev(minitimmy_flag())
)
achievement(
    "Scary, Aliens!",
    "Complete Crash Landing",
    points=10,
    trigger=
        save_protection() &&
        crashlanding_flag() > prev(crashlanding_flag())
)
achievement(
    "Surfing Through Time",
    "Complete Time Warped",
    points=10,
    trigger=
        save_protection() &&
        timewarped_flag() > prev(timewarped_flag())
)
achievement(
    "Anti Luck!",
    "Complete Bad Luck 101",
    points=10,
    trigger=
        save_protection() &&
        badluck_flag() > prev(badluck_flag())
)
// $5378A5: [Nbit] Level Completed Flags
//          Bit0=A Dog's Life
//          Bit1=The Ultimate Challenge
function doglife_flag() => bit0(0x5378a5)
function ultimate_flag() => bit1(0x5378a5)
achievement(
    "Who Let the Dogs Out?",
    "Complete A Dog's Life",
    points=10,
    trigger=
        save_protection() &&
        doglife_flag() > prev(doglife_flag())
)
achievement(
    "Vicky's Last Straw",
    "Complete the Ultimate Challenge and beat the game!",
    points=10,
    trigger=
        save_protection() &&
        ultimate_flag() > prev(ultimate_flag())
)
// $53797C: [32bit] Number of Chin Cards - Crash Landing
function crash_cards() => dword(0x53797c)
// $537990: [32bit] Number of Chin Cards - The Vicky Virus
function virus_cards() => dword(0x537990)
// $5379A4: [32bit] Number of Chin Cards - Chinless Blunder
function blunder_cards() => dword(0x5379a4)
// $5379B8: [32bit] Number of Chin Cards - Mini Timmy
function minitimmy_cards() => dword(0x5379b8)
// $5379CC: [32bit] Number of Chin Cards - A Badge Too Far
function boyscouts_cards() => dword(0x5379cc)
// $5379E0: [32bit] Number of Chin Cards - Bad Luck 101
function badluck_cards() => dword(0x5379e0)
// $5379F4: [32bit] Number of Chin Cards - Time Warped
function timewarped_cards() => dword(0x5379f4)
// $537A08: [32bit] Number of Chin Cards - A Dog's Life
function dogslife_cards() => dword(0x537a08)
function chin_cards(check_flag) => save_protection() && prev(check_flag) < 4 && check_flag == 4 //Each level has 4 chin cards!
achievement(
    "Viral Infection and Card Collection!",
    "Collect all 4 Chin cards from The Vicky Virus",
    points=5,
    trigger=
        chin_cards(virus_cards())        
)
achievement(
    "Badges, Cards... Get them All!",
    "Collect all 4 Chin cards from A Badge Too Far",
    points=5,
    trigger=
        chin_cards(boyscouts_cards())
)
achievement(
    "Chinless Cards",
    "Collect all 4 Chin cards from Chinless Blunder",
    points=5,
    trigger=
        chin_cards(blunder_cards())
)
achievement(
    "Mini Collection",
    "Collect all 4 Chin cards from Mini Timmy",
    points=5,
    trigger=
        chin_cards(minitimmy_cards())
)
achievement(
    "Crashin' Cards",
    "Collect all 4 Chin cards from Crash Landing",
    points=5,
    trigger=
        chin_cards(crash_cards())
)
achievement(
    "Collecting Across Ages",
    "Collect all 4 Chin cards from Time Warped",
    points=5,
    trigger=
        chin_cards(timewarped_cards())
)
achievement(
    "No Bad Decks Here!",
    "Collect all 4 Chin cards from Bad Luck 101",
    points=5,
    trigger=
        chin_cards(badluck_cards())
)
achievement(
    "Cards are Not Treats!",
    "Collect all 4 Chin cards from A Dog's Life",
    points=5,
    trigger=
        chin_cards(dogslife_cards())
)
// $495044: [32bit] Pointer - Vicky Virus - Whack A Mole Mini Game
//          +0xf0 = [32bit] Score
function vicky_virus_mole_pointer() => dword(0x495044)
function vicky_virus_mole_score() => dword((vicky_virus_mole_pointer()  ) + 0xf0)
achievement(
    "Whack a Twerp",
    "In The Vicky Virus Minigame, whack at least 40 bunny moles!",
    points=5,
    trigger=
        current_level() == 2 && 
        prev(vicky_virus_mole_score()) == 39 &&
        vicky_virus_mole_score() == 40 &&
        vicky_virus_mole_pointer() != 0
)
// $4950C8: [32bit] Pointer - A Badge Too Far - Dance Move Minigame
//          +0x790 - [32bit] Current Rank
//          Values - 
//          0x0=Abysmal
//          0x1-0x4=Poor
//          0x5-0x6=Average
//          0x7-0x8=Good
//          0x9=Excellent
//          =======================
//          +0x798 - [32bit] Number of Notes Played (End of Song = 41)
excellent = 9
function badge_far_dance_pointer() => dword(0x4950c8)
function badge_far_rank() => dword(badge_far_dance_pointer() + 0x790)
function badge_far_combo() => dword(badge_far_dance_pointer() + 0x794)
function badge_far_notes() => dword(badge_far_dance_pointer() + 0x798)
//achievement( //NULLIFIED - Replaced by achievement below.
   // "Dance Expertise",
   // "In A Badge Too Far, clear the song with an Excellent rating!",
  //  points=5,
  //  trigger=
  //      current_level() == badge_far &&
  //      badge_far_rank() == excellent &&
  //      prev(badge_far_notes()) == 40 &&
  //      badge_far_notes() == 41 &&
  //      badge_far_dance_pointer() != 0
//)
achievement(
    "Too Good for the Creampuffs",
    "In A Badge Too Far, clear the dance song with a full combo!",
    points=10,
    trigger=
        unless(current_level() != badge_far) &&
        
        once((prev(badge_far_notes()) == 0xffffffff && badge_far_notes() == 0) && never(badge_far_combo() < prev(badge_far_combo())) ) &&
        trigger_when(prev(badge_far_notes()) == 40 && badge_far_notes() == 41) 
        
)
// $4918b4: [32bit] Boss Pointer          
//          Chinless Blunder - Country Boy Apprehension
//          +0x3b4 = [32bit] Catch Meter
//          +0x3e4= [32bit] Catch Gauge Gone (0x00=Displayed, 0x01= Hidden/Apprehended)
//          ===========================================
//          Mini Timmy - Grime Boss 
//          +0x4c = Health (2 > 3 = boss fight over)
//          ===========================================
//          Crash Landing - Teddy Bears
//          +0x68 = Number Killed (0xf > 0x10 = win game!)
function boss_pointer() => dword(0x4918b4)
function cboy_meter() => dword((boss_pointer()  ) + 0x3b4)
function cboy_gauge_isDisplayed() => dword((boss_pointer()  ) + 0x3e4)
function timmy_hurt_disable() => disable_when(timmy_health() < prev(timmy_health()) || timmy_lives() < prev(timmy_lives()))
achievement(
    "Chinless Buster",
    "In Chinless Blunder, apprehend Country Boy without missing a balloon!",
    points=5,
    trigger=
        current_level() == chinless_blunder &&
        trigger_when(prev(cboy_gauge_isDisplayed()) == 0 && cboy_gauge_isDisplayed() == 1) && 
        disable_when(cboy_meter() < prev(cboy_meter())) &&
        (always_false() || never(prev(boss_pointer()) == 0))
)
// $491A88: [32bit] Game Pointer
function game_pointer() => dword(0x491a88)
// $00104C: [Offset] [32bit] Life Count
function timmy_lives() => dword((game_pointer()  ) + 0x104c)
// $001050: [Offset] [Lower4] Health
function timmy_health() => low4((game_pointer()  ) + 0x1050)
//Boss health function:
function mini_grime_health() => dword((boss_pointer()  ) + 0x4c)
achievement(
    "Mean Clean Damageless",
    "In Mini Timmy, defeat the boss Grime without taking damage or losing a life!",
    points=5,
    trigger=
        current_level() == mini_timmy &&
        trigger_when(mini_grime_health() > prev(mini_grime_health()) && mini_grime_health() == 3) &&
        timmy_hurt_disable() &&
        (always_false() || never(prev(boss_pointer()) == 0))
)
function teddy_bear_count() => dword((boss_pointer()  ) + 0x68)
achievement(
    "Cheesin' Teddies",
    "In Crash Landing, defeat all the mighty teddy bears without taking damage or losing a life!",
    points=5,
    trigger=
        current_level() == crash_landing &&
        once(prev(teddy_bear_count()) == 0 && teddy_bear_count() == 1) &&
        trigger_when(prev(teddy_bear_count()) == 0xf && teddy_bear_count() == 0x10) &&
        timmy_hurt_disable() &&
        (always_false() || never(prev(boss_pointer()) == 0))  
)
// $001518: [Offset] [32bit] Timmy State
//          0x01=In Game
//          0x02=In Cutscene
// $001560: [Offset] [32bit] Crowns Count
function crowns_count() => dword(game_pointer() + 0x1560)
// $001574: [32bit] Crimson Chin Cards Collected (Current Level)
function card_hand_count() => dword(game_pointer() + 0x1574)
// $001580: [Offset] [32bit] Wish Star 1 Flag
//          0x00=Not Caught
//          0x01=Caught
// $001584: [Offset] [32bit] Wish Star 2 Flag
//          0x00=Not Caught
//          0x01=Caught
// $001588: [Offset] [32bit] Wish Star 3 Flag
//          0x00=Not Caught
//          0x01=Caught
// $00158C: [Offset] [32bit] Wish Star 4 Flag
//          0x00=Not Caught
//          0x01=Caught
// $001590: [Offset] [32bit] Wish Star 5 Flag
//          0x00=Not Caught
//          0x01=Caught
// $0015B8: [Offset] [32bit] Wish Star Count
function star_hand_count() => dword(game_pointer() + 0x15b8)
// $0015BC: [Offset] [32bit] Wish Stars Collected for Current Level
// $537A48: [32bit] Chin Card Total Count
function chin_card_sum() => dword(0x537a48)
// $537AD0: [32bit] Number of Stars - Crash Landing
// $537B14: [32bit] Number of Stars - The Vicky Virus
// $537B58: [32bit] Number of Stars - Chinless Blunder
// $537B9C: [32bit] Number of Stars - Mini Timmy
// $537BE0: [32bit] Number of Stars - A Badge Too Far
// $537C24: [32bit] Number of Stars - Bad Luck 101
// $537C68: [32bit] Number of Stars - Time Warped
// $537CAC: [32bit] Number of Stars - A Dog's Life
function stars_sum() => dword(0x537ad0) + dword(0x537b14) + dword(0x537b58) + dword(0x537b9c) + dword(0x537be0) + dword(0x537c24) + dword(0x537c68) + dword(0x537cac)
// $569D68: [32bit] Active Save Slot
rp_level_list = {
    0x0:"Tutorial",
    0x1:"Crash Landing",
    0x2:"The Vicky Virus",
    0x3:"Chinless Blunder",
    0x4:"Mini Timmy",
    0x5:"A Badge Too Far",
    0x6:"Bad Luck 101",
    0x7:"Time Warped",
    0x8:"A Dog's Life",
    0x9:"The Ultimate Challenge"
}
rp_health_list = {
    0:"0",
    1:"1",
    2:"2",
    3:"3",
    4:"0",
    5:"1",
    6:"2",
    7:"3"
}
function num(var) => rich_presence_macro("Number", var)
rich_presence_conditional_display(game_pointer() != 0 && current_level() < home && current_level() != tutorial, "Playing The Fairly OddParents In: {0}! 🧒 {1} 💓 {2} 🌠 {3} 🃏 {4} 👑 {5}",
    rich_presence_lookup("Level", current_level(), rp_level_list),
    num(timmy_lives()),
    rich_presence_lookup("Health", timmy_health(), rp_health_list),
    num(star_hand_count()),
    num(card_hand_count()),
    num(crowns_count())
)
rich_presence_conditional_display(game_pointer() != 0 && current_level() == tutorial, "Playing the Tutorial in Timmy's Dream!")
rich_presence_conditional_display(game_pointer() != 0 && current_level() == home, "Gettin' Ready to Break Some Rulez... 🌠 {0}/110 🃏 {1}/33",
    num(stars_sum()),
    num(chin_card_sum())
)
rich_presence_display("In Menu...")
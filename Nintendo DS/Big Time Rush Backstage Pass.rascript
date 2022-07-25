// Big Time Rush: Backstage Pass
// #ID = 17794
// ROM Name: Big Time Rush - Backstage Pass (USA).nds (No-Intro)
// RA Checksum: c7f90fa652fc123df50077bb095b95b0 
// $0B1E10: [32bit] Screen ID
//          0x0c=Profile Select Screen
select_screen = 0xc
function save_protection() => prev(dword(0x0B1E10)) != select_screen
// $135408: [32bit] Active Song ID
//          0x00=Big Night at Rocque Records!
//          0x01=Boyfriend on the Tour Bus!
//          0x02=Elevate at the Palm Woods!
//          0x03=I Know You Know at Rocque Records
//          0x04=Til I Forget About You at the Backstage Theatre!
//          0x05=Worldwide at the Palm Woods!
//          0x06=You're Not Alone at the Backstage Theatre!
//          0x07=Windows Down on the Tour Bus!
function active_song() => dword(0x135408)
songs = {
    0:"Big Night at Rocque Records",
    1:"Boyfriend on the Tour Bus",
    2:"Elevate at the Palm Woods",
    3:"I Know You Know at Rocque Records",
    4:"Till I Forget About You at the Backstage Theatre",
    5:"Worldwide at the Palm Woods",
    6:"You're Not Alone at the Backstage Theatre",
    7:"Windows Down on the Tour Bus"
}
// $12CEDC: [32bit] Game State
//          0x00=In Menu
//          0x01=In Game
in_game = 1
function game_state() => dword(0x12CEDC)
// $1354EC: [32bit] Active Mode
//          0x00=Normal
//          0x01=Hard
function mode() => dword(0x1354EC)
active_mode = {
    0:"Normal!",
    1:"Hard!"
}
// $135400: [32bit] Current Track Score
function current_score() => dword(0x135400)
// $1354C8: [8bit] Stage Clear - Backstage Theatre (Normal Mode)
//          0x00=No
//          0x01=Yes
function normal_clear_theatre() => byte(0x1354C8)

// $1354CC: [32bit] Tour Progress - Normal Mode
//          00=Rock Records Songs Open
//          01=The Palm Woods Songs Open
//          02=Tour Bus Songs Open
//          03=Backstage Theatre Songs Open
// $1354C9: [8bit] Stage Clear - Backstage Theatre (Hard Mode)
//          0x00=No
//          0x01=Yes
function hard_clear_theatre() => byte(0x1354C9)
function normal_mode() => dword(0x1354CC)
// $1354D0: [32bit] Tour Progress - Hard Mode
//          00=Rock Records Songs Open
//          01=The Palm Woods Songs Open
//          02=Tour Bus Songs Open
//          03=Backstage Theatre Songs Open
function hard_mode() => dword(0x1354D0)
function progression(mode, stage) =>
    save_protection() &&
    prev(mode) == stage &&
    mode == stage + 1
achievement(
    "I Know How to Train Dogs!",
    "Help the boys sing through the first two songs at Rocque Records in Normal Mode!",    
    points=3,
    trigger=
        progression(normal_mode(), 0)
)
achievement(
    "No Music In My Palm Woods!",
    "Help the guys sing through two of their songs at the Palm Woods in Normal Mode!",    
    points=4,
    trigger=
        progression(normal_mode(), 1)
)
achievement(
    "Big Time Tour Bus",
    "Guide the group through two more songs on their Tour Bus in Normal Mode!",
    points=5,
    trigger=
        progression(normal_mode(), 2)
)
achievement(
    "Victoria Justice, Keep Singing. We're Stuck!",
    "Rush to the Backstage Theatre, and perform two more songs in Normal Mode to complete your first tour!",
    points=5,
    trigger=
        save_protection() &&
        prev(normal_mode()) == 3 &&
        normal_clear_theatre() > prev(normal_clear_theatre())
)
achievement(
    "Dogs, Back in the Studio, NOWWW",
    "Go on your second tour and help the guys sing through two songs at Rocque Records in Hard Mode!",
    points=4,
    trigger=
        progression(hard_mode(), 0)
)
achievement(
    "Have A Palm Woods Day!",
    "Kick back by the pool, and get the guys to sing through two songs at the Palm Woods on Hard Mode!",
    points=4,
    trigger=
        progression(hard_mode(), 1)
)
achievement(
    "You Have a Christmas Album, Right?",
    "Get on the Tour Bus and sing two more songs on Hard Mode!",
    points=5,
    trigger=
        progression(hard_mode(), 2)
)
achievement(
    "A Big Night to Remember",
    "Reach the Backstage Theatre, and perform your final two songs on Hard Mode to complete your tours!",
    points=10,
    trigger=
        save_protection() &&
        prev(hard_mode()) == 3 &&
        prev(byte(0x1354b5) + byte(0x1354c5)) == 1 &&
        byte(0x1354b5) + byte(0x1354c5) == 2
)
// $1354DC: [NBit] Normal Mode Photo Unlock Bitflags (1-8)
// $1354DD: [NBit] Hard Mode Photo Unlock Bitflags (9-16)

achievement(
    "Photographic Memories",
    "Collect the first eight Big Time Rush collectible photos from Normal Mode!",
    points=5,
    trigger=
        save_protection() &&
        prev(bitcount(0x1354DC)) == 7 &&
        measured(bitcount(0x1354DC) == 8)
)
achievement(
    "Hire A New Photographer!",
    "Collect the final eight Big Time Rush collectible photos from Hard Mode!",
    points=10,
    trigger=
        save_protection() &&
        prev(bitcount(0x1354DD)) == 7 &&
        measured(bitcount(0x1354DD) == 8)
)

function score_perfect(song, offset) =>
    save_protection() &&
    byte(song + offset) > prev(byte(song + offset))
// $13543C: [16 bytes] Song Entry - Big Night:
//          - [32bit] Big Night - High Score - Normal Mode
//          - [32bit] Big Night - High Score - Hard Mode
//          - [8bit] Big Night - Star Count - Normal Mode
//          - [8bit] Big Night - Star Count - Hard Mode
//          - [8bit] Big Night - Perfect Obtained - Normal Mode // + 11
//          - [8bit] Big Night - Perfect Obtained - Hard Mode // + 12
//          - [8bit] Big Night - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] Big Night - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
//          - [16bit] NULL
big_night = 0x13543C
achievement(
    "Normal Night of Perfection",
    "Get a perfect score on Big Night in Normal Mode",
    points=5,
    trigger=
        score_perfect(big_night, 10)
)
achievement(
    "Big Night of Perfection",
    "Get a perfect score on Big Night in Hard Mode",
    points=10,
    trigger=
       score_perfect(big_night, 11)
)
// $13544C: [16 bytes] Song Entry - I Know You Know:
//          - [32bit] I Know You Know - High Score - Normal Mode
//          - [32bit] I Know You Know - High Score - Hard Mode
//          - [8bit] I Know You Know - Star Count - Normal Mode
//          - [8bit] I Know You Know - Star Count - Hard Mode
//          - [8bit] I Know You Know - Perfect Obtained - Normal Mode
//          - [8bit] I Know You Know - Perfect Obtained - Hard Mode
//          - [8bit] I Know You Know - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] I Know You Know - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
// $135454: I Know You Know - Stars
you_know = 0x13544C
achievement(
    "Do You Know Though?",
    "Get a maximum score of 72.400 playing I Know You Know in Normal Mode",
    points=5,
    trigger=
        mode() == 0 &&
        active_song() == 3 &&
        prev(current_score()) < 72400 &&
        current_score() == 72400
)
achievement(
    "I Know You Know This!",
    "Get a perfect socre on I Know You Know in Hard Mode",
    points=10,
    trigger=
        score_perfect(you_know, 11) 
)
// $13545C: [8bit] Stage Clear - Rocque Records (Normal Mode)
//          0x00=No
//          0x01=Yes
// $13545D: [8bit] Stage Clear - Rocque Records (Hard Mode)
//          0x00=No
//          0x01=Yes
// $135460: [16 bytes] Song Entry - Worldwide:
//          - [32bit] Worldwide - High Score - Normal Mode
//          - [32bit] Worldwide - High Score - Hard Mode
//          - [8bit] Worldwide - Star Count - Normal Mode
//          - [8bit] Worldwide - Star Count - Hard Mode
//          - [8bit] Worldwide - Perfect Obtained - Normal Mode
//          - [8bit] Worldwide - Perfect Obtained - Hard Mode
//          - [8bit] Worldwide - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] Worldwide - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
worldwide = 0x135460
achievement(
    "Worldwide Improvement",
    "Get a perfect score on Worldwide in Normal Mode",
    points=5,
    trigger=
        score_perfect(worldwide, 10)
)
achievement(
    "Worldwide Perfection",
    "Get a perfect score on Worldwide in Hard Mode",
    points=10,
    trigger=        
        score_perfect(worldwide, 11)
)
// $135470: [16 bytes] Song Entry - Elevate:
//          - [32bit] Elevate - High Score - Normal Mode
//          - [32bit] Elevate - High Score - Hard Mode
//          - [8bit] Elevate - Star Count - Normal Mode
//          - [8bit] Elevate - Star Count - Hard Mode
//          - [8bit] Elevate - Perfect Obtained - Normal Mode
//          - [8bit] Elevate - Perfect Obtained - Hard Mode
//          - [8bit] Elevate - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] Elevate - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
elevate = 0x135470
achievement(
    "Elevating BTR's Success",
    "Get a perfect score on Elevate in Normal Mode",
    points=5,
    trigger=
        score_perfect(elevate, 10)
)
achievement(
    "Elevated to the Top",
    "Get a perfect score on Elevate in Hard Mode",
    points=10,
    trigger=
        score_perfect(elevate, 11)
)
// $135480: [8bit] Stage Clear - The Palm Woods (Normal Mode)
//          0x00=No
//          0x01=Yes
// $135481: [8bit] Stage Clear - The Palm Woods (Hard Mode)
//          0x00=No
//          0x01=Yes
// $135484: [16 bytes] Song Entry - Windows Down:
//          - [32bit] Windows Down - High Score - Normal Mode
//          - [32bit] Windows Down - High Score - Hard Mode
//          - [8bit] Windows Down - Star Count - Normal Mode
//          - [8bit] Windows Down - Star Count - Hard Mode
//          - [8bit] Windows Down - Perfect Obtained - Normal Mode
//          - [8bit] Windows Down - Perfect Obtained - Hard Mode
//          - [8bit] Windows Down - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] Windows Down - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
windows_down = 0x135484
achievement(
    "Windows Up... For Now",
    "Get a perfect score on Windows Down in Normal Mode",
    points=5,
    trigger=
        score_perfect(windows_down, 10)
)
achievement(
    "Windows All Down!",
    "Get a perfect score on Windows Down in Hard Mode",
    points=10,
    trigger=
        score_perfect(windows_down, 11)
)
// $135494: [16 bytes] Song Entry - Boyfriend:
//          - [32bit] Boyfriend - High Score - Normal Mode
//          - [32bit] Boyfriend - High Score - Hard Mode
//          - [8bit] Boyfriend - Star Count - Normal Mode
//          - [8bit] Boyfriend - Star Count - Hard Mode
//          - [8bit] Boyfriend - Perfect Obtained - Normal Mode
//          - [8bit] Boyfriend - Perfect Obtained - Hard Mode
//          - [8bit] Boyfriend - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] Boyfriend - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
boyfriend = 0x135494
achievement(
    "Your B-B-B-B-Boyfriendd",
    "Get a perfect score on Boyfriend in Normal Mode",
    points=5,
    trigger=
        score_perfect(boyfriend, 10)   
)
achievement(
    "2010 Pop Doesn't Get Better",
    "Get a perfect score on Boyfriend in Hard Mode",
    points=10,
    trigger=
        score_perfect(boyfriend, 11)
)
// $1354A4: [8bit] Stage Clear - Tour Bus (Normal Mode)
//          0x00=No
//          0x01=Yes
// $1354A5: [8bit] Stage Clear - Tour Bus (Hard Mode)
//          0x00=No
//          0x01=Yes
// $1354A8: [16 bytes] Song Entry - You're Not Alone:
//          - [32bit] You're Not Alone - High Score - Normal Mode
//          - [32bit] You're Not Alone - High Score - Hard Mode
//          - [8bit] You're Not Alone - Star Count - Normal Mode
//          - [8bit] You're Not Alone - Star Count - Hard Mode
//          - [8bit] You're Not Alone - Perfect Obtained - Normal Mode
//          - [8bit] You're Not Alone - Perfect Obtained - Hard Mode
//          - [8bit] You're Not Alone - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] You're Not Alone - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
not_alone = 0x1354A8
achievement(
    "With Your Pals!",
    "Get a perfect score on You're Not Alone in Normal Mode",
    points=10,
    trigger=
        score_perfect(not_alone, 5)
)
achievement(
    "Never Alone!",
    "Get a perfect score on You're Not Alone in Hard Mode",
    points=10,
    trigger=
        score_perfect(not_alone, 11)
)
// $1354B8: [16 bytes] Song Entry - Til I Forget About You:
//          - [32bit] Til I Forget About You - High Score - Normal Mode
//          - [32bit] Til I Forget About You - High Score - Hard Mode
//          - [8bit] Til I Forget About You - Star Count - Normal Mode
//          - [8bit] Til I Forget About You - Star Count - Hard Mode
//          - [8bit] Til I Forget About You - Perfect Obtained - Normal Mode
//          - [8bit] Til I Forget About You - Perfect Obtained - Hard Mode
//          - [8bit] Til I Forget About You - Song Cleared Once - Normal Mode - 0x00=No,0x01=Yes
//          - [8bit] Til I Forget About You - Song Cleared Once - Hard Mode - 0x00=No, 0x01=Yes
forget_about_you = 0x1354B8
achievement(
    "Who Are You?",
    "Get a perfect score on Til I Forget About You in Normal Mode",
    points=5,
    trigger=
        score_perfect(forget_about_you, 10)
)
achievement(
    "Never Forget Jendall",
    "Get a perfect score on Til I Forget About You in Hard Mode",
    points=10,
    trigger=
        score_perfect(forget_about_you, 11)
)
//==========RICH PRESENCE==========

rich_presence_conditional_display(game_state() == in_game, "Performing {0} on {1} 🏆 {2}",
    rich_presence_lookup("Song", active_song(), songs),
    rich_presence_lookup("Mode", mode(), active_mode),
    rich_presence_value("Score", current_score())     
)
// $0B1E10: [32bit] Screen ID
//          0xff=Game Not Loaded
//          0x05=Licensed By Nintendo Splash
//          0x06=Nickelodeon Splash
//          0x07=GameMill Entertainment Splash
//          0x08=Black Lantern Studios Splash
//          0x09=Title Screen
//          0x0a=Main Menu
//          0x0b=Credits
//          0x0c=Profile Select Screen
//          0x0e=Options
//          0x0f=Song Selection!
//          0x19=Photo Album Screen
function active_screen() => dword(0x0B1E10)
other_screens = {
    0x9:"On the Title Screen...",
    0xa:"On the Main Menu...",
    0xb:"Viewing the Credits...",
    0xc:"Selecting a profile...",
    0xe:"Changing Options...",
    0xf:"Selecting a Song..."
}
// $1354DC: [NBit] Normal Mode Photo Unlock Bitflags (1-8)
// $1354DD: [NBit] Hard Mode Photo Unlock Bitflags (9-16)

photo_album = 0x19
rich_presence_conditional_display(active_screen() == photo_album, "Viewing the BTR 📷 Album!, {0}/16",
    rich_presence_value("Photos", bitcount(0x1354DC) + bitcount(0x1354DD))
)
rich_presence_display("{0}",
    rich_presence_lookup("Screen", active_screen(), other_screens, "Loading...")
)
// $0E1AC0: [32bit] Active Profile Number
//          0x00=Profile 1
//          0x01=Profile 2
//          0x02=Profile 3
// $0B1E00: [32bit] Last Screen ID Visited

///=====LEADERBOARD DUMP - SPORYTIKE=====
leaderboard(
    id = 28774, title = "Rocque Records - Big Night",
    description = "Normal Mode",
    start  = dword(0x135408) == 0 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28775, title = "Rocque Records - Big Night",
    description = "Hard Mode",
    start  = dword(0x135408) == 0 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28776, title = "Rocque Records - I Know You Know",
    description = "Normal Mode",
    start  = dword(0x135408) == 3 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28783, title = "Rocque Records - I Know You Know",
    description = "Hard Mode",
    start  = dword(0x135408) == 3 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28777, title = "The Palm Woods - Worldwide",
    description = "Normal Mode",
    start  = dword(0x135408) == 5 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28784, title = "The Palm Woods - Worldwide",
    description = "Hard Mode",
    start  = dword(0x135408) == 5 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28779, title = "The Palm Woods - Elevate",
    description = "Normal Mode",
    start  = dword(0x135408) == 2 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28785, title = "The Palm Woods - Elevate",
    description = "Hard Mode",
    start  = dword(0x135408) == 2 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28778, title = "Tour Bus - Windows Down",
    description = "Normal Mode",
    start  = dword(0x135408) == 7 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28786, title = "Tour Bus - Windows Down",
    description = "Hard Mode",
    start  = dword(0x135408) == 7 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28780, title = "Tour Bus - Boyfriend",
    description = "Normal Mode",
    start  = dword(0x135408) == 1 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28787, title = "Tour Bus - Boyfriend",
    description = "Hard Mode",
    start  = dword(0x135408) == 1 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28781, title = "Backstage Theatre - You’re Not Alone",
    description = "Normal Mode",
    start  = dword(0x135408) == 6 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28788, title = "Backstage Theatre - You’re Not Alone",
    description = "Hard Mode",
    start  = dword(0x135408) == 6 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28782, title = "Backstage Theatre - Til I Forget About You",
    description = "Normal Mode",
    start  = dword(0x135408) == 4 && dword(0x1354EC) == 0 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
leaderboard(
    id = 28789, title = "Backstage Theatre - Til I Forget About You",
    description = "Hard Mode",
    start  = dword(0x135408) == 4 && dword(0x1354EC) == 1 && prev(dword(0x0B1E10)) != 20 && dword(0x0B1E10) == 20,
    cancel = always_false(),
    submit = always_true(),
    value = dword(0x135400),
    format = "VALUE"
)
// $135410: [32bit] Total Cue Count
// $135418: [32bit] Cues - Great
// $13541C: [32bit] Cues - Good
// $135420: [32bit] Cues - Ok
// $135424: [32bit] Cues - Miss
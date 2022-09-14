// Guitar Hero III: Legends of Rock
// #ID = 5579

// $000000: SnowPin sucks
// $000001: No, Pinguu does.
// $000002: This game sucks
// $11EC84: [32bit] Track Speed
// $2616DC: [32bit BE] Debug Mode Active
//          0x24020000=Active
// $36DD74: [32-bit] Difficulty - Career
// $371EF0: [32bit] Game State
//          0x00=No
//          0x01=In Game
// $373128: [32-bit] Notes Passed in Current Song
// $373168: [32-bit] Current Score
// $373180: [32-bit] Current Combo
// $373188: [32-bit] Current Multiplier
// $3741A0: [ASCII] Displayed Money
// $39A2D0: [32bit] Cash
// $3BEF48: [Float] Track Time?
//          Slow Ride Track End = 0x437a4c88
// $43C8E0: [32bit] Possibly Cash Pointer
//          
//          +0x04
//          ++0x0c (9 times offset 0x0c)
//          ++++++++++0x08 = Cash [32bit]
//          
//          Usage:
//          I:0xX43c8e0_I:0xX000004_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_0xX000000=0
// $4B9CC0: [32bit] Practice Part Selected
//          0x00=Guitar
//          0x01=Bass
// $4BAE30: [32-bit] Main Menu - Option Selected (Dynamic)
// $542214: [24-bit] Precision Mode Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $5424F8: [32-Bit] Pointer +0xc for Current Character
// $544C60: [24-bit] Hyperspeed Cheat Pointer
//          +0x0c
//          0x00 - Off
//          0x01 - Hyperspeed 1
//          0x02 - Hyperspeed 2
//          0x03 - Hyperspeed 3
//          0x04 - Hyperspeed 4
//          0x05 - Hyperspeed 5
// $5451A8: [32-Bit] Pointer +0xc for Total Guitars Unlocked when picking one
// $547960: [24-bit] Easy Expert Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off

// $54D208: [32-Bit] Pointer +0x20 for Total Unlocked Characters when picking one
// $54E290: [24-bit] Performance Mode Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $553EE8: [24-bit] Large Gems Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $5555D4: [24-bit] No Fail Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $55E8F0: [32bit] Pointer
//          +0x0c - Air Guitar Cheat
//          0x01=On
//          0x02=Off
// $55EA80: [32bit] Pointer - Venue
//          +0xc = Selected Venue in Career Menu
// $5969E0: [32bit] Table Start - Hyperspeed Option?
// $5AA17C: [32bit] Potential Cash Pointer
//          +0x8 = Balance?
// $5D4DC8: [32-bit] [Career] [Easy] Slow Ride Hi-Score
// $5D4DE8: [32-bit] [Career] [Easy] Slow Ride Star Rating
// $5EC748: [32-bit] [Career] [Easy] Rock and Roll All Nite Hi-Score
// $5EC768: [32-bit] [Career] [Easy] Rock and Roll All Nite Star Rating?
// $617828: Slow Ride 2
// $62EA78: [32bit] Cash (Dynamic 2)
// $630D28: [32bit] Cash (Dynamic 1)
// $6404D4: Disintegrator - With Radar!
//          
//          0x005a60b0=Not Purchased
//          0x005a60a0=Purchased
// $640AE4: Girl Friday - Lady Shapes
//          0x005da700=Not Purchased
//          0x005da6e0=Purchased
// $640C4C: Focus - Fatboy
//          
//          0x005d2460=Not Purchased
//          0x005d2440=Purchased
// $642950: [32bit] SLOW RIDE QUICKPLAY - Somehow is only consistent thing for offset between two addresses
// $67E384: [32-bit] Difficulty - Quick Play
// $67E6CC: [32bit] Selected Venue
// $67E7A8: [32bit] Hyperspeed setting
// $67EB68: Song Time?
// $67F9DC: [32-Bit] Selected Guitar Slot (dynamic)
// $67FB80: [16-Bit] ID of Guitar/Finishes highlighted in the shop (dynamic)
// $67FC34: [32-Bit] Selected Outfit Slot (dynamic)
// $67FC5C: [32-Bit] Selected Outfit Style Slot (dynamic)
// $688B98: [32-bit] Song Time (Dynamic save 1)
// $68A088: [Float] - Song Ends at 0.0
// $68A1FC: +0x174
// $7C9E40: [32bit] Potential Rock Meter Region Pointer

// $A6B1F4: [32bit] Character ID
// $A6B224: [32bit] Equipped Guitar ID

// $127FD40: [ASCII 64 bytes] Current Guitar Model File Path
// $127FD52: [ASCII * bytes] Current Guitar Model
// $1B3F32B: [32-bit BE] [ASCII] Song Title Letters 1-4 of loaded song
//           Slow Ride - 0x736c6f77
//           Talk Dirty To me - 0x74616c6b
//           Hit Me With Your Best Shot - 0x6869746d
//           Story Of My Life - 0x73746f72
//           Rock and Roll All Nite - 0x726f636b
//           Sabotage - 0x7361626f
//           Mississippi Queen - 0x6d697373
//           School's Out - 0x7363686f
//           Sunshine of Your Love - 0x73756e73
//           Barracuda - 0x62617272
//           Bulls on Parade - 0x62756c6c
//           Reptilia - 0x72657074
//           When You Were Young - 0x7768656e
//           Miss Murder - 0x6d697373
//           The Seeker - 0x74686573
//           Lay Down - 0x6c617964
//           Paint It Black - 0x7061696e
//           Suck My Kiss - 0x7375636b
//           Paranoid - 0x70617261
//           Anarchy in the U.K. - 0x616e6172
//           Kool Thing - 0x6b6f6f6c
//           My Name Is Jonas - 0x6d796e61
//           Even Flow - 0x6576656e
//           Cities On Flame with Rock & Roll - 0x63697469
//           Holiday In Cambodia - 0x686f6c69
//           Rock You Like a Hurricane - 0x726f636b
//           Same Old Song and Dance - 0x73616d65
//           La Grange - 0x6c616772
//           Welcome To The Jungle - 0x77656c63
//           Helicopter - 0x68656c69
//           Black Magic Woman - 0x626c6163
//           Cherub Rock - 0x63686572
//           Black Sunshine - 0x626c6163
//           The Metal - 0x7468656d
//           Pride and Joy - 0x70726964
//           Monsters - 0x6d6f6e73
//           Before I Forget - 0x6265666f
//           Stricken - 0x73747269
//           3's & 7's - 0x74687265
//           Knights of Cydonia - 0x6b6e6967
//           Cult of Personality - 0x63756c74
//           Raining Blood - 0x7261696e
//           Cliffs of Dover - 0x636c6966
//           The Number of the Beast - 0x6e756d62
//           One - 0x6f6e652e
//           =========================
//           GUITAR BATTLES
//           Tom Morello - 0x626f7373
//           Slash - 0x626f7373
//           Lou - 0x626f7373
//           =========================
//           BONUS SONGS
//           Avalancha - 0x6176616c
//           In The Belly Of A Shark - 0x62656c6c
//           Can't Be Saved - 0x63616e74
//           Closer - 0x636c6f73
//           Don't Hold Back - 0x646f6e74
//           Down 'N Dirty - 0x646f776e
//           F.C.P.R.E.M.I.X. - 0x66637072
//           Generation Rock - 0x67656e65
//           Go That Far - 0x676f7468
//           Hier Kommt Alex - 0x68696572
//           I'm In The Band - 0x696d696e
//           Impulse - 0x696d7075
//           In Love - 0x696e6c6f
//           Mauvais Garcon - 0x6d617576
//           Metal Heavy Lady - 0x6d657461
//           Minus Celsius - 0x6d696e75
//           My Curse - 0x6d796375
//           Nothing For Me Here - 0x6e6f7468
//           Prayer Of The Refugee - 0x70726179
//           Radio Song - 0x72616469
//           Ruby - 0x72756279
//           She Bangs The Drums - 0x73686562
//           Take This Life - 0x74616b65
//           The Way It Ends - 0x74686577
//           Through The Fire and Flames - 0x74687275
function firstsongID() => dword_be(0x1B3F32B)
// $1B3F32F: [32-bit BE] [ASCII] Song Title Letters 5-8 of loaded song
//           Slow Ride -  0x72696465
//           Talk Dirty To Me - 0x64697274
//           Hit Me With Your Best Shot - 0x65776974
//           Story Of My Life - 0x796f666d
//           Rock and Roll All Nite - 0x6e726f6c
//           Sabotage - 0x74616765
//           Mississippi Queen - 0x69737369
//           School's Out - 0x6f6c736f
//           Sunshine of Your Love - 0x68696e65
//           Barracuda - 0x61637564
//           Bulls on Parade - 0x736f6e70
//           Reptilia - 0x696c6961
//           When You Were Young - 0x796f7577
//           Miss Murder - 0x6d757264
//           The Seeker - 0x65656b65
//           Lay Down - 0x6f776e2e
//           Paint It Black - 0x74697462
//           Suck My Kiss - 0x6d796b69
//           Paranoid - 0x6e6f6964
//           Anarchy in the U.K. - 0x63687969
//           Kool Thing - 0x7468696e
//           My Name Is Jonas - 0x6d656973
//           Even Flow - 0x666c6f77
//           Cities On Flame with Rock & Roll - 0x65736f6e
//           Holiday In Cambodia - 0x64617969
//           Rock You Like a Hurricane - 0x756c696b
//           Same Old Song and Dance - 0x6f6c6473
//           La Grange - 0x616e6765
//           Welcome To The Jungle - 0x6f6d6574
//           Helicopter - 0x636f7074
//           Black Magic Woman - 0x6b6d6167
//           Cherub Rock - 0x7562726f
//           Black Sunshine - 0x6b73756e
//           The Metal - 0x6574616c
//           Pride and Joy - 0x656e6a6f
//           Monsters - 0x74657273
//           Before I Forget - 0x72656966
//           Stricken - 0x636b656e
//           3's & 7's - 0x6573616e
//           Knights of Cydonia - 0x6874736f
//           Cult of Personality - 0x6f667065
//           Raining Blood - 0x696e6762
//           Cliffs of Dover - 0x66736f66
//           The Number of the Beast - 0x65726f66
//           One - 0x6d69642e
//           =========================
//           GUITAR BATTLES
//           Tom Morello - 0x746f6d2e
//           Slash - 0x736c6173
//           Lou - 0x64657669
//           =========================
//           BONUS SONGS
//           Avalancha - 0x616e6368
//           In The Belly Of A Shark - 0x796f6661
//           Can't Be Saved - 0x62657361
//           Closer - 0x65722e6d
//           Don't Hold Back - 0x686f6c64
//           Down 'N Dirty - 0x6e646972
//           F.C.P.R.E.M.I.X. - 0x656d6978
//           Generation Rock - 0x72617469
//           Go That Far - 0x61746661
//           Hier Kommt Alex - 0x6b6f6d6d
//           I'm In The Band - 0x74686562
//           Impulse - 0x6c73652e
//           In Love - 0x76652e6d
//           Mauvais Garcon - 0x61697367
//           Metal Heavy Lady - 0x6c686561
//           Minus Celsius - 0x7363656c
//           My Curse - 0x7273652e
//           Nothing For Me Here - 0x696e6766
//           Prayer Of The Refugee - 0x65726f66
//           Radio Song - 0x6f736f6e
//           Ruby - 0x2e6d6964
//           She Bangs The Drums - 0x616e6773
//           Take This Life - 0x74686973
//           The Way It Ends - 0x61796974
//           Through The Fire and Flames - 0x66697265
function secondsongID() => dword_be(0x1B3F32F)
// $548628: [32-bit] Pointer
//          +0x20 - Difficulty
difficulty = {
    0:"Easy",
    1:"Medium",
    2:"Hard",
    3:"Expert"
}
function difficulty() => dword(dword(0x548628) + 0x20)
// $371EF0: [32bit] Game State
//          0x00=No
//          0x01=In Game
function game_state() => dword(0x371EF0)
menu = 0
in_game = 1
function debug_block() => dword(0x2616dc) != 0x224
function guitar_battle_check() => firstsongID() == 0x626f7373
guitar_bosses = {
    "Tom Morello":0x746f6d2e,
    "Slash":0x736c6173,
    "Lou":0x64657669
}
// $A6B1D4: [32bit] Player 1 Rock Meter - bd6d0a7a = death
function player_rock_meter() => float(0xA6B1D4)
// $A6B834: [Float] Player 2 Rock Meter
//          Default Value is 1.0
function foe_rock_meter() => float(0xA6B834)
function guitar_battle(foe, my_difficulty) =>
    debug_block() &&
    game_state() == in_game &&   
    guitar_battle_check() &&
    secondsongID() == guitar_bosses[foe] &&
    difficulty() == my_difficulty &&
    player_rock_meter() > 0.0 &&
    foe_rock_meter() < prev(foe_rock_meter()) && //- Making a Github issue for Jamiras to add in support for the following line
    foe_rock_meter() < 0.0
achievement(
    "Morello is Easy",
    "Defeat Tom Morello in a Guitar battle on Easy!",
    points=5,
    trigger=
        guitar_battle("Tom Morello", 0)
)
achievement(
    "Slash and Dash Easy Mode",
    "Defeat Slash in a Guitar battle on Easy!",
    points=5,
    trigger=
        guitar_battle("Slash", 0)
)
achievement(
    "The Devil Went Down on Easy",
    "Defeat Lou in a Guitar battle on Easy!",
    points=10,
    trigger=
        guitar_battle("Lou", 0)
)
achievement(
    "Morello... Still Easy!",
    "Defeat Tom Morello in a guitar battle on Medium!",
    points=5,
    trigger=
        guitar_battle("Tom Morello", 1)
)
achievement(
    "Slash Broke A String",
    "Defeat Slash in a guitar battle on Medium!",
    points=5,
    trigger=
        guitar_battle("Slash", 1)
)
achievement(
    "Lou... Now Has Blue!",
    "Defeat Lou in a guitar battle on Medium!",
    points=10,
    trigger=
        guitar_battle("Lou", 1)
)
achievement(
    "Morello's Harder Riffs",
    "Defeat Tom Morello in a guitar battle on Hard!",
    points=10,
    trigger=
        guitar_battle("Tom Morello", 2)
)
achievement(
    "Knockin' Off Slashs' Sunglasses",
    "Defeat Slash in a guitar battle on Hard!",
    points=10,
    trigger=
        guitar_battle("Slash", 2)
)
achievement(
    "Send Lou Back to the Hard Circle of Hell!",
    "Defeat Lou in a guitar battle on Hard!",
    points=25,
    trigger=
        guitar_battle("Lou", 2)
)
achievement(
    "Tom Morello's Final Defeat",
    "Defeat Tom Morello in a guitar battle on Expert!",
    points=10,
    trigger=
        guitar_battle("Tom Morello", 3)
)
achievement(
    "Slashed Out Guitar Strings",
    "Defeat Slash in a guitar battle on Expert!",
    points=25,
    trigger=
        guitar_battle("Slash", 3)
)
achievement(
    "Sned Lou Back to Damnation!",
    "Defeat Lou in a guitar battle on expert!",
    points=50,
    trigger=
        guitar_battle("Lou", 3)
)
//Rich Presence
guitar_bosses_rp = {
    0x746f6d2e:"Tom Morello",
    0x736c6173:"Slash",
    0x64657669:"Lou"
}
// $373168: [32-bit] Current Score
function current_score() => dword(0x373168)
//We generate the following function because the first ID ascii list has conflicting issues. Hopefully we get argumentative RP return values someday, but for now this is a workaround.
function song_exception_check(id_one, id_two) => firstsongID() == id_one && secondsongID() == id_two
song_rp_list = { //First ID. 
    0x736c6f77:"Slow Ride",
    0x74616c6b:"Talk Dirty To Me",
    0x6869746d:"Hit Me With Your Best Shot",
    0x73746f72:"Story Of My Life",
    0x7361626f:"Sabotage",
    0x7363686f:"School's Out",
    0x73756e73:"Sunshine of Your Love",
    0x62617272:"Barracuda",
    0x62756c6c:"Bulls on Parade",
    0x72657074:"Reptilia",
    0x7768656e:"When You Were Young",
    0x6d697373:"Miss Murder",
    0x74686573:"The Seeker",
    0x6c617964:"Lay Down",
    0x7061696e:"Paint It Black",
    0x7375636b:"Suck My Kiss",
    0x70617261:"Paranoid",
    0x616e6172:"Anarchy in the U.K.",
    0x6b6f6f6c:"Kool Thing",
    0x6d796e61:"My Name Is Jonas",
    0x6576656e:"Even Flow",
    0x63697469:"Cities On Flame with Rock & Roll",
    0x686f6c69:"Holiday In Cambodia",
    0x726f636b:"Rock You Like a Hurricane",
    0x73616d65:"Same Old Song and Dance",
    0x6c616772:"La Grange",
    0x77656c63:"Welcome To The Jungle",
    0x68656c69:"Helicopter",
    0x63686572:"Cherub Rock",
    0x626c6163:"Black Sunshine",
    0x7468656d:"The Metal",
    0x70726964:"Pride and Joy",
    0x6d6f6e73:"Monsters",
    0x6265666f:"Before I Forget",
    0x73747269:"Stricken",
    0x74687265:"3's & 7's",
    0x6b6e6967:"Knights of Cydonia",
    0x63756c74:"Cult of Personality",
    0x7261696e:"Raining Blood",
    0x636c6966:"Cliffs of Dover",
    0x6e756d62:"The Number of the Beast",
    0x6f6e652e:"One",
    0x6176616c:"Avalancha",
    0x62656c6c:"In The Belly Of A Shark",
    0x63616e74:"Can't Be Saved",
    0x636c6f73:"Closer",
    0x646f6e74:"Don't Hold Back",
    0x646f776e:"Down 'N Dirty",
    0x66637072:"F.C.P.R.E.M.I.X.",
    0x67656e65:"Generation Rock",
    0x676f7468:"Go That Far",
    0x68696572:"Hier Kommt Alex",
    0x696d696e:"I'm In The Band",
    0x696d7075:"Impulse",
    0x696e6c6f:"In Love",
    0x6d617576:"Mauvais Garcon",
    0x6d657461:"Metal Heavy Lady",
    0x6d696e75:"Minus Celsius",
    0x6d796375:"My Curse",
    0x6e6f7468:"Nothing For Me Here",
    0x70726179:"Prayer Of The Refugee",
    0x72616469:"Radio Song",
    0x72756279:"Ruby",
    0x73686562:"She Bangs The Drums",
    0x74616b65:"Take This Life",
    0x74686577:"The Way It Ends",
    0x74687275:"Through The Fire and Flames"
}
function difficulty_read() => rich_presence_lookup("Difficulty", difficulty(), difficulty)
rich_presence_conditional_display(guitar_battle_check() && game_state() == in_game, "Battling {0} on {1}",
    rich_presence_lookup("Boss", secondsongID(), guitar_bosses_rp),
    difficulty_read()   
)
rich_presence_conditional_display(song_exception_check(0x626c6163, 0x6b6d6167) && game_state() == in_game, "Rockin' out to Black Magic Woman on {0}. Score: {1}", //Black Magic Woman
    difficulty_read(),
    rich_presence_macro("Number", current_score())
)
rich_presence_conditional_display(song_exception_check(0x6d697373, 0x69737369) && game_state() == in_game, "Rockin' out to Mississippi Queen on {0}. Score: {1}", //Mississippi Queen
    difficulty_read(),
    rich_presence_macro("Number", current_score())
)
rich_presence_conditional_display(song_exception_check(0x726f636b, 0x6e726f6c) && game_state() == in_game, "Rockin' out to Rock and Roll All Nite on {0}. Score: {1}",
    difficulty_read(),
    rich_presence_macro("Number", current_score())
)
rich_presence_conditional_display(game_state() == in_game, "Rockin' out to {0} on {1}. Score: {2}",
    rich_presence_lookup("Song", firstsongID(), song_rp_list),
    difficulty_read(),
    rich_presence_macro("Number", current_score())
)
rich_presence_display("In Menu")
//Leaderboards

song_table = {
    "Slow Ride":{"id_one":0x736c6f77, "id_two":0x72696465, "max_notes":551, "points":25},
    "Talk Dirty To Me":{"id_one":0x74616c6b, "id_two":0x64697274, "max_notes":772, "points":25},
    "Hit Me With Your Best Shot":{"id_one":0x6869746d, "id_two":0x65776974, "max_notes":491, "points":25},
    "Story Of My Life":{"id_one":0x73746f72, "id_two":0x796f666d, "max_notes":935, "points":25},
    "Rock and Roll All Nite":{"id_one":0x726f636b, "id_two":0x6e726f6c, "max_notes":515, "points":25},
    "Sabotage":{"id_one":0x7361626f, "id_two":0x74616765, "max_notes":651, "points":25},
    "Mississippi Queen":{"id_one":0x6d697373, "id_two":0x69737369, "max_notes":376, "points":25},
    "School's Out":{"id_one":0x7363686f, "id_two":0x6f6c736f, "max_notes":441, "points":25},
    "Sunshine of Your Love":{"id_one":0x73756e73, "id_two":0x68696e65, "max_notes":701, "points":25},
    "Barracuda":{"id_one":0x62617272, "id_two":0x61637564, "max_notes":858, "points":25},
    "Bulls on Parade":{"id_one":0x62756c6c, "id_two":0x736f6e70, "max_notes":743, "points":25},
    "Reptilia":{"id_one":0x72657074, "id_two":0x696c6961, "max_notes":829, "points":25},
    "When You Were Young":{"id_one":0x7768656e, "id_two":0x796f7577, "max_notes":564, "points":25},
    "Miss Murder":{"id_one":0x6d697373, "id_two":0x6d757264, "max_notes":739, "points":25},
    "The Seeker":{"id_one":0x74686573, "id_two":0x65656b65, "max_notes":760, "points":25},
    "Lay Down":{"id_one":0x6c617964, "id_two":0x6f776e2e, "max_notes":767, "points":25},
    "Paint It Black":{"id_one":0x7061696e, "id_two":0x74697462, "max_notes":942, "points":25},
    "Suck My Kiss":{"id_one":0x7375636b, "id_two":0x6d796b69, "max_notes":562, "points":25},
    "Paranoid":{"id_one":0x70617261, "id_two":0x6e6f6964, "max_notes":685, "points":25},
    "Anarchy in the U.K.":{"id_one":0x616e6172, "id_two":0x63687969, "max_notes":792, "points":25},
    "Kool Thing":{"id_one":0x6b6f6f6c, "id_two":0x7468696e, "max_notes":1032, "points":25},
    "My Name Is Jonas":{"id_one":0x6d796e61, "id_two":0x6d656973, "max_notes":843, "points":25},
    "Even Flow":{"id_one":0x6576656e, "id_two":0x666c6f77, "max_notes":1047, "points":25},
    "Cities On Flame with Rock & Roll":{"id_one":0x63697469, "id_two":0x65736f6e, "max_notes":910, "points":25},
    "Holiday In Cambodia":{"id_one":0x686f6c69, "id_two":0x64617969, "max_notes":1361, "points":25},
    "Rock You Like a Hurricane":{"id_one":0x726f636b, "id_two":0x756c696b, "max_notes":843, "points":25},
    "Same Old Song and Dance":{"id_one":0x73616d65, "id_two":0x6f6c6473, "max_notes":626, "points":25},
    "La Grange":{"id_one":0x6c616772, "id_two":0x616e6765, "max_notes":815, "points":25},
    "Welcome To The Jungle":{"id_one":0x77656c63, "id_two":0x6f6d6574, "max_notes":937, "points":25},
    "Helicopter":{"id_one":0x68656c69, "id_two":0x636f7074, "max_notes":871, "points":50},
    "Black Magic Woman":{"id_one":0x626c6163, "id_two":0x6b6d6167, "max_notes":728, "points":25},
    "Cherub Rock":{"id_one":0x63686572, "id_two":0x7562726f, "max_notes":1163, "points":25},
    "Black Sunshine":{"id_one":0x626c6163, "id_two":0x6b73756e, "max_notes":994, "points":25},
    "The Metal":{"id_one":0x7468656d, "id_two":0x6574616c, "max_notes":882, "points":50},
    "Pride and Joy":{"id_one":0x70726964, "id_two":0x656e6a6f, "max_notes":982, "points":25},
    "Monsters":{"id_one":0x6d6f6e73, "id_two":0x74657273, "max_notes":1091, "points":25},
    "Before I Forget":{"id_one":0x6265666f, "id_two":0x72656966, "max_notes":1091, "points":100},
    "Stricken":{"id_one":0x73747269, "id_two":0x636b656e, "max_notes":1080, "points":50},
    "3's & 7's":{"id_one":0x74687265, "id_two":0x6573616e, "max_notes":961, "points":50},
    "Knights of Cydonia":{"id_one":0x6b6e6967, "id_two":0x6874736f, "max_notes":1917, "points":50},
    "Cult of Personality":{"id_one":0x63756c74, "id_two":0x6f667065, "max_notes":1278, "points":25},
    "Raining Blood":{"id_one":0x7261696e, "id_two":0x696e6762, "max_notes":1247, "points":100},
    "Cliffs of Dover":{"id_one":0x636c6966, "id_two":0x66736f66, "max_notes":1240, "points":50},
    "The Number of the Beast":{"id_one":0x6e756d62, "id_two":0x65726f66, "max_notes":1515, "points":50},
    "One":{"id_one":0x6f6e652e, "id_two":0x6d69642e, "max_notes":2207, "points":100},
    "Avalancha":{"id_one":0x6176616c, "id_two":0x616e6368, "max_notes":969, "points":25},
    "In The Belly Of A Shark":{"id_one":0x62656c6c, "id_two":0x796f6661, "max_notes":738, "points":50},
    "Can't Be Saved":{"id_one":0x63616e74, "id_two":0x62657361, "max_notes":723, "points":25},
    "Closer":{"id_one":0x636c6f73, "id_two":0x65722e6d, "max_notes":467, "points":25},
    "Don't Hold Back":{"id_one":0x646f6e74, "id_two":0x686f6c64, "max_notes":945, "points":25},
    "Down 'N Dirty":{"id_one":0x646f776e, "id_two":0x6e646972, "max_notes":1278, "points":25},
    "F.C.P.R.E.M.I.X.":{"id_one":0x66637072, "id_two":0x656d6978, "max_notes":1362, "points":25},
    "Generation Rock":{"id_one":0x67656e65, "id_two":0x72617469, "max_notes":734, "points":25},
    "Go That Far":{"id_one":0x676f7468, "id_two":0x61746661, "max_notes":835, "points":25},
    "Hier Kommt Alex":{"id_one":0x68696572, "id_two":0x6b6f6d6d, "max_notes":982, "points":25},
    "I'm In The Band":{"id_one":0x696d696e, "id_two":0x74686562, "max_notes":717, "points":25},
    "Impulse":{"id_one":0x696d7075, "id_two":0x6c73652e, "max_notes":1054, "points":25},
    "In Love":{"id_one":0x696e6c6f, "id_two":0x76652e6d, "max_notes":910, "points":25},
    "Mauvais Garcon":{"id_one":0x6d617576, "id_two":0x61697367, "max_notes":780, "points":25},
    "Metal Heavy Lady":{"id_one":0x6d657461, "id_two":0x6c686561, "max_notes":601, "points":25},
    "Minus Celsius":{"id_one":0x6d696e75, "id_two":0x7363656c, "max_notes":613, "points":25},
    "My Curse":{"id_one":0x6d796375, "id_two":0x7273652e, "max_notes":1399, "points":25},
    "Nothing For Me Here":{"id_one":0x6e6f7468, "id_two":0x696e6766, "max_notes":947, "points":25},
    "Prayer Of The Refugee":{"id_one":0x70726179, "id_two":0x65726f66, "max_notes":745, "points":25},
    "Radio Song":{"id_one":0x72616469, "id_two":0x6f736f6e, "max_notes":519, "points":25},
    "Ruby":{"id_one":0x72756279, "id_two":0x2e6d6964, "max_notes":463, "points":25},
    "She Bangs The Drums":{"id_one":0x73686562, "id_two":0x616e6773, "max_notes":684, "points":25},
    "Take This Life":{"id_one":0x74616b65, "id_two":0x74686973, "max_notes":1608, "points":25},
    "The Way It Ends":{"id_one":0x74686577, "id_two":0x61796974, "max_notes":1883, "points":100},
    "Through The Fire and Flames":{"id_one":0x74687275, "id_two":0x66697265, "max_notes":3722, "points":100}
}
// $373128: [32-bit] Notes Passed in Current Song
function notes() => dword(0x373128)
function track_timer() => float(0x3bef48)
function track_running() => dword(0x369a64) != 1
// $0547960: [32bit] Pointer - Easy Expert Cheat
//           +0xc = Cheat Activated
//           0x01=On, 0x02=Off
on = 1
off = 2
function cheat_easy_expert() => dword(dword(0x547960) + 0xc)
for song in song_table {
    leaderboard(
        song + " [Expert]",
        "Highest Score!",
        debug_block() && 
             
            difficulty() == 3 &&
            game_state() == in_game &&
            firstsongID() == song_table[song]["id_one"] &&
            secondsongID() == song_table[song]["id_two"] &&
            prev(notes()) == 0 && notes() == 1 && 
            (always_false() || cheat_easy_expert() == off || cheat_easy_expert() == 0xffffffff)
            ,
        game_state() == menu,
        track_running() && notes() == song_table[song]["max_notes"] && track_timer() == prev(track_timer()),
        current_score()
    )    
}
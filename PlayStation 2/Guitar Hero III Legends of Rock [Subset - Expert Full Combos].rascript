// Guitar Hero III: Legends of Rock [Subset - Expert Full Combos]
// #ID = 20373

// $36DD74: [32-bit] Difficulty - Career
function difficulty_career() => dword(0x36DD74)
// $371EF0: [32bit] Game State
//          0x00=No
//          0x01=In Game
function game_state() => dword(0x371EF0)
menu = 0
in_game = 1
// $373128: [32-bit] Notes Passed in Current Song
function notes() => dword(0x373128)
// $373168: [32-bit] Current Score
function current_score() => dword(0x373168)
// $373180: [32-bit] Current Combo
function combo() => dword(0x373180)
// $373188: [32-bit] Current Multiplier
function multiplier() => dword(0x373188)
// $67E384: [32-bit] Difficulty - Quick Play
function difficulty_quickplay() => dword(0x67E384)
// $548628: [32-bit] Pointer
//          +0x20 - Difficulty
difficulty = {
    0:"Easy",
    1:"Medium",
    2:"Hard",
    3:"Expert"
}
function difficulty() => dword(dword(0x548628) + 0x20)
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
function firstsongID() => dword_be(dword(0x798CF0) + 0x3b)
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
function secondsongID() => dword_be(dword(0x798CF0) + 0x3f)
song_table = {
    "Slow Ride":{"id":0xFC3DB2E8, "max_notes":551, "points":25},
    "Talk Dirty To Me":{"id":0xD10828C8, "max_notes":772, "points":25},
    "Hit Me With Your Best Shot":{"id":0x68E8ACF5, "max_notes":491, "points":25},
    "Story Of My Life":{"id":0x24E5E579, "max_notes":935, "points":25},
    "Rock and Roll All Nite":{"id":0xDA21ECBA, "max_notes":515, "points":25},
    "Sabotage":{"id":0x71B14112, "max_notes":651, "points":25},
    "Mississippi Queen":{"id":0xB2BA98AD, "max_notes":376, "points":25},
    "School's Out":{"id":0x80540F4B, "max_notes":441, "points":25},
    "Sunshine of Your Love":{"id":0x9CBFE5E3, "max_notes":701, "points":25},
    "Barracuda":{"id":0xAEE0DC58, "max_notes":858, "points":25},
    "Bulls on Parade":{"id":0xB3AE1B7A, "max_notes":743, "points":25},
    "Reptilia":{"id":0x233F951A, "max_notes":829, "points":25},
    "When You Were Young":{"id":0xE8BAF4E5, "max_notes":564, "points":25},
    "Miss Murder":{"id":0x9AC28451, "max_notes":739, "points":25},
    "The Seeker":{"id":0x5CA68A94, "max_notes":760, "points":25},
    "Lay Down":{"id":0x24541776, "max_notes":767, "points":25},
    "Paint It Black":{"id":0x614910AE, "max_notes":942, "points":25},
    "Suck My Kiss":{"id":0x4A7D84EB, "max_notes":562, "points":25},
    "Paranoid":{"id":0x9F667DE2, "max_notes":685, "points":25},
    "Anarchy in the U.K.":{"id":0xA86A21FF, "max_notes":792, "points":25},
    "Kool Thing":{"id":0x51AD6E8C, "max_notes":1032, "points":25},
    "My Name Is Jonas":{"id":0xDDEBC0CE, "max_notes":843, "points":25},
    "Even Flow":{"id":0x80D135F1, "max_notes":1047, "points":25},
    "Cities On Flame with Rock & Roll":{"id":0x2D77BC7D, "max_notes":910, "points":25},
    "Holiday In Cambodia":{"id":0xF6A3347D, "max_notes":1361, "points":25},
    "Rock You Like a Hurricane":{"id":0x2B3B8EC0, "max_notes":843, "points":25},
    "Same Old Song and Dance":{"id":0x4771DA76, "max_notes":626, "points":25},
    "La Grange":{"id":0x700C4085, "max_notes":815, "points":25},
    "Welcome To The Jungle":{"id":0x3ADA655D, "max_notes":937, "points":25},
    "Helicopter":{"id":0x5A9FD9AE, "max_notes":871, "points":50},
    "Black Magic Woman":{"id":0x00D5E836, "max_notes":728, "points":25},
    "Cherub Rock":{"id":0x8CF2B87A, "max_notes":1163, "points":25},
    "Black Sunshine":{"id":0xA9F17F64, "max_notes":994, "points":25},
    "The Metal":{"id":0x54E72043, "max_notes":882, "points":50},
    "Pride and Joy":{"id":0x8EBC7218, "max_notes":982, "points":25},
    "Monsters":{"id":0x5E055837, "max_notes":1091, "points":25},
    "Before I Forget":{"id":0xE8AB11E2, "max_notes":1091, "points":100},
    "Stricken":{"id":0xAD7C54BA, "max_notes":1080, "points":50},
    "3's & 7's":{"id":0x52F25C10, "max_notes":961, "points":50},
    "Knights of Cydonia":{"id":0x335A5A9F, "max_notes":1917, "points":50},
    "Cult of Personality":{"id":0x23FC5B5F, "max_notes":1278, "points":25},
    "Raining Blood":{"id":0x1CBD9BE7, "max_notes":1247, "points":100},
    "Cliffs of Dover":{"id":0xCE75E130, "max_notes":1240, "points":50},
    "The Number of the Beast":{"id":0x4EE17225, "max_notes":1515, "points":50},
    "One":{"id":0x8593790E, "max_notes":2207, "points":100},
    "Avalancha":{"id":0xC88D7504, "max_notes":969, "points":25},
    "In The Belly Of A Shark":{"id":0x0F590888, "max_notes":738, "points":50},
    "Can't Be Saved":{"id":0xA401F325, "max_notes":723, "points":25},
    "Closer":{"id":0x0FEC074A, "max_notes":467, "points":25},
    "Don't Hold Back":{"id":0x2FCD2D86, "max_notes":945, "points":25},
    "Down 'N Dirty":{"id":0x17221CBD, "max_notes":1278, "points":25},
    "F.C.P.R.E.M.I.X.":{"id":0x1821171E, "max_notes":1362, "points":25},
    "Generation Rock":{"id":0x725509F3, "max_notes":734, "points":25},
    "Go That Far":{"id":0x1A075876, "max_notes":835, "points":25},
    "Hier Kommt Alex":{"id":0xC3189706, "max_notes":982, "points":25},
    "I'm In The Band":{"id":0x6A9010DD, "max_notes":717, "points":25},
    "Impulse":{"id":0x15E308F4, "max_notes":1054, "points":25},
    "In Love":{"id":0x310246E3, "max_notes":910, "points":25},
    "Mauvais Garcon":{"id":0x55D68BD3, "max_notes":780, "points":25},
    "Metal Heavy Lady":{"id":0x10172F4D, "max_notes":601, "points":25},
    "Minus Celsius":{"id":0x55E6D8D4, "max_notes":613, "points":25},
    "My Curse":{"id":0x48130F42, "max_notes":1399, "points":25},
    "Nothing For Me Here":{"id":0x17C2BF3D, "max_notes":947, "points":25},
    "Prayer Of The Refugee":{"id":0xB7F75EAB, "max_notes":745, "points":25},
    "Radio Song":{"id":0x822b4762, "max_notes":519, "points":25},
    "Ruby":{"id":0x33A522F2, "max_notes":463, "points":25},
    "She Bangs The Drums":{"id":0x468C655D, "max_notes":684, "points":25},
    "Take This Life":{"id":0x348C4908, "max_notes":1608, "points":25},
    "The Way It Ends":{"id":0x2A49D730, "max_notes":1883, "points":100},
    "Through The Fire and Flames":{"id":0x40797ADD, "max_notes":3722, "points":100}
}
//CHEATS:
// $0547960: [32bit] Pointer - Easy Expert Cheat
//           +0xc = Cheat Activated
//           0x01=On, 0x02=Off
on = 1
off = 2
function song_checksum() =>  dword(0x3eb0a0)
function cheat_easy_expert() => dword(dword(0x547960) + 0xc)
function debug_block() => dword(0x2616dc) != 0x224
for song_entry in song_table{
    achievement(
        song_entry,
        "Get an Expert full combo on " + song_entry + " (No Overstrum)",
        points=song_table[song_entry]["points"],
        trigger=
            difficulty() == 3 && //Expert
            cheat_easy_expert() != on &&
            debug_block() &&
            once(prev(combo()) == 0 && combo() == 1 && notes() < 2) &&
            song_checksum() == song_table[song_entry]["id"] &&            
            trigger_when(combo() == song_table[song_entry]["max_notes"]) &&
            never(combo() < prev(combo())) &&
            never(game_state() == menu)            
    )       
}
//Rich Presence
function guitar_battle_check() => firstsongID() == 0x626f7373
guitar_bosses = {
    0x746f6d2e:"Tom Morello",
    0x736c6173:"Slash",
    0x64657669:"Lou"
}
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
rich_presence_conditional_display(dword(0x2616dc) == 0x224, "Playing Guitar Hero with the Debug Menu. Booo!!!!")
rich_presence_conditional_display(guitar_battle_check() && game_state() == in_game, "Battling {0} on {1}",
    rich_presence_lookup("Boss", secondsongID(), guitar_bosses),
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
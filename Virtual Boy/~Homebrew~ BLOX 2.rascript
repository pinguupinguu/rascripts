//TODO: write a function that receives: count, as well as range of data.

// ~Homebrew~ BLOX 2
// #ID = 17019

// $40D0: [8bit] Number of Packs Available on Screen
//        38 > 41 = Classic Level Sets Unlocked
// $4180: [8bit] Sound Test Enabled
//        0x00=No
//        0x01=Yes
// $42AA: [236 bytes] Choriban Pack Entries
//        Each entry = 4 bytes
//        Struct:
//        [16bit] Moves
//        [16bit] Pushes

// $443A: [160 bytes] Minicosmos Pack Entries
// $45CA: [160 bytes] Microcosmos Pack Entries
// $475A: [160 bytes] Nabokosmos Pack Entries
// $48EA: [80 bytes] Picokosmos Pack Entries
// $4A7A: [400 bytes] Microban A Pack Entries
// $4C0A: [220 bytes] Microban B Pack Entries
// $4D9A: [400 bytes] Mas Microban A Pack Entries
// $4F2A: [128 bytes] Mas Microban B Pack Entries
// $50BA: [200 bytes] Sasquatch Pack Entries
// $524A: [200 bytes] Mas Sasquatch Pack Entries
// $53DA: [200 bytes] Sasquatch III Pack Entries
// $556A: [200 bytes] Sasquatch IV Pack Entries
// $56FA: [200 bytes] Sasquatch V Pack Entries
// $588A: [188 bytes] Sasquatch VI Pack Entries
// $5A1A: [188 bytes] Sasquatch VII Pack Entries
// $5BAB: [188 bytes[ Sasquatch VIII Pack Entries
// $5D3A: [400 bytes] Funny Template Pack Entries
// $5ECA: [400 bytes] Grigr2001 Pack Entries
// $605A: [160 bytes] Grigr2002 Pack Entries
// $61EA: [156 bytes] Grigr Special Pack Entries
// $637A: [100 bytes] Grigr Comet Pack Entries
// $650A: [116 bytes] Grigr Star Pack Entries
// $669A: [80 bytes] Cubes/Tubes Pack Entries
// $682A: [80 bytes] Demons/Diamonds Pack Entries
// $69BB: [80 bytes] Cosmonotes Pack Entries
// $6B4A: [400 bytes] Erim 1 Pack Entries
// $6CDA: [300 bytes] Erim 2 Pack Entries
// $6E6A: [208 bytes] Yoshio Auto Pack Entries
// $6FFA: [216 bytes] Yoshio Hand Pack Entries
// $718A: [400 bytes] Loma Pack Entries
// $731A: [144 bytes] Smaller Pack Entries
// $74AA: [100 bytes] Orange Pack Entries
// $763A: [32 bytes] Stacks Pack Entries
// $77CA: [20 bytes] Devices Pack Entries
// $795B: [68 bytes] Red Mini Pack Entries
// $7AEA: [48 bytes] Multiblox Pack Entries
// $7C7A: [48 bytes] Metamorph Pack Entries
// $7E0A: [40 bytes] Classic Easy Pack Entries
// $7F9A: [80 bytes] Classic Medium Pack Entries
// $812A: [120 bytes] Classic Hard Pack Entries
function classic_adr() => byte(0x0040d0)
achievement(
    "A Classic Secret",
    "Unlock all of the classic levels by using a button combo! (See Forum Topic)",
    points=0,
    trigger=
        prev(classic_adr()) == 38 &&
        classic_adr() == 41       
)
function sound_test() => byte(0x004180)
achievement(
    "Asounding Other Secret",
    "Unlock the sound test by using a button combo! (See Forum Topic)",
    points=0,
    trigger=
        prev(sound_test()) == 0 &&
        sound_test() == 1
)
function puzzle(key, count, name, desc, points){
    data = range(pack_keys[key]["Start"], pack_keys[key]["Start"] + 
        ((pack_keys[key]["Count"] - 1) * 4), 4)
    achievement(
        name,
        desc,
        points,
        trigger=
            tally_of(data, count - 1, b => once(prev(word(b)) != 0)) &&
            measured(tally_of(data, count, b => once(word(b) != 0))) &&
            never(tally_of(data, count, b => once(prev(word(b)) != 0)))        
    )
}
pack_keys = {
    "choriban":{"Start":0x42aa, "Count": 59},
    "minicosmos":{"Start":0x443a, "Count":40},
    "microcosmos":{"Start":0x45ca, "Count":40},
    "nabokosmos":{"Start":0x475a, "Count":40},
    "picokosmos":{"Start":0x48ea, "Count":20},
    "microban-a":{"Start":0x4a7a, "Count":100},
    "microban-b":{"Start":0x4c0a, "Count":55},
    "masmicroban-a":{"Start":0x4d9a, "Count":100},
    "masmicroban-b":{"Start":0x4f2a, "Count":32},
    "sasquatch":{"Start":0x50ba, "Count":50},
    "mas-sasquatch":{"Start":0x524a, "Count":50},
    "sasquatch-III":{"Start":0x53da, "Count":50},
    "sasquatch-IV":{"Start":0x556a, "Count":50},
    "sasquatch-V":{"Start":0x56fa, "Count":50},
    "sasquatch-VI":{"Start":0x588a, "Count":47},
    "sasquatch-VII":{"Start":0x5a1a, "Count":47},
    "sasquatch-VIII":{"Start":0x5bab, "Count":47},
    "funnytemplate":{"Start":0x5d3a, "Count":100},
    "grigr2001":{"Start":0x5eca, "Count":100},
    "grigr2002":{"Start":0x605a, "Count":40},
    "grigrspecial":{"Start":0x61ea, "Count":39},
    "grigrcomet":{"Start":0x637a, "Count":25},
    "grigrstar":{"Start":0x650a, "Count":29},
    "cubestubes":{"Start":0x669a, "Count":20},
    "demonsdiams":{"Start":0x682a, "Count":20},
    "cosmonotes":{"Start":0x69bb, "Count":20},
    "erim1":{"Start":0x6b4a, "Count":100},
    "erim2":{"Start":0x6cda, "Count":75},
    "yoshioauto":{"Start":0x6e6a, "Count":52},
    "yoshiohand":{"Start":0x6ffa, "Count":54},
    "loma":{"Start":0x718a, "Count":100},
    "smaller":{"Start":0x731a, "Count":36},
    "orange":{"Start":0x74aa, "Count":25},
    "stacks":{"Start":0x763a, "Count":8},
    "devices":{"Start":0x77ca, "Count":5},
    "redmini":{"Start":0x795b, "Count":17},
    "multiblox":{"Start":0x7aea, "Count":12},
    "metamorph":{"Start":0x7c7a, "Count":12},
    "classic_easy":{"Start":0x7e0a, "Count":10},
    "classic_med":{"Start":0x7f9a, "Count":20},
    "classic_hard":{"Start":0x812a, "Count":30}
    }   
puzzle("choriban", 30, "Choriban I", "Clear 30 puzzles in the Choriban pack!", 10)
puzzle("choriban", 59, "Choriban II", "Clear all 59 puzzles in the Choriban pack!", 25)
puzzle("minicosmos", 25, "Minicosmos I", "Clear 25 puzzles in the Minicosmos pack!", 10)
puzzle("minicosmos", 40, "Minicosmos II", "Clear all 40 puzzles in the Minicosmos pack!", 25)
puzzle("microcosmos", 25, "Microcosmos I", "Clear 25 puzzles in the Microcosmos pack!", 10)
puzzle("microcosmos", 40, "Microcosmos II", "Clear all 40 puzzles in the Microcosmos pack!", 25)
puzzle("nabokosmos", 25, "Nabokosmos I", "Clear 25 puzzles in the Nabokosmos pack!", 10)
puzzle("nabokosmos", 40, "Nabokosmos II", "Clear 40 puzzles in the Nabokosmos pack!", 25)
puzzle("picokosmos", 20, "Picokosmos", "Clear all 20 puzzles in the Picokosmos pack!", 10)
puzzle("microban-a", 25, "Microban-A I", "Clear 25 puzzles in the Microban A pack!", 10)
puzzle("microban-a", 50, "Microban-A II", "Clear 50 puzzles in the Microban A pack!", 10)
puzzle("microban-a", 75, "Microban-A III", "Clear 75 puzzles in the Microban A pack!", 10)
puzzle("microban-a", 100, "Microban-A IV", "Clear all 100 puzzles in the Microban A pack!", 25)
puzzle("microban-b", 25, "Microban-B I", "Clear 25 puzzles in the Microban B pack!", 10)
puzzle("microban-b", 55, "Microban-B II", "Clear all 55 puzzles in the Microban B pack!", 25)
puzzle("masmicroban-a", 25, "Mas Microban-A I", "Clear 25 puzzles in the Mas Microban A pack!", 10)
puzzle("masmicroban-a", 50, "Mas Microban-A II", "Clear 50 puzzles in the Mas Microban A pack!", 10)
puzzle("masmicroban-a", 75, "Mas Microban-A III", "Clear 75 puzzles in the Mas Microban A pack!", 10)
puzzle("masmicroban-a", 100, "Mas Microban-A IV", "Clear 100 puzzles in the Mas Microban A pack!", 25)
puzzle("masmicroban-b", 32, "Mas Microban-B", "Clear all 33 puzzles in the Mas Microban B pack!", 10)
puzzle("sasquatch", 25, "Sasquatch I", "Clear 25 puzzles in the Sasquatch pack!", 10)
puzzle("sasquatch", 50, "Sasquatch II", "Clear all 50 puzzles in the Sasquatch pack!", 25)
puzzle("mas-sasquatch", 25, "Mas Sasquatch-I", "Clear 25 puzzles in the Mas Sasquatch pack!", 10)
puzzle("mas-sasquatch", 50, "Mas Sasquatch-II", "Clear all 50 puzzles in the Mas Sasquatch pack!", 25)
puzzle("sasquatch-III", 25, "Sasquatch-III I", "Clear 25 puzzles in the Sasquatch-III pack!", 10)
puzzle("sasquatch-III", 50, "Sasquatch-III II", "Clear all 50 puzzles in the Sasquatch-III pack!", 25)
puzzle("sasquatch-IV", 25, "Sasquatch-IV I", "Clear 25 puzzles in the Sasquatch-IV pack!", 10)
puzzle("sasquatch-IV", 50, "Sasquatch-IV II", "Clear all 50 puzzles in the Sasquatch-IV pack!", 25)
puzzle("sasquatch-V", 25, "Sasquatch-V I", "Clear 25 puzzles in the Sasquatch-V pack!", 10)
puzzle("sasquatch-V", 50, "Sasquatch-V II", "Clear all 50 puzzles in the Sasquatch-V pack!", 25)
puzzle("sasquatch-VI", 25, "Sasquatch-VI I", "Clear 25 puzzles in the Sasquatch-VI pack!", 10)
puzzle("sasquatch-VI", 47, "Sasquatch-VI II", "Clear all 47 puzzles in the Sasquatch-VI pack!", 25)
puzzle("sasquatch-VII", 25, "Sasquatch-VII I", "Clear 25 puzzles in the Sasquatch-VII pack!", 10)
puzzle("sasquatch-VII", 47, "Sasquatch-VII II", "Clear all 47 puzzles in the Sasquatch-VII pack!", 25)
puzzle("sasquatch-VIII", 25, "Sasquatch-VIII I", "Clear 25 puzzles in the Sasquatch-VIII pack!", 10)
puzzle("sasquatch-VIII", 47, "Sasquatch-VIII II", "Clear all 47 puzzles in the Sasquatch-VIII pack!", 25)
puzzle("funnytemplate", 25, "Funny Template I", "Clear 25 puzzles in the Funny Template pack!", 10)
puzzle("funnytemplate", 50, "Funny Template II", "Clear 50 puzzles in the Funny Template pack!", 10)
puzzle("funnytemplate", 75, "Funny Template III", "Clear 75 puzzles in the Funny Template pack!", 10)
puzzle("funnytemplate", 100, "Funny Template IV", "Clear all 100 puzzles in the Funny Template pack!", 25)
puzzle("grigr2001", 25, "Grigr-2001 I", "Clear 25 puzzles in the Grigr-2001 pack!", 10)
puzzle("grigr2001", 50, "Grigr-2001 II", "Clear 50 puzzles in the Grigr-2001 pack!", 10)
puzzle("grigr2001", 75, "Grigr-2001 III", "Clear 75 puzzles in the Grigr-2001 pack!", 10)
puzzle("grigr2001", 100, "Grigr-2001 IV", "Clear all 100 puzzles in the Grigr-2001 pack!", 25)
puzzle("grigr2002", 25, "Grigr-2002 I", "Clear 25 puzzles in the Grigr-2002 pack!", 10)
puzzle("grigr2002", 40, "Grigr-2002 II", "Clear all 40 puzzles in the Grigr-2002 pack!", 10)
puzzle("grigrspecial", 25, "Grigr Special I", "Clear 25 puzzles in the Grigr Special pack!", 10)
puzzle("grigrspecial", 39, "Grigr Special II", "Clear all 39 puzzles in the Grigr Special pack!", 10)
puzzle("grigrcomet", 25, "Grigr Comet", "Clear all 25 puzzles in the Grigr Comet pack!", 10)
puzzle("grigrstar", 29, "Grigr Star", "Clear all 29 puzzles in the Grigr Star pack!", 10)
puzzle("cubestubes", 20, "Cubes and Tubes", "Clear all 20 puzzles in the Cubes and Tubes pack!", 10)
puzzle("demonsdiams", 20, "Demons and Diamonds", "Clear all 20 puzzles in the Demons and Diamonds pack!", 10)
puzzle("cosmonotes", 20, "Cosmonotes", "Clear all 20 puzzles in the Cosmonotes pack!", 10)
puzzle("erim1", 25, "Erim-I I", "Clear 25 puzzles in the Erim I pack!", 10)
puzzle("erim1", 50, "Erim-I II", "Clear 50 puzzles in the Erim I pack!", 10)
puzzle("erim1", 75, "Erim-I III", "Clear 75 puzzles in the Erim I pack!", 10)
puzzle("erim1", 100, "Erim-I IV", "Clear all 100 puzzles in the Erim I pack!", 25)
puzzle("erim2", 25, "Erim-II I", "Clear 25 puzzles in the Erim II pack!", 10)
puzzle("erim2", 50, "Erim-II II", "Clear 50 puzzles in the Erim II pack!", 10)
puzzle("erim2", 75, "Erim-II III", "Clear 75 puzzles in the Erim II pack!", 25)
puzzle("yoshioauto", 25, "Yoshio Auto I", "Clear 25 puzzles in the Yoshio Auto pack!", 10)
puzzle("yoshioauto", 52, "Yoshio Auto II", "Clear all 52 puzzles in the Yoshio Auto pack!", 25)
puzzle("yoshiohand", 25, "Yoshio Hand I", "Clear 25 puzzles in the Yoshio Hand pack!", 10)
puzzle("yoshiohand", 54, "Yoshio Hand II", "Clear all 54 puzzles in the Yoshio Hand pack!", 25)
puzzle("loma", 25, "Loma I", "Clear 25 puzzles in the Loma pack!", 10)
puzzle("loma", 50, "Loma II", "Clear 50 puzzles in the Loma pack!", 10)
puzzle("loma", 75, "Loma III", "Clear 75 puzzles in the Loma pack!", 10)
puzzle("loma", 100, "Loma IV", "Clear all 100 puzzles in the Loma pack!", 25)
puzzle("smaller", 25, "Smaller I", "Clear 25 puzzles in the Smaller pack!", 10)
puzzle("smaller", 36, "Smaller II", "Clear all 36 puzzles in the Smaller pack!", 10)
puzzle("orange", 25, "Orange", "Clear all 25 puzzles in the Orange pack!", 10)
puzzle("stacks", 8, "Stacks", "Clear all 8 puzzles in the Stacks pack!", 10)
puzzle("devices", 5, "Devices", "Clear all 5 puzzles in the Devices pack!", 10)
puzzle("redmini", 17, "Red Mini", "Clear all 17 puzzles in the Red Mini pack!", 10)
puzzle("multiblox", 12, "Multiblox", "Clear all 12 puzzles in the Multiblox pack!", 10)
puzzle("metamorph", 12, "Metamorph", "Clear all 12 puzzles in the Metamorph pack!", 10)
puzzle("classic_easy", 10, "Classic Easy", "Clear all 12 puzzles in the Classic Easy pack!", 10)
puzzle("classic_med", 10, "Classic Medium", "Clear all 20 puzzles in the Classic Medium pack!", 10)
puzzle("classic_hard", 15, "Classic Hard I", "Clear 15 puzzles in the Classic Hard pack!", 10)
puzzle("classic_hard", 30, "Classic Hard II", "Clear all 30 puzzles in the Classic Hard pack!", 25)

function in_game() => byte(0x00417f) == 0
function pack() => byte(0x00fe74)

rich_presence_conditional_display(in_game(), "In Puzzle {0}",
    rich_presence_macro("Number", byte(0x00fe04) + 1)
)
rich_presence_display("In Menu")

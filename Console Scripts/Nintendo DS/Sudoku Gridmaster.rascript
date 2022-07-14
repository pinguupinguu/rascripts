// Sudoku Gridmaster
// #ID = 14909
// ROM Name: Sudoku Gridmaster (USA).nds (No-Intro)
// RA Checksum: 6abc79fc352978d412fcb2c81dad6e3d
// $0F5710: [40 bytes] Practice Puzzle Record Time Array
//          Each [32bit] - Puzzle Time (Frames)
//          Puzzle Number = Current Ind + 1
practice_table = 0xf5710
// $0F5738: [320 bytes] Easy Puzzle Record Time Array
//          Each [32bit] - Puzzle Time (Frames)
//          Puzzle Number = Current Ind + 1
easy_table = 0x0f5738
// $0F5878: [760 bytes] Normal Puzzle Record Array
//          Each [32bit] = Puzzle Record Time (Frames)
//          Puzzle Number = Current Indice in table + 1
normal_table = 0xf5878
// $0F5B70: [480 bytes] Hard Puzzle Record Time Array
//          Each [32bit] - Puzzle Time (Frames)
//          Puzzle Number = Current Ind + 1
hard_table = 0x0f5b70
function loop(table, start, end, mode){
    trigger = []    
        for i in range(start, end){
            if(mode == "delta") array_push(trigger, once(prev(dword(table + i * 4) )!= 0))             
            else array_push(trigger, once(dword(table + i * 4) != 0))        
     }   
    return trigger
}
function puzzle_cheevo(title, diff, table, pzl_start, pzl_end, my_pnts){
    loop_start = pzl_start - 1
    loop_end = pzl_end - 1
    achievement(
        title,
        "Solve " + diff + " Puzzles " + pzl_start + "-" + pzl_end,
        points=my_pnts,
        trigger=          
          tally(pzl_end-pzl_start, loop(table, loop_start, loop_end, "delta")) &&          
          measured(tally(pzl_end - pzl_start + 1, loop(table, loop_start, loop_end, ""))) &&
          never(tally(pzl_end - pzl_start + 1, loop(table, loop_start, loop_end, "delta")))                              
     )         
}
//==========Puzzle Achievements==========
//=====PRACTICE=====
puzzle_cheevo("Starting Off Easy", "Practice", practice_table, 1, 5, 1)
puzzle_cheevo("Practice Makes Perfect", "Practice", practice_table, 6, 10, 1)
//=====EASY=====
puzzle_cheevo("Not That Different", "Easy", easy_table, 1, 10, 2)
puzzle_cheevo("Now You're Messing Around", "Easy", easy_table, 11, 20, 2)
puzzle_cheevo("Getting There Now", "Easy", easy_table, 21, 30, 2)
puzzle_cheevo("Noobs Away", "Easy", easy_table, 31, 40, 2)
puzzle_cheevo("Still More Easy Things", "Easy", easy_table, 41, 50, 2)
puzzle_cheevo("Ready to Advance", "Easy", easy_table, 51, 60, 2)
puzzle_cheevo("Getting Bored Now", "Easy", easy_table, 61, 70, 2)
puzzle_cheevo("Ready to Be Normal", "Easy", easy_table, 71, 80, 2)
//=====NORMAL=====
puzzle_cheevo("That's More Like It", "Normal", normal_table, 1, 10, 3)
puzzle_cheevo("Sensing Some Normality", "Normal", normal_table, 11, 20, 3)
puzzle_cheevo("Keep Going", "Normal", normal_table, 21, 30, 3)
puzzle_cheevo("Normal Phase I", "Normal", normal_table, 31, 40, 3)
puzzle_cheevo("Normal Phase II", "Normal", normal_table, 41, 50, 3)
puzzle_cheevo("Normal Phase III", "Normal", normal_table, 51, 60, 3)
puzzle_cheevo("Normal Phase IV", "Normal", normal_table, 61, 70, 3)
puzzle_cheevo("Normal Phase V", "Normal", normal_table, 71, 80, 3)
puzzle_cheevo("Growing Out of Normality", "Normal", normal_table, 81, 90, 3)
puzzle_cheevo("Things Aren't Normal", "Normal", normal_table, 91, 100, 3)
puzzle_cheevo("Time To Move On Yet?", "Normal", normal_table, 101, 110, 3)
puzzle_cheevo("Still Going?", "Normal", normal_table, 111, 120, 3)
puzzle_cheevo("When Will Things Get More Interesting", "Normal", normal_table, 121, 130, 3)
puzzle_cheevo("Anything Difficult Here?", "Normal", normal_table, 131, 140, 3)
puzzle_cheevo("Advancing Phase I", "Normal", normal_table, 141, 150, 3)
puzzle_cheevo("Advancing Phase II", "Normal", normal_table, 151, 160, 3)
puzzle_cheevo("Advancing Phase III", "Normal", normal_table, 161, 170, 3)
puzzle_cheevo("Advancing Phase IV", "Normal", normal_table, 171, 180, 3)
puzzle_cheevo("Advancing Phase V", "Normal", normal_table, 181, 190, 3)
//=====HARD=====
puzzle_cheevo("Trying Harder", "Hard", hard_table, 1, 10, 4)
puzzle_cheevo("Advanced Times", "Hard", hard_table, 11, 20, 4)
puzzle_cheevo("Getting Hotter", "Hard", hard_table, 21, 30, 4)
puzzle_cheevo("Becoming Even Better", "Hard", hard_table, 31, 40, 4)
puzzle_cheevo("You Can Do It!", "Hard", hard_table, 41, 50, 4)
puzzle_cheevo("Can This Get More Difficult?", "Hard", hard_table, 51, 60, 4)
puzzle_cheevo("Expert Phase I", "Hard", hard_table, 61, 70, 4)
puzzle_cheevo("Expert Phase II", "Hard", hard_table, 71, 80, 4)
puzzle_cheevo("Expert Phase III", "Hard", hard_table, 81, 90, 4)
puzzle_cheevo("Expert Phase IV", "Hard", hard_table, 91, 100, 4)
puzzle_cheevo("Expert Phase V", "Hard", hard_table, 101, 110, 4)
puzzle_cheevo("End of the Line", "Hard", hard_table, 111, 120, 4)
//==========Rank Test Achievements==========
// $0F5708: [32bit] Active Rank Test
//          0x00=Not Active
//          0x01=Bronze
//          0x02=Silver
//          0x03=Gold
//          0x04=Platinum
function rank_active() => dword(0x0f5708)
// $0F570C: [32bit] Rank Test Achieved
//          00=None
//          01=Bronze Rank
//          02=Silver Rank
//          03=Gold Rank
//          04=Platinum Rank
function rank_achieved() => dword(0x0f570c)
rank_none = 0
rank_bronze = 1
rank_silver = 2
rank_gold = 3
rank_plat = 4
achievement(
    "Bronze Test",
    "Pass the Bronze Rank Test!",
    points=2,
    trigger=
        prev(rank_active()) == rank_bronze &&
        prev(rank_achieved()) == rank_none &&
        rank_achieved() == rank_bronze
)
achievement(
    "Silver Test",
    "Pass the Silver Rank Test!",
    points=3,
    trigger=
        prev(rank_achieved()) == rank_bronze &&
        rank_achieved() == rank_silver
)
achievement(
    "Gold Test",
    "Pass the Gold Rank Test!",
    points=4,
    trigger=
        prev(rank_achieved()) == rank_silver &&
        rank_achieved() == rank_gold
)
achievement(
    "Platinum Test",
    "Pass the Platinum Rank Test!",
    points=5,
    trigger=
        prev(rank_achieved()) == rank_gold &&
        rank_achieved() == rank_plat
)
//==========RICH PRESENCE==========
// $0F5704: [32bit] Active Puzzle Number (NOTE: Rank Tests also 
//          use this number to choose which puzzle to use!)
//          Category Ranges:
//          0x00-0x09=Practice Puzzles
//          0x0a-0x59=Easy Puzzles
//          0x5a-0x117=Normal Puzzles
//          0x118-0x18f=Hard Puzzles
function puzzle_number() => dword(0x0f5704)
puzzle_strings = {
    0:"Practice Puzzle 1",
    1:"Practice Puzzle 2",
    2:"Practice Puzzle 3",
    3:"Practice Puzzle 4",
    4:"Practice Puzzle 5",
    5:"Practice Puzzle 6",
    6:"Practice Puzzle 7",
    7:"Practice Puzzle 8",
    8:"Practice Puzzle 9",
    9:"Practice Puzzle 10",
    10:"Easy Puzzle 1",
    11:"Easy Puzzle 2",
    12:"Easy Puzzle 3",
    13:"Easy Puzzle 4",
    14:"Easy Puzzle 5",
    15:"Easy Puzzle 6",
    16:"Easy Puzzle 7",
    17:"Easy Puzzle 8",
    18:"Easy Puzzle 9",
    19:"Easy Puzzle 10",
    20:"Easy Puzzle 11",
    21:"Easy Puzzle 12",
    22:"Easy Puzzle 13",
    23:"Easy Puzzle 14",
    24:"Easy Puzzle 15",
    25:"Easy Puzzle 16",
    26:"Easy Puzzle 17",
    27:"Easy Puzzle 18",
    28:"Easy Puzzle 19",
    29:"Easy Puzzle 20",
    30:"Easy Puzzle 21",
    31:"Easy Puzzle 22",
    32:"Easy Puzzle 23",
    33:"Easy Puzzle 24",
    34:"Easy Puzzle 25",
    35:"Easy Puzzle 26",
    36:"Easy Puzzle 27",
    37:"Easy Puzzle 28",
    38:"Easy Puzzle 29",
    39:"Easy Puzzle 30",
    40:"Easy Puzzle 31",
    41:"Easy Puzzle 32",
    42:"Easy Puzzle 33",
    43:"Easy Puzzle 34",
    44:"Easy Puzzle 35",
    45:"Easy Puzzle 36",
    46:"Easy Puzzle 37",
    47:"Easy Puzzle 38",
    48:"Easy Puzzle 39",
    49:"Easy Puzzle 40",
    50:"Easy Puzzle 41",
    51:"Easy Puzzle 42",
    52:"Easy Puzzle 43",
    53:"Easy Puzzle 44",
    54:"Easy Puzzle 45",
    55:"Easy Puzzle 46",
    56:"Easy Puzzle 47",
    57:"Easy Puzzle 48",
    58:"Easy Puzzle 49",
    59:"Easy Puzzle 50",
    60:"Easy Puzzle 51",
    61:"Easy Puzzle 52",
    62:"Easy Puzzle 53",
    63:"Easy Puzzle 54",
    64:"Easy Puzzle 55",
    65:"Easy Puzzle 56",
    66:"Easy Puzzle 57",
    67:"Easy Puzzle 58",
    68:"Easy Puzzle 59",
    69:"Easy Puzzle 60",
    70:"Easy Puzzle 61",
    71:"Easy Puzzle 62",
    72:"Easy Puzzle 63",
    73:"Easy Puzzle 64",
    74:"Easy Puzzle 65",
    75:"Easy Puzzle 66",
    76:"Easy Puzzle 67",
    77:"Easy Puzzle 68",
    78:"Easy Puzzle 69",
    79:"Easy Puzzle 70",
    80:"Easy Puzzle 71",
    81:"Easy Puzzle 72",
    82:"Easy Puzzle 73",
    83:"Easy Puzzle 74",
    84:"Easy Puzzle 75",
    85:"Easy Puzzle 76",
    86:"Easy Puzzle 77",
    87:"Easy Puzzle 78",
    88:"Easy Puzzle 79",
    89:"Easy Puzzle 80",
    90:"Normal Puzzle 1",
    91:"Normal Puzzle 2",
    92:"Normal Puzzle 3",
    93:"Normal Puzzle 4",
    94:"Normal Puzzle 5",
    95:"Normal Puzzle 6",
    96:"Normal Puzzle 7",
    97:"Normal Puzzle 8",
    98:"Normal Puzzle 9",
    99:"Normal Puzzle 10",
    100:"Normal Puzzle 11",
    101:"Normal Puzzle 12",
    102:"Normal Puzzle 13",
    103:"Normal Puzzle 14",
    104:"Normal Puzzle 15",
    105:"Normal Puzzle 16",
    106:"Normal Puzzle 17",
    107:"Normal Puzzle 18",
    108:"Normal Puzzle 19",
    109:"Normal Puzzle 20",
    110:"Normal Puzzle 21",
    111:"Normal Puzzle 22",
    112:"Normal Puzzle 23",
    113:"Normal Puzzle 24",
    114:"Normal Puzzle 25",
    115:"Normal Puzzle 26",
    116:"Normal Puzzle 27",
    117:"Normal Puzzle 28",
    118:"Normal Puzzle 29",
    119:"Normal Puzzle 30",
    120:"Normal Puzzle 31",
    121:"Normal Puzzle 32",
    122:"Normal Puzzle 33",
    123:"Normal Puzzle 34",
    124:"Normal Puzzle 35",
    125:"Normal Puzzle 36",
    126:"Normal Puzzle 37",
    127:"Normal Puzzle 38",
    128:"Normal Puzzle 39",
    129:"Normal Puzzle 40",
    130:"Normal Puzzle 41",
    131:"Normal Puzzle 42",
    132:"Normal Puzzle 43",
    133:"Normal Puzzle 44",
    134:"Normal Puzzle 45",
    135:"Normal Puzzle 46",
    136:"Normal Puzzle 47",
    137:"Normal Puzzle 48",
    138:"Normal Puzzle 49",
    139:"Normal Puzzle 50",
    140:"Normal Puzzle 51",
    141:"Normal Puzzle 52",
    142:"Normal Puzzle 53",
    143:"Normal Puzzle 54",
    144:"Normal Puzzle 55",
    145:"Normal Puzzle 56",
    146:"Normal Puzzle 57",
    147:"Normal Puzzle 58",
    148:"Normal Puzzle 59",
    149:"Normal Puzzle 60",
    150:"Normal Puzzle 61",
    151:"Normal Puzzle 62",
    152:"Normal Puzzle 63",
    153:"Normal Puzzle 64",
    154:"Normal Puzzle 65",
    155:"Normal Puzzle 66",
    156:"Normal Puzzle 67",
    157:"Normal Puzzle 68",
    158:"Normal Puzzle 69",
    159:"Normal Puzzle 70",
    160:"Normal Puzzle 71",
    161:"Normal Puzzle 72",
    162:"Normal Puzzle 73",
    163:"Normal Puzzle 74",
    164:"Normal Puzzle 75",
    165:"Normal Puzzle 76",
    166:"Normal Puzzle 77",
    167:"Normal Puzzle 78",
    168:"Normal Puzzle 79",
    169:"Normal Puzzle 80",
    170:"Normal Puzzle 81",
    171:"Normal Puzzle 82",
    172:"Normal Puzzle 83",
    173:"Normal Puzzle 84",
    174:"Normal Puzzle 85",
    175:"Normal Puzzle 86",
    176:"Normal Puzzle 87",
    177:"Normal Puzzle 88",
    178:"Normal Puzzle 89",
    179:"Normal Puzzle 90",
    180:"Normal Puzzle 91",
    181:"Normal Puzzle 92",
    182:"Normal Puzzle 93",
    183:"Normal Puzzle 94",
    184:"Normal Puzzle 95",
    185:"Normal Puzzle 96",
    186:"Normal Puzzle 97",
    187:"Normal Puzzle 98",
    188:"Normal Puzzle 99",
    189:"Normal Puzzle 100",
    190:"Normal Puzzle 101",
    191:"Normal Puzzle 102",
    192:"Normal Puzzle 103",
    193:"Normal Puzzle 104",
    194:"Normal Puzzle 105",
    195:"Normal Puzzle 106",
    196:"Normal Puzzle 107",
    197:"Normal Puzzle 108",
    198:"Normal Puzzle 109",
    199:"Normal Puzzle 110",
    200:"Normal Puzzle 111",
    201:"Normal Puzzle 112",
    202:"Normal Puzzle 113",
    203:"Normal Puzzle 114",
    204:"Normal Puzzle 115",
    205:"Normal Puzzle 116",
    206:"Normal Puzzle 117",
    207:"Normal Puzzle 118",
    208:"Normal Puzzle 119",
    209:"Normal Puzzle 120",
    210:"Normal Puzzle 121",
    211:"Normal Puzzle 122",
    212:"Normal Puzzle 123",
    213:"Normal Puzzle 124",
    214:"Normal Puzzle 125",
    215:"Normal Puzzle 126",
    216:"Normal Puzzle 127",
    217:"Normal Puzzle 128",
    218:"Normal Puzzle 129",
    219:"Normal Puzzle 130",
    220:"Normal Puzzle 131",
    221:"Normal Puzzle 132",
    222:"Normal Puzzle 133",
    223:"Normal Puzzle 134",
    224:"Normal Puzzle 135",
    225:"Normal Puzzle 136",
    226:"Normal Puzzle 137",
    227:"Normal Puzzle 138",
    228:"Normal Puzzle 139",
    229:"Normal Puzzle 140",
    230:"Normal Puzzle 141",
    231:"Normal Puzzle 142",
    232:"Normal Puzzle 143",
    233:"Normal Puzzle 144",
    234:"Normal Puzzle 145",
    235:"Normal Puzzle 146",
    236:"Normal Puzzle 147",
    237:"Normal Puzzle 148",
    238:"Normal Puzzle 149",
    239:"Normal Puzzle 150",
    240:"Normal Puzzle 151",
    241:"Normal Puzzle 152",
    242:"Normal Puzzle 153",
    243:"Normal Puzzle 154",
    244:"Normal Puzzle 155",
    245:"Normal Puzzle 156",
    246:"Normal Puzzle 157",
    247:"Normal Puzzle 158",
    248:"Normal Puzzle 159",
    249:"Normal Puzzle 160",
    250:"Normal Puzzle 161",
    251:"Normal Puzzle 162",
    252:"Normal Puzzle 163",
    253:"Normal Puzzle 164",
    254:"Normal Puzzle 165",
    255:"Normal Puzzle 166",
    256:"Normal Puzzle 167",
    257:"Normal Puzzle 168",
    258:"Normal Puzzle 169",
    259:"Normal Puzzle 170",
    260:"Normal Puzzle 171",
    261:"Normal Puzzle 172",
    262:"Normal Puzzle 173",
    263:"Normal Puzzle 174",
    264:"Normal Puzzle 175",
    265:"Normal Puzzle 176",
    266:"Normal Puzzle 177",
    267:"Normal Puzzle 178",
    268:"Normal Puzzle 179",
    269:"Normal Puzzle 180",
    270:"Normal Puzzle 181",
    271:"Normal Puzzle 182",
    272:"Normal Puzzle 183",
    273:"Normal Puzzle 184",
    274:"Normal Puzzle 185",
    275:"Normal Puzzle 186",
    276:"Normal Puzzle 187",
    277:"Normal Puzzle 188",
    278:"Normal Puzzle 189",
    279:"Normal Puzzle 190",
    280:"Hard Puzzle 1",
    281:"Hard Puzzle 2",
    282:"Hard Puzzle 3",
    283:"Hard Puzzle 4",
    284:"Hard Puzzle 5",
    285:"Hard Puzzle 6",
    286:"Hard Puzzle 7",
    287:"Hard Puzzle 8",
    288:"Hard Puzzle 9",
    289:"Hard Puzzle 10",
    290:"Hard Puzzle 11",
    291:"Hard Puzzle 12",
    292:"Hard Puzzle 13",
    293:"Hard Puzzle 14",
    294:"Hard Puzzle 15",
    295:"Hard Puzzle 16",
    296:"Hard Puzzle 17",
    297:"Hard Puzzle 18",
    298:"Hard Puzzle 19",
    299:"Hard Puzzle 20",
    300:"Hard Puzzle 21",
    301:"Hard Puzzle 22",
    302:"Hard Puzzle 23",
    303:"Hard Puzzle 24",
    304:"Hard Puzzle 25",
    305:"Hard Puzzle 26",
    306:"Hard Puzzle 27",
    307:"Hard Puzzle 28",
    308:"Hard Puzzle 29",
    309:"Hard Puzzle 30",
    310:"Hard Puzzle 31",
    311:"Hard Puzzle 32",
    312:"Hard Puzzle 33",
    313:"Hard Puzzle 34",
    314:"Hard Puzzle 35",
    315:"Hard Puzzle 36",
    316:"Hard Puzzle 37",
    317:"Hard Puzzle 38",
    318:"Hard Puzzle 39",
    319:"Hard Puzzle 40",
    320:"Hard Puzzle 41",
    321:"Hard Puzzle 42",
    322:"Hard Puzzle 43",
    323:"Hard Puzzle 44",
    324:"Hard Puzzle 45",
    325:"Hard Puzzle 46",
    326:"Hard Puzzle 47",
    327:"Hard Puzzle 48",
    328:"Hard Puzzle 49",
    329:"Hard Puzzle 50",
    330:"Hard Puzzle 51",
    331:"Hard Puzzle 52",
    332:"Hard Puzzle 53",
    333:"Hard Puzzle 54",
    334:"Hard Puzzle 55",
    335:"Hard Puzzle 56",
    336:"Hard Puzzle 57",
    337:"Hard Puzzle 58",
    338:"Hard Puzzle 59",
    339:"Hard Puzzle 60",
    340:"Hard Puzzle 61",
    341:"Hard Puzzle 62",
    342:"Hard Puzzle 63",
    343:"Hard Puzzle 64",
    344:"Hard Puzzle 65",
    345:"Hard Puzzle 66",
    346:"Hard Puzzle 67",
    347:"Hard Puzzle 68",
    348:"Hard Puzzle 69",
    349:"Hard Puzzle 70",
    350:"Hard Puzzle 71",
    351:"Hard Puzzle 72",
    352:"Hard Puzzle 73",
    353:"Hard Puzzle 74",
    354:"Hard Puzzle 75",
    355:"Hard Puzzle 76",
    356:"Hard Puzzle 77",
    357:"Hard Puzzle 78",
    358:"Hard Puzzle 79",
    359:"Hard Puzzle 80",
    360:"Hard Puzzle 81",
    361:"Hard Puzzle 82",
    362:"Hard Puzzle 83",
    363:"Hard Puzzle 84",
    364:"Hard Puzzle 85",
    365:"Hard Puzzle 86",
    366:"Hard Puzzle 87",
    367:"Hard Puzzle 88",
    368:"Hard Puzzle 89",
    369:"Hard Puzzle 90",
    370:"Hard Puzzle 91",
    371:"Hard Puzzle 92",
    372:"Hard Puzzle 93",
    373:"Hard Puzzle 94",
    374:"Hard Puzzle 95",
    375:"Hard Puzzle 96",
    376:"Hard Puzzle 97",
    377:"Hard Puzzle 98",
    378:"Hard Puzzle 99",
    379:"Hard Puzzle 100",
    380:"Hard Puzzle 101",
    381:"Hard Puzzle 102",
    382:"Hard Puzzle 103",
    383:"Hard Puzzle 104",
    384:"Hard Puzzle 105",
    385:"Hard Puzzle 106",
    386:"Hard Puzzle 107",
    387:"Hard Puzzle 108",
    388:"Hard Puzzle 109",
    389:"Hard Puzzle 110",
    390:"Hard Puzzle 111",
    391:"Hard Puzzle 112",
    392:"Hard Puzzle 113",
    393:"Hard Puzzle 114",
    394:"Hard Puzzle 115",
    395:"Hard Puzzle 116",
    396:"Hard Puzzle 117",
    397:"Hard Puzzle 118",
    398:"Hard Puzzle 119",
    399:"Hard Puzzle 120"    
}
rank_strings = {
    0:"None",
    1:"Bronze",
    2:"Silver",
    3:"Gold",
    4:"Platinum"
}
// $0F56FC: [32bit] Game State
//          0xff=Loading/Switching Screens
//          0x01=In Title Screen
//          0x02=In Puzzle Selection
//          0x03=Solving Puzzle
//          0x07=Preparing to Solve a Puzzle
function game_state() => dword(0x0f56fc)
game_strings = {
    0xff:"Loading...",
    0x1:"In Title Screen",
    0x2:"Selecting a Puzzle",
    0x7:"Loading into a Puzzle"
}
// $117194: [32bit] Puzzle Timer (Frames)
function puzzle_frame() => dword(0x117194)
rich_presence_conditional_display(
    game_state() == 3 && rank_active() != 0, 
    "Solving {0} Rank Test.  ⏳ Left: {1}",
        rich_presence_lookup("ActiveRank", rank_active(), rank_strings),
        rich_presence_value("Timer", puzzle_frame(), "FRAMES")
)
rich_presence_conditional_display(
    game_state() == 3,
    "Solving {0} ⏳ {1}",
        rich_presence_lookup("ActiveNum", puzzle_number(), puzzle_strings),
        rich_presence_value("Timer", puzzle_frame(), "FRAMES")
)
rich_presence_display("{0}",
    rich_presence_lookup("State", game_state(), game_strings)
)
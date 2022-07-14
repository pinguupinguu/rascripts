// PiCross
// #ID = 9251

// $01CD: [8bit] Screen ID
//        0x00=Loading Screen
//        0x01=Title Screen
//        0x02=Grid Selection
//        0x03=In Puzzle
function screen_id() => byte(0x0001CD)
// $01E1: [16bit] Active Puzzle Number
function puzzle_number() => word(0x0001E1)
// $02F5: [8bit] Well Done Flag
//        0x00=Hidden
//        0x01=Shown
function win_flag() => byte(0x0002f5)
// $0B9A: [8bit] Grid Size
function grid_size() => byte(0x000B9A)
// $0D9E: [25 bytes] 5x5 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0DB7: [25 bytes] 6x6 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0DD0: [25 bytes] 7x7 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0DE9: [25 bytes] 8x8 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0E02: [25 bytes] 9x9 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0E1B: [25 bytes] 10x10 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0E34: [25 bytes] 11x11 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0E4D: [25 bytes] 12x12 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0E66: [25 bytes] 13x13 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0E7F: [25 bytes] 14x14 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0E98: [25 bytes] 15x15 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
// $0EB1: [25 bytes] 16x16 Puzzles Cleared Flag Table
//        Puzzle Number = array indice + 1
//        0x00=?
//        0x01=Solved
puzzle_start = 0x000D9E
puzzle_defs = {
    0:{"Size":"5x5", "Title":"Incompetent", "Points":1},
    1:{"Size":"6x6", "Title":" Preschooler", "Points":1},
    2:{"Size":"7x7", "Title":"Kindergartner", "Points":2},
    3:{"Size":"8x8", "Title":"Child", "Points":2},
    4:{"Size":"9x9", "Title":"Adult", "Points":3},
    5:{"Size":"10x10", "Title":"Beginner", "Points":3},
    6:{"Size":"11x11", "Title": "Intermediate", "Points":4},
    7:{"Size":"12x12", "Title":"Advanced", "Points":4},
    8:{"Size":"13x13", "Title": "Difficult","Points":4},
    9:{"Size":"14x14", "Title":"Arduous",  "Points":4},
    10:{"Size":"15x15", "Title":"King"  ,"Points":5},
    11:{"Size":"16x16", "Title":"Emperor", "Points":5}
}
for i in range(0, 11){
    my_dif = i * 25
    for j in range(0, 24, 5){
        achievement(
            puzzle_defs[i]["Title"] + " #" + (j / 5 ) + 1,
            "Solve " + puzzle_defs[i]["Size"] + " Puzzles " + j + 1 + "-" + j + 5,
            points=puzzle_defs[i]["Points"],
            trigger = 
                sum_of(range(puzzle_start + my_dif + j, puzzle_start + my_dif + j + 4), b => prev(byte(b))) == 4 &&
                measured(sum_of(range(puzzle_start + my_dif + j, puzzle_start + my_dif + j + 4), b => byte(b)) == 5)                        
        )                
    }        
}
current_num = 0
for i in range(0, 11){
    for j in range(0, 24){
            leaderboard(
                puzzle_defs[i]["Size"] + " Puzzle #" + j + 1,
                "Fastest Clear",
                puzzle_number() == current_num && prev(screen_id()) == 2 && screen_id() == 3,
                always_false(),
                win_flag() > prev(win_flag()),
                always_true(),
                "FRAMES"
            )
            current_num = current_num + 1
    }
}
num_ids = {
    0:"5x5 Puzzle #1",
    1:"5x5 Puzzle #2",
    2:"5x5 Puzzle #3",
    3:"5x5 Puzzle #4",
    4:"5x5 Puzzle #5",
    5:"5x5 Puzzle #6",
    6:"5x5 Puzzle #7",
    7:"5x5 Puzzle #8",
    8:"5x5 Puzzle #9",
    9:"5x5 Puzzle #10",
    10:"5x5 Puzzle #11",
    11:"5x5 Puzzle #12",
    12:"5x5 Puzzle #13",
    13:"5x5 Puzzle #14",
    14:"5x5 Puzzle #15",
    15:"5x5 Puzzle #16",
    16:"5x5 Puzzle #17",
    17:"5x5 Puzzle #18",
    18:"5x5 Puzzle #19",
    19:"5x5 Puzzle #20",
    20:"5x5 Puzzle #21",
    21:"5x5 Puzzle #22",
    22:"5x5 Puzzle #23",
    23:"5x5 Puzzle #24",
    24:"5x5 Puzzle #25",
    25:"6x6 Puzzle #1",
    26:"6x6 Puzzle #2",
    27:"6x6 Puzzle #3",
    28:"6x6 Puzzle #4",
    29:"6x6 Puzzle #5",
    30:"6x6 Puzzle #6",
    31:"6x6 Puzzle #7",
    32:"6x6 Puzzle #8",
    33:"6x6 Puzzle #9",
    34:"6x6 Puzzle #10",
    35:"6x6 Puzzle #11",
    36:"6x6 Puzzle #12",
    37:"6x6 Puzzle #13",
    38:"6x6 Puzzle #14",
    39:"6x6 Puzzle #15",
    40:"6x6 Puzzle #16",
    41:"6x6 Puzzle #17",
    42:"6x6 Puzzle #18",
    43:"6x6 Puzzle #19",
    44:"6x6 Puzzle #20",
    45:"6x6 Puzzle #21",
    46:"6x6 Puzzle #22",
    47:"6x6 Puzzle #23",
    48:"6x6 Puzzle #24",
    49:"6x6 Puzzle #25",
    50:"7x7 Puzzle #1",
    51:"7x7 Puzzle #2",
    52:"7x7 Puzzle #3",
    53:"7x7 Puzzle #4",
    54:"7x7 Puzzle #5",
    55:"7x7 Puzzle #6",
    56:"7x7 Puzzle #7",
    57:"7x7 Puzzle #8",
    58:"7x7 Puzzle #9",
    59:"7x7 Puzzle #10",
    60:"7x7 Puzzle #11",
    61:"7x7 Puzzle #12",
    62:"7x7 Puzzle #13",
    63:"7x7 Puzzle #14",
    64:"7x7 Puzzle #15",
    65:"7x7 Puzzle #16",
    66:"7x7 Puzzle #17",
    67:"7x7 Puzzle #18",
    68:"7x7 Puzzle #19",
    69:"7x7 Puzzle #20",
    70:"7x7 Puzzle #21",
    71:"7x7 Puzzle #22",
    72:"7x7 Puzzle #23",
    73:"7x7 Puzzle #24",
    74:"7x7 Puzzle #25",
    75:"8x8 Puzzle #1",
    76:"8x8 Puzzle #2",
    77:"8x8 Puzzle #3",
    78:"8x8 Puzzle #4",
    79:"8x8 Puzzle #5",
    80:"8x8 Puzzle #6",
    81:"8x8 Puzzle #7",
    82:"8x8 Puzzle #8",
    83:"8x8 Puzzle #9",
    84:"8x8 Puzzle #10",
    85:"8x8 Puzzle #11",
    86:"8x8 Puzzle #12",
    87:"8x8 Puzzle #13",
    88:"8x8 Puzzle #14",
    89:"8x8 Puzzle #15",
    90:"8x8 Puzzle #16",
    91:"8x8 Puzzle #17",
    92:"8x8 Puzzle #18",
    93:"8x8 Puzzle #19",
    94:"8x8 Puzzle #20",
    95:"8x8 Puzzle #21",
    96:"8x8 Puzzle #22",
    97:"8x8 Puzzle #23",
    98:"8x8 Puzzle #24",
    99:"8x8 Puzzle #25",
    100:"9x9 Puzzle #1",
    101:"9x9 Puzzle #2",
    102:"9x9 Puzzle #3",
    103:"9x9 Puzzle #4",
    104:"9x9 Puzzle #5",
    105:"9x9 Puzzle #6",
    106:"9x9 Puzzle #7",
    107:"9x9 Puzzle #8",
    108:"9x9 Puzzle #9",
    109:"9x9 Puzzle #10",
    110:"9x9 Puzzle #11",
    111:"9x9 Puzzle #12",
    112:"9x9 Puzzle #13",
    113:"9x9 Puzzle #14",
    114:"9x9 Puzzle #15",
    115:"9x9 Puzzle #16",
    116:"9x9 Puzzle #17",
    117:"9x9 Puzzle #18",
    118:"9x9 Puzzle #19",
    119:"9x9 Puzzle #20",
    120:"9x9 Puzzle #21",
    121:"9x9 Puzzle #22",
    122:"9x9 Puzzle #23",
    123:"9x9 Puzzle #24",
    124:"9x9 Puzzle #25",
    125:"10x10 Puzzle #1",
    126:"10x10 Puzzle #2",
    127:"10x10 Puzzle #3",
    128:"10x10 Puzzle #4",
    129:"10x10 Puzzle #5",
    130:"10x10 Puzzle #6",
    131:"10x10 Puzzle #7",
    132:"10x10 Puzzle #8",
    133:"10x10 Puzzle #9",
    134:"10x10 Puzzle #10",
    135:"10x10 Puzzle #11",
    136:"10x10 Puzzle #12",
    137:"10x10 Puzzle #13",
    138:"10x10 Puzzle #14",
    139:"10x10 Puzzle #15",
    140:"10x10 Puzzle #16",
    141:"10x10 Puzzle #17",
    142:"10x10 Puzzle #18",
    143:"10x10 Puzzle #19",
    144:"10x10 Puzzle #20",
    145:"10x10 Puzzle #21",
    146:"10x10 Puzzle #22",
    147:"10x10 Puzzle #23",
    148:"10x10 Puzzle #24",
    149:"10x10 Puzzle #25",
    150:"11x11 Puzzle #1",
    151:"11x11 Puzzle #2",
    152:"11x11 Puzzle #3",
    153:"11x11 Puzzle #4",
    154:"11x11 Puzzle #5",
    155:"11x11 Puzzle #6",
    156:"11x11 Puzzle #7",
    157:"11x11 Puzzle #8",
    158:"11x11 Puzzle #9",
    159:"11x11 Puzzle #10",
    160:"11x11 Puzzle #11",
    161:"11x11 Puzzle #12",
    162:"11x11 Puzzle #13",
    163:"11x11 Puzzle #14",
    164:"11x11 Puzzle #15",
    165:"11x11 Puzzle #16",
    166:"11x11 Puzzle #17",
    167:"11x11 Puzzle #18",
    168:"11x11 Puzzle #19",
    169:"11x11 Puzzle #20",
    170:"11x11 Puzzle #21",
    171:"11x11 Puzzle #22",
    172:"11x11 Puzzle #23",
    173:"11x11 Puzzle #24",
    174:"11x11 Puzzle #25",
    175:"12x12 Puzzle #1",
    176:"12x12 Puzzle #2",
    177:"12x12 Puzzle #3",
    178:"12x12 Puzzle #4",
    179:"12x12 Puzzle #5",
    180:"12x12 Puzzle #6",
    181:"12x12 Puzzle #7",
    182:"12x12 Puzzle #8",
    183:"12x12 Puzzle #9",
    184:"12x12 Puzzle #10",
    185:"12x12 Puzzle #11",
    186:"12x12 Puzzle #12",
    187:"12x12 Puzzle #13",
    188:"12x12 Puzzle #14",
    189:"12x12 Puzzle #15",
    190:"12x12 Puzzle #16",
    191:"12x12 Puzzle #17",
    192:"12x12 Puzzle #18",
    193:"12x12 Puzzle #19",
    194:"12x12 Puzzle #20",
    195:"12x12 Puzzle #21",
    196:"12x12 Puzzle #22",
    197:"12x12 Puzzle #23",
    198:"12x12 Puzzle #24",
    199:"12x12 Puzzle #25",
    200:"13x13 Puzzle #1",
    201:"13x13 Puzzle #2",
    202:"13x13 Puzzle #3",
    203:"13x13 Puzzle #4",
    204:"13x13 Puzzle #5",
    205:"13x13 Puzzle #6",
    206:"13x13 Puzzle #7",
    207:"13x13 Puzzle #8",
    208:"13x13 Puzzle #9",
    209:"13x13 Puzzle #10",
    210:"13x13 Puzzle #11",
    211:"13x13 Puzzle #12",
    212:"13x13 Puzzle #13",
    213:"13x13 Puzzle #14",
    214:"13x13 Puzzle #15",
    215:"13x13 Puzzle #16",
    216:"13x13 Puzzle #17",
    217:"13x13 Puzzle #18",
    218:"13x13 Puzzle #19",
    219:"13x13 Puzzle #20",
    220:"13x13 Puzzle #21",
    221:"13x13 Puzzle #22",
    222:"13x13 Puzzle #23",
    223:"13x13 Puzzle #24",
    224:"13x13 Puzzle #25",
    225:"14x14 Puzzle #1",
    226:"14x14 Puzzle #2",
    227:"14x14 Puzzle #3",
    228:"14x14 Puzzle #4",
    229:"14x14 Puzzle #5",
    230:"14x14 Puzzle #6",
    231:"14x14 Puzzle #7",
    232:"14x14 Puzzle #8",
    233:"14x14 Puzzle #9",
    234:"14x14 Puzzle #10",
    235:"14x14 Puzzle #11",
    236:"14x14 Puzzle #12",
    237:"14x14 Puzzle #13",
    238:"14x14 Puzzle #14",
    239:"14x14 Puzzle #15",
    240:"14x14 Puzzle #16",
    241:"14x14 Puzzle #17",
    242:"14x14 Puzzle #18",
    243:"14x14 Puzzle #19",
    244:"14x14 Puzzle #20",
    245:"14x14 Puzzle #21",
    246:"14x14 Puzzle #22",
    247:"14x14 Puzzle #23",
    248:"14x14 Puzzle #24",
    249:"14x14 Puzzle #25",
    250:"15x15 Puzzle #1",
    251:"15x15 Puzzle #2",
    252:"15x15 Puzzle #3",
    253:"15x15 Puzzle #4",
    254:"15x15 Puzzle #5",
    255:"15x15 Puzzle #6",
    256:"15x15 Puzzle #7",
    257:"15x15 Puzzle #8",
    258:"15x15 Puzzle #9",
    259:"15x15 Puzzle #10",
    260:"15x15 Puzzle #11",
    261:"15x15 Puzzle #12",
    262:"15x15 Puzzle #13",
    263:"15x15 Puzzle #14",
    264:"15x15 Puzzle #15",
    265:"15x15 Puzzle #16",
    266:"15x15 Puzzle #17",
    267:"15x15 Puzzle #18",
    268:"15x15 Puzzle #19",
    269:"15x15 Puzzle #20",
    270:"15x15 Puzzle #21",
    271:"15x15 Puzzle #22",
    272:"15x15 Puzzle #23",
    273:"15x15 Puzzle #24",
    274:"15x15 Puzzle #25",
    275:"16x16 Puzzle #1",
    276:"16x16 Puzzle #2",
    277:"16x16 Puzzle #3",
    278:"16x16 Puzzle #4",
    279:"16x16 Puzzle #5",
    280:"16x16 Puzzle #6",
    281:"16x16 Puzzle #7",
    282:"16x16 Puzzle #8",
    283:"16x16 Puzzle #9",
    284:"16x16 Puzzle #10",
    285:"16x16 Puzzle #11",
    286:"16x16 Puzzle #12",
    287:"16x16 Puzzle #13",
    288:"16x16 Puzzle #14",
    289:"16x16 Puzzle #15",
    290:"16x16 Puzzle #16",
    291:"16x16 Puzzle #17",
    292:"16x16 Puzzle #18",
    293:"16x16 Puzzle #19",
    294:"16x16 Puzzle #20",
    295:"16x16 Puzzle #21",
    296:"16x16 Puzzle #22",
    297:"16x16 Puzzle #23",
    298:"16x16 Puzzle #24",
    299:"16x16 Puzzle #25",
}
misc_displays = {
    0:"Loading...",
    1:"On the Title Screen",    
}
rich_presence_conditional_display(screen_id() == 3 && win_flag() == 1, "Solved {0}. Wow!", //In Puzzle + win
   rich_presence_lookup("PuzzleNum", puzzle_number(), num_ids) 
)
rich_presence_conditional_display(screen_id() == 3, "{0}", //If in puzzle, no win.
    rich_presence_lookup("PuzzleNum", puzzle_number(), num_ids)
)
rich_presence_conditional_display(screen_id() == 2, "Selecting a puzzle... 🧩 {0}/300", //Selection screen
    rich_presence_value("Puzzle Count", sum_of(range(0xd9e, 0xd9e + 299), b => byte(b)) )
)
rich_presence_display("{0}",rich_presence_lookup("Screen", screen_id(), misc_displays))
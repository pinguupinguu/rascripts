// Crystal Mines II
// #ID = 10669

// $001B: [8bit] Level ID Wahoo
function level_id() => byte(0x00001B)

// $007D: [8bit] Clear Level Flag
//        0x00=No
//        0x01=Yes

// $60F6: [8bit] GameIsLoaded 
//        0x00=No
//        0x01=Yes
function game_loaded() => byte(0x60f6)
function clear_flag() => byte(0x00007D)
level_names = {
    1:"Down in the Dirt",
    2:"Logan's Run",
    3:"Blocks and Bombs",
    4:"Wren's Nest",
    5:"Out With a Bang",
    6:"Tanya's Tangram",
    7:"Monster Go Boom",
    8:"Dan's Deadly Maze",
    9:"Rocky Horror",
    10:"It Grows on You",
    11:"Easy Trap of Doom",
    12:"Rock and Roll",
    13:"Bombs a Plenty",
    14:"Catacombs",
    15:"Red Herring",
    16:"Behind the Lines",
    17:"Imperfections",
    18:"Blasting Zone",
    19:"A Wrinkle in Time",
    20:"Boulder Dash",
    21:"Mud Wrestling",
    22:"Buried Alive",
    23:"Crystal Mines",
    24:"Can't Touch This",
    25:"Felony Arson",
    26:"Sandbox Bullies",
    27:"Stake Your Claim",
    28:"Dry Vein",
    29:"Quiver",
    30:"Boulder Mania",
    31:"Pipe Hype",
    32:"Stuck in the Mud",
    33:"Rat Race",
    34:"Split Infinity",
    35:"Switch Swatch",
    36:"Minefield",
    37:"Chimney Sweep",
    38:"What a Blast",
    39:"Hardrock Headache",
    40:"Nuke Zone",
    41:"Down is Up",
    42:"Lucky Number",
    43:"Of Gravity",
    44:"Shape Up",
    45:"Gravity Wise",
    46:"Slime Pit",
    47:"Candlestick",
    48:"Bouncing Boulders",
    49:"Cloudbuster",
    50:"Whirlwind",
    51:"Block Mania",
    52:"I Get Around",
    53:"Hot Pursuit",
    54:"Runny Stocking",
    55:"Cakewalk",
    56:"The Sewers",
    57:"Crystal Factory",
    58:"Drop a Rock",
    59:"Magic Mirror",
    60:"Cache",
    61:"Rock Concert",
    62:"Crystal Tomb",
    63:"Make My Maze",
    64:"Pardon Me",
    65:"Take Control",
    66:"Castle Mania",
    67:"Rad Drops",
    68:"Crystal Cannon",
    69:"Tick Tock",
    70:"Crossroads",
    71:"Rain Dance",
    72:"Jungle Gem",
    73:"Zero Gravity",
    74:"Boulder Exchange",
    75:"Monster Mania",
    76:"Which Way",
    77:"Mud Boggin",
    78:"Safe Cracker",
    79:"The Howling",
    80:"Trial N Error",
    81:"Squeeze Play",
    82:"Jailhouse Rock",
    83:"Dodgeball",
    84:"Sidewinder",
    85:"Ghost of a Chance",
    86:"Plumber's Helper",
    87:"Change Machine",
    88:"Triple Threat",
    89:"Out of Order",
    90:"Robo Rooter",
    91:"Riddle Me This",
    92:"Cheque it Out",
    93:"Joel's Conniption",
    94:"Saturn V",
    95:"To Boldly Go",
    96:"Who Knows",
    97:"Pipe Dream",
    98:"Volcano Vacation",
    99:"Pipeline Puzzle",
    100:"Asylum",
    101:"Slime Jar",
    102:"Around the World",
    103:"Crystal Trap",
    104:"Central Square",
    105:"Down the Drain",
    106:"Creature Comforts",
    107:"Swamp Things",
    108:"Gravity Ball",
    109:"Herringbone",
    110:"Water Closet",
    111:"Xenophobe Zoo",
    112:"Conveyor Belt",
    113:"Mutation",
    114:"Towering Inferno",
    115:"Take Your Pick",
    116:"Shopping Spree",
    117:"Elevator Muzak",
    118:"Kaleidoscope",
    119:"Gemnastics",
    120:"Death Zone",
    121:"Don't Be Greedy",
    122:"Multi-Abuser",
    123:"Bombs Away",
    124:"Sound and Fury",
    125:"Make Em Yourself",
    126:"The Four Seasons",
    127:"Lobotomy",
    128:"Hell and Back",
    129:"Pipe Organ",
    130:"Newton's Nightmare",
    131:"Jail Break",
    132:"Quantum Quarry",
    133:"Running on MT",
    134:"Haunted House",
    135:"Arrow Phlegm",
    136:"Bohemian Rhapsody",
    137:"Lift Lackeys",
    138:"Spacin' Vaders",
    139:"Avalanche",
    140:"Evil Twins",
    141:"Leftright",
    142:"Meltdown",
    143:"Girls Best Friend",
    144:"Phase Shift",
    145:"Spiral of Doom",
    146:"Mouse Trap",
    147:"Zen",
    148:"Freeze Frame",
    149:"Check Mate",
    150:"Terminus",
    181:"The Vault",
    151:"Deja View",
    152:"No Time To Think",
    153:"Bonanza!",
    154:"Nimbus",
    155:"Monty Haul",
    156:"Pinball Wiz",
    157:"Ping Pong",
    158:"Twist And Shout",
    159:"Time's Up",
    160:"Time Bomb",
    161:"Time To Spare",
    162:"Lava Slide",
    163:"Slam City",
    164:"No Way Jose",
    165:"Hide-N-Seek",
    166:"Snake's Belly",
    167:"Flood Gate",
    168:"Killing Time",
    169:"Way Out",
    170:"Hermit Crab",
    171:"Menagerie",
    172:"Yuchsville",
    173:"Mine Shaft",
    174:"Surrounded",
    175:"Pool Queue",
    176:"Pit Of Lost Souls",
    177:"Shoot The Moon",
    178:"Tarmaze",
    179:"Safety Dance",
    180:"Downtime"
}
function level_skip() => byte(0xad4e) == 0
function progression(id) =>
    level_id() == id &&
    prev(clear_flag()) == 0 &&
    clear_flag() == 1 &&
    prev(game_loaded()) == 1

for i in range(1, 150){
    achievement(
        level_names[i],
        "Clear Level " + i,
        points=5,
        trigger=
           level_skip() &&
           progression(i)
    )
}

achievement(
    "The Vault",
    "Find the secret hidden level and clear it!",
    points=5,
    trigger=
        progression(0xb5)
)



level_inc = 1
for i in range(151, 180){
    achievement(
        level_names[i],
        "Clear Bonus Level " + level_inc,
        points=2,
        trigger=
            level_skip() &&
            progression(i)
    )
    level_inc = level_inc + 1
}
//   $0028: [8bit] Time Left - Minutes
//   $0029: [8bit] Time Left - Seconds
function  minutes() => byte(0x0028)
function seconds() => byte(0x0029)
function timer() => byte(0x0028) * 60 + byte(0x0029)
//   $001C: [8bit] Menu State        
//          0x00=In Title/Main Menu
//          0x01=In Level Select/Game
function level_state() => byte(0x001c)
rich_presence_conditional_display(level_state() == 1, "Mining in {0} ⏳ {1}",
    rich_presence_lookup("Level", level_id(), level_names),
    rich_presence_macro("Seconds", timer())
) 
rich_presence_conditional_display(game_loaded() == 1, "In Menu...")
rich_presence_display("Booting...")
// Incredible Machine, The
// #ID = 16832
// $00F3D2: [8bit] Game State - Used for RP
//          0x00=Unloaded
//          0x01=In Menus
function game_load() => byte(0x00F3D2)
// $0B876E: [8bit] Build Screen Active
//          0x00=No
//          0x01=Yes
function build_active() => byte(0x0B876E)
// $0B87FC: [32bit] Puzzle ID
function puzzle() => dword(0x0B87FC)
// $0B88A9: [8bit] Puzzle State
//          0x02=Loading into Next Message
//          0x10=Placing Objects
//          0x20= Running
//          0x80=Main Overlay Message
//          
//          Solve: delta = 0x20 >> mem = 0x02
function puzzle_state() => byte(0x0B88A9)
// $0B88B0: [32bit] Game Mode
//          0x00=Solve a Puzzle!
//          0x01=Make a Puzzle!
function game_mode() => dword(0x0B88B0)
// $0B88B4: [32bit] In Tutorial
//          0x00=No
//          0x01=Yes
function tutorial_flag() => dword(0x0B88B4)
level_strings = {
    1:"Mirror Images",
    2:"The Happy Hoopster",
    3:"Bellows And Balloons",
    4:"Whackrobatics",
    5:"Punch Out",
    6:"Trampoline Machine",
    7:"Jack Attack",
    8:"Tilting At Windmills",
    9:"The Big Bucket Bail Out",
    10:"Tricky Triggers",
    11:"Like a Hurricane",
    12:"Generators And Motors",
    13:"Gear Grinder I",
    14:"Short Fuse",
    15:"The Kaboom Room",
    16:"Blastoff",
    17:"Blaster Disaster",
    18:"Mort vs. The Paws of Pokey",
    19:"Monkey Business",
    20:"Bridge the Gap",
    21:"Pokey Has a Ball",
    22:"Peddle Poppers",
    23:"There's No Place Like Home",
    24:"Trick Shooting",
    25:"Balloon Shredder",
    26:"Pop Two Balloons",
    27:"Bouncing Balloon",
    28:"Horror Flick",
    29:"Dropping the Ball",
    30:"New Tennis",
    31:"Balloons on the Moon",
    32:"When Push Comes to Shove",
    33:"Pokey Cleans Up",
    34:"Cat Boxing",
    35:"A Baseball in Every Pot",
    36:"A Better Mouse Trap",
    37:"Just One Cup",
    38:"The Schlemmings Step Out",
    39:"Weighing The Situation",
    40:"Clobber The Kitty",
    41:"Loony Balloony",
    42:"Cannon Ball Chaos",
    43:"Mouse Dance",
    44:"Balloon Buster's Baffle",
    45:"Bumper Stumper",
    46:"Quadruple Dribble",
    47:"A Christmas Present",
    48:"All Steamed Up",
    49:"Eight Ball In The Bowl",
    50:"Inflitration",
    51:"Five Gun Salute",
    52:"Mel On The Doorstep Of Doom",
    53:"A Farewell To Balloons",
    54:"Revenge Of The Mouse Muncher",
    55:"Pop Goes The Weasel",
    56:"Heart Attack",
    57:"Monkeying Around",
    58:"Mouse In The House",
    59:"Bomb the Bucket",
    60:"Morning Aerobics",
    61:"Pokey In The Pen",
    62:"Bowling Ball Bungle",
    63:"The Great Pumpkin",
    64:"Schlepping With The Schlemmings",
    65:"Bob Takes a Lob",
    66:"Windmill On The Fritz",
    67:"Cage The Kitty",
    68:"Bob Has a Bad Day",
    69:"Runaway Rodents",
    70:"Going To The Hole",
    71:"Double Trouble",
    72:"The Plumber's Nightmare",
    73:"Eight Ball in The Side Pocket",
    74:"Bonk the Monkey",
    75:"Vac Attack",
    76:"Pokey In a Pickle",
    77:"Ring of Fire",
    78:"Hole In The Floor",
    79:"Three Point Shot",
    80:"Bob At The Fishbowl Bash",
    81:"Lower The Bucket",
    82:"Ambulance Alert",
    83:"Tennis Menace",
    84:"Trick Shot",
    85:"Balloon Exterminator",
    86:"You Gotta Smile",
    87:"Having a Bang Up Time",
    88:"Lunatic's Tea Time",
    89:"Ballistic Fishstick",
    90:"Alligator Country",
    91:"The Launching",
    92:"Fetch a Pail",
    93:"Bowler's Baffle",
    94:"Torpedo Teaser",
    95:"Chimpercise",
    96:"Plunger Power",
    97:"Mort Sport",
    98:"Power Popping",
    99:"Eastern Assault",
    100:"Hot Shot",
    101:"Fishbowl Buster",
    102:"Gear Grinder II",
    103:"Sergeant Mel On The Move",
    104:"Incarcerate The Kitty",
    105:"Teamwork",
    106:"Cage The Critter",
    107:"Wandering Mel",
    108:"Sky Rocket Requiem",
    109:"Red Alert",
    110:"Motion Sickness",
    111:"Set Off Fireworks",
    112:"Alligator Banquet",
    113:"Roundabout",
    114:"Pokey Plays Pinball",
    115:"Bop The Bucket",
    116:"Demolition",
    117:"Happy Second Birthday",
    118:"The Trap",
    119:"Mel And Bob",
    120:"Mouse Muncher",
    121:"Mort Wants Out!",
    122:"Bumper Stumper",
    123:"Rodents On The Run",
    124:"Lower The… BOOM!",
    125:"Psycho Hoop",
    126:"Feeding Frenzy",
    127:"Mouse in The Slammer",
    128:"Brain Popper",
    129:"Triple Trajectory",
    130:"Shootin' Range Ruckus",
    131:"Fracture The Fishbowl",
    132:"Knock It Off",
    133:"Nailed",
    134:"Ignite And Take Flight",
    135:"Looney Launch",
    136:"Harpoon The Balloon",
    137:"Mort Trap",
    138:"Shed a Little Light",
    139:"Save The Bob Squad",
    140:"The Wooden Shaft",
    141:"Laying Down a Bunt",
    142:"A Pirate's Life For Me",
    143:"Pokey On The Prowl",
    144:"Huffing and Puffing",
    145:"Blow Up",
    146:"Balloons In Danger",
    147:"Mel-O-Drama",
    148:"Balloon Exterminator II",
    149:"Orb Attack",
    150:"Schlemming In Gatorland",
    151:"Pokey's Great Escape",
    152:"Miami Mayhem",
    153:"Double Dunk",
    154:"Nuke The Neighbors",
    155:"Basketball On The Moon",
    156:"Brain-Sprain Blastoff",
    157:"Mel Takes a Croc Walk",
    158:"Blasting The Bricks",
    159:"Brain Teaster Tea Time",
    160:"Schlem-Trek",
    161:"Light My Fire",
    162:"Basket-Bowl",
    163:"The Mystery Unraveled",
    164:"Cage Kerplunk",
    165:"The Balloonist's Bonanza",
    166:"Land Of The Mort-Eating Monsters",
    167:"Bucket Bungle",
    168:"Mouse Kabobs",
    169:"Mel In The Pipes Of Peril",
    170:"Up, Up, And Away…",
    171:"EXPERT: Confusion-Contusion",
    172:"EXPERT: Rocketeer's Rhapsody",
    173:"EXPERT: The Lunatic's Liftoff",
    174:"EXPERT: Rocketeer's Rhapsody II",
    175:"Ramp Runner",
    176:"EXPERT: Psycho-Scramble",
    177:"Super Suction",
    178:"Shattered"
}
my_id = 230563 //First Achievment ID
my_points = 0 //Initialize
for i in range(1, 170, 5){
if i > 140 my_points = 10
else my_points = 5
    achievement(
        level_strings[i + 4],
        "Clear puzzles " + i + "-" + i + 4 + " in One Session!",
        points=my_points,
        id = my_id,
        trigger=
            tally_of(range(i, i + 4), 4, b => once(puzzle() == b && prev(puzzle_state()) == 0x20 && puzzle_state() == 0x2)) &&
            measured((tally_of(range(i, i + 4), 5, b => once(puzzle() == b && prev(puzzle_state()) == 0x20 && puzzle_state() == 0x2)))) &&
            unless(game_mode() != 0) &&
            disable_when(byte(0x0b99af) == 2 &&  prev(byte(0x0b99b3)) == 0xa && byte(0x0b99b3) == 0xff, prev(byte(0x0b99b3)) == 0xff && byte(0x0b99b3) == 0xa ) //DEBUGGING AS OF 6-30-2022
    ) //
    my_id = my_id + 1
}
achievement(
    level_strings[178],
    "Clear puzzles 171-178 in One Session!",
    points=25,
    trigger=        
        tally_of(range(171, 178), 7, b => once(puzzle() == b && prev(puzzle_state()) == 0x20 && puzzle_state() == 0x2 )) &&
        measured((tally_of(range(171, 178), 8, b => once(puzzle() == b && prev(puzzle_state()) == 0x20 && puzzle_state() == 0x2 )))) &&
        unless(game_mode() != 0) &&
        disable_when(byte(0x0b99af) == 2 &&  prev(byte(0x0b99b3)) == 0xa && byte(0x0b99b3) == 0xff, prev(byte(0x0b99b3)) == 0xff && byte(0x0b99b3) == 0xa )
)
rich_presence_conditional_display(puzzle_state() == 0x20, "Watching a puzzle run!")
rich_presence_conditional_display(game_load() == 1 && tutorial_flag() == 1 && build_active() == 1, "In the Tutorial")
rich_presence_conditional_display(game_load() == 1 && game_mode() == 1 && build_active() == 1, "Creating a Custom Puzzle!")
rich_presence_conditional_display(game_load() == 1 && game_mode() == 0 && build_active() == 1, "Solving 🧩 {0} - {1}",
    rich_presence_macro("Number", puzzle()),
    rich_presence_lookup("PuzzleName", puzzle(), level_strings)
)
rich_presence_conditional_display(game_load() == 0, "Booting...")
rich_presence_display("In Menu")
// $0B88A8: [8bit] Puzzle Screen State
//          0x02=In Puzzle
//          0x01>0x03 = Return to Menu
function puzzle_screen() => byte(0x0b88a8)
my_id = 37766 //start ID for leaderboard #1 
for i in range(1, 178){
    leaderboard(       
        level_strings[i] + " - Speedrun",
        "Fastest solve time!",         
        game_mode() == 0  && puzzle() == i && build_active() > prev(build_active()),
        puzzle() != i || (prev(puzzle_screen()) == 1 && puzzle_screen() == 3),
        prev(puzzle_state()) == 0x20 && puzzle_state() == 0x2,
        always_true(),
        "FRAMES",
        true,
        id=my_id
    )
    my_id = my_id + 1      
}
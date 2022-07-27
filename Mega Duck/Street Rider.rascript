// Street Rider
// #ID = 10791
//Rom Name: Street Rider (World).bin
//Rom Label: No Intro
//RA Hash: 284b8c671a7fb408aaa601be44e1f0b5
// $9C00: [8bit] Minimap Upper Left TIle
//        0x00=Hidden
//        0x01=Active
//        0x83=Loading
function map_tile() => byte(0x009C00)
// $C00E: [8bit] Current Level
function level() => byte(0x00C00E)
// $C00F: [8bit] Lives
function lives() => byte(0x00C00F)
// $C016: [8bit] Current Oil Left
function oil() => byte(0x00C016)
// $C018: [8bit] Flags Left
function flags() => byte(0x00C018)
level_titles = {
    0:"I Got My Driver's License",
    1:"Drive Up To Your House",
    2:"Today, I Drove Through the Suburbs",
    3:"I Drive Alone Past the Flags",
    4:"Red Lights, Stop Signs",
    5:"White Cars, Front Yards",
    6:"Hear Your Voice in the Traffic",
    7:"Over All the Noise!"
}
// $C476: [8bit] Speed Timer
function speed_timer() => byte(0x00C476)
my_points = 0
for i in range(0, 7){
if i == 7 my_points = 10
else my_points = 5    
    achievement(
        level_titles[i],
        "Clear Level " + i + 1,
        points=my_points,
        trigger=
            level() == i &&
            prev(flags()) == 1 &&
            flags() == 0
    )
}
achievement(
    "AAA Service Guaranteed",
    "Get an extra life!",
    points=2,
    trigger=
        map_tile() == 1 &&
        lives() > prev(lives())
)
achievement(
    "Tread of Steel",
    "Get a speed bonus!",
    points=3,
    trigger=
        prev(speed_timer()) == 0 &&
        speed_timer() == 0x1d
)
achievement(
    "Slow Ride",
    "Beat the game without losing a life!",
    points=25,
    trigger=
        once(level() == 0 && prev(map_tile()) == 0x83 && map_tile() == 0x1) &&
        trigger_when(level() == 7 && prev(flags()) == 1 && flags() == 0) &&
        never(lives() < prev(lives()))
)
// $C010: [8bit] Score (Ones)
function ones() => byte(0x00C010)
// $C011: [8bit] Score (Tens)
function tens() => byte(0x00C011)
// $C012: [8bit] Score (Hundreds)
function hundreds() => byte(0x00C012)
// $C013: [8bit] Score (Thousands)
function thousands() => byte(0x00C013)
// $C014: [8bit] Score (Ten-Thousands)
function ten_thousands() => byte(0x00C014)
// $C015: [8bit] Score (Hundred-Thousands)
function hundred_thousands() => byte(0x00C015)
function score() => hundred_thousands() * 100000 + ten_thousands() * 10000 + thousands() * 1000 + hundreds() * 100 + tens() * 10 + ones()
oil_list = {
    0:"0%",
    1:"1%",
    2:"3%",
    3:"4%",
    4:"6%",
    5:"7%",
    6:"9%",
    7:"10%",
    8:"12%",
    9:"14%",
    10:"15%",
    11:"17%",
    12:"18%",
    13:"20%",
    14:"21%",
    15:"23%",
    16:"25%",
    17:"26%",
    18:"28%",
    19:"29%",
    20:"31%",
    21:"32%",
    22:"34%",
    23:"35%",
    24:"37%",
    25:"39%",
    26:"40%",
    27:"42%",
    28:"43%",
    29:"45%",
    30:"46%",
    31:"48%",
    32:"50%",
    33:"51%",
    34:"53%",
    35:"54%",
    36:"56%",
    37:"57%",
    38:"59%",
    39:"60%",
    40:"62%",
    41:"64%",
    42:"65%",
    43:"67%",
    44:"68%",
    45:"70%",
    46:"71%",
    47:"73%",
    48:"75%",
    49:"76%",
    50:"78%",
    51:"79%",
    52:"81%",
    53:"82%",
    54:"84%",
    55:"85%",
    56:"87%",
    57:"89%",
    58:"90%",
    59:"92%",
    60:"93%",
    61:"95%",
    62:"96%",
    63:"98%",
    64:"100%"
}
rich_presence_conditional_display(map_tile() == 1, "Riding in Level {0} ⚙️ {1} 🏆 {2} ⛽ {3} 🚩-{4}",
    rich_presence_macro("Number", level() + 1),
    rich_presence_macro("Number", lives()),
    rich_presence_macro("Number", score()),
    rich_presence_lookup("Fuel", oil(), oil_list),
    rich_presence_macro("Number", flags())
)
rich_presence_conditional_display(map_tile() == 1 && flags() == 0, "Cleared Level {0}",
    rich_presence_macro("Number", level() + 1)
)
rich_presence_conditional_display(map_tile() == 0x83, "Loading Level...")
rich_presence_display("In Menu")
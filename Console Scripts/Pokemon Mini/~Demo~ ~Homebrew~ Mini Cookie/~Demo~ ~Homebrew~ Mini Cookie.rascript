// ~Homebrew~ Mini Cookie
// #ID = 18257

// $0360: [96 bytes] Cookie Data Table
//        0x02=Cookie
//        0x01=Bug Guy
//        0x00=Empty
//        
//        Check for eaten: delta = 2 & mem = 1
// $036D: [8bit] NOTE: Default Cookie Spawn Tile - Not accounted for in checks!
function table_check() => byte(0x360) //Adding this in for bios check . Checks col 0, row 0 is spawned in
function spawn_tile() => byte(0x36d) //Used for setting hit on speedrun
table_vals = [0x000360,0x000361,0x000362,0x000363,0x000364,0x000365,0x000366,0x000367,0x000368,0x000369,0x00036A,
              0x00036B,0x00036C,0x00036E,0x00036F,0x000370,0x000371,0x000372,0x000373,0x000374,0x000375,0x000376,
              0x000377,0x000378,0x000379,0x00037A,0x00037B,0x00037C,0x00037D,0x00037E,0x00037F,0x000380,0x000381,
              0x000382,0x000383,0x000384,0x000385,0x000386,0x000387,0x000388,0x000389,0x00038A,0x00038B,0x00038C,
              0x00038D,0x00038E,0x00038F,0x000390,0x000391,0x000392,0x000393,0x000394,0x000395,0x000396,0x000397,
              0x000398,0x000399,0x00039A,0x00039B,0x00039C,0x00039D,0x00039E,0x00039F,0x0003A0,0x0003A1,0x0003A2,
              0x0003A3,0x0003A4,0x0003A5,0x0003A6,0x0003A7,0x0003A8,0x0003A9,0x0003AA,0x0003AB,0x0003AC,0x0003AD,
              0x0003AE,0x0003AF,0x0003B0,0x0003B1,0x0003B2,0x0003B3,0x0003B4,0x0003B5,0x0003B6,0x0003B7,0x0003B8,
              0x0003B9,0x0003BA,0x0003BB,0x0003BC,0x0003BD,0x0003BE,0x0003BF,]
//Generate address references that will be cross referenced with on and off table from Google Sheets tool.
function make_puzzle(calls, white_space_count, isTrigger){
    //isTrigger = "no"
    black_spaces = []
    white_spaces = []
    for i in range(0, 94){
        if(calls[i] == "OFF") array_push(white_spaces, table_vals[i])
        else array_push(black_spaces, table_vals[i])
    }
    if(isTrigger == "challenge") return all_of(black_spaces, b => byte(b) == 2) && trigger_when(tally_of(white_spaces, white_space_count, b => once(prev(byte(b)) == 2 && byte(b) == 1 )))
    else return all_of(black_spaces, b => byte(b) == 2) && tally_of(white_spaces, white_space_count, b => once(prev(byte(b)) == 2 && byte(b) == 1 ))
}
all_cookies = ["OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF"]
achievement(
    "Hungry Blob!",
    "Eat all the cookies on the screen!",
    points=1,
    trigger=
        make_puzzle(all_cookies, 95, "normal")
)
achievement(
    "Hungry Speedrun!",
    "Eat all the cookies on the screen in under 15 seconds!",
    points=5,
    trigger=
        make_puzzle(all_cookies, 95, "challenge") &&
        unless(repeated(0x384, once(spawn_tile() == 1) && always_true())) //Timer FRAMES 10seconds @ 60FPS = 0x258
)
puzzle_one = ["OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","OFF","ON",
              "ON","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","ON",
              "ON","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","ON","ON","ON","OFF","OFF","OFF",
              "OFF","OFF","OFF","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","OFF",
              "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF"]
achievement(
    "Cupid Tends to This...",
    "Solve the first Picross puzzle and make art! (See Forum Topic)",
    points=1,
    trigger=
       make_puzzle(puzzle_one, 62, "normal")
)
puzzle_two = ["OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","OFF","OFF","ON","ON",
              "OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","OFF","OFF","ON","ON","OFF","OFF","OFF","OFF","ON","OFF","OFF","OFF",
              "OFF","OFF","OFF","OFF","OFF","ON","OFF","OFF","OFF","ON","OFF","ON","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF",
              "OFF","ON","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","OFF","OFF","OFF",
              "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF"]
achievement(
    "Turn Frown Upside Down!",
    "Solve the second Picross puzzle and make art! (See Forum Topic)",
    points=2,
    trigger=
        make_puzzle(puzzle_two, 67, "normal")
)              
puzzle_three = ["OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","OFF","ON","ON","ON","ON","ON","ON",
                "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
                "ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF",
                "ON","ON","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","ON","ON","ON","OFF","OFF","ON","OFF",
                "ON","ON","ON","ON","ON","ON","ON","ON"]
achievement(
    "True Look",
    "Solve the third Picross puzzle and make art! (See Forum Topic)",
    points=3,
    trigger=
        make_puzzle(puzzle_three, 50, "normal")
)
puzzle_four = ["OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON",
               "ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF"]
achievement(
    "Fancy Headwear",
    "Solve the fourth Picross puzzle and make art! (See Forum Topic)",
    points=4,
    trigger=
        make_puzzle(puzzle_four, 69, "normal")
) 
puzzle_five = ["OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","OFF","ON","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","ON","ON","ON","ON","OFF",
               "OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF","OFF",
               "OFF","OFF","OFF","OFF","OFF"]              
achievement(
    "Hoppity Hop!",
    "Solve the fifth Picross puzzle and make art! (See Forum Topic)",
    points=5,
    trigger=
        make_puzzle(puzzle_five, 80, "normal")
)
leaderboard(
    "Cookie Mania!",
    "Quickest time to eat all the cookies!",
    table_check() == 2 && spawn_tile() == 1, //5-8-2022 Added top left tile check for bios being stupid
    always_false(),
    make_puzzle(all_cookies, 95, "normal"),
    always_true(),
    "FRAMES",
    true
)
rich_presence_display(
    "Munchin away at cookies..."
)
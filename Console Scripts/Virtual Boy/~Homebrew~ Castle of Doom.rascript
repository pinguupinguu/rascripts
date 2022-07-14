// ~Homebrew~ Castle of Doom
// #ID = 19564

// $0030: [8bit] Room ID
function room() => byte(0x000030)
cheevo_database = {
    1:{"Name": "Journey Has Started", "Points": 2},
    2:{"Name": "Watch Out for Jumps", "Points": 2},
    3:{"Name": "Bats are Dangerous", "Points": 2},
    4:{"Name": "Bats Make You Die", "Points": 2},
    5:{"Name": "I'm Sure Your Speedrun is Easy Now", "Points": 2},
    6:{"Name": "Who Owns This Place??", "Points": 3},
    7:{"Name": "The Wow Badge Awaits You", "Points": 3},
    8:{"Name": "Halfway Through!", "Points": 3},
    9:{"Name": "Too Easy", "Points": 3},
    10:{"Name": "Getting Warmer", "Points": 3},
    11:{"Name": "I Ran Out of Titles", "Points": 3},
    12:{"Name": "TM Blazekickn Original", "Points": 3},
    13:{"Name": "Baby's First Platformer", "Points": 4},
    14:{"Name": "This Jump Sucks Part 1", "Points": 5},
    15:{"Name": "This Jump Sucks Part 2", "Points": 5},
    16:{"Name": "You...Made It?", "Points": 5}
}
for i in range(1, 16){
    achievement(
        cheevo_database[i]["Name"],
        "Beat Room " + i,
        cheevo_database[i]["Points"],
        trigger=
            prev(room()) == i &&
            room() == i + 1            
    )
}
achievement(
    "A Doomed Speedrun",
    "Beat Levels 1-16 in under five minutes!",
    points=10,
    trigger=
        once(prev(room()) == 0 && room() == 1) &&
        unless(repeated(0x4650, once(prev(room()) == 0 && room() == 1) && always_true())) &&
        trigger_when(prev(room()) == 16 && room() == 17)
)
rich_presence_conditional_display(room() == 0, "In Menu...")
rich_presence_display("Running in Room {0}",
    rich_presence_value("Room", room())
)
leaderboard(
    "Game Speedrun",
    "Fastest time from Level 1 through 16",
    prev(room()) == 0 && room() == 1,
    always_false(),
    prev(room()) == 16 && room() == 17, //Last level is 16 before game loops lol
    always_true(),
    "FRAMES",
    true    
)
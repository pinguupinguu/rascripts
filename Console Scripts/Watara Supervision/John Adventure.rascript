// John Adventure
// #ID = 17622
// RA Hash: c1c6a01a67c0cb26c85e81f862f19e67
// $00F0: [8bit] Score - Ones
function scoreones() => byte(0x0000F0)

// $00F1: [8bit] Score - Tens
function scoretens() => byte(0x0000F1)

// $00F2: [8bit] Score - Hundreds
function scorehundreds() => byte(0x0000F2)

// $00F3: [8bit] Score - Thousands
function scorethousands() => byte(0x0000F3)

// $00F4: [8bit] Score - Ten Thousands
function scoretenthousands() => byte(0x0000F4)

// $00F5: [8bit] Ball Count
function balls() => byte(0x0000F5)

// $0428: [8bit] Game State (Also for In Game Pause)
//        00 = Paused/InMenu
//        01 = InGame/Unpaused
function globalstate() => byte(0x000428)

// $1F85: [8bit] Stage ID
function stageID() => byte(0x001F85)

// $1F86: [8bit] Speed
//        00 = Low
//        01 = Med
//        02 = High
function speed() => byte(0x001F86)

// $1F87: [8bit] Music ID
//        00=My Friend
//        01=Happy Morning
//        02=Naughty Guy
function music() => byte(0x001F87)

levelDefinitions = {
    0: {"levelnum": 0x0, "name": "Learning the Basics", "points": 2, "id": 151373, "badge": "169494" },
    1: {"levelnum": 0x1, "name": "Novice Rank 1", "points": 3, "id": 151374, "badge": "169508" },
    2: {"levelnum": 0x2, "name": "Novice Rank 2", "points": 3, "id": 151375, "badge": "169510" },
    3: {"levelnum": 0x3, "name": "Novice Rank 3", "points": 4, "id": 151376, "badge": "169511" },
    4: {"levelnum": 0x4, "name": "Novice Rank 4", "points": 4, "id": 151377, "badge": "169512" },
    5: {"levelnum": 0x5, "name": "Novice Rank 5", "points": 5, "id": 151378, "badge": "169513" },
    6: {"levelnum": 0x6, "name": "Advanced Rank 6", "points": 5, "id": 151379, "badge": "169515" },
    7: {"levelnum": 0x7, "name": "Advanced Rank 7", "points": 5, "id": 151380, "badge": "169516" },
    8: {"levelnum": 0x8, "name": "Advanced Rank 8", "points": 5, "id": 151381, "badge": "169517" },
    9: {"levelnum": 0x9, "name": "Advanced Rank 9", "points": 5, "id": 151382, "badge": "169518" },
    10: {"levelnum": 0xa, "name": "Advanced Rank 10", "points": 5, "id": 151383, "badge": "169520" },
    11: {"levelnum": 0xb, "name": "Adept Rank 11", "points": 5, "id": 151384, "badge": "169522" },
    12: {"levelnum": 0xc, "name": "Adept Rank 12", "points": 5, "id": 151385, "badge": "169523" },
    13: {"levelnum": 0xd, "name": "Adept Rank 13", "points": 5, "id": 151386, "badge": "169531" },
    14: {"levelnum": 0xe, "name": "Adept Rank 14", "points": 5, "id": 151387, "badge": "169533" },
    15: {"levelnum": 0xf, "name": "Expert Rank 15", "points": 10, "id": 151388, "badge": "169534" },
    16: {"levelnum": 0x10, "name": "Expert Rank 16", "points": 10, "id": 151389, "badge": "169536" },
    17: {"levelnum": 0x11, "name": "Expert Rank 17", "points": 10, "id": 151390, "badge": "169537" },
    18: {"levelnum": 0x12, "name": "Expert Rank 18", "points": 10, "id": 151391, "badge": "169539" },
    19: {"levelnum": 0x13, "name": "Expert Rank 19", "points": 10, "id": 151392, "badge": "169544" },
    20: {"levelnum": 0x14, "name": "Expert Rank 20", "points": 10, "id": 151393, "badge": "169546" }
   }
//Main Stage Progression      
for progression in levelDefinitions{
    stage = levelDefinitions[progression]["levelnum"]
    cheevoname = levelDefinitions[progression]["name"]
    mahpoints = levelDefinitions[progression]["points"]
    badgeID = levelDefinitions[progression]["badge"]
    cheevID = levelDefinitions[progression]["id"]
    achievement(
        cheevoname,
        "Clear Stage " + stage + " on any speed.",
        points= mahpoints,
        badge = badgeID,
        id=cheevID,
        trigger =
            prev(globalstate()) == 1 &&
            stageID() == stage &&
            balls() < prev(balls()) &&
            balls() == 0            
    )    
}
//Highest Speed Achievement. 
stage = levelDefinitions[20]["levelnum"]
achievement(
    "Ball Breaker",
    "Clear Stage 20 on high speed.",
    points = 25,
    badge="169548",
    id=151394,
    trigger = 
        prev(globalstate()) == 1 &&
        speed() == 2 &&
        stageID() == stage &&
        balls() < prev(balls()) &&
        balls() == 0    
)
achievement(
    "Point Collector",
    "Obtain 1,000 points in one session without receiving Game Over.",
    points = 5,
    badge="169550",
    id=151395,
    trigger = 
        prev(scorethousands()) == 0 &&
        scorethousands() == 1    
)
// =====Rich Presence=====
speeds = {
    0:"▶",
    1:"⏩",
    2:"⏭️"
}
rich_presence_conditional_display(globalstate() == 1 && balls() != 0, "Adventuring on Stage {0}. 🏆 {1} {2}", 
    rich_presence_value("stageNumber", stageID()),
    rich_presence_value("Score", scoreones() + scoretens() * 10 + scorehundreds() * 100 + scorethousands() * 1000 + scoretenthousands() * 10000, "POINTS"),
    rich_presence_lookup("Speed", speed(), speeds)
)
rich_presence_conditional_display(globalstate() == 0 && balls() != 0, "Paused")
rich_presence_display("In Menu")

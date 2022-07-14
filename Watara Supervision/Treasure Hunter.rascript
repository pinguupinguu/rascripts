// Treasure Hunter
// #ID = 17659
// RA Checksum: c5f068b51d50b4e86d63fe7404984002
// $0002: [8bit] Game State
//        0xFF=In Game
//        0x00=Paused
function state() => byte(0x000002)
// $0072: [8bit] Death Flag
// $0073: [8bit] Lives
function lives() => byte(0x000073)
// $0077: [8bit] Stage ID
//        00=Easy
//        01=Normal
//        02=Hard
function stage() => byte(0x000077)
// $00D4: [16bit] BCD Stage Timer
function timer() => word(0x0000D4)
function timerbcd() => bcd(timer())
// $00D6: [8bit] BCD Gems Collected
function gems() => byte(0x0000D6)
// $00D8: [8bit] BCD Score 0000xx
function ones() => low4(0x0000D8)
function tens() => high4(0x0000D8)
// $00D9: [8bit] BCD Score 00xx00
function hundreds() => low4(0x0000D9)
function thousands() => high4(0x0000D9)
// $00DA: [8bit] BCD Score xx0000
function tenthousands() => low4(0x0000DA)
function hundredthousands() => high4(0x0000DA)
// $00DE: [8bit] Difficulty
function difficulty() => byte(0x0000DE)
function completion(level) => prev(stage()) == level && stage() == level+1
achievement(
    "Gem Hunting Novice",
    "Complete Stage 1!", 
    id=154895,
    badge="174355",
    points=5,    
    trigger=
        completion(1)
)
achievement(
    "Gem Hunting Advanced",
    "Complete Stage 2!", 
    id=154896,
    badge="174356",
    points=5,    
    trigger=
        completion(2)
)
achievement(
    "Gem Hunting Officer",
    "Complete Stage 3!",
    id=154897,
    badge="174357",
    points=5,    
    trigger=
        completion(3)
)
achievement(
    "Gem Hunting Expert",
    "Complete Stage 4!", 
    id=154898,
    badge="174358",
    points=5,    
    trigger=
        completion(4)
)
achievement(
    "Gem Hunting Nutcase",
    "Complete Stage 5!",
    id=154899,
    badge="174359",
    points=5,    
    trigger=
        completion(5)
)
achievement(
    "Gem Hunting God",
    "Complete Stage 6!", 
    id=154900,
    badge="174360",
    points=10,    
    trigger=
        completion(6)    
)
achievement(
    "You Proved Your Point",
    "Score 500 points without losing the game!", 
    id=154901,
    badge="174361",
    points=5,    
    trigger=
        stage() != 0 &&
        prev(hundreds()) < 5 &&
        hundreds() == 5        
)
achievement(
    "Nuts for Gems",
    "Collect 100 gems in one session.",
    id=154902,
    badge="174362",
    points=5,    
    trigger=       
        measured(repeated(100, stage() != 0 && gems() < prev(gems())))
)
//======RP=====
rich_presence_conditional_display(stage() == 0, "In Menu")
rich_presence_display("In Stage {0} ⏰ {1} 🍄 {2} 🏆 {3}",
rich_presence_value("Stage", stage()),
rich_presence_value("Timer", timerbcd()),
rich_presence_value("Lives", lives()),
rich_presence_value("Score", bcd(ones()) + bcd(tens()) * 10 + bcd(hundreds()) * 100 + bcd(thousands()) * 1000 + bcd(tenthousands()) * 10000 +bcd(hundredthousands()) * 100000)
)
//=====LB=====
leaderboard(
    "Highest Score",
    "Starting from Stage 1, highest score after losing all lives.",
    stage() == 1 && lives() == 3,
    always_false(),
    lives() < prev(lives()) && lives()==0,
    bcd(ones()) + bcd(tens()) * 10 + bcd(hundreds()) * 100 + bcd(thousands()) * 1000 + bcd(tenthousands()) * 10000 +bcd(hundredthousands()) * 100000    
)
// After Burner Complete
// #ID = 14303

// $0060: [8bit] Stage ID
function stage() => byte(0x000060)

// $2004: [8bit] Difficulty
//        0x00=Normal
//        0x01=Hard
//        0x02=Hardest
//        0x03=Extra Easy
//        0x04=Easy
function difficulty() => byte(0x002004)
rp_difficulty = {
    0:"Normal",
    1:"Hard",
    2:"Hardest",
    3:"Extra Easy",
    4:"Easy"
}
// $2030: [8bit] Game State
//        0x01=In Menu
//        0x00=In Game
function state() => byte(0x002030)

// $8884: (32bit) Score
function score() => dword(0x008884)
function score_higher() => bcd(word(0x8884))
function score_lower() => bcd(word(0x8886))
function rp_score() =>  score_higher() + score_lower() 
function ingame_check() => state() == 0 && score() != 0
// $88E0: Lives
function lives() => byte(0x0088E0)

function return_end_string(num){
    if(num == 3 || num== 11) return " and refuel on Stage " + num + 2 + "!"
    if(num == 21) return " and win the game!"
    else return ""
}
function point_check(num){
    if num == 4  return 0
    else if num == 12 return 0
    else if num == 21 return 25
    else if num > 12 return 10    
    else return 5
}
name = ""
for i in range(0 , 21){
    if(i != 4 && i != 12) name = "Stage " + i + 1
    else name = "void"
        achievement(
        name,
        "Clear Stage " + i + 1 + " on Normal or higher" + return_end_string(i),
        point_check(i),
        trigger=
            ingame_check() &&
            difficulty() <= 2 &&
            prev(stage()) == i &&
            stage() == i + 1
    )
    
}
achievement(
    "Excellent Pilot",
    "Beat the game on Hard Difficulty",
    points=50,
    trigger=
        ingame_check() &&
        difficulty() == 1 &&
        prev(stage()) == 21 &&
        stage() == 22
)
achievement(
    "Hardcore Pilot",
    "Beat the game on Hardest difficulty without dying",
    points=100,
    trigger=
        once(stage() == 0 && prev(score()) == 0 && score() != 0) &&
        difficulty() == 2 &&        
        trigger_when(prev(stage()) == 21 && stage() == 22) &&
        never(score() == 0) &&
        never(lives() < prev(lives()))               
)
rich_presence_conditional_display(score() != 0, "In Stage {0} on {1} ✈️ {2}  🏆 {3}{4}0",
    rich_presence_macro("Number", stage() + 1),
    rich_presence_lookup("Difficulty", difficulty(), rp_difficulty),
    rich_presence_macro("Number", lives()),
    rich_presence_macro("Number", score_higher()),
    rich_presence_macro("Number", score_lower())
)
rich_presence_display("In Menu...")
// Dragonfire
// #ID = 13486
// RA Hash: 37c56fabd85c91f365bf2f1152f59081
// $01DD: [8bit] Lives
function lives() => byte(0x0001DD)
// $01DF: [8bit] Level ID
function level_ID() => byte(0x0001DF)
// $0206: [BCD] [8bit] Score - Ones & Tens
function score_tens() => byte(0x000206)
// $0207: [BCD] [8bit] Score - Hundreds & Thousands
function score_thousands() => byte(0x000207)
// $0208: [BCD] [8bit] Score - Ten-Thousands & Hundred-Thousands
function score_hrdthousands() => byte(0x000208)
function bcd_score() => bcd(score_tens()) + bcd(score_thousands()) * 100 + bcd(score_hrdthousands()) * 10000
function completion(first_level) =>
    never(level_ID() == 0) && 
    once(prev(level_ID()) == first_level && level_ID() == first_level + 1) &&
    once(prev(level_ID()) == first_level + 1 && level_ID() == first_level + 2)
achievement(
    "First Adventure",
    "Clear Level 1 & 2",
    id=158661,
    badge="178401",
    points=3,
    trigger=
        completion(1)        
)
achievement(
    "Advancing Through the Castle",
    "Clear Level 3 & 4",
    id=158662,
    badge="178402",
    points=5,
    trigger=
        completion(3)
)
achievement(
    "Dragon Dodging",
    "Clear Level 5 & 6",
    id=158663,
    badge="178403",
    points=5,
    trigger=
        completion(5)
)
achievement(
    "Archer Dodger",
    "Clear Level 7 & 8",
    id=158664,
    badge="178404",
    points=5,
    trigger=
        completion(7)
)
achievement(
    "Advanced Bridge Runner",
    "Clear Level 9 & 10",
    id=158665,
    badge="178405",
    points=10,
    trigger=
        completion(9)
)
achievement(
    "Dragon Breath",
    "Clear Levels 1-10 without losing all of your lives",
    id=158666,
    badge="178406",
    points=25,
    trigger=
        once(level_ID() == 1) &&
        trigger_when(prev(level_ID()) == 10 && level_ID() == 11) && (always_false()|| never(level_ID() == 0))
)
//=====Rich Presence=====
rich_presence_conditional_display(level_ID() != 0, "Dodging dragons on Level {0} 🍄 {1}  🏆 {2}",
rich_presence_value("Level", level_ID()),
rich_presence_value("Lives", lives()),
rich_presence_value("Score", bcd_score(), "POINTS")
)
rich_presence_display("In Menu")
//=====Leaderboards=====
leaderboard(
    "Highest Score",
    "Highest number of points held in one game.",
    level_ID() != 0,
    always_false(),
    lives() < prev(lives()) && lives() == 0,
    bcd_score()
)
leaderboard(
    "Highest Level",
    "Starting from level one, highest amount of levels cleared in one game. ",
    level_ID() == 1,
    always_false(),
    lives() < prev(lives()) && lives() == 0,
    level_ID()    
)

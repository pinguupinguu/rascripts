// Dream World
// #ID = 17627
// RA: 43d15c879126e97708aef98d16de92f4 
// $0012: [8bit] Global State
//        0xFF=In Game
//        0x00=In Menu/Paused
function state() => byte(0x000012)
// $008A: [8bit] Round Number
function round() => byte(0x00008A)
// $0093: [8bit] Weapon Type
// $009A: [8bit] Character X Cord
// $009B: [8bit] Character Y Cord
// $00A4: [8bit] Health
function health() => byte(0x0000A4)
// $00A8: [8bit] Score - tens
function tens() => byte(0x0000A8)
// $00A9: [8bit] Score - hundreds
function hundreds() => byte(0x0000A9)
// $00AA: [8bit] Score - thousands
function thousands() => byte(0x0000AA)
// $00AB: [8bit] Score - ten-thousands
function tenthousands() => byte(0x0000AB)
// $00AC: [8bit] "HI" - tens
// $00AD: [8bit] "HI" - Hundreds
// $00AE: [8bit] "HI" - thousands
// $00AF: [8bit] "HI" - ten-thousands
// $0111: [8bit] Round 1 Boss Health
function kangaroohealth() => byte(0x000111)
// $0114: [8bit] Monkey Boss Health (Round 3)
function monkeyhealth() => byte(0x000114)
// $011D: [8bit] Bear Boss Health (Round 2 & 4)
function bearhealth() => byte(0x00011D)
function progression(thisround, bosshealth) => 
    round()==thisround &&
    bosshealth < prev(bosshealth) &&
    bosshealth == 0
achievement(
    "Are We In Australia?",
    "Clear Stage 1.",
    id=154508,
    badge="173763",
    points=2,
    trigger=
        state() == 0xff &&
        progression(0, kangaroohealth())        
)
achievement(
    "Brother Bear Part 1",
    "Clear Stage 2.",
    id=154509,
    badge="173764",
    points=3,
    trigger=
        state() == 0xff &&
        progression(1, bearhealth())
)
achievement(
    "Monkeying Around",
    "Clear Stage 3.",
    id=154510,
    badge="173765",
    points =4,
    trigger=
        state() == 0xff &&
        progression(2, monkeyhealth())
)
achievement(
    "Brother Bear Finale",
    "Clear Stage 4 and beat the game.",
    id=154511,
    badge="173766",
    points=5,
    trigger=
        state() == 0xff &&
        progression(3, bearhealth())
)
achievement(
    "Too Easy To Be Deathless",
    "Beat the game without dying. (Reset game if you die!)",
    id=154512,
    badge="173767",
    points=10,
    trigger=
    unless(state() == 0x00) &&
    unless(repeated(1, state() == 0xFF && health() < prev(health()) && health() == 0)) &&
    round() == 3 &&
    bearhealth() < prev(bearhealth()) &&
    bearhealth() == 0
)
achievement(
    "Basic Scoring",
    "Score at least 5,000 points in one game. (No Continue)",
    id=154513,
    badge="173768",
    points=5,
    trigger=        
        state() == 0xFF &&
        thousands() > prev(thousands()) &&
        thousands() == 5               
)
function scorereport() => tens()*10 + hundreds()*100 + thousands() * 1000 + tenthousands() * 10000
//======RICH PRESENCE======
rich_presence_conditional_display(state() == 0x0, "Paused In A Menu")
rich_presence_display("In Round {0} 🏆 {1}",
rich_presence_value("Round", round() + 1),
rich_presence_value("Score", scorereport())
)
//======LEADERBOARDS=======
leaderboard(
    "Highest Score", 
    "Highest score, after death.", 
    state()==0xff, 
    0==1, 
    health() < prev(health()) && health() == 0,  
    scorereport()
)

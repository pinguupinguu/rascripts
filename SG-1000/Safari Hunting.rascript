// Safari Hunting
// #ID = 24557
// $0013: [8bit] Lives
function lives() => byte(0x0013)
// $0016: [8bit] Fuel
function fuel() => byte(0x0016)
// $0020: [8bit] Number of Snakes
function snakes() => byte(0x0020)
// $0021: [8bit] Number of Monkeys
function monkeys() => byte(0x0021)
// $0022: [8bit] Number of Lions
function lions() => byte(0x0022)
// $0023: [8bit] Number of Elephants
function elephants() => byte(0x0023)
// $0026: [8bit] Round Number
function round() => byte(0x0026)
// $0028: [16bit] Score
function score() => word(0x0028)
// $0103: [8bit] Snake Down Timer
// $0113: [8bit] Monkey Down Timer
// $0123: [8bit] Lion Down Timer
// $0133: [8bit] Elephant Down Timer
achievement(
    "Hunting Beginner",
    "Clear your first round by tranquilizing all the animals at the same time!",
    points=5,
    trigger=
        prev(round()) == 1 &&
        round() == 2
)
achievement(
    "Forest Gunman",
    "Clear round three!",
    points=5,
    trigger=
        prev(round()) == 3 &&
        round() == 4
)
achievement(
    "Animal Destroyer",
    "Clear round five!",
    points=10,
    trigger=
        prev(round()) == 5 &&
        round() == 6
)
achievement(
    "Forest Shooting Master",
    "Clear rounds 1-5 without losing a life!",
    points=25,
    trigger=
        lives() == 5 &&
        prev(round()) == 5 &&
        trigger_when(round() == 6)
)
achievement(
    "Conservationist",
    "Clear a round with at least half your fuel remaining",
    points=5,
    trigger=
        fuel() > 0xf &&
        trigger_when(round() > prev(round()))
)
achievement(
    "Animal Collector",
    "Hold 1,000 points!",
    points=5,
    trigger=
        prev(score()) < 1000 &&
        score() >= 1000
)
achievement(
    "Baggin' Trophies",
    "Hold 2,5000 points!",
    points=10,
    trigger=
        prev(score()) < 2500 &&
        score() >= 2500
)
function trophy_hunt(animal) {
    measured(repeated(10, animal > prev(animal)))
}
achievement(
    "Trophy Hunt: Elepehants",
    "Tranquilize and collect 10 elephants",
    points=5,
    trigger=
        trophy_hunt(elephants())
)
achievement(
    "Trophy Hunt: Lions",
    "Tranquilize and collect 10 lions",
    points=5,
    trigger=
        trophy_hunt(lions())
)
achievement(
    "Trophy Hunt: Monkeys",
    "Tranquilize and collect 10 monkeys",
    points=5,
    trigger=
        trophy_hunt(monkeys())
)
achievement(
    "Trophy Hunt: Snakes",
    "Tranquilize and collect 10 snakes",
    points=5,
    trigger=
        trophy_hunt(snakes())
)
// $010A: [8bit] Snake State
//        0x07=Knocked Out
// $011A: [8bit] Monkey State
//        0x07=Knocked Out
// $012A: [8bit] Lion State
//        0x07=Knocked Out
knocked_out = 7
achievement(
    "Selective Poaching",
    "Tranquilize and collect 10 elephants without knocking down other species and losing a life",
    points=50,
    trigger=
        trophy_hunt(elephants()) &&
        all_of([0x010a, 0x011a, 0x12a], b => never(byte(b) == knocked_out)) &&
        never(lives() < prev(lives()))
)
// $0014: [8bit] Character State
//        0x00=In Maze
//        0x01=In Car
function char_state() => byte(0x0014)
// $008A: [8bit] Game Paused
//        0x00=False
//        0xff=True
function pause_state() => byte(0x008a)
paused = 0xff
//Rich Presence
player_state ={
    0:"Huntin'",
    1:"Drivin'"
}
//Rich Presence
rich_presence_conditional_display(pause_state() == paused && score() != 0, "Paused In Game")
rich_presence_conditional_display(round() != 0 && score() != 0 , "{0} on Round {1}. Points: {2}, Trophies: [🐘 {3}, 🦁 {4}, 🐒 {5}, 🐍 {6}]",
    rich_presence_lookup("State", char_state(), player_state),
    rich_presence_macro("Number", round()),
    rich_presence_macro("Score", score()),
    rich_presence_macro("Number", elephants()),
    rich_presence_macro("Number", lions()),
    rich_presence_macro("Number", monkeys()),
    rich_presence_macro("Number", snakes())
)
rich_presence_display("In Menu")
//Leaderboards
leaderboard(
    "Round Climber",
    "Highest round reached on Game Over",
    prev(score()) == 0 && score() != 0,
    always_false(),
    lives() == 0,
    round(),
    "Value",
    false
)
leaderboard(
    "Animal Bagger",
    "Highest score reached on Game Over",
    prev(score()) == 0 && score() != 0,
    always_false(),
    lives() == 0,
    score(),
    "Score",
    false
)
// Phoenix
// #ID = 12335

// $0381: [24bit BE] Player 1 Score (BCD)
function score() => tbyte_be(0x000381)

// $0385: [24bit BE] Player 2 Score (BCD)
// $0389: [24bit BE] Stored High Score (BCD)

// $038F: [8bit] Number of Coins
function coins() => byte(0x00038F)

// $0390: [8bit] Number of Lives
function lives() => byte(0x000390)

// $03A2: [8bit] Number of Players
function players() => byte(0x0003A2)

// $03B8: [8bit] Segment ID
function segment() => byte(0x0003B8)
achievement(
    "Flying Journey Has Started",
    "Defeat the Boss and complete Loop 1",
    points=5,
    trigger=
        prev(segment()) == 0xb &&
        segment() == 0x10 &&
        players() == 1
)
achievement(
    "Mediocre Pilot",
    "Defeat the Boss and complete Loop 5",
    points=10,
    trigger=
        prev(segment()) == 0x4b &&
        segment() == 0x50 &&
        players() == 1
)
achievement(
    "Advanced Pilot",
    "Defeat the Boss and complete Loop 10",
    points=25,
    trigger=
        prev(segment()) == 0x9b &&
        segment() == 0xa0 &&
        players() == 1
)
achievement(
    "Another Chance",
    "Get an extra life!",
    points=5,
    trigger=
        lives() - prev(lives()) == 1 &&
        players() == 1
)
achievement(
    "Simple Score",
    "Hold 20.000 or more points!",
    points=3,
    trigger=
        prev(score()) < 0x20000 &&
        score() >= 0x20000 &&
        players() == 1
)
achievement(
    "Pew Pew Points",
    "Hold 100.000 or more points!",
    points=5,
    trigger=
        prev(score()) < 0x100000 &&
        score() >= 0x100000 &&
        players() == 1
)
achievement(
    "Shot Enthusiast",
    "Hold 200.000 or more points!",
    points=10,
    trigger=
        prev(score()) < 0x200000 &&
        score() >= 0x200000 &&
        players() == 1
)
achievement(
    "Fearless!",
    "Clear Loops 1-10 without dying",
    points=50,
    trigger=
        once(prev(segment()) == 0 && segment() == 1) &&
        trigger_when(prev(segment()) == 0x9b && segment() == 0xa0) &&
        never(players() != 1) &&
        never(lives() < prev(lives()))
)
// $03BA: [8bit] Spaceship Phoenix Left on Screen
// $03BB: [8bit] Bird Phoenix Left on Screen
rich_presence_conditional_display(segment() == 0, "In Menu")
rich_presence_display("Soarin' through space! ❤️ {0} 🏆 {1}",
    rich_presence_macro("Number", lives()),
    rich_presence_macro("Number", score())
)


// ~Homebrew~ Diamond Run
// #ID = 19896
// $0402: [8bit] Timer IsActive
//        0x00=No
//        0x01=Yes
function timer_active() => byte(0x000402)
// $040D: [8bit] Lives
function lives() => byte(0x00040D)
// $040E: [8bit] Number of Gems Left
function gems() => byte(0x00040E)
// $040F: [8bit] Timer (Seconds)
function timer() => byte(0x00040F)
// $0414: [8bit] Level ID
function level() => byte(0x000414)
// $0425: [8bit] Advance Next Level
//        Goes from 0, up to 4 for the portal animation!
function level_clear() => byte(0x000425)
// $2BFD: [8bit] Game State
//        0x00=In Menu
//        0x01=In Game
function state() => byte(0x002BFD)
// $0410: [8bit] Score
function score() => byte(0x000410)
level_names = {
    1:"Collect All Gems",
    2:"Basic Rock Skills 1",
    3:"Basic Rock Skills 2",
    4:"Intro to Baddies"
}
for i  in range(1, 4){
    achievement(
        level_names[i],
        "Clear Level " + i,
        points= i,
        trigger=
            level() == i &&
            prev(level_clear()) == 0 &&
            level_clear() == 4
    )
}
achievement(
    "Diamond Daring Deathless",
    "Complete the game without losing a life!",
    points=5,
    trigger=
        once(level() == 1 && state() > prev(state())) &&
        trigger_when(level() == 4 && prev(level_clear()) == 0 && level_clear() == 4) &&
        never(lives() < prev(lives()))
)
achievement(
    "Diamond Daring Speedrun",
    "Beat the game in under 1 minute and 30 seconds",
    points=5,
    trigger=
        once(level() == 1 && timer_active() > prev(timer_active())) &&
        trigger_when(level() == 4 && prev(level_clear()) == 0 && level_clear() == 4) &&        
        never(repeated(0x1518, once(level() == 1 && timer_active() > prev(timer_active())) && always_true())) &&
        never(prev(lives()) == 1 && lives() == 0)
)
leaderboard(
    "Spooky Speedrun",
    "Fastest time to clear the game",    
    level() == 1 && timer_active() > prev(timer_active()),
    lives() == 0,
    level() == 4 && prev(level_clear()) == 0 && level_clear() == 4,
    always_true(),
    "FRAMES",
    true,
    id=36375
)
rich_presence_conditional_display(state() == 1, "Exploring Level {0}: {1} ❤️ {2} 💎 {3} ⏳ {4}",
    rich_presence_macro("Number", level()),
    rich_presence_lookup("LvlName", level(), level_names),
    rich_presence_macro("Number", lives()),
    rich_presence_macro("Number", score() / 10),
    rich_presence_macro("Seconds", timer())
)
rich_presence_display("In Menu")
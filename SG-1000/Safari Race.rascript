// Safari Race
// #ID = 24558

// $007A: [8bit] Demo Flag
//        0x00=Controlled
//        0x01=Demo

// $007B: [8bit] Section
//        0x01=Section 1
//        0x02=Section 2
//        0x03=Section 3
//        0x04=Game End
// $007E: [24bit] Score (BCD)
function score() => tbyte(0x007e)
// $02BC: [16bit] BCD - Speed
// $02BF: [8bit] Fuel Life Left
// $02C1: [16bit] BCD - Total Distance Goal Traveled (km)
// $02C3: [24bit] Something to do with fuel. (Still don't know what the fuck this does.)
// $02D0: [8bit] Number of Tires Left

// $02EF: [8bit BCD] Time - Minutes
// $02F0: [8bit BCD] Time - Hours
function time_min() => byte(0x02ef)
function time_hours() => byte(0x02f0)
function demo_active() => byte(0x007a) == 1
function in_demo_pause() => unless(demo_active())
function section() => byte(0x007b)
function distance() => word(0x02c1)
function tires() => byte(0x02d0)
function clear_lvl(goal) => prev(section()) == goal && section() == goal + 1
achievement(
    "First Road Trip",
    "Clear Section 1",
    points=5,
    trigger=
        clear_lvl(1)
)
achievement(
    "Dodging Accidents",
    "Clear Section 2",
    points=5,
    trigger=
        clear_lvl(2)
)
achievement(
    "Tearing Asphalt",
    "Clear Section 3 and win the game!",
    points=10,
    trigger=
        clear_lvl(3)
)
achievement(
    "Roads & Trials",
    "Clear Section 1 in under 4:00",
    points=10,
    trigger=
        !demo_active() &&
        section() == 1 &&
        time_hours() < 4 &&
        trigger_when(prev(distance()) < 0x1000 && distance() == 0x1000)                
)
achievement(
    "Flying Past Obstacles!",
    "Clear Section 2 in under 7:30",
    points=10,
    trigger=
        !demo_active() &&
        section() == 2 &&
        time_hours() < 8 &&
        time_min() < 0x30 && //BCD
        trigger_when(prev(distance()) < 0x2000 && distance() == 0x2000)
)
achievement(
    "Speed Has Never Killed Anyone",
    "Clear Section 3 in under 11:30",
    points=25,
    trigger=
        !demo_active() &&
        section() == 3 &&
        time_hours() < 0x11 && //BCD
        time_min() < 0x30 && //BCD
        trigger_when(prev(distance()) < 0x3000 && distance() == 0x3000)
)
achievement(
    "Pro Driver",
    "Beat the game without ever losing a tire",
    points=25,
    trigger=
        in_demo_pause() &&
        once(section() == 1 && prev(distance()) == 0 && distance() == 1) &&
        trigger_when(prev(section()) == 3 && section() == 4) &&
        never(prev(tires()) == 4 && tires() == 3)
)
function game_paused() => byte(0x0065) == 0xff
function speed() => bcd(word(0x02bc))
rich_presence_conditional_display(demo_active(), "In Demo")
rich_presence_conditional_display(section() == 4, "Beat the game!")
rich_presence_conditional_display(game_paused(), "Paused")
rich_presence_conditional_display(!demo_active() && score() != 0, "Cruisin' on Section {0} at {1} km/h. Score: {2} ⏳ {3}:{4}'",
    rich_presence_macro("Number", section()),
    rich_presence_macro("Number", speed()),
    rich_presence_macro("Score", bcd(score())),
    rich_presence_macro("Number", bcd(time_hours())),
    rich_presence_macro("Number", bcd(time_min()))
)
rich_presence_display("In Menu")
leaderboard(
    "Final Score",
    "Highest score after game over or beating game!",
    !demo_active() && section() == 1 && prev(score()) == 0 && score() != 0,
    always_false(),
    tires() == 0 || section() == 4,
    bcd(score()),
    "Score",
    false
)


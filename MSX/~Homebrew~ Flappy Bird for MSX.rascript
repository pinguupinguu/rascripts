// ~Homebrew~ Flappy Bird for MSX
// #ID = 19726

// $2008: [16bit] Score
function score() => word(0x002008)

// $200A: [16bit] High Score
function high_score() => word(0x00200A)

// $308A: [8bit] Game State
//        0x0c = Game Over
//        0x4a = In Menu
//        0x97 = In Game
//        0xc0 = Death
names = {
    1:"Flap Journey Has Started",
    2:"Tap the A Button",
    3:"A Bird Adventure",
    4:"Beakareful",
    5:"Eagle Eyes",
    6:"Soarin' Through Score",
    7:"Your Wingman",
    8:"We're Soooarin', Flyyyyin'",
    9:"Long Winded Endurance",
    10:"Bird Clone Master!"
}
my_score = 0
for i in range(1, 10){
if i == 10 my_score = 10
else my_score = 5
    achievement(
        names[i],
        "Earn " + i * 50 + " points!",
        points=my_score,
        trigger=
            prev(score()) < i * 50 &&
            score() == i * 50
    )
}


function state() => byte(0x00308A)
rich_presence_conditional_display(state() == 0xc, "Bird has Game Overed!")
rich_presence_conditional_display(state() == 0xc0, "Bird has died!")
rich_presence_conditional_display(state() == 0x97, "Bird is flappin' thru pipes! 🏆 {0}",
    rich_presence_macro("Number", score())
)
rich_presence_conditional_display(state() == 0x4a, "Awaiting flight in the Menu. High 🏆 {0}",
    rich_presence_macro("Number", high_score())
)
rich_presence_display("Booting...")
leaderboard(
    "High Score",
    "Most points earned!",    
    state() == 0x97,
    always_false(),
    state() == 0xc0,
    score(),
    id=35721
)
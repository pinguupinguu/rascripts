// Safari Race
// #ID = 24558

// $02BC: [16bit] BCD - Speed

function section() => byte(0x007b)
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
    "Master Driver",
    "Clear all three sections without losing a tire",
    points=50,
    trigger=
        
)
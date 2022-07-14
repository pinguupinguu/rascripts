// Soukoban
// #ID = 19919

// $0011: [8bit] Number of Lives Left
function lives() => byte(0x000011)

// $0014: [8bit] Round Number
function round() => byte(0x000014)

// $001B: [8bit] State
//        0x00=Booting
//        0x01= In Title Screen
//        0x02=In Round Selection
//        0x03=In Game
//        0x04=Editor
function state() => byte(0x00001B)
state_options = {
    0:"In Menu",
    1:"In Title Screen",
    2:"Selecting a Round",
    4:"In the Level Editor"
}
// $002B: [24bit BCD] Number of Pushes
function pushes() => bcd(tbyte(0x00002B))

// $002E: [24bit BCD] Number of Moves
function moves() => bcd(tbyte(0x00002E))
my_points = 0
for i in range(1, 100, 10){
if i < 51 my_points = 10
else my_points = 25
    achievement(
        "Box Pusher " + i + "-" + i + 9,
        "Clear Rounds " + i + "-" + i + 9 + " in one session!",
        points=my_points,
        trigger=
            measured(tally_of(range(i, i + 9), 10, b => once(prev(round()) == b && round() == b + 1))) &&
            unless(state() != 3)
    )
}
rich_presence_conditional_display(state() == 3, "Playing Round {0}! ❤️ {1} Moves: {2} Box Pushes: {3}",
    rich_presence_macro("Number", round()),
    rich_presence_macro("Number", lives() - 1), //Displayed in-game is value - 1
    rich_presence_macro("Number", moves()), 
    rich_presence_macro("Number", pushes())
)
rich_presence_display("{0}",
    rich_presence_lookup("State", state(), state_options)
)
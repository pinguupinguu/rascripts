// Tiny Sokoban
// #ID = 19547
// $0308: [8bit] Level ID Index 1
function level_one() => byte(0x000308)
// $0309: [8bit] Level ID Index 2
function level_two() => byte(0x000309)
// $030A: [8bit] Game State
//        0x00=In Menu
//        0x01=In Game
function state() => byte(0x00030A)
// $0765: [8bit] Number of Moves
function moves() => byte(0x000765)
// $0B10: [52 bytes] Level Cleared Flags
//        0x00=No
//        0x01=Yes
//        Level Number = Array Index + 1
table_addresses = range(0xb10,  0xb10 + 51)
level_flags = array_map(table_addresses, b => byte(b))

count = 1
for level in level_flags{
    achievement(
        "Tiny Puzzler " + count,
        "Clear puzzle " + count,
        points=2,
        trigger=
            prev(state()) == 1 &&
            prev(level) == 0 && level == 1
    )
    count = count + 1
}
rich_presence_conditional_display(state() == 1, "Solving 🧩 {0}. Moves: {1}",
    rich_presence_value("Level", level_one() + level_two() + 1), //Extra +1 prevents off by one issue.
    rich_presence_value("Moves", moves())
)
rich_presence_display("In Menu 🧩 {0}/52",
    rich_presence_value("Solved", sum_of(table_addresses, b => byte(b)))
)
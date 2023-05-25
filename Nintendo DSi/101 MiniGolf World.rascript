// 101 MiniGolf World
// #ID = 22621

// $1472C1: Active Save Slot [8-bit]
// $1472FC: [24 bytes] Profile 1 - Holes Available - Islands 1-6
//          Each [32bit] = number of holes
// $147314: [24 bytes] Profile 2 - Holes Available - Islands 1-6
//          Each [32bit] = number of holes
// $14732C: [24 bytes] Profile 3 - Holes Available - Islands 1-6
//          Each [32bit] = number of holes
// $147344: [24 bytes] Profile 4 - Holes Available - Islands 1-6
//          Each [32bit] = number of holes
// $14735C: [432 bytes] Profile 1 - Island High Scores Table
//          
//          Structure for all profiles:
//          Island 1 Holes 1-18 Array
//          Island 2 Holes 1-18 Array
//          Island 3 Holes 1-18 Array
//          Island 4 Holes 1-18 Array
//          Island 5 Holes 1-18 Array
//          Island 6 Holes 1-18 Array
// $14750C: [432 bytes] Profile 2 - Island High Scores Table
// $1476BC: [432 bytes] Profile 3 - Island High Scores Table
// $14786C: [432 bytes] Profile 4 - Island High Scores Table
// $147A1C: [432 bytes] Profile 1 - Island Strokes Table
// $147BCC: [432 bytes] Profile 2 - Island Strokes Table
// $147D7C: [432 bytes] Profile 3 Strokes Table
// $147F2C: [432 bytes] Profile 4 Strokes Table
// $1480DC: [1300 bytes] Game High Score Table
//          In Island Number Order and Hole Number:
//          Position 1, Positoin 2, Position 3

function app_check() => prev(dword_be(0xffe00c)) == 0x4b584945 
function in_game() => prev(dword(0x0f37dc)) == 1

golf_courses = {
    0:{"Island":1, "Hole":1, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A1C), "Points":5},
    1:{"Island":1, "Hole":2, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A20), "Points":5},
    2:{"Island":1, "Hole":3, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A24), "Points":5},
    3:{"Island":1, "Hole":4, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A28), "Points":5},
    4:{"Island":1, "Hole":5, "Par":8, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A2C), "Points":5},
    5:{"Island":1, "Hole":6, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A30), "Points":5},
    6:{"Island":1, "Hole":7, "Par":11, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A34), "Points":5},
    7:{"Island":1, "Hole":8, "Par":7, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A38), "Points":5},
    8:{"Island":1, "Hole":9, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A3C), "Points":5},
    9:{"Island":1, "Hole":10, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A40), "Points":5},
    10:{"Island":1, "Hole":11, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A44), "Points":5},
    11:{"Island":1, "Hole":12, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A48), "Points":5},
    12:{"Island":1, "Hole":13, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A4C), "Points":5},
    13:{"Island":1, "Hole":14, "Par":7, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A50), "Points":5},
    14:{"Island":1, "Hole":15, "Par":9, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A54), "Points":5},
    15:{"Island":1, "Hole":16, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A58), "Points":5},
    16:{"Island":1, "Hole":17, "Par":8, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A5C), "Points":5},
    17:{"Island":1, "Hole":18, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A60), "Points":5},
    18:{"Island":2, "Hole":1, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A64), "Points":5},
    19:{"Island":2, "Hole":2, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A68), "Points":5},
    20:{"Island":2, "Hole":3, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A6C), "Points":5},
    21:{"Island":2, "Hole":4, "Par":3, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A70), "Points":5},
    22:{"Island":2, "Hole":5, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A74), "Points":5},
    23:{"Island":2, "Hole":6, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A78), "Points":5},
    24:{"Island":2, "Hole":7, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A7C), "Points":5},
    25:{"Island":2, "Hole":8, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A80), "Points":5},
    26:{"Island":2, "Hole":9, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A84), "Points":5},
    27:{"Island":2, "Hole":10, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A88), "Points":5},
    28:{"Island":2, "Hole":11, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A8C), "Points":5},
    29:{"Island":2, "Hole":12, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A90), "Points":5},
    30:{"Island":2, "Hole":13, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A94), "Points":5},
    31:{"Island":2, "Hole":14, "Par":8, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A98), "Points":5},
    32:{"Island":2, "Hole":15, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147A9C), "Points":5},
    33:{"Island":2, "Hole":16, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AA0), "Points":5},
    34:{"Island":2, "Hole":17, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AA4), "Points":5},
    35:{"Island":2, "Hole":18, "Par":7, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AA8), "Points":5},
    36:{"Island":3, "Hole":1, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AAC), "Points":5},
    37:{"Island":3, "Hole":2, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AB0), "Points":5},
    38:{"Island":3, "Hole":3, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AB4), "Points":5},
    39:{"Island":3, "Hole":4, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AB8), "Points":5},
    40:{"Island":3, "Hole":5, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147ABC), "Points":5},
    41:{"Island":3, "Hole":6, "Par":3, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AC0), "Points":5},
    42:{"Island":3, "Hole":7, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AC4), "Points":5},
    43:{"Island":3, "Hole":8, "Par":10, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AC8), "Points":5},
    44:{"Island":3, "Hole":9, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147ACC), "Points":5},
    45:{"Island":3, "Hole":10, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AD0), "Points":5},
    46:{"Island":3, "Hole":11, "Par":7, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AD4), "Points":5},
    47:{"Island":3, "Hole":12, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AD8), "Points":5},
    48:{"Island":3, "Hole":13, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147ADC), "Points":5},
    49:{"Island":3, "Hole":14, "Par":9, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AE0), "Points":5},
    50:{"Island":3, "Hole":15, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AE4), "Points":5},
    51:{"Island":3, "Hole":16, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AE8), "Points":5},
    52:{"Island":3, "Hole":17, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AEC), "Points":5},
    53:{"Island":3, "Hole":18, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AF0), "Points":5},
    54:{"Island":4, "Hole":1, "Par":14, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AF4), "Points":5},
    55:{"Island":4, "Hole":2, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AF8), "Points":5},
    56:{"Island":4, "Hole":3, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147AFC), "Points":5},
    57:{"Island":4, "Hole":4, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B00), "Points":5},
    58:{"Island":4, "Hole":5, "Par":7, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B04), "Points":5},
    59:{"Island":4, "Hole":6, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B08), "Points":5},
    60:{"Island":4, "Hole":7, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B0C), "Points":5},
    61:{"Island":4, "Hole":8, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B10), "Points":5},
    62:{"Island":4, "Hole":9, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B14), "Points":5},
    63:{"Island":4, "Hole":10, "Par":3, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B18), "Points":5},
    64:{"Island":4, "Hole":11, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B1C), "Points":5},
    65:{"Island":4, "Hole":12, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B20), "Points":5},
    66:{"Island":4, "Hole":13, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B24), "Points":5},
    67:{"Island":4, "Hole":14, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B28), "Points":5},
    68:{"Island":4, "Hole":15, "Par":2, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B2C), "Points":5},
    69:{"Island":4, "Hole":16, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B30), "Points":5},
    70:{"Island":4, "Hole":17, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B34), "Points":5},
    71:{"Island":4, "Hole":18, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B38), "Points":5},
    72:{"Island":5, "Hole":1, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B3C), "Points":5},
    73:{"Island":5, "Hole":2, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B40), "Points":5},
    74:{"Island":5, "Hole":3, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B44), "Points":5},
    75:{"Island":5, "Hole":4, "Par":7, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B48), "Points":5},
    76:{"Island":5, "Hole":5, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B4C), "Points":5},
    77:{"Island":5, "Hole":6, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B50), "Points":5},
    78:{"Island":5, "Hole":7, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B54), "Points":5},
    79:{"Island":5, "Hole":8, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B58), "Points":5},
    80:{"Island":5, "Hole":9, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B5C), "Points":5},
    81:{"Island":5, "Hole":10, "Par":10, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B60), "Points":5},
    82:{"Island":5, "Hole":11, "Par":8, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B64), "Points":5},
    83:{"Island":5, "Hole":12, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B68), "Points":5},
    84:{"Island":5, "Hole":13, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B6C), "Points":5},
    85:{"Island":5, "Hole":14, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B70), "Points":5},
    86:{"Island":5, "Hole":15, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B74), "Points":5},
    87:{"Island":5, "Hole":16, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B78), "Points":5},
    88:{"Island":5, "Hole":17, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B7C), "Points":5},
    89:{"Island":5, "Hole":18, "Par":3, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B80), "Points":5},
    90:{"Island":6, "Hole":1, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B84), "Points":5},
    91:{"Island":6, "Hole":2, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B88), "Points":5},
    92:{"Island":6, "Hole":3, "Par":8, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B8C), "Points":5},
    93:{"Island":6, "Hole":4, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B90), "Points":5},
    94:{"Island":6, "Hole":5, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B94), "Points":5},
    95:{"Island":6, "Hole":6, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B98), "Points":5},
    96:{"Island":6, "Hole":7, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147B9C), "Points":5},
    97:{"Island":6, "Hole":8, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BA0), "Points":5},
    98:{"Island":6, "Hole":9, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BA4), "Points":5},
    99:{"Island":6, "Hole":10, "Par":8, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BA8), "Points":5},
    100:{"Island":6, "Hole":11, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BAC), "Points":5},
    101:{"Island":6, "Hole":12, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BB0), "Points":5},
    102:{"Island":6, "Hole":13, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BB4), "Points":5},
    103:{"Island":6, "Hole":14, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BB8), "Points":5},
    104:{"Island":6, "Hole":15, "Par":9, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BBC), "Points":5},
    105:{"Island":6, "Hole":16, "Par":5, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BC0), "Points":5},
    106:{"Island":6, "Hole":17, "Par":6, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BC4), "Points":5},
    107:{"Island":6, "Hole":18, "Par":4, "Pointer":dword(byte(0x1472c1) * 0x1b0 + 0x147BC8), "Points":5}
}
for i in range(0, 107){
    achievement(
        "Island " + golf_courses[i]["Island"] + " Hole " + golf_courses[i]["Hole"],
        "Get a par score!",
        points=golf_courses[i]["Points"],
        trigger=
            app_check() &&
            in_game() &&
            byte(0x1472c1) == prev(byte(0x1472c1)) &&
            golf_courses[i]["Pointer"] != prev(golf_courses[i]["Pointer"]) &&
            golf_courses[i]["Pointer"] <= golf_courses[i]["Par"]
    )
}
function generate_hole_in_ones() {
    my_list = always_false()
    for hole in golf_courses{
        my_list = my_list || prev(golf_courses[hole]["Pointer"]) != 1 && golf_courses[hole]["Pointer"] == 1
        
    }
    return my_list
}
achievement(
    "A Lucky Shot!",
    "Get a hole-in-one on any course in the game!",
    points=10,
    trigger=
        app_check() && 
        in_game() &&
        byte(0x1472c1) == prev(byte(0x1472c1)) &&
        generate_hole_in_ones()            
)

state = {
    0:"In Menu",
    1:"Golfin' the Day Away!"
}
rich_presence_display("{0}", 
    rich_presence_lookup("State", dword(0x0f37dc), state)
)











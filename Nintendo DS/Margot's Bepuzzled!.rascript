// Margot's Bepuzzled!
// #ID = 16586
// $25ABB4: [32bit] Active Save Slot
function active_save() => dword(0x25abb4)
function save_protection() => active_save() == prev(active_save())
crossword = {
    1:bit0(active_save() *  135 + 0x25ABC1),
    2:bit1(active_save() *  135 + 0x25ABC1),
    3:bit2(active_save() *  135 + 0x25ABC1),
    4:bit3(active_save() *  135 + 0x25ABC1),
    5:bit4(active_save() *  135 + 0x25ABC1),
    6:bit5(active_save() *  135 + 0x25ABC1),
    7:bit6(active_save() *  135 + 0x25ABC1),
    8:bit7(active_save() *  135 + 0x25ABC1),
    9:bit0(active_save() *  135 + 0x25ABC2),
    10:bit1(active_save() *  135 + 0x25ABC2),
    11:bit2(active_save() *  135 + 0x25ABC2),
    12:bit3(active_save() *  135 + 0x25ABC2),
    13:bit4(active_save() *  135 + 0x25ABC2),
    14:bit5(active_save() *  135 + 0x25ABC2),
    15:bit6(active_save() *  135 + 0x25ABC2),
    16:bit7(active_save() *  135 + 0x25ABC2),
    17:bit0(active_save() *  135 + 0x25ABC3),
    18:bit1(active_save() *  135 + 0x25ABC3),
    19:bit2(active_save() *  135 + 0x25ABC3),
    20:bit3(active_save() *  135 + 0x25ABC3),
    21:bit4(active_save() *  135 + 0x25ABC3),
    22:bit5(active_save() *  135 + 0x25ABC3),
    23:bit6(active_save() *  135 + 0x25ABC3),
    24:bit7(active_save() *  135 + 0x25ABC3),
    25:bit0(active_save() *  135 + 0x25ABC4),
    26:bit1(active_save() *  135 + 0x25ABC4),
    27:bit2(active_save() *  135 + 0x25ABC4),
    28:bit3(active_save() *  135 + 0x25ABC4),
    29:bit4(active_save() *  135 + 0x25ABC4),
    30:bit5(active_save() *  135 + 0x25ABC4),
    31:bit6(active_save() *  135 + 0x25ABC4),
    32:bit7(active_save() *  135 + 0x25ABC4),
    33:bit0(active_save() *  135 + 0x25ABC5),
    34:bit1(active_save() *  135 + 0x25ABC5),
    35:bit2(active_save() *  135 + 0x25ABC5),
    36:bit3(active_save() *  135 + 0x25ABC5),
    37:bit4(active_save() *  135 + 0x25ABC5),
    38:bit5(active_save() *  135 + 0x25ABC5),
    39:bit6(active_save() *  135 + 0x25ABC5),
    40:bit7(active_save() *  135 + 0x25ABC5),
    41:bit0(active_save() *  135 + 0x25ABC6),
    42:bit1(active_save() *  135 + 0x25ABC6),
    43:bit2(active_save() *  135 + 0x25ABC6),
    44:bit3(active_save() *  135 + 0x25ABC6),
    45:bit4(active_save() *  135 + 0x25ABC6),
    46:bit5(active_save() *  135 + 0x25ABC6),
    47:bit6(active_save() *  135 + 0x25ABC6),
    48:bit7(active_save() *  135 + 0x25ABC6),
    49:bit0(active_save() *  135 + 0x25ABC7),
    50:bit1(active_save() *  135 + 0x25ABC7)
}
wordsearch = {
    1:bit2(active_save() *  135 + 0x25ABC7),
    2:bit3(active_save() *  135 + 0x25ABC7),
    3:bit4(active_save() *  135 + 0x25ABC7),
    4:bit5(active_save() *  135 + 0x25ABC7),
    5:bit6(active_save() *  135 + 0x25ABC7),
    6:bit7(active_save() *  135 + 0x25ABC7),
    7:bit0(active_save() *  135 + 0x25ABC8),
    8:bit1(active_save() *  135 + 0x25ABC8),
    9:bit2(active_save() *  135 + 0x25ABC8),
    10:bit3(active_save() *  135 + 0x25ABC8),
    11:bit4(active_save() *  135 + 0x25ABC8),
    12:bit5(active_save() *  135 + 0x25ABC8),
    13:bit6(active_save() *  135 + 0x25ABC8),
    14:bit7(active_save() *  135 + 0x25ABC8),
    15:bit0(active_save() *  135 + 0x25ABC9),
    16:bit1(active_save() *  135 + 0x25ABC9),
    17:bit2(active_save() *  135 + 0x25ABC9),
    18:bit3(active_save() *  135 + 0x25ABC9),
    19:bit4(active_save() *  135 + 0x25ABC9),
    20:bit5(active_save() *  135 + 0x25ABC9),
    21:bit6(active_save() *  135 + 0x25ABC9),
    22:bit7(active_save() *  135 + 0x25ABC9),
    23:bit0(active_save() *  135 + 0x25ABCA),
    24:bit1(active_save() *  135 + 0x25ABCA),
    25:bit2(active_save() *  135 + 0x25ABCA),
    26:bit3(active_save() *  135 + 0x25ABCA),
    27:bit4(active_save() *  135 + 0x25ABCA),
    28:bit5(active_save() *  135 + 0x25ABCA),
    29:bit6(active_save() *  135 + 0x25ABCA),
    30:bit7(active_save() *  135 + 0x25ABCA),
    31:bit0(active_save() *  135 + 0x25ABCB),
    32:bit1(active_save() *  135 + 0x25ABCB),
    33:bit2(active_save() *  135 + 0x25ABCB),
    34:bit3(active_save() *  135 + 0x25ABCB),
    35:bit4(active_save() *  135 + 0x25ABCB),
    36:bit5(active_save() *  135 + 0x25ABCB),
    37:bit6(active_save() *  135 + 0x25ABCB),
    38:bit7(active_save() *  135 + 0x25ABCB),
    39:bit0(active_save() *  135 + 0x25ABCC),
    40:bit1(active_save() *  135 + 0x25ABCC),
    41:bit2(active_save() *  135 + 0x25ABCC),
    42:bit3(active_save() *  135 + 0x25ABCC),
    43:bit4(active_save() *  135 + 0x25ABCC),
    44:bit5(active_save() *  135 + 0x25ABCC),
    45:bit6(active_save() *  135 + 0x25ABCC),
    46:bit7(active_save() *  135 + 0x25ABCC),
    47:bit0(active_save() *  135 + 0x25ABCD),
    48:bit1(active_save() *  135 + 0x25ABCD),
    49:bit2(active_save() *  135 + 0x25ABCD),
    50:bit3(active_save() *  135 + 0x25ABCD)
}
wordsearch_mini = {
    1:bit4(active_save() *  135 + 0x25ABCD),
    2:bit5(active_save() *  135 + 0x25ABCD),
    3:bit6(active_save() *  135 + 0x25ABCD),
    4:bit7(active_save() *  135 + 0x25ABCD),
    5:bit0(active_save() *  135 + 0x25ABCE),
    6:bit1(active_save() *  135 + 0x25ABCE),
    7:bit2(active_save() *  135 + 0x25ABCE),
    8:bit3(active_save() *  135 + 0x25ABCE),
    9:bit4(active_save() *  135 + 0x25ABCE),
    10:bit5(active_save() *  135 + 0x25ABCE),
    11:bit6(active_save() *  135 + 0x25ABCE),
    12:bit7(active_save() *  135 + 0x25ABCE),
    13:bit0(active_save() *  135 + 0x25ABCF),
    14:bit1(active_save() *  135 + 0x25ABCF),
    15:bit2(active_save() *  135 + 0x25ABCF),
    16:bit3(active_save() *  135 + 0x25ABCF),
    17:bit4(active_save() *  135 + 0x25ABCF),
    18:bit5(active_save() *  135 + 0x25ABCF),
    19:bit6(active_save() *  135 + 0x25ABCF),
    20:bit7(active_save() *  135 + 0x25ABCF),
    21:bit0(active_save() *  135 + 0x25ABD0),
    22:bit1(active_save() *  135 + 0x25ABD0),
    23:bit2(active_save() *  135 + 0x25ABD0),
    24:bit3(active_save() *  135 + 0x25ABD0),
    25:bit4(active_save() *  135 + 0x25ABD0),
    26:bit5(active_save() *  135 + 0x25ABD0),
    27:bit6(active_save() *  135 + 0x25ABD0),
    28:bit7(active_save() *  135 + 0x25ABD0),
    29:bit0(active_save() *  135 + 0x25ABD1),
    30:bit1(active_save() *  135 + 0x25ABD1),
    31:bit2(active_save() *  135 + 0x25ABD1),
    32:bit3(active_save() *  135 + 0x25ABD1),
    33:bit4(active_save() *  135 + 0x25ABD1),
    34:bit5(active_save() *  135 + 0x25ABD1),
    35:bit6(active_save() *  135 + 0x25ABD1),
    36:bit7(active_save() *  135 + 0x25ABD1),
    37:bit0(active_save() *  135 + 0x25ABD2),
    38:bit1(active_save() *  135 + 0x25ABD2),
    39:bit2(active_save() *  135 + 0x25ABD2),
    40:bit3(active_save() *  135 + 0x25ABD2),
    41:bit4(active_save() *  135 + 0x25ABD2),
    42:bit5(active_save() *  135 + 0x25ABD2),
    43:bit6(active_save() *  135 + 0x25ABD2),
    44:bit7(active_save() *  135 + 0x25ABD2),
    45:bit0(active_save() *  135 + 0x25ABD3),
    46:bit1(active_save() *  135 + 0x25ABD3),
    47:bit2(active_save() *  135 + 0x25ABD3),
    48:bit3(active_save() *  135 + 0x25ABD3),
    49:bit4(active_save() *  135 + 0x25ABD3),
    50:bit5(active_save() *  135 + 0x25ABD3)
}
krisskross = {
    1:bit6(active_save() *  135 + 0x25ABD3),
    2:bit7(active_save() *  135 + 0x25ABD3),
    3:bit0(active_save() *  135 + 0x25ABD4),
    4:bit1(active_save() *  135 + 0x25ABD4),
    5:bit2(active_save() *  135 + 0x25ABD4),
    6:bit3(active_save() *  135 + 0x25ABD4),
    7:bit4(active_save() *  135 + 0x25ABD4),
    8:bit5(active_save() *  135 + 0x25ABD4),
    9:bit6(active_save() *  135 + 0x25ABD4),
    10:bit7(active_save() *  135 + 0x25ABD4),
    11:bit0(active_save() *  135 + 0x25ABD5),
    12:bit1(active_save() *  135 + 0x25ABD5),
    13:bit2(active_save() *  135 + 0x25ABD5),
    14:bit3(active_save() *  135 + 0x25ABD5),
    15:bit4(active_save() *  135 + 0x25ABD5),
    16:bit5(active_save() *  135 + 0x25ABD5),
    17:bit6(active_save() *  135 + 0x25ABD5),
    18:bit7(active_save() *  135 + 0x25ABD5),
    19:bit0(active_save() *  135 + 0x25ABD6),
    20:bit1(active_save() *  135 + 0x25ABD6),
    21:bit2(active_save() *  135 + 0x25ABD6),
    22:bit3(active_save() *  135 + 0x25ABD6),
    23:bit4(active_save() *  135 + 0x25ABD6),
    24:bit5(active_save() *  135 + 0x25ABD6),
    25:bit6(active_save() *  135 + 0x25ABD6),
    26:bit7(active_save() *  135 + 0x25ABD6),
    27:bit0(active_save() *  135 + 0x25ABD7),
    28:bit1(active_save() *  135 + 0x25ABD7),
    29:bit2(active_save() *  135 + 0x25ABD7),
    30:bit3(active_save() *  135 + 0x25ABD7),
    31:bit4(active_save() *  135 + 0x25ABD7),
    32:bit5(active_save() *  135 + 0x25ABD7),
    33:bit6(active_save() *  135 + 0x25ABD7),
    34:bit7(active_save() *  135 + 0x25ABD7),
    35:bit0(active_save() *  135 + 0x25ABD8),
    36:bit1(active_save() *  135 + 0x25ABD8),
    37:bit2(active_save() *  135 + 0x25ABD8),
    38:bit3(active_save() *  135 + 0x25ABD8),
    39:bit4(active_save() *  135 + 0x25ABD8),
    40:bit5(active_save() *  135 + 0x25ABD8),
    41:bit6(active_save() *  135 + 0x25ABD8),
    42:bit7(active_save() *  135 + 0x25ABD8),
    43:bit0(active_save() *  135 + 0x25ABD9),
    44:bit1(active_save() *  135 + 0x25ABD9),
    45:bit2(active_save() *  135 + 0x25ABD9),
    46:bit3(active_save() *  135 + 0x25ABD9),
    47:bit4(active_save() *  135 + 0x25ABD9),
    48:bit5(active_save() *  135 + 0x25ABD9),
    49:bit6(active_save() *  135 + 0x25ABD9),
    50:bit7(active_save() *  135 + 0x25ABD9)
}
krisskross_mini = {
    1:bit0(active_save() *  135 + 0x25ABDA),
    2:bit1(active_save() *  135 + 0x25ABDA),
    3:bit2(active_save() *  135 + 0x25ABDA),
    4:bit3(active_save() *  135 + 0x25ABDA),
    5:bit4(active_save() *  135 + 0x25ABDA),
    6:bit5(active_save() *  135 + 0x25ABDA),
    7:bit6(active_save() *  135 + 0x25ABDA),
    8:bit7(active_save() *  135 + 0x25ABDA),
    9:bit0(active_save() *  135 + 0x25ABDB),
    10:bit1(active_save() *  135 + 0x25ABDB),
    11:bit2(active_save() *  135 + 0x25ABDB),
    12:bit3(active_save() *  135 + 0x25ABDB),
    13:bit4(active_save() *  135 + 0x25ABDB),
    14:bit5(active_save() *  135 + 0x25ABDB),
    15:bit6(active_save() *  135 + 0x25ABDB),
    16:bit7(active_save() *  135 + 0x25ABDB),
    17:bit0(active_save() *  135 + 0x25ABDC),
    18:bit1(active_save() *  135 + 0x25ABDC),
    19:bit2(active_save() *  135 + 0x25ABDC),
    20:bit3(active_save() *  135 + 0x25ABDC),
    21:bit4(active_save() *  135 + 0x25ABDC),
    22:bit5(active_save() *  135 + 0x25ABDC),
    23:bit6(active_save() *  135 + 0x25ABDC),
    24:bit7(active_save() *  135 + 0x25ABDC),
    25:bit0(active_save() *  135 + 0x25ABDD),
    26:bit1(active_save() *  135 + 0x25ABDD),
    27:bit2(active_save() *  135 + 0x25ABDD),
    28:bit3(active_save() *  135 + 0x25ABDD),
    29:bit4(active_save() *  135 + 0x25ABDD),
    30:bit5(active_save() *  135 + 0x25ABDD),
    31:bit6(active_save() *  135 + 0x25ABDD),
    32:bit7(active_save() *  135 + 0x25ABDD),
    33:bit0(active_save() *  135 + 0x25ABDE),
    34:bit1(active_save() *  135 + 0x25ABDE),
    35:bit2(active_save() *  135 + 0x25ABDE),
    36:bit3(active_save() *  135 + 0x25ABDE),
    37:bit4(active_save() *  135 + 0x25ABDE),
    38:bit5(active_save() *  135 + 0x25ABDE),
    39:bit6(active_save() *  135 + 0x25ABDE),
    40:bit7(active_save() *  135 + 0x25ABDE),
    41:bit0(active_save() *  135 + 0x25ABDF),
    42:bit1(active_save() *  135 + 0x25ABDF),
    43:bit2(active_save() *  135 + 0x25ABDF),
    44:bit3(active_save() *  135 + 0x25ABDF),
    45:bit4(active_save() *  135 + 0x25ABDF),
    46:bit5(active_save() *  135 + 0x25ABDF),
    47:bit6(active_save() *  135 + 0x25ABDF),
    48:bit7(active_save() *  135 + 0x25ABDF),
    49:bit0(active_save() *  135 + 0x25ABE0),
    50:bit1(active_save() *  135 + 0x25ABE0)
}
numberjig = {
    1:bit2(active_save() *  135 + 0x25ABE0),
    2:bit3(active_save() *  135 + 0x25ABE0),
    3:bit4(active_save() *  135 + 0x25ABE0),
    4:bit5(active_save() *  135 + 0x25ABE0),
    5:bit6(active_save() *  135 + 0x25ABE0),
    6:bit7(active_save() *  135 + 0x25ABE0),
    7:bit0(active_save() *  135 + 0x25ABE1),
    8:bit1(active_save() *  135 + 0x25ABE1),
    9:bit2(active_save() *  135 + 0x25ABE1),
    10:bit3(active_save() *  135 + 0x25ABE1),
    11:bit4(active_save() *  135 + 0x25ABE1),
    12:bit5(active_save() *  135 + 0x25ABE1),
    13:bit6(active_save() *  135 + 0x25ABE1),
    14:bit7(active_save() *  135 + 0x25ABE1),
    15:bit0(active_save() *  135 + 0x25ABE2),
    16:bit1(active_save() *  135 + 0x25ABE2),
    17:bit2(active_save() *  135 + 0x25ABE2),
    18:bit3(active_save() *  135 + 0x25ABE2),
    19:bit4(active_save() *  135 + 0x25ABE2),
    20:bit5(active_save() *  135 + 0x25ABE2),
    21:bit6(active_save() *  135 + 0x25ABE2),
    22:bit7(active_save() *  135 + 0x25ABE2),
    23:bit0(active_save() *  135 + 0x25ABE3),
    24:bit1(active_save() *  135 + 0x25ABE3),
    25:bit2(active_save() *  135 + 0x25ABE3),
    26:bit3(active_save() *  135 + 0x25ABE3),
    27:bit4(active_save() *  135 + 0x25ABE3),
    28:bit5(active_save() *  135 + 0x25ABE3),
    29:bit6(active_save() *  135 + 0x25ABE3),
    30:bit7(active_save() *  135 + 0x25ABE3),
    31:bit0(active_save() *  135 + 0x25ABE4),
    32:bit1(active_save() *  135 + 0x25ABE4),
    33:bit2(active_save() *  135 + 0x25ABE4),
    34:bit3(active_save() *  135 + 0x25ABE4),
    35:bit4(active_save() *  135 + 0x25ABE4),
    36:bit5(active_save() *  135 + 0x25ABE4),
    37:bit6(active_save() *  135 + 0x25ABE4),
    38:bit7(active_save() *  135 + 0x25ABE4),
    39:bit0(active_save() *  135 + 0x25ABE5),
    40:bit1(active_save() *  135 + 0x25ABE5),
    41:bit2(active_save() *  135 + 0x25ABE5),
    42:bit3(active_save() *  135 + 0x25ABE5),
    43:bit4(active_save() *  135 + 0x25ABE5),
    44:bit5(active_save() *  135 + 0x25ABE5),
    45:bit6(active_save() *  135 + 0x25ABE5),
    46:bit7(active_save() *  135 + 0x25ABE5),
    47:bit0(active_save() *  135 + 0x25ABE6),
    48:bit1(active_save() *  135 + 0x25ABE6),
    49:bit2(active_save() *  135 + 0x25ABE6),
    50:bit3(active_save() *  135 + 0x25ABE6),
    51:bit4(active_save() *  135 + 0x25ABE6),
    52:bit5(active_save() *  135 + 0x25ABE6),
    53:bit6(active_save() *  135 + 0x25ABE6),
    54:bit7(active_save() *  135 + 0x25ABE6),
    55:bit0(active_save() *  135 + 0x25ABE7),
    56:bit1(active_save() *  135 + 0x25ABE7),
    57:bit2(active_save() *  135 + 0x25ABE7),
    58:bit3(active_save() *  135 + 0x25ABE7),
    59:bit4(active_save() *  135 + 0x25ABE7),
    60:bit5(active_save() *  135 + 0x25ABE7),
    61:bit6(active_save() *  135 + 0x25ABE7),
    62:bit7(active_save() *  135 + 0x25ABE7),
    63:bit0(active_save() *  135 + 0x25ABE8),
    64:bit1(active_save() *  135 + 0x25ABE8),
    65:bit2(active_save() *  135 + 0x25ABE8),
    66:bit3(active_save() *  135 + 0x25ABE8),
    67:bit4(active_save() *  135 + 0x25ABE8),
    68:bit5(active_save() *  135 + 0x25ABE8),
    69:bit6(active_save() *  135 + 0x25ABE8),
    70:bit7(active_save() *  135 + 0x25ABE8),
    71:bit0(active_save() *  135 + 0x25ABE9),
    72:bit1(active_save() *  135 + 0x25ABE9),
    73:bit2(active_save() *  135 + 0x25ABE9),
    74:bit3(active_save() *  135 + 0x25ABE9),
    75:bit4(active_save() *  135 + 0x25ABE9),
    76:bit5(active_save() *  135 + 0x25ABE9),
    77:bit6(active_save() *  135 + 0x25ABE9),
    78:bit7(active_save() *  135 + 0x25ABE9),
    79:bit0(active_save() *  135 + 0x25ABEA),
    80:bit1(active_save() *  135 + 0x25ABEA),
    81:bit2(active_save() *  135 + 0x25ABEA),
    82:bit3(active_save() *  135 + 0x25ABEA),
    83:bit4(active_save() *  135 + 0x25ABEA),
    84:bit5(active_save() *  135 + 0x25ABEA),
    85:bit6(active_save() *  135 + 0x25ABEA),
    86:bit7(active_save() *  135 + 0x25ABEA),
    87:bit0(active_save() *  135 + 0x25ABEB),
    88:bit1(active_save() *  135 + 0x25ABEB),
    89:bit2(active_save() *  135 + 0x25ABEB),
    90:bit3(active_save() *  135 + 0x25ABEB),
    91:bit4(active_save() *  135 + 0x25ABEB),
    92:bit5(active_save() *  135 + 0x25ABEB),
    93:bit6(active_save() *  135 + 0x25ABEB),
    94:bit7(active_save() *  135 + 0x25ABEB),
    95:bit0(active_save() *  135 + 0x25ABEC),
    96:bit1(active_save() *  135 + 0x25ABEC),
    97:bit2(active_save() *  135 + 0x25ABEC),
    98:bit3(active_save() *  135 + 0x25ABEC),
    99:bit4(active_save() *  135 + 0x25ABEC),
    100:bit5(active_save() *  135 + 0x25ABEC),
    101:bit6(active_save() *  135 + 0x25ABEC),
    102:bit7(active_save() *  135 + 0x25ABEC),
    103:bit0(active_save() *  135 + 0x25ABED),
    104:bit1(active_save() *  135 + 0x25ABED),
    105:bit2(active_save() *  135 + 0x25ABED),
    106:bit3(active_save() *  135 + 0x25ABED),
    107:bit4(active_save() *  135 + 0x25ABED),
    108:bit5(active_save() *  135 + 0x25ABED),
    109:bit6(active_save() *  135 + 0x25ABED),
    110:bit7(active_save() *  135 + 0x25ABED),
    111:bit0(active_save() *  135 + 0x25ABEE),
    112:bit1(active_save() *  135 + 0x25ABEE),
    113:bit2(active_save() *  135 + 0x25ABEE),
    114:bit3(active_save() *  135 + 0x25ABEE),
    115:bit4(active_save() *  135 + 0x25ABEE),
    116:bit5(active_save() *  135 + 0x25ABEE),
    117:bit6(active_save() *  135 + 0x25ABEE),
    118:bit7(active_save() *  135 + 0x25ABEE),
    119:bit0(active_save() *  135 + 0x25ABEF),
    120:bit1(active_save() *  135 + 0x25ABEF),
    121:bit2(active_save() *  135 + 0x25ABEF),
    122:bit3(active_save() *  135 + 0x25ABEF),
    123:bit4(active_save() *  135 + 0x25ABEF),
    124:bit5(active_save() *  135 + 0x25ABEF),
    125:bit6(active_save() *  135 + 0x25ABEF),
    126:bit7(active_save() *  135 + 0x25ABEF),
    127:bit0(active_save() *  135 + 0x25ABF0),
    128:bit1(active_save() *  135 + 0x25ABF0),
    129:bit2(active_save() *  135 + 0x25ABF0),
    130:bit3(active_save() *  135 + 0x25ABF0),
    131:bit4(active_save() *  135 + 0x25ABF0),
    132:bit5(active_save() *  135 + 0x25ABF0),
    133:bit6(active_save() *  135 + 0x25ABF0),
    134:bit7(active_save() *  135 + 0x25ABF0),
    135:bit0(active_save() *  135 + 0x25ABF1),
    136:bit1(active_save() *  135 + 0x25ABF1),
    137:bit2(active_save() *  135 + 0x25ABF1),
    138:bit3(active_save() *  135 + 0x25ABF1),
    139:bit4(active_save() *  135 + 0x25ABF1),
    140:bit5(active_save() *  135 + 0x25ABF1),
    141:bit6(active_save() *  135 + 0x25ABF1),
    142:bit7(active_save() *  135 + 0x25ABF1),
    143:bit0(active_save() *  135 + 0x25ABF2),
    144:bit1(active_save() *  135 + 0x25ABF2),
    145:bit2(active_save() *  135 + 0x25ABF2),
    146:bit3(active_save() *  135 + 0x25ABF2),
    147:bit4(active_save() *  135 + 0x25ABF2),
    148:bit5(active_save() *  135 + 0x25ABF2),
    149:bit6(active_save() *  135 + 0x25ABF2),
    150:bit7(active_save() *  135 + 0x25ABF2),
    151:bit0(active_save() *  135 + 0x25ABF3)
}
kakuro = {
    1:bit1(active_save() *  135 + 0x25ABF3),
    2:bit2(active_save() *  135 + 0x25ABF3),
    3:bit3(active_save() *  135 + 0x25ABF3),
    4:bit4(active_save() *  135 + 0x25ABF3),
    5:bit5(active_save() *  135 + 0x25ABF3),
    6:bit6(active_save() *  135 + 0x25ABF3),
    7:bit7(active_save() *  135 + 0x25ABF3),
    8:bit0(active_save() *  135 + 0x25ABF4),
    9:bit1(active_save() *  135 + 0x25ABF4),
    10:bit2(active_save() *  135 + 0x25ABF4),
    11:bit3(active_save() *  135 + 0x25ABF4),
    12:bit4(active_save() *  135 + 0x25ABF4),
    13:bit5(active_save() *  135 + 0x25ABF4),
    14:bit6(active_save() *  135 + 0x25ABF4),
    15:bit7(active_save() *  135 + 0x25ABF4),
    16:bit0(active_save() *  135 + 0x25ABF5),
    17:bit1(active_save() *  135 + 0x25ABF5),
    18:bit2(active_save() *  135 + 0x25ABF5),
    19:bit3(active_save() *  135 + 0x25ABF5),
    20:bit4(active_save() *  135 + 0x25ABF5),
    21:bit5(active_save() *  135 + 0x25ABF5),
    22:bit6(active_save() *  135 + 0x25ABF5),
    23:bit7(active_save() *  135 + 0x25ABF5),
    24:bit0(active_save() *  135 + 0x25ABF6),
    25:bit1(active_save() *  135 + 0x25ABF6),
    26:bit2(active_save() *  135 + 0x25ABF6),
    27:bit3(active_save() *  135 + 0x25ABF6),
    28:bit4(active_save() *  135 + 0x25ABF6),
    29:bit5(active_save() *  135 + 0x25ABF6),
    30:bit6(active_save() *  135 + 0x25ABF6),
    31:bit7(active_save() *  135 + 0x25ABF6),
    32:bit0(active_save() *  135 + 0x25ABF7),
    33:bit1(active_save() *  135 + 0x25ABF7),
    34:bit2(active_save() *  135 + 0x25ABF7),
    35:bit3(active_save() *  135 + 0x25ABF7),
    36:bit4(active_save() *  135 + 0x25ABF7),
    37:bit5(active_save() *  135 + 0x25ABF7),
    38:bit6(active_save() *  135 + 0x25ABF7),
    39:bit7(active_save() *  135 + 0x25ABF7),
    40:bit0(active_save() *  135 + 0x25ABF8),
    41:bit1(active_save() *  135 + 0x25ABF8),
    42:bit2(active_save() *  135 + 0x25ABF8),
    43:bit3(active_save() *  135 + 0x25ABF8),
    44:bit4(active_save() *  135 + 0x25ABF8),
    45:bit5(active_save() *  135 + 0x25ABF8),
    46:bit6(active_save() *  135 + 0x25ABF8),
    47:bit7(active_save() *  135 + 0x25ABF8),
    48:bit0(active_save() *  135 + 0x25ABF9),
    49:bit1(active_save() *  135 + 0x25ABF9),
    50:bit2(active_save() *  135 + 0x25ABF9),
    51:bit3(active_save() *  135 + 0x25ABF9),
    52:bit4(active_save() *  135 + 0x25ABF9),
    53:bit5(active_save() *  135 + 0x25ABF9),
    54:bit6(active_save() *  135 + 0x25ABF9),
    55:bit7(active_save() *  135 + 0x25ABF9),
    56:bit0(active_save() *  135 + 0x25ABFA),
    57:bit1(active_save() *  135 + 0x25ABFA),
    58:bit2(active_save() *  135 + 0x25ABFA),
    59:bit3(active_save() *  135 + 0x25ABFA),
    60:bit4(active_save() *  135 + 0x25ABFA),
    61:bit5(active_save() *  135 + 0x25ABFA),
    62:bit6(active_save() *  135 + 0x25ABFA),
    63:bit7(active_save() *  135 + 0x25ABFA),
    64:bit0(active_save() *  135 + 0x25ABFB),
    65:bit1(active_save() *  135 + 0x25ABFB),
    66:bit2(active_save() *  135 + 0x25ABFB),
    67:bit3(active_save() *  135 + 0x25ABFB),
    68:bit4(active_save() *  135 + 0x25ABFB),
    69:bit5(active_save() *  135 + 0x25ABFB),
    70:bit6(active_save() *  135 + 0x25ABFB),
    71:bit7(active_save() *  135 + 0x25ABFB),
    72:bit0(active_save() *  135 + 0x25ABFC),
    73:bit1(active_save() *  135 + 0x25ABFC),
    74:bit2(active_save() *  135 + 0x25ABFC),
    75:bit3(active_save() *  135 + 0x25ABFC),
    76:bit4(active_save() *  135 + 0x25ABFC),
    77:bit5(active_save() *  135 + 0x25ABFC),
    78:bit6(active_save() *  135 + 0x25ABFC),
    79:bit7(active_save() *  135 + 0x25ABFC),
    80:bit0(active_save() *  135 + 0x25ABFD),
    81:bit1(active_save() *  135 + 0x25ABFD),
    82:bit2(active_save() *  135 + 0x25ABFD),
    83:bit3(active_save() *  135 + 0x25ABFD),
    84:bit4(active_save() *  135 + 0x25ABFD),
    85:bit5(active_save() *  135 + 0x25ABFD),
    86:bit6(active_save() *  135 + 0x25ABFD),
    87:bit7(active_save() *  135 + 0x25ABFD),
    88:bit0(active_save() *  135 + 0x25ABFE),
    89:bit1(active_save() *  135 + 0x25ABFE),
    90:bit2(active_save() *  135 + 0x25ABFE),
    91:bit3(active_save() *  135 + 0x25ABFE),
    92:bit4(active_save() *  135 + 0x25ABFE),
    93:bit5(active_save() *  135 + 0x25ABFE),
    94:bit6(active_save() *  135 + 0x25ABFE),
    95:bit7(active_save() *  135 + 0x25ABFE),
    96:bit0(active_save() *  135 + 0x25ABFF),
    97:bit1(active_save() *  135 + 0x25ABFF),
    98:bit2(active_save() *  135 + 0x25ABFF),
    99:bit3(active_save() *  135 + 0x25ABFF),
    100:bit4(active_save() *  135 + 0x25ABFF)
}
kakuro_mini = {
    1:bit5(active_save() *  135 + 0x25ABFF),
    2:bit6(active_save() *  135 + 0x25ABFF),
    3:bit7(active_save() *  135 + 0x25ABFF),
    4:bit0(active_save() *  135 + 0x25AC00),
    5:bit1(active_save() *  135 + 0x25AC00),
    6:bit2(active_save() *  135 + 0x25AC00),
    7:bit3(active_save() *  135 + 0x25AC00),
    8:bit4(active_save() *  135 + 0x25AC00),
    9:bit5(active_save() *  135 + 0x25AC00),
    10:bit6(active_save() *  135 + 0x25AC00),
    11:bit7(active_save() *  135 + 0x25AC00),
    12:bit0(active_save() *  135 + 0x25AC01),
    13:bit1(active_save() *  135 + 0x25AC01),
    14:bit2(active_save() *  135 + 0x25AC01),
    15:bit3(active_save() *  135 + 0x25AC01),
    16:bit4(active_save() *  135 + 0x25AC01),
    17:bit5(active_save() *  135 + 0x25AC01),
    18:bit6(active_save() *  135 + 0x25AC01),
    19:bit7(active_save() *  135 + 0x25AC01),
    20:bit0(active_save() *  135 + 0x25AC02),
    21:bit1(active_save() *  135 + 0x25AC02),
    22:bit2(active_save() *  135 + 0x25AC02),
    23:bit3(active_save() *  135 + 0x25AC02),
    24:bit4(active_save() *  135 + 0x25AC02),
    25:bit5(active_save() *  135 + 0x25AC02),
    26:bit6(active_save() *  135 + 0x25AC02),
    27:bit7(active_save() *  135 + 0x25AC02),
    28:bit0(active_save() *  135 + 0x25AC03),
    29:bit1(active_save() *  135 + 0x25AC03),
    30:bit2(active_save() *  135 + 0x25AC03),
    31:bit3(active_save() *  135 + 0x25AC03),
    32:bit4(active_save() *  135 + 0x25AC03),
    33:bit5(active_save() *  135 + 0x25AC03),
    34:bit6(active_save() *  135 + 0x25AC03),
    35:bit7(active_save() *  135 + 0x25AC03),
    36:bit0(active_save() *  135 + 0x25AC04),
    37:bit1(active_save() *  135 + 0x25AC04),
    38:bit2(active_save() *  135 + 0x25AC04),
    39:bit3(active_save() *  135 + 0x25AC04),
    40:bit4(active_save() *  135 + 0x25AC04),
    41:bit5(active_save() *  135 + 0x25AC04),
    42:bit6(active_save() *  135 + 0x25AC04),
    43:bit7(active_save() *  135 + 0x25AC04),
    44:bit0(active_save() *  135 + 0x25AC05),
    45:bit1(active_save() *  135 + 0x25AC05),
    46:bit2(active_save() *  135 + 0x25AC05),
    47:bit3(active_save() *  135 + 0x25AC05),
    48:bit4(active_save() *  135 + 0x25AC05),
    49:bit5(active_save() *  135 + 0x25AC05),
    50:bit6(active_save() *  135 + 0x25AC05),
    51:bit7(active_save() *  135 + 0x25AC05),
    52:bit0(active_save() *  135 + 0x25AC06),
    53:bit1(active_save() *  135 + 0x25AC06),
    54:bit2(active_save() *  135 + 0x25AC06),
    55:bit3(active_save() *  135 + 0x25AC06),
    56:bit4(active_save() *  135 + 0x25AC06),
    57:bit5(active_save() *  135 + 0x25AC06),
    58:bit6(active_save() *  135 + 0x25AC06),
    59:bit7(active_save() *  135 + 0x25AC06),
    60:bit0(active_save() *  135 + 0x25AC07),
    61:bit1(active_save() *  135 + 0x25AC07),
    62:bit2(active_save() *  135 + 0x25AC07),
    63:bit3(active_save() *  135 + 0x25AC07),
    64:bit4(active_save() *  135 + 0x25AC07),
    65:bit5(active_save() *  135 + 0x25AC07),
    66:bit6(active_save() *  135 + 0x25AC07),
    67:bit7(active_save() *  135 + 0x25AC07),
    68:bit0(active_save() *  135 + 0x25AC08),
    69:bit1(active_save() *  135 + 0x25AC08),
    70:bit2(active_save() *  135 + 0x25AC08),
    71:bit3(active_save() *  135 + 0x25AC08),
    72:bit4(active_save() *  135 + 0x25AC08),
    73:bit5(active_save() *  135 + 0x25AC08),
    74:bit6(active_save() *  135 + 0x25AC08),
    75:bit7(active_save() *  135 + 0x25AC08),
    76:bit0(active_save() *  135 + 0x25AC09),
    77:bit1(active_save() *  135 + 0x25AC09),
    78:bit2(active_save() *  135 + 0x25AC09),
    79:bit3(active_save() *  135 + 0x25AC09),
    80:bit4(active_save() *  135 + 0x25AC09),
    81:bit5(active_save() *  135 + 0x25AC09),
    82:bit6(active_save() *  135 + 0x25AC09),
    83:bit7(active_save() *  135 + 0x25AC09),
    84:bit0(active_save() *  135 + 0x25AC0A),
    85:bit1(active_save() *  135 + 0x25AC0A),
    86:bit2(active_save() *  135 + 0x25AC0A),
    87:bit3(active_save() *  135 + 0x25AC0A),
    88:bit4(active_save() *  135 + 0x25AC0A),
    89:bit5(active_save() *  135 + 0x25AC0A),
    90:bit6(active_save() *  135 + 0x25AC0A),
    91:bit7(active_save() *  135 + 0x25AC0A),
    92:bit0(active_save() *  135 + 0x25AC0B),
    93:bit1(active_save() *  135 + 0x25AC0B),
    94:bit2(active_save() *  135 + 0x25AC0B),
    95:bit3(active_save() *  135 + 0x25AC0B),
    96:bit4(active_save() *  135 + 0x25AC0B),
    97:bit5(active_save() *  135 + 0x25AC0B),
    98:bit6(active_save() *  135 + 0x25AC0B),
    99:bit7(active_save() *  135 + 0x25AC0B),
    100:bit0(active_save() *  135 + 0x25AC0C)
}
sudoku = {
    1:bit1(active_save() *  135 + 0x25AC0C),
    2:bit2(active_save() *  135 + 0x25AC0C),
    3:bit3(active_save() *  135 + 0x25AC0C),
    4:bit4(active_save() *  135 + 0x25AC0C),
    5:bit5(active_save() *  135 + 0x25AC0C),
    6:bit6(active_save() *  135 + 0x25AC0C),
    7:bit7(active_save() *  135 + 0x25AC0C),
    8:bit0(active_save() *  135 + 0x25AC0D),
    9:bit1(active_save() *  135 + 0x25AC0D),
    10:bit2(active_save() *  135 + 0x25AC0D),
    11:bit3(active_save() *  135 + 0x25AC0D),
    12:bit4(active_save() *  135 + 0x25AC0D),
    13:bit5(active_save() *  135 + 0x25AC0D),
    14:bit6(active_save() *  135 + 0x25AC0D),
    15:bit7(active_save() *  135 + 0x25AC0D),
    16:bit0(active_save() *  135 + 0x25AC0E),
    17:bit1(active_save() *  135 + 0x25AC0E),
    18:bit2(active_save() *  135 + 0x25AC0E),
    19:bit3(active_save() *  135 + 0x25AC0E),
    20:bit4(active_save() *  135 + 0x25AC0E),
    21:bit5(active_save() *  135 + 0x25AC0E),
    22:bit6(active_save() *  135 + 0x25AC0E),
    23:bit7(active_save() *  135 + 0x25AC0E),
    24:bit0(active_save() *  135 + 0x25AC0F),
    25:bit1(active_save() *  135 + 0x25AC0F),
    26:bit2(active_save() *  135 + 0x25AC0F),
    27:bit3(active_save() *  135 + 0x25AC0F),
    28:bit4(active_save() *  135 + 0x25AC0F),
    29:bit5(active_save() *  135 + 0x25AC0F),
    30:bit6(active_save() *  135 + 0x25AC0F),
    31:bit7(active_save() *  135 + 0x25AC0F),
    32:bit0(active_save() *  135 + 0x25AC10),
    33:bit1(active_save() *  135 + 0x25AC10),
    34:bit2(active_save() *  135 + 0x25AC10),
    35:bit3(active_save() *  135 + 0x25AC10),
    36:bit4(active_save() *  135 + 0x25AC10),
    37:bit5(active_save() *  135 + 0x25AC10),
    38:bit6(active_save() *  135 + 0x25AC10),
    39:bit7(active_save() *  135 + 0x25AC10),
    40:bit0(active_save() *  135 + 0x25AC11),
    41:bit1(active_save() *  135 + 0x25AC11),
    42:bit2(active_save() *  135 + 0x25AC11),
    43:bit3(active_save() *  135 + 0x25AC11),
    44:bit4(active_save() *  135 + 0x25AC11),
    45:bit5(active_save() *  135 + 0x25AC11),
    46:bit6(active_save() *  135 + 0x25AC11),
    47:bit7(active_save() *  135 + 0x25AC11),
    48:bit0(active_save() *  135 + 0x25AC12),
    49:bit1(active_save() *  135 + 0x25AC12),
    50:bit2(active_save() *  135 + 0x25AC12),
    51:bit3(active_save() *  135 + 0x25AC12),
    52:bit4(active_save() *  135 + 0x25AC12),
    53:bit5(active_save() *  135 + 0x25AC12),
    54:bit6(active_save() *  135 + 0x25AC12),
    55:bit7(active_save() *  135 + 0x25AC12),
    56:bit0(active_save() *  135 + 0x25AC13),
    57:bit1(active_save() *  135 + 0x25AC13),
    58:bit2(active_save() *  135 + 0x25AC13),
    59:bit3(active_save() *  135 + 0x25AC13),
    60:bit4(active_save() *  135 + 0x25AC13),
    61:bit5(active_save() *  135 + 0x25AC13),
    62:bit6(active_save() *  135 + 0x25AC13),
    63:bit7(active_save() *  135 + 0x25AC13),
    64:bit0(active_save() *  135 + 0x25AC14),
    65:bit1(active_save() *  135 + 0x25AC14),
    66:bit2(active_save() *  135 + 0x25AC14),
    67:bit3(active_save() *  135 + 0x25AC14),
    68:bit4(active_save() *  135 + 0x25AC14),
    69:bit5(active_save() *  135 + 0x25AC14),
    70:bit6(active_save() *  135 + 0x25AC14),
    71:bit7(active_save() *  135 + 0x25AC14),
    72:bit0(active_save() *  135 + 0x25AC15),
    73:bit1(active_save() *  135 + 0x25AC15),
    74:bit2(active_save() *  135 + 0x25AC15),
    75:bit3(active_save() *  135 + 0x25AC15),
    76:bit4(active_save() *  135 + 0x25AC15),
    77:bit5(active_save() *  135 + 0x25AC15),
    78:bit6(active_save() *  135 + 0x25AC15),
    79:bit7(active_save() *  135 + 0x25AC15),
    80:bit0(active_save() *  135 + 0x25AC16),
    81:bit1(active_save() *  135 + 0x25AC16),
    82:bit2(active_save() *  135 + 0x25AC16),
    83:bit3(active_save() *  135 + 0x25AC16),
    84:bit4(active_save() *  135 + 0x25AC16),
    85:bit5(active_save() *  135 + 0x25AC16),
    86:bit6(active_save() *  135 + 0x25AC16),
    87:bit7(active_save() *  135 + 0x25AC16),
    88:bit0(active_save() *  135 + 0x25AC17),
    89:bit1(active_save() *  135 + 0x25AC17),
    90:bit2(active_save() *  135 + 0x25AC17),
    91:bit3(active_save() *  135 + 0x25AC17),
    92:bit4(active_save() *  135 + 0x25AC17),
    93:bit5(active_save() *  135 + 0x25AC17),
    94:bit6(active_save() *  135 + 0x25AC17),
    95:bit7(active_save() *  135 + 0x25AC17),
    96:bit0(active_save() *  135 + 0x25AC18),
    97:bit1(active_save() *  135 + 0x25AC18),
    98:bit2(active_save() *  135 + 0x25AC18),
    99:bit3(active_save() *  135 + 0x25AC18),
    100:bit4(active_save() *  135 + 0x25AC18)
}
sudoku_hard = {
    1:bit5(active_save() *  135 + 0x25AC18),
    2:bit6(active_save() *  135 + 0x25AC18),
    3:bit7(active_save() *  135 + 0x25AC18),
    4:bit0(active_save() *  135 + 0x25AC19),
    5:bit1(active_save() *  135 + 0x25AC19),
    6:bit2(active_save() *  135 + 0x25AC19),
    7:bit3(active_save() *  135 + 0x25AC19),
    8:bit4(active_save() *  135 + 0x25AC19),
    9:bit5(active_save() *  135 + 0x25AC19),
    10:bit6(active_save() *  135 + 0x25AC19),
    11:bit7(active_save() *  135 + 0x25AC19),
    12:bit0(active_save() *  135 + 0x25AC1A),
    13:bit1(active_save() *  135 + 0x25AC1A),
    14:bit2(active_save() *  135 + 0x25AC1A),
    15:bit3(active_save() *  135 + 0x25AC1A),
    16:bit4(active_save() *  135 + 0x25AC1A),
    17:bit5(active_save() *  135 + 0x25AC1A),
    18:bit6(active_save() *  135 + 0x25AC1A),
    19:bit7(active_save() *  135 + 0x25AC1A),
    20:bit0(active_save() *  135 + 0x25AC1B),
    21:bit1(active_save() *  135 + 0x25AC1B),
    22:bit2(active_save() *  135 + 0x25AC1B),
    23:bit3(active_save() *  135 + 0x25AC1B),
    24:bit4(active_save() *  135 + 0x25AC1B),
    25:bit5(active_save() *  135 + 0x25AC1B),
    26:bit6(active_save() *  135 + 0x25AC1B),
    27:bit7(active_save() *  135 + 0x25AC1B),
    28:bit0(active_save() *  135 + 0x25AC1C),
    29:bit1(active_save() *  135 + 0x25AC1C),
    30:bit2(active_save() *  135 + 0x25AC1C),
    31:bit3(active_save() *  135 + 0x25AC1C),
    32:bit4(active_save() *  135 + 0x25AC1C),
    33:bit5(active_save() *  135 + 0x25AC1C),
    34:bit6(active_save() *  135 + 0x25AC1C),
    35:bit7(active_save() *  135 + 0x25AC1C),
    36:bit0(active_save() *  135 + 0x25AC1D),
    37:bit1(active_save() *  135 + 0x25AC1D),
    38:bit2(active_save() *  135 + 0x25AC1D),
    39:bit3(active_save() *  135 + 0x25AC1D),
    40:bit4(active_save() *  135 + 0x25AC1D),
    41:bit5(active_save() *  135 + 0x25AC1D),
    42:bit6(active_save() *  135 + 0x25AC1D),
    43:bit7(active_save() *  135 + 0x25AC1D),
    44:bit0(active_save() *  135 + 0x25AC1E),
    45:bit1(active_save() *  135 + 0x25AC1E),
    46:bit2(active_save() *  135 + 0x25AC1E),
    47:bit3(active_save() *  135 + 0x25AC1E),
    48:bit4(active_save() *  135 + 0x25AC1E),
    49:bit5(active_save() *  135 + 0x25AC1E),
    50:bit6(active_save() *  135 + 0x25AC1E),
    51:bit7(active_save() *  135 + 0x25AC1E),
    52:bit0(active_save() *  135 + 0x25AC1F),
    53:bit1(active_save() *  135 + 0x25AC1F),
    54:bit2(active_save() *  135 + 0x25AC1F),
    55:bit3(active_save() *  135 + 0x25AC1F),
    56:bit4(active_save() *  135 + 0x25AC1F),
    57:bit5(active_save() *  135 + 0x25AC1F),
    58:bit6(active_save() *  135 + 0x25AC1F),
    59:bit7(active_save() *  135 + 0x25AC1F),
    60:bit0(active_save() *  135 + 0x25AC20),
    61:bit1(active_save() *  135 + 0x25AC20),
    62:bit2(active_save() *  135 + 0x25AC20),
    63:bit3(active_save() *  135 + 0x25AC20),
    64:bit4(active_save() *  135 + 0x25AC20),
    65:bit5(active_save() *  135 + 0x25AC20),
    66:bit6(active_save() *  135 + 0x25AC20),
    67:bit7(active_save() *  135 + 0x25AC20),
    68:bit0(active_save() *  135 + 0x25AC21),
    69:bit1(active_save() *  135 + 0x25AC21),
    70:bit2(active_save() *  135 + 0x25AC21),
    71:bit3(active_save() *  135 + 0x25AC21),
    72:bit4(active_save() *  135 + 0x25AC21),
    73:bit5(active_save() *  135 + 0x25AC21),
    74:bit6(active_save() *  135 + 0x25AC21),
    75:bit7(active_save() *  135 + 0x25AC21),
    76:bit0(active_save() *  135 + 0x25AC22),
    77:bit1(active_save() *  135 + 0x25AC22),
    78:bit2(active_save() *  135 + 0x25AC22),
    79:bit3(active_save() *  135 + 0x25AC22),
    80:bit4(active_save() *  135 + 0x25AC22),
    81:bit5(active_save() *  135 + 0x25AC22),
    82:bit6(active_save() *  135 + 0x25AC22),
    83:bit7(active_save() *  135 + 0x25AC22),
    84:bit0(active_save() *  135 + 0x25AC23),
    85:bit1(active_save() *  135 + 0x25AC23),
    86:bit2(active_save() *  135 + 0x25AC23),
    87:bit3(active_save() *  135 + 0x25AC23),
    88:bit4(active_save() *  135 + 0x25AC23),
    89:bit5(active_save() *  135 + 0x25AC23),
    90:bit6(active_save() *  135 + 0x25AC23),
    91:bit7(active_save() *  135 + 0x25AC23),
    92:bit0(active_save() *  135 + 0x25AC24),
    93:bit1(active_save() *  135 + 0x25AC24),
    94:bit2(active_save() *  135 + 0x25AC24),
    95:bit3(active_save() *  135 + 0x25AC24),
    96:bit4(active_save() *  135 + 0x25AC24),
    97:bit5(active_save() *  135 + 0x25AC24),
    98:bit6(active_save() *  135 + 0x25AC24),
    99:bit7(active_save() *  135 + 0x25AC24),
    100:bit0(active_save() *  135 + 0x25AC25)
}
sudoku_mini = {
    1:bit1(active_save() *  135 + 0x25AC25),
    2:bit2(active_save() *  135 + 0x25AC25),
    3:bit3(active_save() *  135 + 0x25AC25),
    4:bit4(active_save() *  135 + 0x25AC25),
    5:bit5(active_save() *  135 + 0x25AC25),
    6:bit6(active_save() *  135 + 0x25AC25),
    7:bit7(active_save() *  135 + 0x25AC25),
    8:bit0(active_save() *  135 + 0x25AC26),
    9:bit1(active_save() *  135 + 0x25AC26),
    10:bit2(active_save() *  135 + 0x25AC26),
    11:bit3(active_save() *  135 + 0x25AC26),
    12:bit4(active_save() *  135 + 0x25AC26),
    13:bit5(active_save() *  135 + 0x25AC26),
    14:bit6(active_save() *  135 + 0x25AC26),
    15:bit7(active_save() *  135 + 0x25AC26),
    16:bit0(active_save() *  135 + 0x25AC27),
    17:bit1(active_save() *  135 + 0x25AC27),
    18:bit2(active_save() *  135 + 0x25AC27),
    19:bit3(active_save() *  135 + 0x25AC27),
    20:bit4(active_save() *  135 + 0x25AC27),
    21:bit5(active_save() *  135 + 0x25AC27),
    22:bit6(active_save() *  135 + 0x25AC27),
    23:bit7(active_save() *  135 + 0x25AC27),
    24:bit0(active_save() *  135 + 0x25AC28),
    25:bit1(active_save() *  135 + 0x25AC28),
    26:bit2(active_save() *  135 + 0x25AC28),
    27:bit3(active_save() *  135 + 0x25AC28),
    28:bit4(active_save() *  135 + 0x25AC28),
    29:bit5(active_save() *  135 + 0x25AC28),
    30:bit6(active_save() *  135 + 0x25AC28),
    31:bit7(active_save() *  135 + 0x25AC28),
    32:bit0(active_save() *  135 + 0x25AC29),
    33:bit1(active_save() *  135 + 0x25AC29),
    34:bit2(active_save() *  135 + 0x25AC29),
    35:bit3(active_save() *  135 + 0x25AC29),
    36:bit4(active_save() *  135 + 0x25AC29),
    37:bit5(active_save() *  135 + 0x25AC29),
    38:bit6(active_save() *  135 + 0x25AC29),
    39:bit7(active_save() *  135 + 0x25AC29),
    40:bit0(active_save() *  135 + 0x25AC2A),
    41:bit1(active_save() *  135 + 0x25AC2A),
    42:bit2(active_save() *  135 + 0x25AC2A),
    43:bit3(active_save() *  135 + 0x25AC2A),
    44:bit4(active_save() *  135 + 0x25AC2A),
    45:bit5(active_save() *  135 + 0x25AC2A),
    46:bit6(active_save() *  135 + 0x25AC2A),
    47:bit7(active_save() *  135 + 0x25AC2A),
    48:bit0(active_save() *  135 + 0x25AC2B),
    49:bit1(active_save() *  135 + 0x25AC2B),
    50:bit2(active_save() *  135 + 0x25AC2B),
    51:bit3(active_save() *  135 + 0x25AC2B),
    52:bit4(active_save() *  135 + 0x25AC2B),
    53:bit5(active_save() *  135 + 0x25AC2B),
    54:bit6(active_save() *  135 + 0x25AC2B),
    55:bit7(active_save() *  135 + 0x25AC2B),
    56:bit0(active_save() *  135 + 0x25AC2C),
    57:bit1(active_save() *  135 + 0x25AC2C),
    58:bit2(active_save() *  135 + 0x25AC2C),
    59:bit3(active_save() *  135 + 0x25AC2C),
    60:bit4(active_save() *  135 + 0x25AC2C),
    61:bit5(active_save() *  135 + 0x25AC2C),
    62:bit6(active_save() *  135 + 0x25AC2C),
    63:bit7(active_save() *  135 + 0x25AC2C),
    64:bit0(active_save() *  135 + 0x25AC2D),
    65:bit1(active_save() *  135 + 0x25AC2D),
    66:bit2(active_save() *  135 + 0x25AC2D),
    67:bit3(active_save() *  135 + 0x25AC2D),
    68:bit4(active_save() *  135 + 0x25AC2D),
    69:bit5(active_save() *  135 + 0x25AC2D),
    70:bit6(active_save() *  135 + 0x25AC2D),
    71:bit7(active_save() *  135 + 0x25AC2D),
    72:bit0(active_save() *  135 + 0x25AC2E),
    73:bit1(active_save() *  135 + 0x25AC2E),
    74:bit2(active_save() *  135 + 0x25AC2E),
    75:bit3(active_save() *  135 + 0x25AC2E),
    76:bit4(active_save() *  135 + 0x25AC2E),
    77:bit5(active_save() *  135 + 0x25AC2E),
    78:bit6(active_save() *  135 + 0x25AC2E),
    79:bit7(active_save() *  135 + 0x25AC2E),
    80:bit0(active_save() *  135 + 0x25AC2F),
    81:bit1(active_save() *  135 + 0x25AC2F),
    82:bit2(active_save() *  135 + 0x25AC2F),
    83:bit3(active_save() *  135 + 0x25AC2F),
    84:bit4(active_save() *  135 + 0x25AC2F),
    85:bit5(active_save() *  135 + 0x25AC2F),
    86:bit6(active_save() *  135 + 0x25AC2F),
    87:bit7(active_save() *  135 + 0x25AC2F),
    88:bit0(active_save() *  135 + 0x25AC30),
    89:bit1(active_save() *  135 + 0x25AC30),
    90:bit2(active_save() *  135 + 0x25AC30),
    91:bit3(active_save() *  135 + 0x25AC30),
    92:bit4(active_save() *  135 + 0x25AC30),
    93:bit5(active_save() *  135 + 0x25AC30),
    94:bit6(active_save() *  135 + 0x25AC30),
    95:bit7(active_save() *  135 + 0x25AC30),
    96:bit0(active_save() *  135 + 0x25AC31),
    97:bit1(active_save() *  135 + 0x25AC31),
    98:bit2(active_save() *  135 + 0x25AC31),
    99:bit3(active_save() *  135 + 0x25AC31),
    100:bit4(active_save() *  135 + 0x25AC31)
}
sudoku_jr = {
    1:bit5(active_save() *  135 + 0x25AC31),
    2:bit6(active_save() *  135 + 0x25AC31),
    3:bit7(active_save() *  135 + 0x25AC31),
    4:bit0(active_save() *  135 + 0x25AC32),
    5:bit1(active_save() *  135 + 0x25AC32),
    6:bit2(active_save() *  135 + 0x25AC32),
    7:bit3(active_save() *  135 + 0x25AC32),
    8:bit4(active_save() *  135 + 0x25AC32),
    9:bit5(active_save() *  135 + 0x25AC32),
    10:bit6(active_save() *  135 + 0x25AC32),
    11:bit7(active_save() *  135 + 0x25AC32),
    12:bit0(active_save() *  135 + 0x25AC33),
    13:bit1(active_save() *  135 + 0x25AC33),
    14:bit2(active_save() *  135 + 0x25AC33),
    15:bit3(active_save() *  135 + 0x25AC33),
    16:bit4(active_save() *  135 + 0x25AC33),
    17:bit5(active_save() *  135 + 0x25AC33),
    18:bit6(active_save() *  135 + 0x25AC33),
    19:bit7(active_save() *  135 + 0x25AC33),
    20:bit0(active_save() *  135 + 0x25AC34),
    21:bit1(active_save() *  135 + 0x25AC34),
    22:bit2(active_save() *  135 + 0x25AC34),
    23:bit3(active_save() *  135 + 0x25AC34),
    24:bit4(active_save() *  135 + 0x25AC34),
    25:bit5(active_save() *  135 + 0x25AC34),
    26:bit6(active_save() *  135 + 0x25AC34),
    27:bit7(active_save() *  135 + 0x25AC34),
    28:bit0(active_save() *  135 + 0x25AC35),
    29:bit1(active_save() *  135 + 0x25AC35),
    30:bit2(active_save() *  135 + 0x25AC35),
    31:bit3(active_save() *  135 + 0x25AC35),
    32:bit4(active_save() *  135 + 0x25AC35),
    33:bit5(active_save() *  135 + 0x25AC35),
    34:bit6(active_save() *  135 + 0x25AC35),
    35:bit7(active_save() *  135 + 0x25AC35),
    36:bit0(active_save() *  135 + 0x25AC36),
    37:bit1(active_save() *  135 + 0x25AC36),
    38:bit2(active_save() *  135 + 0x25AC36),
    39:bit3(active_save() *  135 + 0x25AC36),
    40:bit4(active_save() *  135 + 0x25AC36),
    41:bit5(active_save() *  135 + 0x25AC36),
    42:bit6(active_save() *  135 + 0x25AC36),
    43:bit7(active_save() *  135 + 0x25AC36),
    44:bit0(active_save() *  135 + 0x25AC37),
    45:bit1(active_save() *  135 + 0x25AC37),
    46:bit2(active_save() *  135 + 0x25AC37),
    47:bit3(active_save() *  135 + 0x25AC37),
    48:bit4(active_save() *  135 + 0x25AC37),
    49:bit5(active_save() *  135 + 0x25AC37),
    50:bit6(active_save() *  135 + 0x25AC37),
    51:bit7(active_save() *  135 + 0x25AC37),
    52:bit0(active_save() *  135 + 0x25AC38),
    53:bit1(active_save() *  135 + 0x25AC38),
    54:bit2(active_save() *  135 + 0x25AC38),
    55:bit3(active_save() *  135 + 0x25AC38),
    56:bit4(active_save() *  135 + 0x25AC38),
    57:bit5(active_save() *  135 + 0x25AC38),
    58:bit6(active_save() *  135 + 0x25AC38),
    59:bit7(active_save() *  135 + 0x25AC38),
    60:bit0(active_save() *  135 + 0x25AC39),
    61:bit1(active_save() *  135 + 0x25AC39),
    62:bit2(active_save() *  135 + 0x25AC39),
    63:bit3(active_save() *  135 + 0x25AC39),
    64:bit4(active_save() *  135 + 0x25AC39),
    65:bit5(active_save() *  135 + 0x25AC39),
    66:bit6(active_save() *  135 + 0x25AC39),
    67:bit7(active_save() *  135 + 0x25AC39),
    68:bit0(active_save() *  135 + 0x25AC3A),
    69:bit1(active_save() *  135 + 0x25AC3A),
    70:bit2(active_save() *  135 + 0x25AC3A),
    71:bit3(active_save() *  135 + 0x25AC3A),
    72:bit4(active_save() *  135 + 0x25AC3A),
    73:bit5(active_save() *  135 + 0x25AC3A),
    74:bit6(active_save() *  135 + 0x25AC3A),
    75:bit7(active_save() *  135 + 0x25AC3A),
    76:bit0(active_save() *  135 + 0x25AC3B),
    77:bit1(active_save() *  135 + 0x25AC3B),
    78:bit2(active_save() *  135 + 0x25AC3B),
    79:bit3(active_save() *  135 + 0x25AC3B),
    80:bit4(active_save() *  135 + 0x25AC3B),
    81:bit5(active_save() *  135 + 0x25AC3B),
    82:bit6(active_save() *  135 + 0x25AC3B),
    83:bit7(active_save() *  135 + 0x25AC3B),
    84:bit0(active_save() *  135 + 0x25AC3C),
    85:bit1(active_save() *  135 + 0x25AC3C),
    86:bit2(active_save() *  135 + 0x25AC3C),
    87:bit3(active_save() *  135 + 0x25AC3C),
    88:bit4(active_save() *  135 + 0x25AC3C),
    89:bit5(active_save() *  135 + 0x25AC3C),
    90:bit6(active_save() *  135 + 0x25AC3C),
    91:bit7(active_save() *  135 + 0x25AC3C),
    92:bit0(active_save() *  135 + 0x25AC3D),
    93:bit1(active_save() *  135 + 0x25AC3D),
    94:bit2(active_save() *  135 + 0x25AC3D),
    95:bit3(active_save() *  135 + 0x25AC3D),
    96:bit4(active_save() *  135 + 0x25AC3D),
    97:bit5(active_save() *  135 + 0x25AC3D),
    98:bit6(active_save() *  135 + 0x25AC3D),
    99:bit7(active_save() *  135 + 0x25AC3D),
    100:bit0(active_save() *  135 + 0x25AC3E)
}
function invoke_list(category_name, dictionary, count, cheevo_prefix, my_points){
    number = 1 //Initialize for listing
    for i in range(1, count, 10) {
        start = i
        end = i + 9
        achievement(
            cheevo_prefix + " " + number,
            "Complete " + category_name + " puzzles " + start + "-" + end,
            points=my_points,
            trigger=
                save_protection() &&
                prev(sum_of(range(i, i + 9), b => dictionary[b] ) ) == end - start &&
                measured(sum_of(range(start, end), b => dictionary[b] ) == end - start + 1)            
        )
        number = number + 1
    }
}   
invoke_list("Crossword", crossword, 50, "Word Blocker", 5)
invoke_list("Wordsearch", wordsearch, 50, "Bubbler of Words", 5)
invoke_list("Mini Wordsearch", wordsearch_mini, 50, "Mini Bubbles", 2)
invoke_list("Kriss Kross", krisskross, 50, "Krossmen", 5)
invoke_list("Kriss Kross Mini", krisskross_mini, 50, "Krossing Newbie", 2)
invoke_list("Numberjig", numberjig, 140, "Number Hero", 5)
//Due to uneven numbering, have to call last one manually:
achievement(
    "Number Hero 15",
    "Complete Numberjig puzzles 141-151",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(range(141,151), b => numberjig[b])) == 10 &&
        sum_of(range(141,151), b => numberjig[b]) == 11
)
invoke_list("Kakuro", kakuro, 100, "The Summater", 10)
invoke_list("Mini Kakuro", kakuro_mini, 100, "Mathematics Learner", 5)
invoke_list("Sudoku", sudoku, 100, "Average Joe", 3)
invoke_list("Hard Sudoku", sudoku_hard, 100, "Number Addict", 5)
invoke_list("Mini Sudoku", sudoku_mini, 100, "Small Numberer", 2)
invoke_list("Sudoku Junior", sudoku_jr, 100, "Baby Solver", 1)
//Rich Presence
// $25ADB8: [8bit] Menu State
//          0x00=In Menu
//          0x01=In Puzzle
function state() => byte(0x25adb8)
// $25ADB9: [8bit] Screen ID
//          0x00=Splash Screens
//          0x02=Choosing Puzzle Category
//          0x05=Selecting Puzzle
//          0x14=Title Screen
//          0x15=Pofile Screen
//          0x16=Choosing Profile
//          0x17=Creating a New Profile
function menu() => byte(0x25adb9)
misc_menus = {
    0x0:"Viewing the Splash Screens",
    0x14:"In the Title Screen",
    0x15:"In the Profile Screen",
    0x16:"Choosing a Profile...",
    0x17:"Creating a New Profile..."
}
// $25C7C3: [8bit] Active Puzzle Number
function active_num() => byte(0x25c7c3)
// $25CAD4: [16bit] Eraser Active
//          0x00=No
//          0x01=Yes
// $25CAD6: [16bit] Solve Square Active
//          0x00=No
//          0x01=Yes
// $25CBD1: [8bit] Active Puzzle Mode
//          0x00=Crossword
//          0x01=Wordsearch
//          0x02=Mini Wordsearch
//          0x03=Kriss Kross
//          0x04=Mini Kriss Kross
//          0x05=Numberjigs
//          0x06=Kakuro
//          0x07=Mini Kakuro
//          0x08=Sudoku
//          0x09=Hard Sudoku
//          0x0a=Mini Sudoku
//          0x0b=Sudoku Junior
function mode() => byte(0x25cbd1)
category = {
    0x0:"Crossword",
    0x1:"Wordsearch",
    0x2:"Mini Wordsearch",
    0x3:"Kriss Kross",
    0x4:"Mini Kriss Kross",
    0x5:"Numberjigs",
    0x6:"Kakuro",
    0x7:"Mini Kakuro",
    0x8:"Sudoku",
    0x9:"Hard Sudoku",
    0xa:"Mini Sudoku",
    0xb:"Sudoku Junior"
}
rich_presence_conditional_display(state() != 0, "Solving {0} 🧩 #{1}",
    rich_presence_lookup("Category", mode(), category),
    rich_presence_macro("Number", active_num() + 1)
)
rich_presence_conditional_display(menu() == 0x5, "Selecting a {0} 🧩 to solve!",
    rich_presence_lookup("Category", mode(), category)
)
rich_presence_conditional_display(menu() == 0x2, "In Puzzle Selection Screen! 🧩 Solved: {0}/1001",
    rich_presence_macro("Number", sum_of(range(0x25abc1, 0x25ac3d), b => bitcount(active_save() * 135 + b)) + bit0(active_save() * 135 + 0x25ac3e)) //Sums up the pointed to puzzle bitflag table.
)
rich_presence_display("{0}",
    rich_presence_lookup("Menu", menu(), misc_menus, "Loading...")
)
//Other Notes
// $25ABBE: [8bit] Profile 1 - Name Character Slot 1
// $25ABBF: [8bit] Profile 1 - Name Character Slot 2
// $25ABC0: [8bit] Profile 1 - Name Character Slot 3
// $25ABC1: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Crosswords 1-8
// $25ABC2: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Crosswords 9-16
// $25ABC3: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Crosswords 17-24
// $25ABC4: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Crosswords 25-32
// $25ABC5: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Crosswords 33-40
// $25ABC6: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Crosswords 41-48
// $25ABC7: [NBit] Profile 1 Puzzle Flags
//          Bit0=Crossword 49
//          Bit1=Crossword 50
//          Bit2-7=Wordsearch 1-6
// $25ABC8: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Wordsearch 7-14
// $25ABC9: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Wordsearch 15-22
// $25ABCA: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Wordsearch 23-30
// $25ABCB: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Wordsearch 31-38
// $25ABCC: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Wordsearch 39-46
// $25ABCD: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Wordsearch 47-50
//          Bit5-7=Mini Wordsearch 1-4
// $25ABCE: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Wordsearch 5-12
// $25ABCF: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Wordsearch 13-20
// $25ABD0: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Wordsearch 21-28
// $25ABD1: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Wordsearch 29-36
// $25ABD2: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Wordsearch 37-44
// $25ABD3: [NBit] Profile 1 Puzzle Flags
//          Bit0-5=Mini Wordsearch 45-50
//          Bit6-7=Kriss Kross 1-2
// $25ABD4: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kriss Kross 3-10
// $25ABD5: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kriss Kross 11-18
// $25ABD6: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kriss Kross 19-26
// $25ABD7: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kriss Kross 27-34
// $25ABD8: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kriss Kross 35-42
// $25ABD9: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kriss Kross 43-50
// $25ABDA: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 1-8
// $25ABDB: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 9-16
// $25ABDC: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 17-24
// $25ABDD: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 25-32
// $25ABDE: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 33-40
// $25ABDF: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 41-48
// $25ABE0: [NBit] Profile 1 Puzzle Flags
//          Bit0-1=Mini Kriss Kross 49-50
//          Bit2-7=Numberjigs 1-6
// $25ABE1: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Numberjigs 7-14
// $25ABE2: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Numberjigs 15-22
// $25ABE3: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Numberjigs 23-30
// $25ABE4: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Numberjigs 31-38
// $25ABE5: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Numberjigs 39-46
// $25ABE6: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 47-54
// $25ABE7: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 55-62
// $25ABE8: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 63-70
// $25ABE9: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 71-78
// $25ABEA: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 79-86
// $25ABEB: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 87-94
// $25ABEC: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 95-102
// $25ABED: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 103-110
// $25ABEE: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 111-118
// $25ABEF: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 119-126
// $25ABF0: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 127-134
// $25ABF1: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 135-142
// $25ABF2: [NBit] Profile 1 Puzzle Flags
//          Bit0-3=Numberjigs 143-150
// $25ABF3: [NBit] Profile 1 Puzzle Flags
//          Bit0=Numberjigs 151
//          Bit1-7=Kakuro 1-7
// $25ABF4: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 8-15
// $25ABF5: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 16-23
// $25ABF6: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 24-31
// $25ABF7: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 32-39
// $25ABF8: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 40-47
// $25ABF9: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 48-55
// $25ABFA: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 56-63
// $25ABFB: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 64-71
// $25ABFC: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 72-79
// $25ABFD: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 80-87
// $25ABFE: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Kakuro 88-95
// $25ABFF: [NBit] Profile 1 Puzzle Flags
//          Bit0-4=Kakuro 96-100
//          Bit5-7=Mini Kakuro 1-3
// $25AC00: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 4-11
// $25AC01: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 12-19
// $25AC02: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 20-27
// $25AC03: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 28-35
// $25AC04: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 36-43
// $25AC05: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 44-51
// $25AC06: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 52-59
// $25AC07: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 60-67
// $25AC08: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 68-75
// $25AC09: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 76-83
// $25AC0A: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 84-91
// $25AC0B: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Kakuro 92-99
// $25AC0C: [NBit] Profile 1 Puzzle Flags
//          Bit0=Mini Kakuro 100
//          Bit1-7=Sudoku 1-7
// $25AC0D: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 8-15
// $25AC0E: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 16-23
// $25AC0F: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 24-31
// $25AC10: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 32-39
// $25AC11: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 40-47
// $25AC12: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 48-55
// $25AC13: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 56-63
// $25AC14: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 64-71
// $25AC15: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 72-79
// $25AC16: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 80-87
// $25AC17: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku 88-95
// $25AC18: [NBit] Profile 1 Puzzle Flags
//          Bit0-4=Sudoku 96-100
//          Bit5-7=Hard Sudoku 1-3
// $25AC19: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 4-11
// $25AC1A: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 12-19
// $25AC1B: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 20-27
// $25AC1C: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 28-35
// $25AC1D: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 36-43
// $25AC1E: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 44-51
// $25AC1F: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 52-59
// $25AC20: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 60-67
// $25AC21: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 68-75
// $25AC22: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 76-83
// $25AC23: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 84-91
// $25AC24: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Hard Sudoku 92-99
// $25AC25: [NBit] Profile 1 Puzzle Flags
//          Bit0=Hard Sudoku 100
//          Bit1-7=Mini Sudoku 1-7
// $25AC26: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 8-15
// $25AC27: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 16-23
// $25AC28: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 24-31
// $25AC29: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 32-39
// $25AC2A: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 40-47
// $25AC2B: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 48-55
// $25AC2C: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 56-63
// $25AC2D: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 64-71
// $25AC2E: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 72-79
// $25AC2F: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 80-87
// $25AC30: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Mini Sudoku 88-95
// $25AC31: [NBit] Profile 1 Puzzle Flags
//          Bit0-4=Mini Sudoku 96-100
//          Bit5-7=Sudoku Junior 1-3
// $25AC32: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 4-11
// $25AC33: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 12-19
// $25AC34: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 20-27
// $25AC35: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 28-35
// $25AC36: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 36-43
// $25AC37: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 44-51
// $25AC38: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 52-59
// $25AC39: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 60-67
// $25AC3A: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 68-75
// $25AC3B: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 76-83
// $25AC3C: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 84-91
// $25AC3D: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 92-99
// $25AC3E: [NBit] Profile 1 Puzzle Flags
//          Bit0-7=Sudoku Junior 100
// $25AC48: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Crosswords 1-8
// $25AC49: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Crosswords 9-16
// $25AC4A: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Crosswords 17-24
// $25AC4B: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Crosswords 25-32
// $25AC4C: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Crosswords 33-40
// $25AC4D: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Crosswords 41-48
// $25AC4E: [NBit] Profile 2 Puzzle Flags
//          Bit0=Crossword 49
//          Bit1=Crossword 50
//          Bit2-7=Wordsearch 1-6
// $25AC4F: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Wordsearch 7-14
// $25AC50: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Wordsearch 15-22
// $25AC51: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Wordsearch 23-30
// $25AC52: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Wordsearch 31-38
// $25AC53: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Wordsearch 39-46
// $25AC54: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Wordsearch 47-50
//          Bit5-7=Mini Wordsearch 1-4
// $25AC55: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Wordsearch 5-12
// $25AC56: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Wordsearch 13-20
// $25AC57: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Wordsearch 21-28
// $25AC58: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Wordsearch 29-36
// $25AC59: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Wordsearch 37-44
// $25AC5A: [NBit] Profile 2 Puzzle Flags
//          Bit0-5=Mini Wordsearch 45-50
//          Bit6-7=Kriss Kross 1-2
// $25AC5B: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kriss Kross 3-10
// $25AC5C: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kriss Kross 11-18
// $25AC5D: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kriss Kross 19-26
// $25AC5E: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kriss Kross 27-34
// $25AC5F: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kriss Kross 35-42
// $25AC60: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kriss Kross 43-50
// $25AC61: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 1-8
// $25AC62: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 9-16
// $25AC63: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 17-24
// $25AC64: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 25-32
// $25AC65: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 33-40
// $25AC66: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 41-48
// $25AC67: [NBit] Profile 2 Puzzle Flags
//          Bit0-1=Mini Kriss Kross 49-50
//          Bit2-7=Numberjigs 1-6
// $25AC68: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Numberjigs 7-14
// $25AC69: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Numberjigs 15-22
// $25AC6A: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Numberjigs 23-30
// $25AC6B: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Numberjigs 31-38
// $25AC6C: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Numberjigs 39-46
// $25AC6D: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 47-54
// $25AC6E: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 55-62
// $25AC6F: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 63-70
// $25AC70: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 71-78
// $25AC71: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 79-86
// $25AC72: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 87-94
// $25AC73: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 95-102
// $25AC74: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 103-110
// $25AC75: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 111-118
// $25AC76: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 119-126
// $25AC77: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 127-134
// $25AC78: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 135-142
// $25AC79: [NBit] Profile 2 Puzzle Flags
//          Bit0-3=Numberjigs 143-150
// $25AC7A: [NBit] Profile 2 Puzzle Flags
//          Bit0=Numberjigs 151
//          Bit1-7=Kakuro 1-7
// $25AC7B: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 8-15
// $25AC7C: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 16-23
// $25AC7D: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 24-31
// $25AC7E: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 32-39
// $25AC7F: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 40-47
// $25AC80: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 48-55
// $25AC81: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 56-63
// $25AC82: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 64-71
// $25AC83: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 72-79
// $25AC84: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 80-87
// $25AC85: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Kakuro 88-95
// $25AC86: [NBit] Profile 2 Puzzle Flags
//          Bit0-4=Kakuro 96-100
//          Bit5-7=Mini Kakuro 1-3
// $25AC87: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 4-11
// $25AC88: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 12-19
// $25AC89: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 20-27
// $25AC8A: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 28-35
// $25AC8B: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 36-43
// $25AC8C: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 44-51
// $25AC8D: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 52-59
// $25AC8E: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 60-67
// $25AC8F: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 68-75
// $25AC90: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 76-83
// $25AC91: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 84-91
// $25AC92: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Kakuro 92-99
// $25AC93: [NBit] Profile 2 Puzzle Flags
//          Bit0=Mini Kakuro 100
//          Bit1-7=Sudoku 1-7
// $25AC94: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 8-15
// $25AC95: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 16-23
// $25AC96: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 24-31
// $25AC97: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 32-39
// $25AC98: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 40-47
// $25AC99: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 48-55
// $25AC9A: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 56-63
// $25AC9B: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 64-71
// $25AC9C: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 72-79
// $25AC9D: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 80-87
// $25AC9E: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku 88-95
// $25AC9F: [NBit] Profile 2 Puzzle Flags
//          Bit0-4=Sudoku 96-100
//          Bit5-7=Hard Sudoku 1-3
// $25ACA0: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 4-11
// $25ACA1: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 12-19
// $25ACA2: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 20-27
// $25ACA3: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 28-35
// $25ACA4: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 36-43
// $25ACA5: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 44-51
// $25ACA6: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 52-59
// $25ACA7: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 60-67
// $25ACA8: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 68-75
// $25ACA9: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 76-83
// $25ACAA: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 84-91
// $25ACAB: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Hard Sudoku 92-99
// $25ACAC: [NBit] Profile 2 Puzzle Flags
//          Bit0=Hard Sudoku 100
//          Bit1-7=Mini Sudoku 1-7
// $25ACAD: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 8-15
// $25ACAE: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 16-23
// $25ACAF: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 24-31
// $25ACB0: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 32-39
// $25ACB1: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 40-47
// $25ACB2: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 48-55
// $25ACB3: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 56-63
// $25ACB4: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 64-71
// $25ACB5: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 72-79
// $25ACB6: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 80-87
// $25ACB7: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Mini Sudoku 88-95
// $25ACB8: [NBit] Profile 2 Puzzle Flags
//          Bit0-4=Mini Sudoku 96-100
//          Bit5-7=Sudoku Junior 1-3
// $25ACB9: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 4-11
// $25ACBA: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 12-19
// $25ACBB: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 20-27
// $25ACBC: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 28-35
// $25ACBD: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 36-43
// $25ACBE: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 44-51
// $25ACBF: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 52-59
// $25ACC0: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 60-67
// $25ACC1: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 68-75
// $25ACC2: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 76-83
// $25ACC3: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 84-91
// $25ACC4: [NBit] Profile 2 Puzzle Flags
//          Bit0-7=Sudoku Junior 92-99
// $25ACC5: [NBit] Profile 2 Puzzle Flags
//          Bit0=Sudoku Junior 100
// $25ACCF: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Crosswords 1-8
// $25ACD0: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Crosswords 9-16
// $25ACD1: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Crosswords 17-24
// $25ACD2: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Crosswords 25-32
// $25ACD3: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Crosswords 33-40
// $25ACD4: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Crosswords 41-48
// $25ACD5: [NBit] Profile 3 Puzzle Flags
//          Bit0=Crossword 49
//          Bit1=Crossword 50
//          Bit2-7=Wordsearch 1-6
// $25ACD6: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Wordsearch 7-14
// $25ACD7: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Wordsearch 15-22
// $25ACD8: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Wordsearch 23-30
// $25ACD9: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Wordsearch 31-38
// $25ACDA: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Wordsearch 39-46
// $25ACDB: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Wordsearch 47-50
//          Bit5-7=Mini Wordsearch 1-4
// $25ACDC: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Wordsearch 5-12
// $25ACDD: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Wordsearch 13-20
// $25ACDE: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Wordsearch 21-28
// $25ACDF: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Wordsearch 29-36
// $25ACE0: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Wordsearch 37-44
// $25ACE1: [NBit] Profile 3 Puzzle Flags
//          Bit0-5=Mini Wordsearch 45-50
//          Bit6-7=Kriss Kross 1-2
// $25ACE2: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kriss Kross 3-10
// $25ACE3: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kriss Kross 11-18
// $25ACE4: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kriss Kross 19-26
// $25ACE5: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kriss Kross 27-34
// $25ACE6: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kriss Kross 35-42
// $25ACE7: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kriss Kross 43-50
// $25ACE8: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 1-8
// $25ACE9: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 9-16
// $25ACEA: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 17-24
// $25ACEB: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 25-32
// $25ACEC: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 33-40
// $25ACED: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kriss Kross 41-48
// $25ACEE: [NBit] Profile 3 Puzzle Flags
//          Bit0-1=Mini Kriss Kross 49-50
//          Bit2-7=Numberjigs 1-6
// $25ACEF: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Numberjigs 7-14
// $25ACF0: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Numberjigs 15-22
// $25ACF1: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Numberjigs 23-30
// $25ACF2: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Numberjigs 31-38
// $25ACF3: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Numberjigs 39-46
// $25ACF4: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 47-54
// $25ACF5: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 55-62
// $25ACF6: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 63-70
// $25ACF7: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 71-78
// $25ACF8: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 79-86
// $25ACF9: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 87-94
// $25ACFA: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 95-102
// $25ACFB: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 103-110
// $25ACFC: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 111-118
// $25ACFD: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 119-126
// $25ACFE: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 127-134
// $25ACFF: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 135-142
// $25AD00: [NBit] Profile 3 Puzzle Flags
//          Bit0-3=Numberjigs 143-150
// $25AD01: [NBit] Profile 3 Puzzle Flags
//          Bit0=Numberjigs 151
//          Bit1-7=Kakuro 1-7
// $25AD02: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 8-15
// $25AD03: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 16-23
// $25AD04: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 24-31
// $25AD05: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 32-39
// $25AD06: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 40-47
// $25AD07: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 48-55
// $25AD08: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 56-63
// $25AD09: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 64-71
// $25AD0A: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 72-79
// $25AD0B: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 80-87
// $25AD0C: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Kakuro 88-95
// $25AD0D: [NBit] Profile 3 Puzzle Flags
//          Bit0-4=Kakuro 96-100
//          Bit5-7=Mini Kakuro 1-3
// $25AD0E: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 4-11
// $25AD0F: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 12-19
// $25AD10: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 20-27
// $25AD11: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 28-35
// $25AD12: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 36-43
// $25AD13: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 44-51
// $25AD14: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 52-59
// $25AD15: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 60-67
// $25AD16: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 68-75
// $25AD17: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 76-83
// $25AD18: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 84-91
// $25AD19: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Kakuro 92-99
// $25AD1A: [NBit] Profile 3 Puzzle Flags
//          Bit0=Mini Kakuro 100
//          Bit1-7=Sudoku 1-7
// $25AD1B: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 8-15
// $25AD1C: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 16-23
// $25AD1D: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 24-31
// $25AD1E: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 32-39
// $25AD1F: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 40-47
// $25AD20: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 48-55
// $25AD21: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 56-63
// $25AD22: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 64-71
// $25AD23: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 72-79
// $25AD24: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 80-87
// $25AD25: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku 88-95
// $25AD26: [NBit] Profile 3 Puzzle Flags
//          Bit0-4=Sudoku 96-100
//          Bit5-7=Hard Sudoku 1-3
// $25AD27: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 4-11
// $25AD28: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 12-19
// $25AD29: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 20-27
// $25AD2A: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 28-35
// $25AD2B: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 36-43
// $25AD2C: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 44-51
// $25AD2D: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 52-59
// $25AD2E: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 60-67
// $25AD2F: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 68-75
// $25AD30: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 76-83
// $25AD31: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 84-91
// $25AD32: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Hard Sudoku 92-99
// $25AD33: [NBit] Profile 3 Puzzle Flags
//          Bit0=Hard Sudoku 100
//          Bit1-7=Mini Sudoku 1-7
// $25AD34: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 8-15
// $25AD35: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 16-23
// $25AD36: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 24-31
// $25AD37: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 32-39
// $25AD38: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 40-47
// $25AD39: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 48-55
// $25AD3A: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 56-63
// $25AD3B: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 64-71
// $25AD3C: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 72-79
// $25AD3D: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 80-87
// $25AD3E: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Mini Sudoku 88-95
// $25AD3F: [NBit] Profile 3 Puzzle Flags
//          Bit0-4=Mini Sudoku 96-100
//          Bit5-7=Sudoku Junior 1-3
// $25AD40: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 4-11
// $25AD41: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 12-19
// $25AD42: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 20-27
// $25AD43: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 28-35
// $25AD44: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 36-43
// $25AD45: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 44-51
// $25AD46: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 52-59
// $25AD47: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 60-67
// $25AD48: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 68-75
// $25AD49: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 76-83
// $25AD4A: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 84-91
// $25AD4B: [NBit] Profile 3 Puzzle Flags
//          Bit0-7=Sudoku Junior 92-99
// $25AD4C: [NBit] Profile 3 Puzzle Flags
//          Bit0=Sudoku Junior 100
// $263910: [32 bytes] Wordsearch Solution Flags
//          0x00 > 0x01 = Found
// $263930: [32bit] Number of Words (Wordsearch ?)
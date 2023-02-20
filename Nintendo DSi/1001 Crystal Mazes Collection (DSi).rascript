// 1001 Crystal Mazes Collection (DSi)
// #ID = 22458

// $FFE00C: [32bit be] DSI App ID Hash
//          0x4b4f4b50 = 1001 Crystal Mazes Collection (Europe)
crystal_mazes_hash = 0x4b4f4b50
function app_hash() => dword_be(0xffe00c)
function app_check() => app_hash() == crystal_mazes_hash
// $181F0C: [32bit] Screen ID
//          0x00=Title Screen (First Boot)
//          0x06=Name Creation
//          0x05=Title Screen
//          0x07=In Puzzle
//          0x08=Puzzle Selection
function screen_ID() => dword(0x181f0c)
in_puzzle = 7
//          0x00=Title Screen (First Boot)
//          0x06=Name Creation
//          0x05=Title Screen
//          0x07=In Puzzle
//          0x08=Puzzle Selection
rp_categories = {
    0:"Classic Collection",
    1:"Relaxed Collection",
    2:"Challenge Collection",
    3:"Diabolical Collection",
    4:"Bonus 1 Collection",
    5:"Bonus 2 Collection",
    6:"Bonus 3 Collection"
}
// $2EADA4: [24bit] Pointer-Puzzle Check Flags
//          Numbers are sequenced low>high, from bit7>bit0
//
function puzzle_pointer() => tbyte(0x2eada4)
function bitcount_cheevo(offset) =>
    prev(bitcount(puzzle_pointer() + offset )) == 7 &&
    measured(bitcount(puzzle_pointer() + offset) == 8)
function main_cheevo(collection_id, num, offset, first_num){
    achievement(
        rp_categories[collection_id] + " " + num,
        "Solve " + rp_categories[collection_id] + " puzzles " + first_num + "-" + first_num + 7,
        points=3,
        trigger=
            puzzle_pointer() == prev(puzzle_pointer()) &&
            app_check() &&
            bitcount_cheevo(offset)
    )
}
  
//          +0x76=Classic Collection | 1-8
//          +0x77=Classic Collection | 9-16
//          +0x78=Classic Collection | 17-24
//          +0x79=Classic Collection | 25-32
//          +0x7a=Classic Collection | 33-40
//          +0x7b=Classic Collection | 41-48
//          +0x7c=Classic Collection | 49-50 (bit7 & bit6)
offset = 0x76
num = 1
for i in range(0, 4){
    main_cheevo(0, i + 1, offset, num)
    offset = offset + 1
    num = num + 8
}  

function my_sum() =>
    bitcount(puzzle_pointer() + 0x7b) +
    bit7(puzzle_pointer() + 0x7c) +
    bit6(puzzle_pointer() + 0x7c)
achievement(
    "Classic Collection 6",
    "Solve Classic Collection puzzles 41-50",
    points=5,
    trigger=
        app_check() &&
        app_check() &&
        prev(my_sum()) == 9 &&
        measured(my_sum() == 10)
)
//          Relaxed Collection | 1-6 (bit5-bit0)
function my_sum() =>
    bit5(puzzle_pointer() + 0x7c) +
    bit4(puzzle_pointer() + 0x7c) +
    bit3(puzzle_pointer() + 0x7c) +
    bit2(puzzle_pointer() + 0x7c) +
    bit1(puzzle_pointer() + 0x7c) +
    bit0(puzzle_pointer() + 0x7c) 
achievement(
    "Relaxed Collection 1",
    "Solve Relaxed Collection puzzles 1-6",
    points=3,
    trigger=
        app_check() &&
        app_check() &&
        prev(my_sum()) == 5 &&
        measured(my_sum() == 6)
)
//          +0x7d=Relaxed Collection | 7-14
offset = 0x7d
num = 7
for i in range(0, 33){
    main_cheevo(1, i + 2, offset, num)
    offset = offset + 1
    num = num + 8
}
//           +0x7e=Relaxed Collection | 15-22
//           +0x7f=Relaxed Collection | 23-30
//           +0x80=Relaxed Collection | 31-38
//           +0x81=Relaxed Collection | 39-46
//           +0x82=Relaxed Collection | 47-54
//           +0x83=Relaxed Collection | 55-62
//           +0x84=Relaxed Collection | 63-70
//           +0x85=Relaxed Collection | 71-78
//           +0x86=Relaxed Collection | 79-86
//           +0x87=Relaxed Collection | 87-94
//           +0x88=Relaxed Collection | 95-102
//           +0x89=Relaxed Collection | 103-110
//           +0x8A=Relaxed Collection | 111-118
//           +0x8B=Relaxed Collection | 119-126
//           +0x8C=Relaxed Collection | 127-134
//           +0x8D=Relaxed Collection | 135-142
//           +0x8E=Relaxed Collection | 143-150
//           +0x8F=Relaxed Collection | 151-158
//           +0x90=Relaxed Collection | 159-166
//           +0x91=Relaxed Collection | 167-174
//           +0x92=Relaxed Collection | 175-182
//           +0x93=Relaxed Collection | 183-190
//           +0x94=Relaxed Collection | 191-198
//           +0x95=Relaxed Collection | 199-206
//           +0x96=Relaxed Collection | 207-214
//           +0x97=Relaxed Collection | 215-222
//           +0x98=Relaxed Collection | 223-230
//           +0x99=Relaxed Collection | 231-238
//           +0x9A=Relaxed Collection | 239-246
//           +0x9B=Relaxed Collection | 247-254
//           +0x9C=Relaxed Collection | 255-262
//           +0x9D=Relaxed Collection | 263-270
//           +0x9E=Relaxed Collection | 271-278
//           +0x9F=Relaxed Collection | 279-284 (bit7-bit2)
function my_sum() =>
    bit7(puzzle_pointer() + 0x9f) +
    bit6(puzzle_pointer() + 0x9f) +
    bit5(puzzle_pointer() + 0x9f) +
    bit4(puzzle_pointer() + 0x9f) +
    bit3(puzzle_pointer() + 0x9f) +
    bit2(puzzle_pointer() + 0x9f) 
achievement(
    "Relaxed Collection 36",
    "Solve Relaxed Collection puzzles 279-284",
    points=3,
    trigger=
        app_check() &&
        app_check() &&
        prev(my_sum()) == 5 &&
        measured(my_sum() == 6)
)
//           Challenge Collection | 1-2 (bit1-bit0)
//           +0xA0=Challenge Collection | 3-10
function my_sum() =>
    bit1(puzzle_pointer() + 0x9f) +
    bit0(puzzle_pointer() + 0x9f)
    bitcount(puzzle_pointer() + 0xa0)
    
achievement(
    "Challenge Collection 1",
    "Solve Challenge Collection puzzles 1-10",
    points=5,
    trigger=
        app_check() &&
        app_check() &&
        prev(my_sum()) == 9 &&
        measured(my_sum() == 10)
)
//           +0xA1=Challenge Collection | 11-18
offset = 0xa1
num = 11
for i in range(0, 26){
    main_cheevo(2, i + 2, offset, num)
    offset = offset + 1
    num = num + 8
}
//           +0xA2=Challenge Collection | 19-26
//           +0xA3=Challenge Collection | 27-34
//           +0xA4=Challenge Collection | 35-42
//           +0xA5=Challenge Collection | 43-50
//           +0xA6=Challenge Collection | 51-58
//           +0xA7=Challenge Collection | 59-66
//           +0xA8=Challenge Collection | 67-74
//           +0xA9=Challenge Collection | 75-82
//           +0xAA=Challenge Collection | 83-90
//           +0xAB=Challenge Collection | 91-98
//           +0xAC=Challenge Collection | 99-106
//           +0xAD=Challenge Collection | 107-114
//           +0xAE=Challenge Collection | 115-122
//           +0xAF=Challenge Collection | 123-130
//           +0xB0=Challenge Collection | 131-138
//           +0xB1=Challenge Collection | 139-146
//           +0xB2=Challenge Collection | 147-154
//           +0xB3=Challenge Collection | 155-162
//           +0xB4=Challenge Collection | 163-170
//           +0xB5=Challenge Collection | 171-178
//           +0xB6=Challenge Collection | 179-186
//           +0xB7=Challenge Collection | 187-194
//           +0xB8=Challenge Collection | 195-202
//           +0xB9=Challenge Collection | 203-210
//           +0xBA=Challenge Collection | 211-218
//           +0xBB=Challenge Collection | 219-226
//           +0xBC=Challenge Collection | 227-234
//           +0xBD=Challenge Collection | 235-239 (bit7-bit3)
function my_sum() =>
    bitcount(puzzle_pointer() + 0xbc) +
    bit7(puzzle_pointer() + 0xbd) +
    bit6(puzzle_pointer() + 0xbd) +
    bit5(puzzle_pointer() + 0xbd) +
    bit4(puzzle_pointer() + 0xbd) +
    bit3(puzzle_pointer() + 0xbd) 
achievement(
    "Challenge Collection 29",
    "Solve Challenge Collection puzzles 227-239",
    points=5,
    trigger=
        app_check() &&
        app_check() &&
        prev(my_sum()) == 12 &&
        measured(my_sum() == 13)
)
//           Diabolical Collection | 1-3 (bit2-bit0)
//           +0xBE=Diabolical Collection | 4-11
function my_sum() =>
    bit2(puzzle_pointer() + 0xbd) +
    bit1(puzzle_pointer() + 0xbd) +
    bit0(puzzle_pointer() + 0xbd) +
    bitcount(puzzle_pointer() + 0xbe)
achievement(
    "Diabolical Collection 1",
    "Solve Diabolical Collection puzzles 1-11",
    points=3,
    trigger=
        app_check() &&
        app_check() &&
        prev(my_sum()) == 10 &&
        measured(my_sum() == 11) 
)
//           +0xBF=Diabolical Collection | 12-19
offset = 0xbf
num = 12
for i in range(0, 12){
    main_cheevo(3, i + 2, offset, num)
    offset = offset + 1
    num = num + 8
}
//           +0xC0=Diabolical Collection | 20-27
//           +0xC1=Diabolical Collection | 28-35
//           +0xC2=Diabolical Collection | 36-43
//           +0xC3=Diabolical Collection | 44-51
//           +0xC4=Diabolical Collection | 52-59
//           +0xC5=Diabolical Collection | 60-67
//           +0xC6=Diabolical Collection | 68-75
//           +0xC7=Diabolical Collection | 76-83
//           +0xC8=Diabolical Collection | 84-91
//           +0xC9=Diabolical Collection | 92-99
//           +0xCA=Diabolical Collection | 100-107
//           +0xCB=Diabolical Collection | 108-115
//           +0xCC=Diabolical Collection | 116-123
//           +0xCD=Diabolical Collection | 124-128 (bit7-bit3)
function my_sum() =>
    bitcount(puzzle_pointer() + 0xcc) +
    bit7(puzzle_pointer() + 0xcd) +
    bit6(puzzle_pointer() + 0xcd) +
    bit5(puzzle_pointer() + 0xcd) +
    bit4(puzzle_pointer() + 0xcd) +
    bit3(puzzle_pointer() + 0xcd) 
achievement(
    "Diabolical Collection 15",
    "Solve Diablolical Collection puzzles 116-128",
    points=5,
    trigger=
        puzzle_pointer() == prev(puzzle_pointer()) &&
        app_check() &&
        prev(my_sum()) == 12 &&
        measured(my_sum() == 13)
)
//           Bonus 1 Collection | 1-3 (bit2-bit0)
//           +0xCE=Bonus Collection 1 | 4-11
function my_sum() =>
    bit2(puzzle_pointer() + 0xcd) +
    bit1(puzzle_pointer() + 0xcd) +
    bit0(puzzle_pointer() + 0xcd) +
    bitcount(puzzle_pointer() + 0xce)
achievement(
    "Bonus 1 Collection 1",
    "Solve Bonus 1 Collection puzzles 1-11",
    points=5,
    trigger=
        puzzle_pointer() == prev(puzzle_pointer()) &&
        app_check() &&
        prev(my_sum()) == 10 &&
        measured(my_sum() == 11)
)
//           +0xCF=Bonus Collection 1 | 12-19
offset = 0xcf
num = 12
for i in range(0, 9){
    main_cheevo(4, i + 2, offset, num)
    offset = offset + 1
    num = num + 8
}
//           +0xD0=Bonus Collection 1 | 20-27
//           +0xD1=Bonus Collection 1 | 28-35
//           +0xD2=Bonus Collection 1 | 36-43
//           +0xD3=Bonus Collection 1 | 44-51
//           +0xD4=Bonus Collection 1 | 52-59
//           +0xD5=Bonus Collection 1 | 60-67
//           +0xD6=Bonus Collection 1 | 68-75
//           +0xD7=Bonus Collection 1 | 76-83
//           +0xD8=Bonus Collection 1 | 84-91
//           +0xD9=Bonus Collection 1 | 92-99
//           +0xDA=Bonus Collection 1 | 100 (bit7)
function my_sum() =>
    bitcount(puzzle_pointer() + 0xd9) +
    bit7(puzzle_pointer() + 0xda) 
achievement(
    "Bonus 1 Collection 12",
    "Solve Bonus 1 Collection puzzles 92-100",
    points=5,
    trigger=
        puzzle_pointer() == prev(puzzle_pointer()) &&
        app_check() &&
        prev(my_sum()) == 8 &&
        measured(my_sum() == 9)
)
//           Bonus Collection 2 | 1-7 (bit6-bit0)
function my_sum() =>
    bit6(puzzle_pointer() + 0xda) +
    bit5(puzzle_pointer() + 0xda) +
    bit4(puzzle_pointer() + 0xda) +
    bit3(puzzle_pointer() + 0xda) +
    bit2(puzzle_pointer() + 0xda) +
    bit1(puzzle_pointer() + 0xda) +
    bit0(puzzle_pointer() + 0xda) 
achievement(
    "Bonus 2 Collection 1",
    "Solve Bonus 2 Collection puzzles 1-7",
    points=3,
    trigger=
        puzzle_pointer() == prev(puzzle_pointer()) &&
        app_check() &&
        prev(my_sum()) == 6 &&
        measured(my_sum() == 7)
)
//           +0xDB=Bonus Collection 2 | 8-15
offset = 0xdb
num = 8
for i in range(0, 9){
    main_cheevo(5, i + 2, offset, num)
    offset = offset + 1
    num = num + 8
}
//           +0xDC=Bonus Collection 2 | 16-23
//           +0xDD=Bonus Collection 2 | 24-31
//           +0xDE=Bonus Collection 2 | 32-39
//           +0xDF=Bonus Collection 2 | 40-47
//           +0xE0=Bonus Collection 2 | 48-55
//           +0xE1=Bonus Collection 2 | 56-63
//           +0xE2=Bonus Collection 2 | 64-71
//           +0xE3=Bonus Collection 2 | 72-79
//           +0xE4=Bonus Collection 2 | 80-87

//           +0xE5=Bonus Collection 2 | 88-95
//           +0xE6=Bonus Collection 2 | 96-100 (bit7-bit3)
function my_sum() =>
    bitcount(puzzle_pointer() + 0xe5) +
    bit7(puzzle_pointer() + 0xe6) +
    bit6(puzzle_pointer() + 0xe6) +
    bit5(puzzle_pointer() + 0xe6) +
    bit4(puzzle_pointer() + 0xe6) +
    bit3(puzzle_pointer() + 0xe6)     
achievement(
    "Bonus 2 Collection 12",
    "Solve Bonus 2 Collection puzzles 88-100",
    points=3,
    trigger=
        puzzle_pointer() == prev(puzzle_pointer()) &&
        app_check() &&
        prev(my_sum()) == 12 &&
        measured(my_sum() == 13)
)

//           Bonus Collection 3 | 1-3 (bit2-bit0)
//           +0xE7=Bonus Collection 3 | 4-11
function my_sum() =>
      bit2(puzzle_pointer() + 0xe6) +
      bit1(puzzle_pointer() + 0xe6) +
      bit0(puzzle_pointer() + 0xe6) +
      bitcount(puzzle_pointer() + 0xe7)
achievement(
    "Bonus 3 Collection 1",
    "Solve Bonus 3 Collection puzzles 1-11",
    points=5,
    trigger=
        puzzle_pointer() == prev(puzzle_pointer()) &&
        app_check() &&
        prev(my_sum()) == 10 &&
        measured(my_sum() == 11)
)
//           +0xE8=Bonus Collection 3 | 12-19
offset = 0xe8
num = 12
for i in range(0, 9){
    main_cheevo(6, i + 2, offset, num)
    offset = offset + 1
    num = num + 8
}
//           +0xE9=Bonus Collection 3 | 20-27
//           +0xEA=Bonus Collection 3 | 28-35
//           +0xEB=Bonus Collection 3 | 36-43
//           +0xEC=Bonus Collection 3 | 44-51
//           +0xED=Bonus Collection 3 | 52-59
//           +0xEE=Bonus Collection 3 | 60-67
//           +0xEF=Bonus Collection 3 | 68-75
//           +0xF0=Bonus Collection 3 | 76-83
//           +0xF1=Bonus Collection 3 | 84-91
//           +0xF2=Bonus Collection 3 | 92-99
//           +0xF3=Bonus Collection 3 | 100 (bit7)
function my_sum() =>
    bitcount(puzzle_pointer() + 0xf2) +
    bit7(puzzle_pointer() + 0xf3)
achievement(
    "Bonus 3 Collection 12",
    "Solve Bonus 3 collection puzzles 92-100",
    points=5,
    trigger=
        puzzle_pointer() == prev(puzzle_pointer()) &&
        app_check() &&
        prev(my_sum()) == 8 &&
        measured(my_sum() == 9)
)
// $2F4C08: Active Save Slot [32-bit]
// $2F8314: [16bit] Active Collection
//          0x00=Classic Collection
//          0x01=Relaxed Collection
//          0x02=Challenge Collection
//          0x03=Diabolical Collection
//          0x04=Bonus 1 Collection
//          0x05=Bonus 2 Collection
//          0x06=Bonus 3 Collection
function puzzle_category() => word(0x2f8314)

// $2F8316: [16bit] Puzzle Number
function puzzle_number() => word(0x2f8316)

rp_screens = {
    0:"In the Title Screen...",
    5:"In the Title Screen...",
    6:"Creating a Profile...",
    8:"Selecting a puzzle..."
}

rich_presence_conditional_display(app_hash() == crystal_mazes_hash && screen_ID() == in_puzzle, "Solving {0} 🧩 {1}",
    rich_presence_lookup("Collection", puzzle_category(), rp_categories),
    rich_presence_macro("Number", puzzle_number() + 1)
)
rich_presence_conditional_display(app_hash() == crystal_mazes_hash, "{0}",
    rich_presence_lookup("Screen", screen_ID(), rp_screens)
)
rich_presence_display("In the DSi Menu...")


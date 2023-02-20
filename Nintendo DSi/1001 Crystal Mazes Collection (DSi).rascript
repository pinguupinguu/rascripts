// 1001 Crystal Mazes Collection (DSi)
// #ID = 22458

// $000076: [Offset] [8bit] Classic Collection - Completion Flags | Save 1
//          --- bit7 | 1
//          --- bit6 | 2
//          --- bit5 | 3
//          --- bit4 | 4
//          --- bit3 | 5
//          --- bit2 | 6
//          --- bit1 | 7
//          --- bit0 | 8
// $0A3D48: Global timer lmao
// $181F0C: [32bit] Screen ID
//          0x00=Title Screen (First Boot)
//          0x06=Name Creation
//          0x05=Title Screen
//          0x07=In Puzzle
//          0x08=Puzzle Selection
// $2EADA4: [24bit] Pointer-Puzzle Check Flags
//          Numbers are sequenced low>high, from bit7>bit0
//          +0x76=Classic Collection | 1-8
//          +0x77=Classic Collection | 9-16
//          +0x78=Classic Collection | 17-24
//          +0x79=Classic Collection | 25-32
//          +0x7a=Classic Collection | 33-40
//          +0x7b=Classic Collection | 41-48
//          +0x7c=Classic Collection | 49-50 (bit7 & bit6)
//          Relaxed Collection | 1-6 (bit5-bit0)
//          +0x7d=Relaxed Collection | 7-14
//          +0x7e=Relaxed Collection | 15-22
//          +0x7f=Relaxed Collection | 23-30
//          +0x80=Relaxed Collection | 31-38
//          +0x81=Relaxed Collection | 39-46
//          +0x82=Relaxed Collection | 47-54
//          +0x83=Relaxed Collection | 54-62
//          +0x84=Relaxed Collection | 62-70
//          +0x85=Relaxed Collection | 70-78
//          +0x86=Relaxed Collection | 78-86
//          +0x87=Relaxed Collection | 86-94
//          +0x88=Relaxed Collection | 94-102
//          +0x89=Relaxed Collection | 102-110
//          +0x8A=Relaxed Collection | 110-118
//          +0x8B=Relaxed Collection | 118-126
//          +0x8C=Relaxed Collection | 126-134
//          +0x8D=Relaxed Collection | 134-142
//          +0x8E=Relaxed Collection | 142-150
//          +0x8F=Relaxed Collection | 150-158
//          +0x90=Relaxed Collection | 158-166
//          +0x91=Relaxed Collection | 166-174
//          +0x92=Relaxed Collection | 174-182
//          +0x93=Relaxed Collection | 182-190
//          +0x94=Relaxed Collection | 190-198
//          +0x95=Relaxed Collection | 198-206
//          +0x96=Relaxed Collection | 206-214
//          +0x97=Relaxed Collection | 214-222
//          +0x98=Relaxed Collection | 222-230
//          +0x99=Relaxed Collection | 230-238
//          +0x9A=Relaxed Collection | 238-246
//          +0x9B=Relaxed Collection | 246-254
//          +0x9C=Relaxed Collection | 254-262
//          +0x9D=Relaxed Collection | 262-270
//          +0x9E=Relaxed Collection | 270-278
//          +0x9F=Relaxed Collection | 279-284 (bit7-bit2)
//          Challenge Collection | 1-2 (bit1-bit0)
//          +0xA0=Challenge Collection | 3-10
//          +0xA1=Challenge Collection | 10-18
//          +0xA2=Challenge Collection | 18-26
//          +0xA3=Challenge Collection | 26-34
//          +0xA4=Challenge Collection | 34-42
//          +0xA5=Challenge Collection | 42-50
//          +0xA6=Challenge Collection | 50-58
//          +0xA7=Challenge Collection | 58-66
//          +0xA8=Challenge Collection | 66-74
//          +0xA9=Challenge Collection | 74-82
//          +0xAA=Challenge Collection | 82-90
//          +0xAB=Challenge Collection | 90-98
//          +0xAC=Challenge Collection | 98-106
//          +0xAD=Challenge Collection | 106-114
//          +0xAE=Challenge Collection | 114-122
//          +0xAF=Challenge Collection | 122-130
//          +0xB0=Challenge Collection | 130-138
//          +0xB1=Challenge Collection | 138-146
//          +0xB2=Challenge Collection | 146-154
//          +0xB3=Challenge Collection | 154-162
//          +0xB4=Challenge Collection | 162-170
//          +0xB5=Challenge Collection | 170-178
//          +0xB6=Challenge Collection | 178-186
//          +0xB7=Challenge Collection | 186-194
//          +0xB8=Challenge Collection | 194-202
//          +0xB9=Challenge Collection | 202-210
//          +0xBA=Challenge Collection | 210-218
//          +0xBB=Challenge Collection | 218-226
//          +0xBC=Challenge Collection | 226-234
//          +0xBD=Challenge Collection | 235-239 (bit7-bit3)
//          Diabolical Collection | 1-3
//          +0xBE=Diabolical Collection | 4-11
//          +0xBF=Diabolical Collection | 11-19
//          +0xC0=Diabolical Collection | 19-27
//          +0xC1=Diabolical Collection | 27-35
//          +0xC2=Diabolical Collection | 35-43
//          +0xC3=Diabolical Collection | 43-51
//          +0xC4=Diabolical Collection | 51-59
//          +0xC5=Diabolical Collection | 59-67
//          +0xC6=Diabolical Collection | 67-75
//          +0xC7=Diabolical Collection | 75-83
//          +0xC8=Diabolical Collection | 83-91
//          +0xC9=Diabolical Collection | 91-99
//          +0xCA=Diabolical Collection | 99-107
//          +0xCB=Diabolical Collection | 107-115
//          +0xCC=Diabolical Collection | 115-123
//          +0xCD=Diabolical Collection | 124-128 (bit7-bit3)
//          Bonus 1 Collection | 1-3 (bit2-bit0)
//          +0xCE=Bonus Collection 1 | 4-11
//          +0xCF=Bonus Collection 1 | 11-19
//          +0xD0=Bonus Collection 1 | 19-27
//          +0xD1=Bonus Collection 1 | 27-35
//          +0xD2=Bonus Collection 1 | 35-43
//          +0xD3=Bonus Collection 1 | 43-51
//          +0xD4=Bonus Collection 1 | 51-59
//          +0xD5=Bonus Collection 1 | 59-67
//          +0xD6=Bonus Collection 1 | 67-75
//          +0xD7=Bonus Collection 1 | 75-83
//          +0xD8=Bonus Collection 1 | 83-91
//          +0xD9=Bonus Collection 1 | 91-99
//          +0xDA=Bonus Collection 1 | 100 (bit7)
//          Bonus Collection 2 | 1-7 (bit6-bit0)
//          +0xDB=Bonus Collection 2 | 8-15
//          +0xDC=Bonus Collection 2 | 15-23
//          +0xDD=Bonus Collection 2 | 23-31
//          +0xDE=Bonus Collection 2 | 31-39
//          +0xDF=Bonus Collection 2 | 39-47
//          +0xE0=Bonus Collection 2 | 47-55
//          +0xE1=Bonus Collection 2 | 55-63
//          +0xE2=Bonus Collection 2 | 63-71
//          +0xE3=Bonus Collection 2 | 71-79
//          +0xE4=Bonus Collection 2 | 79-87
//          +0xE5=Bonus Collection 2 | 87-95
//          +0xE6=Bonus Collection 2 | 96-100 (bit7-bit3)
//          Bonus Collection 3 | 1-3 (bit2-bit0)
//          +0xE7=Bonus Collection 3 | 4-11
//          +0xE8=Bonus Collection 3 | 11-19
//          +0xE9=Bonus Collection 3 | 19-27
//          +0xEA=Bonus Collection 3 | 27-35
//          +0xEB=Bonus Collection 3 | 35-43
//          +0xEC=Bonus Collection 3 | 43-51
//          +0xED=Bonus Collection 3 | 51-59
//          +0xEE=Bonus Collection 3 | 59-67
//          +0xEF=Bonus Collection 3 | 67-75
//          +0xF0=Bonus Collection 3 | 75-83
//          +0xF1=Bonus Collection 3 | 83-91
//          +0xF2=Bonus Collection 3 | 91-99
//          +0xF3=Bonus Collection 3 | 100 (bit7)
// $2EF3F8: Classic Collection - Completion Flags | Save 1
//          --- bit7 | 17
//          --- bit6 | 18
//          --- bit5 | 19
//          --- bit4 | 20
//          --- bit3 | 21
//          --- bit2 | 22
//          --- bit1 | 23
//          --- bit0 | 24
// $2EF3F9: Classic Collection - Completion Flags | Save 1
//          --- bit7 | 25
//          --- bit6 | 26
//          --- bit5 | 27
//          --- bit4 | 28
//          --- bit3 | 29
//          --- bit2 | 30
//          --- bit1 | 31
//          --- bit0 | 32
// $2EF3FC: Classic Collection - Completion Flags | Save 1
//          --- bit7 | 49
//          --- bit6 | 50
//          Relaxed Collection - Completion Flags | Save 1
//          --- bit5 | 1
//          --- bit4 | 2
//          --- bit3 | 3
//          --- bit2 | 4
//          --- bit1 | 5
//          --- bit0 | 6
// $2EF474: First puzzle hours
// $2EF85D: First puzzle minutes
// $2EFC46: First puzzle seconds
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
rp_categories = {
    0:"Classic Collection",
    1:"Relaxed Collection",
    2:"Challenge Collection",
    3:"Diabolical Collection",
    4:"Bonus 1 Collection",
    5:"Bonus 2 Collection",
    6:"Bonus 3 Collection"
}
// $2F8316: [16bit] Puzzle Number
function puzzle_number() => word(0x2f8316)
// $FFE00C: [32bit be] DSI App ID Hash
//          0x4b4f4b50 = 1001 Crystal Mazes Collection (Europe)
crystal_mazes_hash = 0x4b4f4b50
function app_hash() => dword_be(0xffe00c)

rich_presence_conditional_display()




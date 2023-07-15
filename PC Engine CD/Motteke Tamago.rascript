// Motteke Tamago
// #ID = 13188


// $1A62: [8bit] 1P State
//        0x00=Player
//        0x04=CPU
//        0xff=Inactive
// $1A63: [8bit] 2P State
//        0x00=Player
//        0x04=CPU
//        0xff=Inactive
// $1A64: [8bit] 3P State
//        0x00=Player
//        0x04=CPU
//        0xff=Inactive
// $1A65: [8bit] 4P State
//        0x00=Player
//        0x04=CPU
//        0xff=Inactive


// $1A6D: [8bit] Number of Eggs Required
// $1A6E: [8bit] Eggs Left Before Stage Ends
// $1B74: [32bit] 1P - Color Chicks - Bonus #2
// $1B79: [32bit] 2P - Color Chicks (Bonus #2 - Amount * 200 = Total applied)
// $1B84: [8bit] 1P - Pink Chicks (Bonus #3 - Amount * 200 = Total applied)
// $1B85: [8bit] 2P - Pink Chicks (Bonus #3 - Amount * 200 = Total applied)
// $1B88: [8bit] 1P - Black Chicks (Penalty - "Anti Bonus")
// $1B89: [8bit] 2P - Black Chicks (Penalty - "Anti Bonus")
// $1B8C: [8bit] P1 - Bonus #5 - Swans (From Gold Eggs)
// $1B8D: [8bit] P1 - Bonus #5 - Swans (From Gold Eggs)

// $1B98: [8bit] P1 Lives (Bonus #4)
// $1B99: [8bit] P2 Lives
// $1BC2: [8bit] Walk Type Option
//        0x00=Type 1 - Normal Type Walk
//        0x01=Type 2 - No stopping
//        0x02= Type 3 - No stopping & No U-Turns!
// $1BF0: [NBit] V.S. 1 Computer Flags
//        OddBits=Level Cleared
//        EvenBits=Level Lost
//        Bit1=1-1
//        Bit3=1-2
//        Bit5=1-3
//        Bit7=1-4
// $1BF1: [NBit] V.S. 1 Computer Flags
//        Bit1=1-5
//        Bit3=1-6
//        Bit5=1-7
//        Bit7=1-8
// $1BF2: [NBit] V.S. 1 Computer Flags
//        Bit1=1-9
//        Bit3=1-10
//        Bit5=2-1
//        Bit7=2-2
// $1BF3: [NBit] V.S. 1 Computer Flags
//        Bit1=2-3
//        Bit3=2-4
//        Bit5=2-5
//        Bit7=2-6
// $1BF4: [NBit] V.S. 1 Computer Flags
//        Bit1=2-7
//        Bit3=2-8
//        Bit5=2-9
//        Bit7=2-10
// $1BF5: [NBit] V.S. 1 Computer Flags
//        Bit1=3-1
//        Bit3=3-2
//        Bit5=3-3
//        Bit7=3-4
// $1BF6: [NBit] V.S. 1 Computer Flags
//        Bit1=3-5
//        Bit3=3-6
//        Bit5=3-7
//        Bit7=3-8
// $1BF7: [NBit] V.S. 1 Computer Flags
//        Bit1=3-9
//        Bit3=3-10
// $1BF8: [NBit] V.S. 2 Computer Flags
//        Bit1=1-1
//        Bit3=1-2
//        Bit5=1-3
//        Bit7=1-4
// $1BF9: [NBit] V.S. 2 Computer Flags
//        Bit1=1-5
//        Bit3=1-6
//        Bit5=1-7
//        Bit7=1-8
// $1BFA: [NBit] V.S. 2 Computer Flags
//        Bit1=1-9
//        Bit3=1-10
//        Bit5=2-1
//        Bit7=2-2
// $1BFB: [NBit] V.S. 2 Computer Flags
//        Bit1=2-3
//        Bit3=2-4
//        Bit5=2-5
//        Bit7=2-6
// $1BFC: [NBit] V.S. 2 Computer Flags
//        Bit1=2-7
//        Bit3=2-8
//        Bit5=2-9
//        Bit7=2-10
// $1BFD: [NBit] V.S. 2 Computer Flags
//        Bit1=3-1
//        Bit3=3-2
//        Bit5=3-3
//        Bit7=3-4
// $1BFE: [NBit] V.S. 2 Computer Flags
//        Bit1=3-5
//        Bit3=3-6
//        Bit5=3-7
//        Bit7=3-8
// $1BFF: [NBit] V.S. 2 Computer Flags
//        Bit1=3-9
//        Bit3=3-10
// $1C00: [NBit] V.S. 3 Computer Flags
//        Bit1=1-1
//        Bit3=1-2
//        Bit5=1-3
//        Bit7=1-4
// $1C01: [NBit] V.S. 3 Computer Flags
//        Bit1=1-5
//        Bit3=1-6
//        Bit5=1-7
//        Bit7-1-8
// $1C02: [NBit] V.S. 3 Computer Flags
//        Bit1=1-9
//        Bit3=1-10
//        Bit5=2-1
//        Bit7=2-2
// $1C03: [NBit] V.S. 3 Computer Flags
//        Bit1=2-3
//        Bit3=2-4
//        Bit5=2-5
//        Bit7=2-6
// $1C04: [NBit] V.S. 3 Computer Flags
//        Bit1=2-7
//        Bit3=2-8
//        Bit5=2-9
//        Bit7=2-10
// $1C05: [NBit] V.S. 3 Computer Flags
//        Bit1=3-1
//        Bit3=3-2
//        Bit5=3-3
//        Bit7=3-4
// $1C06: [NBit] V.S. 3 Computer Flags
//        Bit1=3-5
//        Bit3=3-6
//        Bit5=3-7
//        Bit7=3-8
// $1C07: [NBit] V.S. 3 Computer Flags
//        Bit1=3-9
//        Bit3=3-10

// $1C36: [6 bytes] Player One - Score Tally
//        From Left to Right:
//        [8bit] Ones
//        [8bit] Tens
//        [8bit] Hundreds
//        [8bit] Thousands
//        [8bit] Ten-Thousands
//        [8bit] Hundred-Thousands
function bit_sum(addr) =>
    bit1(addr) +
    bit3(addr) +
    bit5(addr) + 
    bit7(addr)
//One CPU mode!
function world_one_two_pl() =>
    bit_sum(0x001bf0) +
    bit_sum(0x001bf1) +
    bit1(0x001bf2) +
    bit3(0x001bf2)
function world_two_two_pl() =>
    bit5(0x001bf2) +
    bit7(0x001bf2) +
    bit_sum(0x001bf3) +
    bit_sum(0x001bf4)
function world_three_two_pl() =>
    bit_sum(0x001bf5) +
    bit_sum(0x001bf6) +
    bit1(0x001bf7) +
    bit3(0x001bf7)
//Two CPU mode!
function world_one_three_pl() =>
    bit_sum(0x001bf8) +
    bit_sum(0x001bf9) +
    bit1(0x001bfa) +
    bit3(0x001bfa)
function world_two_three_pl() =>
    bit5(0x001bfa) +
    bit7(0x001bfa) +
    bit_sum(0x001bfb) +
    bit_sum(0x001bfc)
function world_three_three_pl() =>
    bit_sum(0x001bfd) +
    bit_sum(0x001bfe) +
    bit1(0x001bff) +
    bit3(0x001bff)
//Three CPU mode!
function world_one_four_pl() =>
    bit_sum(0x001c00) +
    bit_sum(0x001c01) +
    bit1(0x001c02) +
    bit3(0x001c02)
function world_two_four_pl() =>
    bit5(0x001c02) +
    bit7(0x001c02) +
    bit_sum(0x001c03) +
    bit_sum(0x001c04)
function world_three_four_pl() =>
    bit_sum(0x001c05) +
    bit_sum(0x001c06) +
    bit1(0x001c07) +
    bit3(0x001c07)
function demo_disabled() => byte(0x001c0a) == 0    
function progression(wrld, target) =>
    prev(wrld) == target - 1 &&
    wrld == target &&
    demo_disabled()
achievement(
    "A Softboiled Start",
    "Beat five stages in World 1 in 1 CPU mode!",
    points=10,
    trigger=
        progression(world_one_two_pl(), 5) 
)
achievement(
    "World One Finisher!",
    "Beat all ten stages in World 1 in 1 CPU mode!",
    points=10,
    trigger=
        progression(world_one_two_pl(), 10)
)
achievement(
    "An Egg a Day Keeps the Ducks at Bay",
    "Beat five stages in World 2 in 1 CPU mode!",
    points=10,
    trigger=
        progression(world_two_two_pl(), 5)
)
achievement(
    "World Two Finisher!",
    "Beat all ten stages in World 2 in 1 CPU mode!",
    points=10,
    trigger=
        progression(world_two_two_pl(), 10)
)
achievement(
    "Beaten and Boiled",
    "Beat five stages in World 3 in 1 CPU mode!",
    points=10,
    trigger=
        progression(world_three_two_pl(), 5)
)
achievement(
    "World Three Finisher!",
    "Beat ten stages in World 3 in 1 CPU mode!",
    points=10,
    trigger=
        progression(world_three_two_pl(), 10)
)
achievement(
    "An Over Easy Start",
    "Beat five stages in World 1 in 2 CPU mode!",
    points=10,
    id=324468,
    badge="362273",
    trigger=
        progression(world_one_three_pl(), 5)
)
achievement(
    "World One Done Again!",
    "Beat all ten stages in World 1 in 2 CPU mode!",
    points=10,
    trigger=
        progression(world_one_three_pl(), 10)
)
achievement(
    "Placin' Omelettes",
    "Beat five stages in World 2 in 2 CPU mode!",
    points=10,
    trigger=
        progression(world_two_three_pl(), 5)
)
achievement(
    "World Two Done Again!",
    "Beat all ten stages in World 2 in 2 CPU mode!",
    points=10,
    trigger=
        progression(world_two_three_pl(), 10)
)
achievement(
    "Boiled and Bruised",
    "Beat five stages in World 3 in 2 CPU mode!",
    points=10,
    trigger=
        progression(world_three_three_pl(), 5)
)
achievement(
    "World Three Done Again!",
    "Beat all ten stages in World 3 in 2 CPU mode!",
    points=10,
    trigger=
        progression(world_three_three_pl(), 10)
)
achievement(
    "A Hardboiled Start",
    "Beat five stages in World 1 in 3 CPU mode!",
    points=10,
    trigger=
        progression(world_one_four_pl(), 5)
)
achievement(
    "World One Mastered!",
    "Beat all ten stages in World 1 in 3 CPU mode!",
    points=25,
    trigger=
        progression(world_one_four_pl(), 10)
)
achievement(
    "Cracked",
    "Beat five stages in World 2 in 3 CPU mode!",
    points=10,
    trigger=
        progression(world_two_four_pl(), 5)
)
achievement(
    "World Two Mastered!",
    "Beat all ten stages in World 2 in 3 CPU mode!",
    points=25,
    trigger=
        progression(world_two_four_pl(), 10)
)
achievement(
    "Bruised and Shelled",
    "Beat five stages in World 3 in 3 CPU mode!",
    points=10,
    trigger=
        progression(world_three_four_pl(), 5)
)
achievement(
    "World Three Mastered!",
    "Beat all ten stages in World 3 in CPU mode!",
    points=25,
    trigger=
        progression(world_three_four_pl(), 10)
)
//Rich Presence
// $1A61: [NBit] Player Active Flags
//        Bit0=1P
//        Bit1=2P
//        Bit2=3P
//        bit3=4P
function player_sum() => bit0(0x1a61) + bit1(0x1a61) + bit2(0x1a61) + bit3(0x1a61)
// $1A66: [8bit] World
function world() => byte(0x1a66) + 1
// $1A67: [8bit] Stage (Value - 1)
function stage() => byte(0x1a67) + 1
// $1B90: [16bit] 1P Score - * 10 = Value
// $1B92: [16bit] 2P Score - * 10 = Value
// $1B94: [16bit] 3P Score - * 10 = Value
// $1B96: [16bit] 4P Score - * 10 = Value
function in_match_check() => word(0x1b90) + word(0x1b92) + word(0x1b94) + word(0x1b96) !=0
// $1C27: [8bit] Active Bonus Screen
//        0x00=Round Over
//        0x01=Bonus 1 Calculation
//        0x02=Bonus 2 Calculation
//        0x03=Bonus 3 Calculation (Pink chicks)
//        0x04=Bonus 4 - Player's Lives
//        0x05=Swans (gold eggs0
//        0x06=Anti-bonus (Black Chicks)
//        0x07=Screen: "As A Result..."
//        0x08=Screen: "The Winner of this round..."
//        0x09="is...."
//        0x0a=Final Results
//        0x0b=Final Results - Duck runs across screen
function in_results_check() => byte(0x1c27) != 0
matches = {
    1:"Solo",
    2:"Two Player",
    3:"Three Player",
    4:"Four Player"
}
rich_presence_conditional_display(!demo_disabled(), "In Demo")
rich_presence_conditional_display(in_match_check(), "Playing a {0} match on World {1}-{2}",
    rich_presence_lookup("MatchCount", player_sum(), matches),
    rich_presence_macro("Number", world()),
    rich_presence_macro("Number", stage())
    )
rich_presence_conditional_display(in_results_check(), "Viewing Match Results")
rich_presence_display("In Menu")



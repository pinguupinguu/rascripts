// Hell's Kitchen - The Game
// #ID = 17860
// $0FDDB0: [8bit] Selected Week
//          0x00=Week One
//          0x01=Week Two
//          0x02=Week Three
//          0x03=Week Four
//          0x04=Week Five
// $0FDDB1: [8bit] Selected Day Index
// $10D728: [32bit] Language Option
//          0x00=English
//          0x01=Italian
//          0x02=Spanish
//          0x03=French
//          0x04=Dutch
// $10EA48: Active Save Slot ASCII
function save_slot() => never(byte(0x10eaa0) != prev(byte(0x10eaa0)))
function tutorial_check() => never(prev(byte(0x10ea5c)) != 0x64)
function save_protection() => save_slot() && tutorial_check()
// $10EA5C: [7 bytes] Active Save Slot Week 1 Percentage Clears
//          100% = 0x64
world_array = range(0x10ea5c, 0x10ea5c + 6)
function week_cheevo(array_range) =>
    save_protection() &&
    tally_of(array_range, 6, b => once(prev(byte(b)) == 0x64)) &&
    measured(tally_of(array_range, 7, b => once(byte(b) == 0x64))) &&
    never(tally_of(array_range, 7, b => once(prev(byte(b)) == 0x64)))
achievement(
    "The Dishwasher",
    "Obtain 100% level clears on all days of Week One",
    points=10,
    trigger=
        week_cheevo(range(0x10ea5c, 0x10ea5c + 6))        
)
// $10EA63: [7 bytes] Active Save Slot Week 2 Percentage Clears
//          100% = 0x64
achievement(
    "The Apprentice",
    "Obtain 100% level clears on all days of Week Two",
    points=10,
    trigger=
        week_cheevo(range(0x10ea63, 0x10ea63 + 6))
)
// $10EA6A: [7 bytes] Active Save Slot Week 3 Percentage Clears
//          100% = 0x64
achievement(
    "Junior Cook",
    "Obtain all 100% level clears on all days of Week Three",
    points=10,
    trigger=
        week_cheevo(range(0x10ea6a, 0x10ea6a + 6))
)
// $10EA71: [7 bytes] Active Save Slot Week 4 Percentage Clears
//          100% = 0x64
achievement(
    "Bigger Cook",
    "Obtain all 100% level clears on all days of Week Four",
    points=25,
    trigger=
        week_cheevo(range(0x10ea71, 0x10ea71 + 6))
)
// $10EA78: [7 bytes] Active Save Slot Week 5 Percentage Clears
//          100% = 0x64
achievement(
    "The Senior Chef",
    "Obtain all 100% level clears on all days of Week Five",
    points=25,
    trigger=
        week_cheevo(range(0x10ea78, 0x10ea78 + 6))
)
// $10F221: [16bit] Selected Day
// $11163C: [32-bit] Music Value
// $111664: [32-bit] Sound Value
// $1A119C: [Float] Gordon Ramsei Stress Meter
// $1A11B0: orders finished?
// $1A11BC: [Float] Arcade Score
// $1CAA00: [14 bytes] Profile 1 ASCII Name Chars
// $1CAA10: [7 bytes] Profile 1 Week 1 Percentage Clears
//          100% = 0x64
// $1CAA17: [7 bytes] Profile 1 Week 2 Percentage Clears
//          100% = 0x64
// $1CAA1E: [7 bytes] Profile 1 Week 3 Percentage Clears
//          100% = 0x64
// $1CAA25: [7 bytes] Profile 1 Week 4 Percentage Clears
//          100% = 0x64
// $1CAA2C: [7 bytes] Profile 1 Week 5 Percentage Clears
//          100% = 0x64
// $1CAA53: [14 bytes] Profile 2 ASCII Name Chars
// $1CAA63: [7 bytes] Profile 2 Week 1 Percentage Clears
//          100% = 0x64
// $1CAA6A: [7 bytes] Profile 2 Week 2 Percentage Clears
//          100% = 0x64
// $1CAA71: [7 bytes] Profile 2 Week 3 Percentage Clears
//          100% = 0x64
// $1CAA78: [7 bytes] Profile 2 Week 4 Percentage Clears
//          100% = 0x64
// $1CAA7F: [7 bytes] Profile 2 Week 5 Percentage Clears
//          100% = 0x64
// $1CAAA6: [14 bytes] Profile 3 ASCII Name Chars
// $1CAAB6: [7 bytes] Profile 3 Week 1 Percentage Clears
//          100% = 0x64
// $1CAABD: [7 bytes] Profile 3 Week 2 Percentage Clears
//          100% = 0x64
// $1CAAC4: [7 bytes] Profile 3 Week 3 Percentage Clears
//          100% = 0x64
// $1CAACB: [7 bytes] Profile 3 Week 4 Percentage Clears
//          100% = 0x64
// $1CAAD2: [7 bytes] Profile 3 Week 5 Percentage Clears
//          100% = 0x64
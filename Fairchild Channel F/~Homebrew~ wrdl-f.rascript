// ~Homebrew~ wrdl-f
// #ID = 20231

// $0757: hi pinguu
// $2F72: hi blaze
// $3053: [8bit] Score (Ten-Thousands)
// $3054: [8bit] Score (Thousands)
// $3055: [8bit] Score (Hundreds)
// $3056: [8bit] Score (Tens)
// $3057: [8bit] Score (Ones)
// $3060: 04=Correct
//        05=Incorrect
// $3074: [8bit] Puzzle Solution Submitted
//        0x00=No
//        0x01=Yes
function submit() => byte(0x3074)
// $307C: [8bit] Active Letter Slot
// $307F: [5 bytes] Solution Array
// $3084: [8bit] Current Grid Row
// $308A: [5 bytes] Letter Array
// $3099: Current Level
// $30A9: 01=In Puzzle


for i in range(0, 8){
    achievement(
        "Bookworm " + i + 1,
        "Complete Level " + i + 1 + " without failing any of the previous levels.",
        points=0,
        trigger=
            tally_of(range(0, i), i + 1, b =>
                once(byte(0x3099) == b &&                                                    
                    byte(0x307f) == byte(0x308a) && 
                    byte(0x3080) == byte(0x308b) &&  
                    byte(0x3081) == byte(0x308c) &&
                    byte(0x3082) == byte(0x308d) &&
                    byte(0x3083) == byte(0x308e) &&
                    submit() > prev(submit()))              
                    )
    )
}


rich_presence_conditional_display(byte(0x30a9) == 1, "In Level {0} ✅ {1}/{2}",
    rich_presence_macro("Number", byte(0x3099) + 1),
    rich_presence_macro("Number", byte(0x0030a4)),
    rich_presence_macro("Number", byte(0x3099))
)
rich_presence_display("On Titlescreen")
// Gummy Bears Minigolf
// #ID = 24131


// $0992B8: [32bit] Hole One - Current Number of Shots
// $0992BC: [32bit] Hole 2 Shots
// $0992C0: [32bit] Hole 3 Shots


// $09BD5E: [5 bytes] ASCII Profile 1 Name?
// $09BD65: [NBit] Profile 2 - Course Flags
//          Bit5=Fairytale
//          Bit6=Adventure Park Unlock
//          Bit7=Rainbow City
// $09BD66: [NBit] Profile 2 - Course Flags
//          Bit0=Candy Land Unlocked
// $09BD69: [29 bytes] this whole thing is clothes flags somehow LOL
// $09BD6D: [8bit] Profile 2 - Total Number of Clothes from Store
//          0x18=All Bought
// $09BDA7: [8bit] Profile 2 - Total Nameplates Bought
//          0x48= Max
// $09BDF0: [NBit] Profile 2 - Golf Ball Flags
//          Bit0=White Golf Ball
//          Bit1=Black Golf Ball
//          Bit2=Brown Golf Ball
//          Bit3=Yellow Golf Ball
// $09BDF8: [32bit] Profile 2 Coins
// $09BDFC: [NBit] Profile 2 - Award Flags
//          Bit0=Fairytale Kingdom Badge
//          Bit1=Fairytale Kingdom Star
//          Bit2=Adventure Park Badge
//          Bit3=Adventure Park Star
//          Bit4=Rainbow City Badge
//          Bit5=Rainbow City Star
//          Bit6=Candy Land Badge
//          Bit7=Candy Lane Star
// $09BDFD: [NBit] Profile 2 Award Flags
//          Bit0=Ace Shooter
//          Bit1=B for Bogey
//          Bit2=Minigolf Designer
//          Bit3=Gummy Bear King
//          Bit4=Hole in One!
//          Bit5=Hotshot
//          Bit6=On Par!
//          Bit7=Par for the course!
// $09BDFE: [NBit] Profile 2 - Award Flags
//          Bit0=Stay on the grass!
//          Bit1=Swimming Badge
//          Bit2=Top of the Class
//          Bit3=To the Max
// $09BE56: [5 bytes] ASCII Profile 2 Name?
//Save protection functions
function load_protection() => prev(bit5(0x09bc6d)) == 1 //Fairytale defaults to unlocked, as it's the first course in the game.
function profile_switch_protection() => profile_index() == prev(profile_index()) // Protects against switching save slots.
function save_protection() => load_protection() && profile_switch_protection()
//DEFINE PROFILE 1 VALUES IN ORDER TO CREATE ACCESORS ACROSS PROFILES.
// $09BC6D: [NBit] Profile 1 - Course Flags
//          Bit5=Fairytale
//          Bit6=Adventure Park Unlock
//          Bit7=Rainbow City
course_bank_one = 0x09bc6d
// $09BC6E: [NBit] Profile 1 - Course Flags
//          Bit0=Candy Land Unlocked
course_bank_two = 0x09bc6e
// $09BC75: [8bit] Profile 1 - Total Number of Clothes from Store
//          0x18=All Bought
hats = 0x09bc75
// $09BCAF: [8bit] Profile 1 - Total Nameplates Bought
//          0x48= Max
nameplates = 0x09bcaf
// $09BCF8: [NBit] Profile 1 - Golf Ball Flags
//          Bit0=White Golf Ball
//          Bit1=Black Golf Ball
//          Bit2=Brown Golf Ball
//          Bit3=Yellow Golf Ball
balls = 0x09bcf8
// $09BD00: [32bit] Profile 1 Coins
coins = 0x09bd00
// $09BD04: [NBit] Profile 1 - Award Flags
//          Bit0=Fairytale Kingdom Badge
//          Bit1=Fairytale Kingdom Star
//          Bit2=Adventure Park Badge
//          Bit3=Adventure Park Star
//          Bit4=Rainbow City Badge
//          Bit5=Rainbow City Star
//          Bit6=Candy Land Badge
//          Bit7=Candy Lane Star
awards_bank_one = 0x09bd04
// $09BD05: [NBit] Profile 1 Award Flags
//          Bit0=Ace Shooter
//          Bit1=B for Bogey
//          Bit2=Minigolf Designer
//          Bit3=Gummy Bear King
//          Bit4=Hole in One!
//          Bit5=Hotshot
//          Bit6=On Par!
//          Bit7=Par for the course!
awards_bank_two = 0x09bd05
// $09BD06: [NBit] Profile 1 - Award Flags
//          Bit0=Stay on the grass!
//          Bit1=Swimming Badge
//          Bit2=Top of the Class
//          Bit3=To the Max
awards_bank_three = 0x09bd06
//Define offset between profiles to create a pointer:
// $099A54: [32bit] Profile Index
function profile_index() => dword(0x099a54)
function profile_offset() => profile_index() * 0xF8
achievement(
    "A Gummy Park Adventure!",
    "Unlock the Adventure Park course",
    points=5,
    trigger=    
        save_protection() &&
        bit6(profile_offset() + course_bank_one) > prev(bit6(profile_offset() + course_bank_one))
)
achievement(
    "A Rainbow Adventure!",
    "Unlock the Rainbow City course",
    points=5,
    trigger=
        save_protection() &&
        bit7(profile_offset() + course_bank_one) > prev(bit7(profile_offset() + course_bank_one))
)
achievement(
    "Visiting the Land of Candy!",
    "Unlock the Candy Land course",
    points=5,
    trigger=
        save_protection() &&
        bit0(profile_offset() + course_bank_two) > prev(bit0(profile_offset() + course_bank_two))
)
function golf_ball_sum() =>
    bit0(profile_offset() + balls) +
    bit1(profile_offset() + balls) +
    bit2(profile_offset() + balls) +
    bit3(profile_offset() + balls)
achievement(
    "Many Balls, Many Choices",
    "Buy all the Golf Balls from the shop!",
    points=2,
    trigger=
        save_protection() &&
        prev(golf_ball_sum()) == 3 &&
        measured(golf_ball_sum() == 4)
)
achievement(
    "A Gummy of Many Hats",
    "Buy all of the Hats in the Shop!",
    points=3,
    trigger=
        save_protection() && 
        prev(byte(profile_offset() + hats)) == 0x17 &&
        measured(byte(profile_offset() + hats) == 0x18)
)
achievement(
    "Halfway Decorative",
    "Buy 50% of the nameplates available in the shop!",
    points=5,
    trigger=
        save_protection() &&
        prev(byte(profile_offset() + nameplates)) == 0x23 &&
        measured(byte(profile_offset() + nameplates) == 0x24)
)
achievement(
    "Fully Fashionable",
    "Buy all of the nameplates available in the shop!",
    points=10,
    trigger=
        save_protection() &&
        prev(byte(profile_offset() + nameplates)) == 0x47 &&
        measured(byte(profile_offset() + nameplates) == 0x48)
)
function award(title, addr) {
    achievement(
        title,
        "Unlock this award!",
        points=2,
        trigger=
            save_protection() &&
            addr > prev(addr)
    )
}
award("Fairytale Kingdom Badge", bit0(profile_offset() + awards_bank_one))
award("Fairytale Kingdom Star", bit1(profile_offset() + awards_bank_one))
award("Adventure Park Badge", bit2(profile_offset() + awards_bank_one))
award("Adventure Park Star", bit3(profile_offset() + awards_bank_one))
award("Rainbow City Badge", bit4(profile_offset() + awards_bank_one))
award("Rainbow City Star", bit5(profile_offset() + awards_bank_one))
award("Candy Land Badge", bit6(profile_offset() + awards_bank_one))
award("Candy Lane Star", bit7(profile_offset() + awards_bank_one))
award("Ace Shooter", bit0(profile_offset() + awards_bank_two))
award("B for Bogey", bit1(profile_offset() + awards_bank_two))
award("Minigolf Designer", bit2(profile_offset() + awards_bank_two))
award("Gummy Bear King", bit3(profile_offset() + awards_bank_two))
award("Hole in One!", bit4(profile_offset() + awards_bank_two))
award("Hotshot", bit5(profile_offset() + awards_bank_two))
award("On Par!", bit6(profile_offset() + awards_bank_two))
award("Par for the course!", bit7(profile_offset() + awards_bank_two))
award("Stay on the grass!", bit0(profile_offset() + awards_bank_three))
award("Swimming Badge", bit1(profile_offset() + awards_bank_three))
award("Top of the Class", bit2(profile_offset() + awards_bank_three))
award("To the Max", bit3(profile_offset() + awards_bank_three))
//RICH PRESENCE
// $099694: [32bit] Mode
//          0x00=Single Player
//          0x01=Multiplayer
function single_player_mode() => dword(0x099694) == 0x0
// $08F7B8: [32bit] In-Game Flag
//          0x00=No
//          0x01=Yes
function in_game() => dword(0x08f7b8) == 1
// $099664: [32bit] Current Hole
//          Number in Game = val + 1
function current_hole() => dword(0x099664)
// $099668: [32bit] Current Course
//          0x00=Fairytale
//          0x01=Adventure Park
//          0x02=Rainbow City
//          0x03=Candy Land
function current_course() => dword(0x099668)
rp_courses = {
    0:"Fairytale",
    1:"Adventure Park",
    2:"Rainbow City",
    3:"Candy Land"
}
rich_presence_conditional_display(single_player_mode() && in_game(), "Gummy Golfin' in {0} on Hole {1}",
    rich_presence_lookup("Course", current_course(), rp_courses),
    rich_presence_macro("Number", current_hole() + 1)
)
rich_presence_display("In Menu")




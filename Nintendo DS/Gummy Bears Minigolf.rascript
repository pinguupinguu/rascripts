// Gummy Bears Minigolf
// #ID = 24131

// $08F7B8: [32bit] In-Game Flag
//          0x00=No
//          0x01=Yes
// $0992B8: [32bit] Hole One - Current Number of Shots
// $0992BC: [32bit] Hole 2 Shots
// $0992C0: [32bit] Hole 3 Shots
// $099664: [32bit] Current Hole
//          Number in Game = val + 1
// $099668: [32bit] Current Course
//          0x00=Fairytale
//          0x01=Adventure Park
//          0x02=Rainbow City
//          0x03=Candy Land
// $099694: [32bit] Mode
//          0x00=Single Player
//          0x01=Multiplayer
function single_player_mode() => dword(0x099694) == 0x0
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
course_bank_one = 0x09bc6d
// $09BC6D: [NBit] Profile 1 - Course Flags
//          Bit5=Fairytale
//          Bit6=Adventure Park Unlock
//          Bit7=Rainbow City
course_bank_two = 0x09bc6e
// $09BC6E: [NBit] Profile 1 - Course Flags
//          Bit0=Candy Land Unlocked
clothes = 0x09bc75
// $09BC75: [8bit] Profile 1 - Total Number of Clothes from Store
//          0x18=All Bought
nameplates = 0x09bcaf
// $09BCAF: [8bit] Profile 1 - Total Nameplates Bought
//          0x48= Max
balls = 0x09bcf8
// $09BCF8: [NBit] Profile 1 - Golf Ball Flags
//          Bit0=White Golf Ball
//          Bit1=Black Golf Ball
//          Bit2=Brown Golf Ball
//          Bit3=Yellow Golf Ball
coins = 0x09bd00
// $09BD00: [32bit] Profile 1 Coins
awards_bank_one = 0x09bd04
// $09BD04: [NBit] Profile 1 - Award Flags
//          Bit0=Fairytale Kingdom Badge
//          Bit1=Fairytale Kingdom Star
//          Bit2=Adventure Park Badge
//          Bit3=Adventure Park Star
//          Bit4=Rainbow City Badge
//          Bit5=Rainbow City Star
//          Bit6=Candy Land Badge
//          Bit7=Candy Lane Star
awards_bank_two = 0x09bd05
// $09BD05: [NBit] Profile 1 Award Flags
//          Bit0=Ace Shooter
//          Bit1=B for Bogey
//          Bit2=Minigolf Designer
//          Bit3=Gummy Bear King
//          Bit4=Hole in One!
//          Bit5=Hotshot
//          Bit6=On Par!
//          Bit7=Par for the course!
awards_bank_three = 0x09bd06 
// $09BD06: [NBit] Profile 1 - Award Flags
//          Bit0=Stay on the grass!
//          Bit1=Swimming Badge
//          Bit2=Top of the Class
//          Bit3=To the Max
//Define offset between profiles to create a pointer:
// $099A54: [32bit] Profile Index
function profile_index() => dword(0x099a54)
function profile_offset() => profile_index() * 0xF8
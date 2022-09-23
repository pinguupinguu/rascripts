// SpongeBob SquarePants: The Movie
// #ID = 19018
// $636FA7: bit1=SpongeBob Caveman
//          
//          bit3=Goofy Goober Patrick
//          bit4=Patrick Caveman
// $636FB0: [32bit] Menu Address
//          0x00=Booting
//          0x01=Splash Screens
//          0x02=Title Screen
//          0x04=Selecting a Game
//          0x07=Paused
//          0x0c=Unpaused (In Game)
// $636FC4: [32bit] Player Can do Damage
//          0x00=No
//          0x01=Yes
function player_active() => dword(0x636fc4)
function menu_address() => dword(0x636fb0)
in_game = 0xc
menu_rp = {
    0x00:"Booting...",
    0x01:"Viewing Intro Screens...",
    0x02:"On the Title Screen",
    0x04:"Selecting a Game"
}
// $637828: [32bit] Level Selected on Menu
//          0x00=No Cheese!
//          0x01=I'm Ready Depression
//          0x02=Sandwich Driving 101
//          0x03=Three... Thousand Miles to Shell City
//          0x04=Rub a Dub Dub, Slip Slide in the Tub
//          0x05=Bubble Blowing Baby Hunt
//          0x06=No Weenie Parking Anytime
//          0x07=I'll Let You Pet Mr. Whiskers
//          0x08=Rock Slide
//          0x09=Now That We're Men....
//          0x0a=Shell City, Dead Ahead
//          0x0b=Name's Dennis....
//          0x0d=Sundae Driving
//          0x0e=Google-Eyes and Smelly Knick Knacks
//          0x0f=Dennis Strikes Back!
//          0x10=Welcome to Planktopolis....Minions
//          0x11=Drive of the Knucklehead-Mcspazitron
//          0x12=Turn the Tables on Plankton
// $668BA8: [Pointer] "Good Region" - Bubble Blowing Baby Hunt Float Value
//          + 0x10
//          ++ 0x4bc = [Float] ID = 6.0
// $668BB0: [Pointer] "Good Region" - Three Thousand Miles Float Value
//          + 0x10
//          ++ 0x4bc = [Float] ID = 4.0
// $668BB8: [Pointer] "Good Region" - No Cheese! Float Value
//          + 0x10
//          ++ 0x4bc = [Float] ID = 1.0
// $68518C: [32bit] Driving Levels - Nitro Count
// $6A15F3: [32bit BE] ASCII Patrick Model [1]
//          
//          "PLP0" (0x504c5030) - Patrick DEPRICATED - DON'T USE
//          "PLP1" (0x504c5031) - Patrick Manager Dream
//          "PLP2" (0x504c5032) - Patrick Goober Hungover
//          "PLP3" (0x504c5033) - Patrick 'NORMAL' - USED IN SEVERAL LEVELS
//          "PLP4" (0x504c5034) - Patrick Tuff Tug
//          "PLP5" (0x504c5035) - Patrick Trench Moustache
//          "PLP6" (0x504c5036) - Patrick Goober Dream
//          "PLP7" (0x504c5037) - Patrick Neptune Boss
// $6A1EEB: [32bit BE] ASCII Spongebob Model [1]
//          
//          "PLS0" (0x504c5330) - Spongebob DEPRICATED - DON'T USE
//          "PLS1" (0x504c5331) - Spongebob Manager Dream
//          "PLS2" (0x504c5332) - Spongebob Goober Hungover
//          "PLS3" (0x504c5333) - Spongebob 'NORMAL' - USED IN SEVERAL LEVELS
//          "PLS4" (0x504c5334) - Spongebob Tuff Tug
//          "PLS5" (0x504c5335) - Spongebob Trench Moustache
//          "PLS6" (0x504c5336) - Spongebob Goober Dream
//          "PLS7" (0x504c5337) - Spongebob Neptune Boss
// $6A2868: [Pointer] Game Menu Function - "E Region"
//          Can share a different final offset depending on the level.
//          + 0xdd0 + 0x24 + 0x11c = [Float] 1.0 - No Cheese!
//          + 0xdd4 + 0x24 + 0x11c = [Float] 2.0
//          + 0xdd8 + 0x24 + 0x4bc = [Float] 4.0 - Three Thousand Miles to Shell City
//          + 0xddc + 0x24 + 0x4dc = [Float] 5.0
//          + 0xde0 + 0x24 + 0x4bc = [Float] 6.0
//          + 0xde4 + 0x24 + 0x4dc = [Float] 7.0
//          + 0xde8 + 0x24 + 0x4bc = [Float] 8.0
//          + 0xdf0 + 0x24 + 0x4bc = [Float] 10.0
//          + 0xdf4 + 0x24 + 0x4dc = [Float] 11.0
//          + 0xdf8 + 0x24 + 0x4dc = [Float] 12.0
//          + 0xdfc + 0x24 + 0x4bc = [Float] 13.0
//          + 0xe00 + 0x24 + 0x4bc = [Float] 14.0
//          + 0xe04 + 0x24 + 0x4bc = [Float] 15.0
//          + 0xe08 + 0x24 + 0x4bc = [Float] 16.0
//          + 0xe0c + 0x24 + 0x4bc = [Float] 17.0 - Welcome to Planktopolis... Minions
//          + 0xe10 + 0x24 + 0x49c = [Float] 18.0
//          + 0xe14 + 0x24 + 0x43c = [Float] 19.0
// $6BA674: [Pointer] Loading Level Text String
// $7A9103: [32bit BE] ASCII Level ID
//          "MNUS" (0x4d4e5553) - In Menu
//          ================================
//          MAIN IDs:
//          "BB02" (0x42423032) - No Cheese!
//          "BB03" (0x42423033) - I'm Ready... Depression
//          "BB01" (0x42423031) - Sandwich Driving 101
//          "DE01" (0x44453031) - Three Thousand Miles to Shell City
//          "DE02" (0x44453032) - Rub A Dub Dub Slip Slide in the Tub
//          "TT01" (0x54543031) - Bubble Blowing Baby Hunt
//          "TT02" (0x54543032) - No Weenie Parking Anytime
//          "B101" (0x42313031) - I'll Let You Pet Mr. Whiskers
//          "TR01" (0x54523031) - Rock Slide
//          "TR02" (0x54523032) - Now That We're Men
//          "JK01" (0x4a4b3031) - Shell City Dead Ahead
//          "B201" (0x42323031) - Name's Dennis...
//          "GG02" (0x47473032) - Sundae Driving
//          "SC02" (0x53433032) - Google-Eyes and Smelly Knick Knacks
//          "B301" (0x42333031) - Dennis Strikes Back!
//          "PT01" (0x50543031) - Welcome to Planktopolis... Minions
//          "PT02" (0x50543032) - Drive of the Knucklehead-McSpazitron
//          "B401" (0x42343031) - Turn the Tables on Plankton
//          ================================
//          COMBAT ARENAS:
//          "AM01" (0x414d3031) - I'm Ready... Depression [Combat Arena]
//          "AM02" (0x414d3032) - Bubble Blowing Baby Hunt [Combat Arena]
//          "AM03" (0x414d3033) - Now That We're Men [Combat Arena]
//          "AM04" (0x414d3034) - Welcome to Planktopolis... Minions [Combat Arena]
//          ================================
//          SPONGEBALL CHALLENGES:
//          "BL01" (0x424c3031) - Three Thousand Miles to Shell City [Spongeball Challenge]
//          "BL02" (0x424c3032) - Bubble Blowing Baby Hunt [Spongeball Challenge]
//          "BL03" (0x424c3033) - Shell City Dead Ahead [Spongeball Challenge]
//          "BL04" (0x424c3034) - Welcome to Planktopolis... Minions [Spongeball Challenge]
//          ================================
//          FLOATING BLOCKS:
//          "FB01" (0x46423031) - Three Thousand Miles to Shell City [Floating Block Challenge]
//          "FB02" (0x46423032) - Now That We're Men [Floating Block Challenge]
//          "FB03" (0x46423033) - Shell City Dead Ahead [Floating Block Challenge]
function level_string() => dword_be(0x7a9103)
// $6D331C: [32bit] Game Pointer
function game_pointer() => dword(0x6d331c) 
//          +token_pointer = First Goofy token pointer (No Cheese!)
token_pointer = 0x318 
//          +0x474 = Timer Pointer for Floating Block & Slide/Driving Levels
//          ++ 0x10 = [32bit] Time Trial Timer Active (0=No, 1=Yes)
//          ++ 0x14 = [Float] Time Trial Timer (Also Timer for Floating Block Levels)
//          ++ 0x1c = [Float] Max Time Offset
function floating_block_timer_active() => dword(dword(game_pointer() + 0x474)  + 0x10)
function floating_block_timer() => float(dword(game_pointer() + 0x474)  + 0x14)
function floating_block_max_time() => float(dword(game_pointer() + 0x474)  + 0x1c)
//          ++ 0x50 = [Float] Macho Time Trial Timer
function macho_active() => dword(dword(game_pointer() + 0x474)  + 0x4c)
function macho_timer() => float(dword(game_pointer() + 0x474)  + 0x50)
//          ++ 0x88 = [32bit] Personal Record Timer Active (0=No, 1=Yes)
function personal_record_active() => dword(dword(game_pointer() + 0x474)  + 0x88)
//          ++ 0x8c = [Float] Personal Record Timer
function personal_record_timer() => float(dword(game_pointer() + 0x474)  + 0x8c)
//          ================================
//          BUNGEE Challenge:
//          + 0x318 - Token Pointer
//          Planktopolis...Minions:n
//          ++ 0xe24 = [16bit] Number of Targets Left
function pnk_bungee_target_count() => word(dword(game_pointer() + token_pointer) + 0xe24)
//          ++ 0xe26 = [16bit] Challenge Clear (0=No, 1=Yes)
function pnk_bungee_challenge_clear() => word(dword(game_pointer() + token_pointer) + 0xe26)
//          ================================           
//          COMBAT ARENA:
//          ++ 0xddc = [16bit] Combat Arena - Round 1 Enemy Count
function arena_roundone_enemy_count() => word(dword(game_pointer() + token_pointer) + 0xddc)
//          ++ 0xdce = [16bit] Combat Arena - Round 1 IsClear (0=No, 1=Yes)
function arena_roundone_clear() => word(dword(game_pointer() + token_pointer) + 0xdde)
//          ++ 0xdf4 = [16bit] Combat Arena - Round 2 Enemy Count
function arena_roundtwo_enemy_count() => word(dword(game_pointer() + token_pointer) + 0xdf4)
//          ++ 0xdf6 = [16bit] Combat Arena - Round 2 IsClear (0=No, 1=Yes)
function arena_roundtwo_clear() => word(dword(game_pointer() + token_pointer) + 0xdf6)
//          ++ 0xe0c = [16bit] Combat Arena - Round 3 Enemy Count
function arena_roundthree_enemy_count() => word(dword(game_pointer() + token_pointer) + 0xe0c)
//          ++ 0xe0e = [16bit] Combat Arena - Round 3 ISClear (0=No, 1=Yes)
function arena_roundthree_clear() => word(dword(game_pointer() + token_pointer) + 0xe0e)
//
level_strings = {
//======================MAIN========================
    "No Cheese":0x42423032,
    "I'm Ready... Depression":0x42423033,
    "Sandwich Driving 101":0x42423031,
    "Three Thousand Miles":0x44453031,
    "Rub A Dub Dub":0x44453032,
    "Bubble Blowing Baby Hunt":0x54543031,
    "No Weenie Parking Anytime":0x54543032,
    "Mr. Whiskers":0x42313031,
    "Rock Slide":0x54523031,
    "Now That We're Men":0x54523032,
    "Shell City Dead Ahead":0x4a4b3031,
    "Name's Dennis...":0x42323031,
    "Sundae Driving":0x47473032,
    "Google-Eyes":0x53433032,
    "Dennis Strikes Back!":0x42333031,
    "Planktopolis":0x50543031,
    "Drive of the Knucklehead":0x50543032,
    "Turn the Tables":0x42343031,
//================COMBAT ARENAS===================== 
    "Depression Arena":0x414d3031,
    "Baby Hunt Arena":0x414d3032,
    "Men Arena":0x414d3033,
    "Planktopolis Arena":0x414d3034,
//================SPONGEBALL========================     
    "Three Thousand Ball":0x424c3031,
    "Baby Hunt Ball":0x424c3032,
    "Shell City Ball":0x424c3033,
    "Planktopolis Ball":0x424c3034,
//================FLOATING BLOCK====================
    "Three Thousand FB":0x46423031,
    "Men FB":0x46423032,
    "Shell City FB":0x46423033
}
// $7ABBF9: [8bit] Upgrade (Spongebob) - Karate Spin (Max = 2)
// $7ABBFA: [8bit] Upgrade (Spongebob) - Bash (Max = 2)
// $7ABBFB: [8bit] Upgrade (Spongebob) - Spongebowl (Max = 2)
// $7ABBFC: [8bit] Upgrade (Spongebob) - Sonic Wave (Max = 2)
function upgrade_check() => all_of(range(0x7abbf9, 0x7abbfc), b => never(byte(b) != 1))
function cheat_block() => byte(0x7abbfc) == 0
// $7ABBFD: [8bit] Upgrade (Patrick) - Star Spin (Max = 2)
// $7ABBFE: [8bit] Upgrade (Patrick) - Cartwheel (Max = 2)
// $7ABBFF: [8bit] Upgrade (Patrick) - Head Smash (Max = 2)
// $7ABC00: [8bit] Upgrade (Patrick) - Throw (Max = 2)
function token_cheevo(ascii_id, token_offset) =>
    menu_address() == in_game &&
    game_pointer() == prev(game_pointer()) &&
    //level_string() == ascii_id &&
    prev(dword(dword(game_pointer() + token_pointer) + token_offset)) == 2 &&
    dword(dword(game_pointer() + token_pointer) + token_offset) == 3          
//          Goofy Goober Tokens
//          ================================
//          
//          Token Offsets:
//          ++0x14 = No Cheese!
default_token_description = "Earn the Goofy Goober token!"
achievement(
    "You Got a Family, Phil?",
    "Earn the No Cheese! Goofy Goober token",
    points=5,
    trigger=
        token_cheevo(level_strings["No Cheese"], 0x14) &&
        cheat_block()
)
//          ================================
//          I'm Ready Depression:
//          ++0x8c = Main
achievement(
    "Sponge on a Wire",
    "Earn the main Goofy Goober token in I'm Ready... Depression",
    points=5,
    trigger=
        token_cheevo(level_strings["I'm Ready... Depression"], 0x8c) &&
        cheat_block()
)
//          ++0xa4 = An Ounce of Bounce
achievement(
    "An Ounce of Bounce",
    default_token_description,
    points=2,
    trigger=
        token_cheevo(level_strings["I'm Ready... Depression"], 0xa4)
)
//          ++0xbc = Up Chocolate Creek
achievement(
    "Up Chocolate Creek",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["I'm Ready... Depression"], 0xbc)
)
//          ++0xd4 = Sonic Wave
achievement(
    "I'm Ready... Depression: Sonic Wave Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["I'm Ready... Depression"], 0xd4)
)
//          ++0xec = Combat Arena
achievement(
    "I'm Ready... Depression: Combat Arena",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Depression Arena"], 0xec)
)
//          ================================
//          Sandwich Driving 101:
//          ++0x104 = Main
achievement(
    "Escape from Bikini Bottom",
    "Earn the main Goofy Goober token in Sandwich Driving 101",
    points=5,
    trigger=
        token_cheevo(level_strings["Sandwich Driving 101"], 0x104) &&
        cheat_block()
)
//          ++0x11c = Time Trial
achievement(
    "Sandwich Driving 101: Time Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Sandwich Driving 101"], 0x11c)
)
//          ++0x134 = Ring
achievement(
    "Sandwich Driving 101: Ring Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Sandwich Driving 101"], 0x134)  
)
//          ++0x14c = Macho Time Trial
achievement(
    "Sandwich Driving 101: Macho Time Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Sandwich Driving 101"], 0x14c)
)
//          ================================
//          Three Thousand Miles:
//          ++0x17c = Main
achievement(
    "Topple a Trio of Towers",
    "Earn the main Goofy Goober token in Three... Thousand Miles to Shell City",
    points=5,
    trigger=
        token_cheevo(level_strings["Three Thousand Miles"], 0x17c) &&
        cheat_block()
)
//          ++0x194 = Bouncy, Bouncy, Bouncy
achievement(
    "Bouncy, Bouncy, Bouncy",
    default_token_description,
    points=2,
    trigger=
        token_cheevo(level_strings["Three Thousand Miles"], 0x194)
)
//          ++0x1ac = Patrick Gets Steamed
achievement(
    "Patrick Gets Steamed",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Three Thousand Miles"], 0x1ac) 
)
//          ++ 0x1c4 = Floating Block
achievement(
    "Three... Thousand Miles: Floating Block Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Three Thousand FB"], 0x1c4)
)
//          ++ 0x1dc = Bungee Challenge
achievement(
    "Three... Thousand Miles: Bungee Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Three Thousand Miles"], 0x1dc)
)
//          ++ 0x95c = Spongeball Challenge
achievement(
    "Three... Thousand Miles: Spongeball Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Three Thousand Ball"], 0x95c)
)
//          ================================
//          Rub A Dub Dub, Slip Slide in the Tub
//          ++ 0x1f4 = Main
achievement(
    "Plankton's Towers: Part Deux",
    "Earn the main Goofy Goober token in Rub a Dub Dub",
    points=5,
    trigger=
        token_cheevo(level_strings["Rub A Dub Dub"], 0x1f4) &&
        cheat_block()
)
//          ++ 0x20c = Time Challenge
achievement(
    "Rub a Dub Dub: Time Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Rub A Dub Dub"], 0x20c)
)
//          ++ 0x224 = Ring Challenge
achievement(
    "Rub a Dub Dub: Ring Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Rub A Dub Dub"], 0x224)
)
//          ++ 0x23c = Macho Time Challenge
achievement(
    "Rub a Dub Dub: Macho Time Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Rub A Dub Dub"], 0x23c)
)
//          ================================
//          Bubble Blowing Baby Hunt
//          ++ 0x26c = Main
achievement(
    "The Key Ingredient",
    "Earn the main Goofy Goober token in Bubble Blowing Baby Hunt",
    points=5,
    trigger=
        token_cheevo(level_strings["Bubble Blowing Baby Hunt"], 0x26c) &&
        cheat_block()
)
//          ++ 0x284 = Disco Star
achievement(
    "Disco Star",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Bubble Blowing Baby Hunt"], 0x284)
)
//          ++ 0x29c = Throwing the Fruit Electric
achievement(
    "Throwing the Fruit Electric",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Bubble Blowing Baby Hunt"], 0x29c)
)
//          ++ 0x2b4 = Sonic Wave
achievement(
    "Bubble Blowing Baby Hunt: Sonic Wave Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Bubble Blowing Baby Hunt"], 0x2b4)
)
//          ++ 0x2cc = Spongeball Challenge
achievement(
    "Bubble Blowing Baby Hunt: Spongeball Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Baby Hunt Ball"], 0x2cc)
)
//          ++ 0x98c = Combat Arena Challenge
achievement(
    "Bubble Blowing Baby Hunt: Combat Arena",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Baby Hunt Arena"], 0x98c)
)
//          ================================
//          No Weenie Parking Anytime
//          ++ 0x2e4 = Main
achievement(
    "Now, How Do We Get Out of Here?",
    "Earn the main Goofy Goober token in No Weenie Parking Anytime",
    points=5,
    trigger=
        token_cheevo(level_strings["No Weenie Parking Anytime"], 0x2e4) &&
        cheat_block()
)
//          ++ 0x2fc = Time Challenge
achievement(
    "No Weenie Parking Anytime: Time Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["No Weenie Parking Anytime"], 0x2fc)
)
//          ++ 0x314 = Ring Challenge
achievement(
    "No Weenie Parking Anytime: Ring Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["No Weenie Parking Anytime"], 0x314) 
)
//          ++ 0x32c = Macho Time Challenge
achievement(
    "No Weenie Parking Anytime: Macho Time Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["No Weenie Parking Anytime"], 0x32c)
)
//          ================================
//          I'll Let You Pet Mr. Whiskers
//          ++ 0x35c = Main
achievement(
    "Defeat the Frog Fish!",
    "Earn the Goofy Goober token in I'll Let You Pet Mr. Whiskers",
    points=5,
    trigger=
        token_cheevo(level_strings["Mr. Whiskers"], 0x35c) &&
        cheat_block()
)
//          ================================
//          Rock Slide
//          ++ 0x3d4 = Main
achievement(
    "Getting to the Bottom of Things",
    "Earn the main Goofy Goober token in Rock Slide",
    points=5,
    trigger=
        token_cheevo(level_strings["Rock Slide"], 0x3d4) &&
        cheat_block()
)
//          ++ 0x3ec = Time Challenge
achievement(
    "Rock Slide: Time Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Rock Slide"], 0x3ec)
)
//          ++ 0x404 = Ring Challenge
achievement(
    "Rock Slide: Ring Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Rock Slide"], 0x404)
)
//          ++ 0x41c = Macho Time Challenge
achievement(
    "Rock Slide: Macho Time Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Rock Slide"], 0x41c)
)
//          ================================
//          Now That We're Men...
//          ++ 0x44c = Main
achievement(
    "Here Monster... Nice Monster",
    "Earn the main Goofy Goober token in Now That We're Men",
    points=5,
    trigger=
        token_cheevo(level_strings["Now That We're Men"], 0x44c) &&
        cheat_block()
)
//          ++ 0x464 = Frozen Lava Desert
achievement(
    "Frozen Lava Desert",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Now That We're Men"], 0x464)
)
//          ++ 0x47c = Swinging Starfish
achievement(
    "Swinging Starfish",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Now That We're Men"], 0x47c)
)
//          ++ 0x494 = Floating Block
achievement(
    "Now That We're Men: Floating Block Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Men FB"], 0x494)
)
//          ++ 0x4ac = Bungee Challenge
achievement(
    "Now That We're Men: Bungee Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Now That We're Men"], 0x4ac)
)
//          ++ 0x9ec = Combat Arena Challenge
achievement(
    "Now That We're Men: Combat Arena",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Men Arena"], 0x9ec)
)
//          ================================
//          Shell City, Dead Ahead
//          ++0x4c4 = Main - Boob Tube Smashing Boob
achievement(
    "Boob Tube Smashing Boob",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Shell City Dead Ahead"], 0x4c4)
)
//          ++ 0x4dc = Cirque Du Malaise
achievement(
    "Cirque Du Malaise",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Shell City Dead Ahead"], 0x4dc)
)
//          ++ 0x4f4 = Three Meter Island
achievement(
    "Three Meter Island",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Shell City Dead Ahead"], 0x4f4)
)
//          ++ 0x50c = Sonic Wave
achievement(
    "Shell City Dead Ahead: Sonic Wave Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Shell City Dead Ahead"], 0x50c)
)
//          ++ 0x524 = Floating Block
achievement(
    "Shell City Dead Ahead: Floating Block Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Shell City FB"], 0x524)
)
//          ++ 0xa04 = Spongeball Challenge
achievement(
    "Shell City Dead Ahead: Spongeball Challenge",
    default_token_description, 
    points=5,
    trigger=
        token_cheevo(level_strings["Shell City Ball"], 0xa04)
)
//          ================================
//          Name's Dennis
//          ++0x53c = Main - Defeat Dennis
achievement(
    "Name's Dennis...",
    "Defeat Dennis and earn the Goofy Goober token!",
    points=5,
    trigger=
        token_cheevo(level_strings["Name's Dennis..."], 0x53c) &&
        cheat_block()
)
//          ================================
//          Sundae Driving:
//          ++ 0x62c = Main - Follow That Peanut!
achievement(
    "Follow That Peanut!",
    "Earn the main Goofy Goober in Sundae Driving!",
    points=5,
    trigger=
        token_cheevo(level_strings["Sundae Driving"], 0x62c) &&
        cheat_block()
)
//          ++ 0x644 = Time Challenge
achievement(
    "Sundae Driving: Time Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Sundae Driving"], 0x644)
)
//          ++ 0x65c = Ring Challenge
achievement(
    "Sundae Driving: Ring Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Sundae Driving"], 0x65c)
)
//          ++ 0x674 = Macho Time Challenge
achievement(
    "Sundae Driving: Macho Time Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Sundae Driving"], 0x674)
)
//          ================================
//          Google-Eyes and Smelly Knick Knacks
//          ++ 0x6a4 = Main - Escape the Shell City Cyclops
achievement(
    "Escape the Shell City Cyclops!",
    "Earn the main Goofy Goober token in Google-Eyes and Smelly Knick Knacks",
    points=5,
    trigger=
        token_cheevo(level_strings["Google-Eyes"], 0x6a4) &&
        cheat_block()
)
//          ++ 0x6bc = Time Challenge
achievement(
    "Google-Eyes and Smelly Knick Knacks: Time Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Google-Eyes"], 0x6bc)
)
//          ++ 0x6d4 = Ring Challenge
achievement(
    "Google-Eyes and Smelly Knick Knacks: Ring Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Google-Eyes"], 0x6d4)
)
//          ++ 0x6ec = Macho Time Challenge
achievement(
    "Google-Eyes and Smelly Knick Knacks: Macho Time Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Google-Eyes"], 0x6ec)
)
//          ================================
//          Dennis Strikes Back!:
//          ++ 0x71c = Main - Defeat Denis...Again
achievement(
    "Dennis Strikes Back!",
    "Defeat Dennis... again and earn the Goofy Goober Token!",
    points=5,
    trigger=
        token_cheevo(level_strings["Dennis Strikes Back!"], 0x71c)
)
//          ================================
//          Welcome to Planktopolis... Minions
//          ++ 0x794 = Main - Monument-Al Destruction
achievement(
    "Monument-Al Destruction",
    "Earn the main Goofy Goober Token in Welcome to Planktopolis... Minions",
    points=5,
    trigger=
        token_cheevo(level_strings["Planktopolis"], 0x794)
)
//          ++ 0x7ac = More Bounce Please
achievement(
    "More Bounce Please",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Planktopolis"], 0x7ac)
)
//          ++ 0x7c4 = Ice Skating Idiot
achievement(
    "Ice Skating Idiot",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Planktopolis"], 0x7c4)
)
//          ++ 0x7dc = Spongeball Challenge
achievement(
    "Welcome to Planktopolis... Minions: Spongeball Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Planktopolis Ball"], 0x7dc)
)
//          ++ 0x7f4 = Bungee Challenge
achievement(
    "Welcome to Planktopolis... Minions: Bungee Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Planktopolis"], 0x7f4)
)
//          ++ 0xa94 = Combat Arena Challenge
achievement(
    "Welcome to Planktopolis... Minions: Combat Arena",
    default_token_description,
    points=1,
    trigger=
        token_cheevo(level_strings["Planktopolis Arena"], 0xa94)
)
//          ================================
//          Drive of the Knucklehead-Mcspazitron
//          ++ 0x80c = Main - Chaos Ahead, Expect Delays
achievement(
    "Chaos Ahead, Expect Delays",
    "Earn the main Goofy Goober token in Drive of the Knucklehead-Mcspazitron",
    points=5,
    trigger=
        token_cheevo(level_strings["Drive of the Knucklehead"], 0x80c)
)
//          ++ 0x824 = Time Challenge
achievement(
    "Drive of the Knucklehead-Mcspazitron: Time Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Drive of the Knucklehead"], 0x824)
)
//          ++ 0x83c = Ring Challenge
achievement(
    "Drive of the Knucklehead-Mcspazitron: Ring Challenge",
    default_token_description,
    points=5,
    trigger=
        token_cheevo(level_strings["Drive of the Knucklehead"], 0x83c)
)
//          ++ 0x854 = Macho Time Challenge
achievement(
    "Drive of the Knucklehead-Mcspazitron: Macho Time Challenge",
    default_token_description,
    points=10,
    trigger=
        token_cheevo(level_strings["Drive of the Knucklehead"], 0x854)
)
//          ================================
//          Turn the Tables On Plankton
//          ++ 0x884 = Defeat Buckethead King Neptune
achievement(
    "Turn the Tables on Plankton",
    "Defeat Buckethead King Neptune, Save Mr. Krabs, and win the game!",
    points=25,
    trigger=
        token_cheevo(level_strings["Turn the Tables"], 0x884)
)
// $636FA5: Cheat Bitflags (Do not save)
//          
//          bit0=Unlock 6 health
// $636FA6: bit1=Unlock all moves
//          bit2=Double Manliness Points
//          
//          bit6=Unlock max upgrades
//          bit7=Unlock all tasks
function blazes_favorite_cheat_block() => unless(once(bit0(0x636fa5) > prev(bit0(0x636fa5)) || bit1(0x636fa6) > prev(bit1(0x636fa6)) || bit6(0x636fa6) > prev(bit6(0x636fa6))))
function upgrade_cheevo(upgrade, max) => prev(byte(upgrade)) == max - 1 && byte(upgrade) == max && blazes_favorite_cheat_block() && menu_address() == 0x7 //Paused
// $7ABC01: [8bit] Upgrade (Spongebob) - Health (Max = 3)
achievement(
    "The Secret Formula",
    "Upgrade Spongebob's health to max!",
    points=2,
    trigger=
        upgrade_cheevo(0x7abc01, 3)
)
// $7ABBF9: [8bit] Upgrade (Spongebob) - Karate Spin (Max = 2)
achievement(
    "I Love Kah-Ra-Tay",
    "Upgrade Spongebob's Karate Spin move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abbf9, 2)
)
// $7ABBFA: [8bit] Upgrade (Spongebob) - Bash (Max = 2)
achievement(
    "Do You Want It to Hurt Me, Kevin?",
    "Upgrade Spongebob's Bash move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abbfa, 2)    
)
// $7ABBFB: [8bit] Upgrade (Spongebob) - Spongebowl (Max = 2)
achievement(
    "Ye Olde Bowling Alley",
    "Upgrade Spongebob's Spongebowl move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abbfb, 2)
)
// $7ABBFC: [8bit] Upgrade (Spongebob) - Sonic Wave (Max = 2)
achievement(
    "Hey I'm Zeus, the Guitar Lord!",
    "Upgrade Spongebob's Sonic Wave move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abbfc, 2)
)
// $7ABC02: [8bit] Upgrade (Patrick) - Health (Max = 3)
achievement(
    "No... This is Patrick",
    "Upgrade Patrick's health to the max!",
    points=2,
    trigger=
        upgrade_cheevo(0x7abc02, 3)
)
// $7ABBFD: [8bit] Upgrade (Patrick) - Star Spin (Max = 2)
achievement(
    "Patrick Star Spinning Disco Star",
    "Upgrade Patrick's Star Spin move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abbfd, 2)
)
// $7ABBFE: [8bit] Upgrade (Patrick) - Cartwheel (Max = 2)
achievement(
    "Cartwheel! Smash!",
    "Upgrade Patrick's Cartwheel move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abbfe, 2)
)
// $7ABBFF: [8bit] Upgrade (Patrick) - Head Smash (Max = 2)
achievement(
    "Who You Callin' Pinhead!",
    "Upgrade Patrick's Smash move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abbff, 2)
)
// $7ABC00: [8bit] Upgrade (Patrick) - Throw (Max = 2)
achievement(
    "Watermelon! Throw!",
    "Upgrade Patrick's Throw move to Macho",
    points=2,
    trigger=
        upgrade_cheevo(0x7abc00, 2)
) 
// $7ACFD8: [32bit] Treasure Chest Count
function treasure_chests() => dword(0x7acfd8)
achievement(
    "Half Treasured",
    "Collect 21 Treasure Chests!",
    points=10,
    trigger=
        prev(treasure_chests()) == 20 &&
        treasure_chests() == 21
)
achievement(
    "Crownworthy",
    "Collect all 42 Treasure Chests!",
    points=25,
    trigger=
        prev(treasure_chests()) == 41 &&
        treasure_chests() == 42
)
function floating_block_challenge(level_id, time_goal) =>
        prev(level_string()) == level_id &&
        floating_block_timer() + 1.0 < time_goal &&
        trigger_when(prev(floating_block_timer_active()) != 0 && floating_block_timer_active() == 0) &&
        game_pointer() == prev(game_pointer()) &&
        floating_block_timer() > 0.5
achievement(
    "Air is Not Good...Patrick!",
    "Beat the Floating Block Challenge in Three... Thousand Miles to Shell City in under 1 minute and 30 seconds",
    points=10,
    trigger=
        floating_block_challenge(0x46423031, 90)
)
achievement(
    "Can I Have Everyone's Attention?",
    "Beat the Floating Block Challenge in Shell City Dead Ahead in under 1 minute and 45 seconds",
    points=10,
    trigger=
        floating_block_challenge(0x46423033, 105)
)
function damageless_hit(target_ASCII) => once(prev(level_string()) != target_ASCII && level_string() == target_ASCII)
//Line 174: function bungee_target_count() => word(dword(game_pointer() + token_pointer) + 0xe24)
//Line 175: function bungee_challenge_clear() => word(dword(game_pointer() + token_pointer) + 0xe26)
// $7AC080: [32bit] Spongebob - Krabby Pattie Amount
spongebob_health = 0x7ac080
// $7AC084: [32bit] Spongebob - Max Krabby Pattie Amount
spongebob_health_max = 0x7ac084
// $7ACED4: [32bit] Manliness Points
// $7AC4F0: [32bit] Patrick - Krabby Pattie Amount
 patrick_health = 0x7ac4f0
// $7AC4F4: [32bit] Patrick - Max Krabby Pattie Amount
achievement(
    "Minions and... Bungees?",
    "Complete the Welcome to Planktopolis... Minions Bungee Challenge without being zapped! (Reset Level from Menu)",
    points=25,
    trigger=
        damageless_hit(0x50543031) && // "PT01" (0x50543031) - Welcome to Planktopolis... Minions
        trigger_when(pnk_bungee_target_count() == 0 && pnk_bungee_challenge_clear() > prev(pnk_bungee_challenge_clear())) &&         
        never(dword(spongebob_health) < prev(dword(spongebob_health)))
)
achievement(
    "[m] Don't Pet this Pet!",
    "Defeat Mr. Whiskers without taking damage and earn the Goofy Goober token!",
    points=5,
    trigger=
        damageless_hit(0x42313031) &&  // "B101" (0x42313031) - I'll Let You Pet Mr. Whiskers
        trigger_when(prev(dword(dword(game_pointer() + token_pointer) + 0x35c)) == 2 && dword(dword(game_pointer() + token_pointer) + 0x35c) == 3) &&
        never(dword(patrick_health) < prev(dword(patrick_health)))        
)
achievement(
    "[m] Dennis Can't Kill",
    "Defeat Dennis for the first time without taking damage and earn the Goofy Goober token!",
    points=10,
    trigger=
        damageless_hit(0x42323031) &&
        trigger_when(prev(dword(dword(game_pointer() + token_pointer) + 0x53c)) == 2 && dword(dword(game_pointer() + token_pointer) + 0x53c) == 3) &&
        never(dword(patrick_health) < prev(dword(patrick_health))) 
)
achievement(
    "[m] Dennis Strikes Back for Damageless!",
    "Defeat Dennis for a second time without taking damage and earn the Goofy Goober token!",
    points=10,
    trigger=
        damageless_hit(0x42333031) &&
        trigger_when(prev(dword(dword(game_pointer() + token_pointer) + 0x71c)) == 2 && dword(dword(game_pointer() + token_pointer) + 0x71c) == 3) &&
        never(dword(spongebob_health) < prev(dword(spongebob_health))) 
)
// $7A84EB: [32bit BE] ASCII Patrick Model [2]
// $7A85FF: [32bit BE] ASCII Spongebob Model [2]
achievement(
    "[m] Damaged Bucket Head",
    "Defeat King Neptune without taking damage and earn the Goofy Goober token!",
    points=25,
    trigger=
        damageless_hit(0x42343031) &&
        trigger_when(prev(dword(dword(game_pointer() + token_pointer) + 0x884)) == 2 && dword(dword(game_pointer() + token_pointer) + 0x884) == 3) &&
        never(dword(spongebob_health) < prev(dword(spongebob_health))) 
)
achievement(
    "[m] King of Crowns",
    "Defeat King Neptune without taking damage and Macho-Upgraded moves",
    points=50,
    trigger=
        damageless_hit(0x42343031) &&
        trigger_when(prev(dword(dword(game_pointer() + token_pointer) + 0x884)) == 2 && dword(dword(game_pointer() + token_pointer) + 0x884) == 3) &&
        never(dword(spongebob_health) < prev(dword(spongebob_health)))  &&         
        upgrade_check()
)
function dev_trigger(level, token_offset, goal, timer, timer_active) =>
        level_string() == level &&
        dword(dword(game_pointer() + token_pointer) + token_offset) == 3 &&
        timer < goal &&
        trigger_when(timer_active < prev(timer_active) && timer_active == 0)

achievement(
    "Developer Antics: Sandwich Driving 101",
    "After the Macho Time Trial, beat Heavy Iron's developer time of 2:37!",
    points=50,
    trigger=
        dev_trigger(0x42423031 , 0x14c, 157, floating_block_timer(), floating_block_timer_active())                
)
achievement(
    "Developer Antics: Rub a Dub Dub, Slip Slide in the Tub",
    "After the Macho Time Trial, beat Heavy Iron's developer time of 2:43",
    points=50,
    trigger=
        dev_trigger(0x44453032, 0x23c, 163, personal_record_timer(), personal_record_active())
)
achievement(
    "Developer Antics: No Weenie Parking Anytime",
    "After the Macho Time Trial, beat Heavy Iron's developer time of 2:54",
    points=50,
    trigger=
        dev_trigger(0x54543032, 0x32c, 174, floating_block_timer(), floating_block_timer_active())
)
achievement(
    "Developer Antics: Rock Slide",
    "After the Macho Time Trial, beat Heavy Iron's developer time of 3:33",
    points=100,
    trigger=
        dev_trigger(0x54523031, 0x41c, 213, personal_record_timer(), personal_record_active())
)
achievement(
    "Developer Antics: Sundae Driving",
    "After the Macho Time Trial, beat Heavy Iron's developer time of 3:55",
    points=50,
    trigger=
        dev_trigger(0x47473032, 0x674, 235, macho_timer(), macho_active())
)
achievement(
    "Developer Antics: Google-Eyes and Smelly Knick Knacks",
    "After the Macho Time Trial, beat Heavy Iron's developer time of 1:23",
    points=50,
    trigger=
        dev_trigger(0x53433032, 0x6ec, 83, personal_record_timer(), personal_record_active())
)
achievement(
    "Developer Antics: Drive of the Knucklehead-Mcspazitron",
    "After the Macho Time Trial, beat Heavy Iron's developer time of 2:29!",
    points=50,
    trigger=
        dev_trigger(0x50543032, 0x854, 149, floating_block_timer(), floating_block_timer_active())
)
// $6373FC: [32bit] Character ID
//          
//          0x00 = Spongebob
//          0x01 = Patrick
//          0x02 = Patty Wagon
character_address = 0x6373fc
function driving_character() => dword(0x6373fc)
function character() => dword(character_address)
character_rp = {
    0:"Playing as Spongebob",
    1:"Playing as Patrick",
    2:"Driving the Patty Wagon",
    3:"Slidin' on a Shell"
}
function points() => dword(0x7aced4)
// $7ACEDC: [32bit] Total Goofy Goober Tokens Count
function token_count() => dword(0x7acedc)
rich_presence_conditional_display(menu_address() == 0x7, "Paused")
rich_presence_conditional_display(menu_address() == 0xc && player_active() == 0, "Loading a Level...")
function level_type() => word_be(0x7a9103) //Check first two letters as a conditional for level type. Used for levels with timers v.s. not.
level_arena = {
    0x414d3031:"I'm Ready... Depression Combat Arena",
    0x414d3032:"Bubble Blowing Baby Hunt Combat Arena",
    0x414d3033:"Now That We're Men Combat Arena",
    0x414d3034:"Welcome to Planktopolis... Minions Combat Arena"
}
rich_presence_conditional_display(level_type() == 0x414d && arena_roundone_clear() == 0, "{0} in {1}: Wave 1! 😡 {2} 🍔 {3} 🔩 {4}", //0x414d = "AM"
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("ArenaLevel", level_string(), level_arena),
    rich_presence_macro("Number", arena_roundone_enemy_count()),
    rich_presence_macro("Number", dword(spongebob_health)),
    rich_presence_macro("Number", points())
)
rich_presence_conditional_display(level_type() == 0x414d && arena_roundtwo_clear() == 0, "{0} in {1}: Wave 2! 😡 {2} 🍔 {3} 🔩 {4}", //0x414d = "AM"
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("ArenaLevel", level_string(), level_arena),
    rich_presence_macro("Number", arena_roundtwo_enemy_count()),
    rich_presence_macro("Number", dword(spongebob_health)),
    rich_presence_macro("Number", points())
)
rich_presence_conditional_display(level_type() == 0x414d && arena_roundthree_clear() == 0, "{0} in {1}: Wave 3! 😡 {2} 🍔 {3} 🔩 {4}", //0x414d = "AM"
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("ArenaLevel", level_string(), level_arena),
    rich_presence_macro("Number", arena_roundthree_enemy_count()),
    rich_presence_macro("Number", dword(spongebob_health)),
    rich_presence_macro("Number", points())
)
rich_presence_conditional_display(level_type() == 0x414d && arena_roundthree_clear() == 1, "{0} in {1}: Challenge Completed!", //0x414d = "AM"
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("ArenaLevel", level_string(), level_arena)
)
level_blocks = {
    0x46423031:"Three Thousand Miles to Shell City [Floating Block Challenge]",
    0x46423032:"Now That We're Men [Floating Block Challenge]",
    0x46423033:"Shell City Dead Ahead [Floating Block Challenge]"
}
rich_presence_conditional_display(level_type() == 0x4642, "{0} in {1} ⏳ {2}", //0x4642 = "FB"
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("BlockLevel", level_string(), level_blocks),
    rich_presence_macro("Seconds", floating_block_max_time() - floating_block_timer())
)
level_spongeball = {
    0x424c3031:"Three Thousand Miles to Shell City [Spongeball Challenge]",
    0x424c3032:"Bubble Blowing Baby Hunt [Spongeball Challenge]",
    0x424c3033:"Shell City Dead Ahead [Spongeball Challenge]",
    0x424c3034:"Welcome to Planktopolis... Minions [Spongeball Challenge]"
}
level_main = {
    0x42423032: "No Cheese!",
    0x42423033: "I'm Ready... Depression",
    0x42423031: "Sandwich Driving 101",
    0x44453031: "Three Thousand Miles to Shell City",
    0x44453032: "Rub A Dub Dub Slip Slide in the Tub",
    0x54543031: "Bubble Blowing Baby Hunt",
    0x54543032: "No Weenie Parking Anytime",
    0x42313031: "I'll Let You Pet Mr. Whiskers",
    0x54523031: "Rock Slide",
    0x54523032: "Now That We're Men",
    0x4a4b3031: "Shell City Dead Ahead",
    0x42323031: "Name's Dennis...",
    0x47473032: "Sundae Driving",
    0x53433032: "Google-Eyes and Smelly Knick Knacks",
    0x42333031: "Dennis Strikes Back!",
    0x50543031: "Welcome to Planktopolis... Minions",
    0x50543032: "Drive of the Knucklehead-McSpazitron",
    0x42343031: "Turn the Tables on Plankton"
}
rich_presence_conditional_display(menu_address() == 0xc && character() > 1, "{0} in {1} 🍔 {2} 🔩 {3} 📦 {4} 🏆 {5}",
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("Level", level_string(), level_main),
    rich_presence_macro("Number", driving_character()), //Health
    rich_presence_macro("Number", points()),
    rich_presence_macro("Number", treasure_chests()),
    rich_presence_macro("Number", token_count())
)
rich_presence_conditional_display(menu_address() == 0xc && character() == 0, "{0} in {1} 🍔 {2} 🔩 {3} 📦 {4} 🏆 {5}",
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("Level", level_string(), level_main),
    rich_presence_macro("Number", dword(spongebob_health)), //Health
    rich_presence_macro("Number", points()),
    rich_presence_macro("Number", treasure_chests()),
    rich_presence_macro("Number", token_count())
)
rich_presence_conditional_display(menu_address() == 0xc && character() == 1, "{0} in {1} 🍔 {2} 🔩 {3} 📦 {4} 🏆 {5}",
    rich_presence_lookup("Character", character(), character_rp),
    rich_presence_lookup("Level", level_string(), level_main),
    rich_presence_macro("Number", dword(patrick_health)), //Health
    rich_presence_macro("Number", points()),
    rich_presence_macro("Number", treasure_chests()),
    rich_presence_macro("Number", token_count())
)
rich_presence_display("{0}",
    rich_presence_lookup("MenuState", menu_address(), menu_rp, "Loading to destroy Plan Z!")
)
function drivenslide_speedrun_board(title, level_id, macho_token, timer, timer_active){
    leaderboard(
        title + " - Personal Time",
        "Fastest time!",
        game_pointer() == prev(game_pointer()) && level_string() == level_id && timer_active > prev(timer_active) && 
        prev(timer) == 0 && dword(dword(game_pointer() + token_pointer) + macho_token) == 3,
        level_string() != level_id,
        timer_active < prev(timer_active) && timer_active == 0,
        timer,
        "SECS",
        true
    )
}
drivenslide_speedrun_board("Sandwich Driving 101", 0x42423031, 0x14c, floating_block_timer(), floating_block_timer_active())
drivenslide_speedrun_board("Rub a Dub Dub Slip Slide in the Tub", 0x44453032, 0x23c, personal_record_timer(), personal_record_active())
drivenslide_speedrun_board("No Weenie Parking Anytime", 0x54543032, 0x32c, floating_block_timer(), floating_block_timer_active())
drivenslide_speedrun_board("Rock Slide", 0x54523031, 0x41c, personal_record_timer(), personal_record_active())
drivenslide_speedrun_board("Sundae Driving", 0x47473032, 0x674, macho_timer(), macho_active())
drivenslide_speedrun_board("Google-Eyes and Smelly Knick Knacks", 0x53433032, 0x6ec, personal_record_timer(), personal_record_active())
drivenslide_speedrun_board("Drive of the Knucklehead-McSpazitron", 0x50543032, 0x854, floating_block_timer(), floating_block_timer_active())
function floating_block_board(title, level_id){
    leaderboard(
        title + " - Floating Block Speedrun",
        "Fastest time!",
        game_pointer() == prev(game_pointer()) && level_string() == level_id && floating_block_timer_active() > prev(floating_block_timer_active())&& floating_block_timer_active() == 1,
        level_string() != level_id,
        floating_block_timer_active() < prev(floating_block_timer_active()) && floating_block_timer_active() == 0,
        floating_block_timer() + 1.0, //Add 1 second due to off by one. Makes it match the in-game displayed timer. :)
        "SECS",
        true
    )
}
floating_block_board("Three... Thousand Miles to Shell City", 0x46423031)
floating_block_board("Now That We're Men", 0x46423032)
floating_block_board("Shell City Dead Ahead", 0x46423033)
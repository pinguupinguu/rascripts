// Tak the Great Juju Challenge [Subset - Bonus]
// #ID = 20303

// $4D3120: [Float] Tak's Head Scaling (Loading Screen)
// $4D3124: [Float] Lok's Head Scaling (Loading Screen)
// $4D3DD4: [32bit] Blessing Gems - Tak Health Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3DD8: [32bit] Blessing Gems - Tak Health Bonus 1 ID
//          0x00=Unavailable
//          0x01=ID
// $4D3DF4: [32bit] Blessing Gems - Tak Health Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3DF8: [32bit] Blessing Gems - Tak Health Bonus 2 ID
//          0x00=No
//          0x08=ID
// $4D3E14: [32bit] Blessing Gems - Tak Health Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3E18: [32bit] Blessing Gems - Tak Health Bonus 3 ID
//          0x00=No
//          0x0a=ID
// $4D3E34: [32bit] Blessing Gems - Tak Spell Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3E38: [32bit] Blessing Gems - Tak Spell Bonus 1 ID
//          0x00=No
//          0x03=ID
// $4D3E54: [32bit] Blessing Gems - Tak Spell Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3E58: [32bit] Blessing Gems - Tak Spell Bonus 2 ID
//          0x00=No
//          0x06=ID
// $4D3E74: [32bit] Blessing Gems - Tak Spell Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3E78: [32bit] Blessing Gems - Tak Spell Bonus 3 ID
//          0x00=No
//          0x09=ID
// $4D3E94: [32bit] Blessing Gems - Tak Mana Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3E98: [32bit] Blessing Gems - Tak Mana Bonus 1 ID
//          0x00=No
//          0x01=ID
// $4D3EB4: [32bit] Blessing Gems - Tak Mana Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3EB8: [32bit] Blessing Gems - Tak Mana Bonus 2 ID
//          0x00=No
//          0x05=ID
// $4D3ED4: [32bit] Blessing Gems - Tak Mana Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3ED8: [32bit] Blessing Gems - Tak Mana Bonus 3 ID
//          0x00=No
//          0x0c=ID
// $4D3EF4: [32bit] Blessing Gems - Lok Health Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3EF8: [32bit] Blessing Gems - Lok Health Bonus 1 ID
//          0x00=Unavailable
//          0x01=ID
// $4D3F14: [32bit] Blessing Gems - Lok Health Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3F18: [32bit] Blessing Gems - Lok Health Bonus 2 ID
//          0x00=Unavailable
//          0x08=ID
// $4D3F34: [32bit] Blessing Gems - Lok Health Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3F38: [32bit] Blessing Gems - Lok Health Bonus 3 ID
//          0x00=Unavailable
//          0x0a=ID
// $4D3F54: [32bit] Blessing Gems - Lok Combat Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3F58: [32bit] Blessing Gems - Lok Combat Bonus 1 ID
//          0x00=Unavailable
//          0x03=ID
// $4D3F74: [32bit] Blessing Gems - Lok Combat Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3F78: [32bit] Blessing Gems - Lok Combat Bonus 2 ID
//          0x00=Unavailable
//          0x06=ID
// $4D3F94: [32bit] Blessing Gems - Lok Combat Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3F98: [32bit] Blessing Gems - Lok Combat Bonus 3 ID
//          0x00=Unavailable
//          0x09=ID
// $4D3FB4: [32bit] Blessing Gems - Lok Combat Bonus 4
//          0x00=No
//          0x01=Applied
// $4D3FB8: [32bit] Blessing Gems - Lok Combat Bonus 4 ID
//          0x00=Unavailable
//          ?=ID
// $4D3FD4: [32bit] Blessing Gems - Lok Mana Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3FD8: [32bit] Blessing Gems - Lok Mana Bonus 1 ID
//          0x00=Unavailable
//          0x01=ID
// $4D3FF4: [32bit] Blessing Gems - Lok Mana Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3FF8: [32bit] Blessing Gems - Lok Mana Bonus 2 ID
//          0x00=Unavailable
//          0x05=ID
// $4D4014: [32bit] Blessing Gems - Lok Mana Bonus 3
//          0x00=No
//          0x01=Applied
// $4D4018: [32bit] Blessing Gems - Lok Mana Bonus 3 ID
//          0x00=Unavailable
//          0x0c=ID
// $4D8FCC: [32bit] Partner Can Follow
//          0x00=Yes
//          0x01=No
// $5473A4: [32bit] Level ID
//          0x00=Feathercrag (Tutorial)
//          0x01=The Juju Realm
//          0x02=Silver Stone Coast
//          0x03=Temple of Light
//          0x04=Caster's Hill
//          0x05=Proving Grounds One
//          0x07=Kiro Biro
//          0x08=Parchlands
//          0x09=Gates of Nocturne
//          0x0a=Proving Grounds Two
//          0x0c=Fowler's Murk
//          0x0d=The Deepwood
//          0x0e=Ambush Grove
//          0x0f=Proving Grounds Three
//          0x11=Ghastfall
//          0x12=Obocodobo Crypt
//          0x14=Proving Grounds Final
//          0x21=Main Menu
function level_ID() => dword(0x5473A4)
// $5473FC: [32bit] Tutorial Completion: 0x50 > 0x51 = Hit Gate.
// $54743C: [32bit] Silver Stone Coast - High Score
// $54747C: [32bit] Silver Stone Coast - Current Score
// $5474BC: [32bit] Juju Realm Leaderboard Score - Team Black Mist
// $5474FC: [32bit] Juju Realm Leaderboard Score - Team Jibba Jabba
// $54757C: [32bit] Temple of Light - High Score
// $5475BC: [32bit] Temple of Light - Current Score
// $5476BC: [32bit] Caster's Hill - High Score
// $5476FC: [32bit] Caster's Hill - Current Score
// $54793C: [32bit] Kiro Biro - High Score
// $54797C: [32bit] Kiro Biro - Current Score
// $547A7C: [32bit] Parchlands - High Score
// $547ABC: [32bit] Parchlands - Current Score
// $547BBC: [32bit] Gates of Nocturne - High Score
// $547BFC: [32bit] Gates of Nocturne - Current Score
// $547E3C: [32bit] Fowler's Murk - High Score
// $547E7C: [32bit] Fowler's Murk - Current Score
// $547F7C: [32bit] The Deepwood - High Score
// $547FBC: [32bit] The Deepwood - Current Score
// $5480BC: [32bit] Ambush Grove - High Score
// $5480FC: [32bit] Ambush Grove - Current Score
// $54833C: [32bit] Ghastfall - High Score
// $54837C: [32bit] Ghastfall - Current Score
// $54847C: [32bit] Obocdobo Crypt - High Score
// $5484BC: [32bit] Obocdobo Crypt - Current Score
// $548CFC: [32bit] Juju Realm Leaderboard Score - Team Pupanunu
// $548D3C: [32bit] Juju Realm Leaderboard Score - Team Grammazon
// $54A17C: [32bit] Number of Blessing Gems
// $55DE6C: [Float] Number of Bugs
// $55DE78: [Float] Number of Gemstones
// $55DE84: [Float] Number of Fruits
// $55DE94: [NBit] Recipe Flags (00=Uncollected, 01=Collected)
//          Bit0=Silver Stone Coast (Pickup on Shark Platform) => Blessing Gem 1 Card
//          Bit1=Silver Stone Coast (Vines Side Quest) => Blessing Gem 2 Card
//          Bit2=Temple of Light (Side Quest - Smacking Chickens) => Blessing Gem 3 Card
//          Bit3=Temple of Light (Side Quest - Boom Barrel Puzzle) => Blessing Gem 4 Card
//          Bit4=Caster's Hill (Pickup on Ledge) => Blessing Gem 5 Card
//          Bit5=Caster's Hill (Side Quest - Rokker Cannon) => Blessing Gem 6 Card
//          Bit6=Kiro Biro (Pickup on Gauntlet Entrance) => Blessing Gem 7 Card
//          Bit7=Kiro Biro (Pickup on Gauntlet End) => Blessing Gem 8 Card
// $55DE95: [NBit] Recipe Flags (00=Uncollected, 01=Collected)
//          Bit0=Parchlands (Pickup on Elephant Pedestal) => Blessing Gem 9 Card
//          Bit1=Parchlands (Pickup on Second Pedestal) => Blessing Gem 10 Card
//          Bit2=Gates of Nocturne (Pickup First Portal) => Blessing Gem 11 Card
//          Bit3=Gates of Nocturne (Side Quest - Cannons & Rhinos) => Blessing Gem 12 Card
//          Bit4=Fowler's Murk (Pickup on Lillypad) => Blessing Gem 13 Card
//          Bit5=Fowler's Murk (Side Quest - Summoning Stones) => Blessing Gem 14 Card
//          Bit6=The Deepwood (Side Quest - Swimming Puzzle) => Blessing Gem 15 Card
//          Bit7=Ambush Grove (Side Quest - Knock 30 Chickens) => Blessing Gem 16 Card
// $55DE96: [NBit] Recipe Flags (00=Uncollected, 01=Collected)
//          Bit0=Ghastfall (Pickup on Island - Secret Button) => Blessing Gem 17 Card
//          Bit1=Obocodobo Crypt (Pickup on Dart Area) => Blessing Gem 18 Card
//          Bit2=Obocodobo Crypt (Side Quest - Co-Op Platforming) => Blessing Gem 19 Card
//          Bit3=Blessing Gem 20?!?!
//          Bit4=View Juju Concept Art (Juju Concept Art)
//          Bit5=View JibbaJabba Art (Jibba Jabba Concept Art)
//          Bit6=View Grammazon Art (Grammazon Concept Art)
//          Bit7=View Black Mist Art (Black Mist Concept Art)
// $55DE97: [NBit] Recipe Flags
//          Bit0=View World Art (World Concept Art)
//          Bit1=View Animal Art (Animal Concept Art)
//          Bit2=View Vehicle Art (Vehicle Concept Art)
//          Bit3=Bonus Music Track 1
//          Bit4=Bonus Music Track 2
//          Bit5=Bonus Music Track 3
//          Bit6=Bonus Sound Effects
//          Bit7=Bonus Sound Effects 2
// $55DEA0: [NBit] Recipe Flags
//          Bit2=Time Bonus Active
//          Bit3=Remove Bonus Sound Effects
//          Bit4=Remove Bonus Sound Effects 2
// $55DEA8: [Float] Tak - Juju Speed
// $55DEB0: [Float] Tak - Juju Speed (Max Amt)
// $55E1D8: [Float] Lock - Juju Speed
// $55E1E0: [Float] Lock - Juju Speed (Max Amt)
// $56690C: [32bit] Game Pause
//          0x00=Yes
//          0x03=No
// $612594: [32bit] Active Character
//          0x00=Tak
//          0x01=Lok
// $18B6E58: [32bit] Number of Chickens Knocked Off Platform (Ambush Grove Side Quest)
// $1D4FA80: [32bit] Selected Proving Grounds Car
// $1F0D000: [32bit] Proving Grounds Score - Team Pupanunu
// $1F0D004: [32bit] Proving Grounds Score - Team Blackmist
// $1F0D008: [32bit] Proving Grounds Score - Team Jibba Jabba
// $1F0D00C: [32bit] Proving Grounds Score - Team Grammazon
// $1F0D020: [32bit] Proving Grounds - Team Currently in Elimination
//           0x00=Pupanunu Tribe
//           0x01=The Black Mist
//           0x02=Jibba Jabba
//           0x03=Grammazon
// $1F29300: [32bit] Proving Grounds Final - Overtime Round
//           0x00=Round 1
//           0x01=Round 2
//           0x02=Round 3 (Final!)
// $1F29350: [Float] Level Timer
// $1F29354: [Float] Maximum Time
// $1F29360: [32bit] Level Timer Running
//           0x00=No
//           0x01=Yes
// $1F29368: [32bit] Level Timer Shown
//           0x00=No
//           0x01=Yes
// $1F29374: [32bit] Level Timer Active
//           0x00=No
//           0x01=Yes
// $56690C: [32bit] Game Pause
//          0x00=yes
//          0x03=no
function game_pause() => dword(0x56690C)
paused = 0
unpaused = 3
function timer_lb() => dword(0x1F29350) //Read in DWord for usage with leaderboards. Float will be used for RP.
// $1F29354: [Float] Maximum Timer
function max_time() => float(0x1F29354)
// $1F29360: [32bit] Level Timer Running
//           0x00=No
//           0x01=Yes
function timer_running() => dword(0x1F29360)
// $1F29368: [32bit] Level Timer Shown
//           0x00=No
//           0x01=Yes
function timer_shown() => dword(0x1F29368)
CONST_NEGATIVE = 0xbf800000 //-1 in float
leaderboard(
    "Feathercrag",
    "Fastest time!",
    level_ID() == 0 && prev(timer_lb()) == CONST_NEGATIVE && timer_lb() == 0x43960000, //43960000 = 300.00 in float.
    level_ID() == 0x21, //Menu
    prev(level_ID()) == 0 && level_ID() == 1,
    unless(game_pause() == paused) && always_true(),
    "FRAMES",
    true,
    41163
)
function speedrun_board(level_name, level_num, default_time, id){
        leaderboard(
        level_name,
        "Fastest time!",
        level_ID() == level_num && prev(timer_lb()) == default_time && timer_lb() < prev(timer_lb()), //299.9999 - Default Time
        level_ID() == 1,
        level_ID() == level_num && timer_running() < prev(timer_running()) && timer_running() == 0,
        unless(game_pause() == paused) && always_true(),
        "FRAMES",
        true,
        id
    )
}
speedrun_board("Silver Stone Coast", 0x2, 0x4395f333, 41164) 
speedrun_board("Temple of Light", 0x3, 0x4395e666, 41165)
speedrun_board("Caster's Hill", 0x4, 0x4395f333, 41166)
speedrun_board("Kiro Biro", 0x7, 0x44160000, 41167)
speedrun_board("Parchlands", 0x8, 0x4395e666, 41168)
speedrun_board("Gates of Noctune", 0x9, 0x4395f333, 41169)
speedrun_board("Fowler's Murk", 0xc, 0x4395f333, 41170)
speedrun_board("The Deepwood", 0xd, 0x43c7e666, 41171)
speedrun_board("Ambush Grove", 0xe, 0x4395f333, 41172)
speedrun_board("Ghastfall", 0x11, 0x4415f99a, 41173)
speedrun_board("Obocodobo Crypt", 0x12, 0x4395f333, 41174)
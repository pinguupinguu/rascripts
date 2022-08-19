// Tak: The Great Juju Challenge
// #ID = 19483
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
levels = {
    2:"Silver Stone Coast",
    3:"Temple of Light",
    4:"Caster's Hill",
    5:"Proving Grounds: One",
    7:"Kiro Biro",
    8:"Parchlands",
    9:"Gates of Nocturne",
    0xa:"Proving Grounds: Two",
    0xc:"Fowler's Murk",
    0xd:"The Deepwood",
    0xe:"Ambush Grove",
    0xf:"Proving Grounds: Three",
    0x11:"Ghastfall",
    0x12:"Obocodobo Crypt",
    0x14:"Proving Grounds: Final"
}
function level_ID() => dword(0x5473A4)
// $1F0D000: [32bit] Proving Grounds Score - Team Pupanunu
// $54743C: [32bit] Silver Stone Coast - High Score
CONST_DEFAULT_SCORE = 0xffffffff
function silver_stone_high_score() => dword(0x54743C)
function save_protection() => dword(0x5473A4) != 0x21
achievement(
    "A Stolen Feather",
    "Clear Tutorial: Feathercrag",
    points=5,
    trigger=
        silver_stone_high_score() == CONST_DEFAULT_SCORE &&
        prev(level_ID()) == 0x00 &&
        level_ID() == 0x1
)
function pupanunu_grounds_score() => dword(0x1F0D000)
// $1F0D004: [32bit] Proving Grounds Score - Team Blackmist
function blackmist_grounds_score() => dword(0x1F0D004)
// $1F0D008: [32bit] Proving Grounds Score - Team Jibba Jabba
function jibba_grounds_score() => dword(0x1F0D008)
// $1F0D00C: [32bit] Proving Grounds Score - Team Grammazon
function grammazon_grounds_score() => dword(0x1F0D00C)
// $1F0D020: [32bit] Proving Grounds - Team Currently in Elimination
//           0x00=Pupanunu Tribe
//           0x01=The Black Mist
//           0x02=Jibba Jabba
//           0x03=Grammazon
function elimination_team() => dword(0x1F0D020)
pupanunu = 0
// $1F29350: [Float] Level Timer
function timer() => float(0x1F29350)
//Level Calls:
function progression(high_score) => save_protection() && prev(high_score) == CONST_DEFAULT_SCORE && high_score != CONST_DEFAULT_SCORE
function proving_grounds_clear(id) =>
    level_ID() == id &&
    elimination_team() != pupanunu &&
    timer() < prev(timer()) &&
    timer() == 0
function proving_grounds_first() => 
    pupanunu_grounds_score() > blackmist_grounds_score() &&
    pupanunu_grounds_score() > jibba_grounds_score()  &&
    pupanunu_grounds_score() > grammazon_grounds_score()
achievement(
    "It's An Ambush!",
    "Clear Silver Stone Coast",
    points=10,
    trigger=
        progression(silver_stone_high_score())
        
)
// $54757C: [32bit] Temple of Light - High Score
function temple_light_high_score() => dword(0x54757C)
achievement(
    "Sand, Torches, and Magma",
    "Clear Temple of Light",
    points=10,
    trigger=
        progression(temple_light_high_score())
)
// $5476BC: [32bit] Caster's Hill - High Score
function casters_high_score() => dword(0x5476BC)
achievement(
    "Lok's Gorilla Wife",
    "Clear Caster's Hill",
    points=10,
    trigger=
        progression(casters_high_score())
)
achievement(
    "Tak's First Driving Lesson",
    "Clear Proving Grounds: One without being eliminated!",
    points=10,
    trigger=
        proving_grounds_clear(0x5)
)
achievement(
    "[m] Tak Gets an A!",
    "Win first place in Proving Grounds: One!",
    points=5,
    trigger=
        proving_grounds_clear(0x5) &&
        proving_grounds_first()
)
// $54793C: [32bit] Kiro Biro - High Score
function kiro_biro_high_score() => dword(0x54793C)
achievement(
    "Underwater Lobster Exploration!",
    "Clear Kiro Biro",
    points=10,
    trigger=
        progression(kiro_biro_high_score())
)
// $547A7C: [32bit] Parchlands - High Score
function parchlands_high_score() => dword(0x547A7C)
achievement(
    "Desert Exploration",
    "Clear Parchlands",
    points=10,
    trigger=
        progression(parchlands_high_score())
)
// $547BBC: [32bit] Gates of Nocturne - High Score
function nocturne_high_score() => dword(0x547BBC)
achievement(
    "The World of Dreams",
    "Clear Gates of Nocturne",
    points=10,
    trigger=
        progression(nocturne_high_score())
)
achievement(
    "Extreme Racing 101",
    "Clear Proving Grounds: Two without being eliminated!",
    points=10,
    trigger=
        proving_grounds_clear(0xa)
)
achievement(
    "[m] Pedal to the Metal",
    "Win first place in Proving Grounds: Two!",
    points=5,
    trigger=
        proving_grounds_clear(0xa) &&
        proving_grounds_first()
)
// $547E3C: [32bit] Fowler's Murk - High Score
function fowler_high_score() => dword(0x547E3C)
achievement(
    "A Trusty Chicken Suit",
    "Clear Fowler's Murk",
    points=10,
    trigger=
        progression(fowler_high_score())
)
// $547F7C: [32bit] The Deepwood - High Score
function deepwood_high_score() => dword(0x547F7C)
achievement(
    "Lok's Treacherous Climb",
    "Clear The Deepwood",
    points=10,
    trigger=
        progression(deepwood_high_score())
)
// $5480BC: [32bit] Ambush Grove - High Score
function ambush_high_score() => dword(0x5480BC)
achievement(
    "Foggy Navigation",
    "Clear Ambush Grove",
    points=10,
    trigger=
        progression(ambush_high_score())
)
achievement(
    "Drivin' and Crushin' Statues!",
    "Clear Proving Grounds: Three without being eliminated!",
    points=10,
    trigger=
        proving_grounds_clear(0xf)
)
achievement(
    "[m] Break All Karts!",
    "Win first place in Proving Grounds: Three!",
    points=5,
    trigger=
        proving_grounds_clear(0xf) &&
        proving_grounds_first()
)
// $54833C: [32bit] Ghastfall - High Score
function ghastfall_high_score() => dword(0x54833C)
achievement(
    "Run Sheep, Run!",
    "Clear Ghastfall",
    points=10,
    trigger=
        progression(ghastfall_high_score())
)
// $54847C: [32bit] Obocdobo Crypt - High Score
function crypt_high_score() => dword(0x54847C)
achievement(
    "Scary Slicers!",
    "Clear Obocodobo Crypt",
    points=10,
    trigger=
        progression(crypt_high_score())
)
// $1F29300: [32bit] Proving Grounds Final - Overtime Round
//           0x00=Round 1
//           0x01=Round 2
//           0x02=Round 3 (Final!)
function proving_grounds_overtime() => dword(0x1F29300)
achievement(
    "The Black Mist Tribe Has Been Eliminated!",
    "Defeat Team Black Mist in Proving Grounds: Final and win The Great Juju Challenge!",
    points=25,
    trigger=
        level_ID() == 0x14 &&
        proving_grounds_overtime() == 2 &&
        pupanunu_grounds_score() > blackmist_grounds_score() &&
        timer() < prev(timer()) &&
        timer() == 0
)
function sidequest_cheevo(flag, id) => level_ID() == id && flag > prev(flag)
// $55DE94: [NBit] Recipe Flags (00=Uncollected, 01=Collected)
//          Bit0=Silver Stone Coast (Pickup on Shark Platform) => Blessing Gem 1 Card
achievement(
    "A Rocky Chomp!",
    "Collect the Blessing Gem 1 Card in Silver Stone Coast",
    points=2,
    trigger=
        sidequest_cheevo(bit0(0x55DE94), 2)
)
//          Bit1=Silver Stone Coast (Vines Side Quest) => Blessing Gem 2 Card
achievement(
    "Swingin' Along the... Coast?",
    "Complete this side quest in Silver Stone Coast and unlock the Blessing Gem 2 Card",
    points=3,
    trigger=
        sidequest_cheevo(bit1(0x55DE94), 2)
)
//          Bit2=Temple of Light (Side Quest - Smacking Chickens) => Blessing Gem 3 Card
achievement(
    "A Feathery Smackdown",
    "Complete this side quest in Temple of Light and unlock the Blessing Gem 3 Card",
    points=2,
    trigger=
        sidequest_cheevo(bit2(0x55DE94), 3)
)
//          Bit3=Temple of Light (Side Quest - Boom Barrel Puzzle) => Blessing Gem 4 Card
achievement(
    "Playing with Boom Dust!",
    "Complete this side quest in Temple of Light and unlock the Blessing Gem 4 Card",
    points=3,
    trigger=
        sidequest_cheevo(bit3(0x55DE94), 3)
)
//          Bit4=Caster's Hill (Pickup on Ledge) => Blessing Gem 5 Card
achievement(
    "Out of Reach Ledge",
    "Collect the Blessing Gem 5 Card in Caster's Hill",
    points=2,
    trigger=
        sidequest_cheevo(bit4(0x55DE94), 4)
)
//          Bit5=Caster's Hill (Side Quest - Rokker Cannon) => Blessing Gem 6 Card
achievement(
    "Exploding Rokkers",
    "Complete this side quest in Caster's Hill and unlock the Blessing Gem 6 Card",
    points=3,
    trigger=
        sidequest_cheevo(bit5(0x55DE94), 4)
)
//          Bit6=Kiro Biro (Pickup on Gauntlet Entrance) => Blessing Gem 7 Card
achievement(
    "An Overlooking Tower",
    "Collect the Blessing Gem 7 Card in Kiro Biro",
    points=2,
    trigger=
        sidequest_cheevo(bit6(0x55DE94), 7)
)
//          Bit7=Kiro Biro (Pickup on Gauntlet End) => Blessing Gem 8 Card
achievement(
    "A Lonely Island",
    "Collect the Blessing Gem 8 Card in Kiro Biro",
    points=3,
    trigger=
        sidequest_cheevo(bit7(0x55DE94), 7)
)
// $55DE95: [NBit] Recipe Flags (00=Uncollected, 01=Collected)
//          Bit0=Parchlands (Pickup on Elephant Pedestal) => Blessing Gem 9 Card
achievement(
    "Pedestal in the Elephant's Pit",
    "Collect the Blessing Gem 9 Card in Parchlands",
    points=2,
    trigger=
        sidequest_cheevo(bit0(0x55DE95), 8)
)
//          Bit1=Parchlands (Pickup on Second Pedestal) => Blessing Gem 10 Card
achievement(
    "Hazardous Pedestal",
    "Collect the Blessing Gem 10 Card in Parchlands",
    points=3,
    trigger=
        sidequest_cheevo(bit1(0x55DE95), 8)
)
//          Bit2=Gates of Nocturne (Pickup First Portal) => Blessing Gem 11 Card
achievement(
    "Behind the Dream Portal",
    "Collect the Blessing Gem 11 Card in Gates of Nocturne",
    points=2,
    trigger=
        sidequest_cheevo(bit2(0x55DE95), 9)
)
//          Bit3=Gates of Nocturne (Side Quest - Cannons & Rhinos) => Blessing Gem 12 Card
achievement(
    "Rhinos and Cannons Break Through Barriers",
    "Complete this side quest in Gates of Nocturne and unlock the Blessing Gem 12 Card",
    points=3,
    trigger=
        sidequest_cheevo(bit3(0x55DE95), 9)
)
//          Bit4=Fowler's Murk (Pickup on Lillypad) => Blessing Gem 13 Card
achievement(
    "Playing Frogger",
    "Collect the Blessing Gem 13 Card in Fowler's Murk",
    points=2,
    trigger=
        sidequest_cheevo(bit4(0x55DE95), 0xc)
)
//          Bit5=Fowler's Murk (Side Quest - Summoning Stones) => Blessing Gem 14 Card
achievement(
    "Summoner's Murk",
    "Complete this side quest in Fowler's Murk and unlock the Blessing Gem 14 Card",
    points=3,
    trigger=
        sidequest_cheevo(bit5(0x55DE95), 0xc)
)
//          Bit6=The Deepwood (Side Quest - Swimming Puzzle) => Blessing Gem 15 Card
achievement(
    "Swimming Difficulties",
    "Complete this side quest in The Deepwood and unlock the Blessing Gem 15 Card",
    points=5,
    trigger=
        sidequest_cheevo(bit6(0x55DE95), 0xd)
)
//          Bit7=Ambush Grove (Side Quest - Knock 30 Chickens) => Blessing Gem 16 Card
achievement(
    "Chicken Smacking Part Two",
    "Complete this side quest in Ambush Grove and unlock the Blessing Gem 16 Card",
    points=5,
    trigger=
        sidequest_cheevo(bit7(0x55DE95), 0xe)
)
// $55DE96: [NBit] Recipe Flags (00=Uncollected, 01=Collected)
//          Bit0=Ghastfall (Pickup on Island - Secret Button) => Blessing Gem 17 Card
achievement(
    "A Hidden Button",
    "Collect the Blessing Gem 17 Card in Ghastfall",
    points=5,
    trigger=
        sidequest_cheevo(bit0(0x55DE96), 0x11)
)
//          Bit1=Obocodobo Crypt (Pickup on Dart Area) => Blessing Gem 18 Card
achievement(
    "Dodging Projectiles",
    "Collect the Blessing Gem 18 Card in Obocodobo Crypt",
    points=2,
    trigger=
        sidequest_cheevo(bit1(0x55DE96), 0x12)
)
//          Bit2=Obocodobo Crypt (Side Quest - Co-Op Platforming) => Blessing Gem 19 Card
achievement(
    "Teamwork Prevails",
    "Complete this side quest in Obocodobo Crypt and unlock the Blessing Gem 19 Card",
    points=3,
    trigger=
        sidequest_cheevo(bit2(0x55DE96), 0x12)
)
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
 extracards = [
    bit3(0x55DE96),
    bit4(0x55DE96),
    bit5(0x55DE96),
    bit6(0x55DE96),
    bit7(0x55DE96),
    bitcount(0x55DE97),
    bit2(0x55DEA0)
]
achievement(
    "More Cards, More Resources",
    "Mix the remaining 14 extra recipe cards in the Juju Realm. (See Forum Topic for List!)",
    points=5,
    trigger=
        prev(sum_of(extracards, a => a)) == 13 &&
        measured(sum_of(extracards, a => a) == 14) &&
        level_ID() == 0x1
)
// $4D3DD4: [32bit] Blessing Gems - Tak Health Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3DD8: [32bit] Blessing Gems - Tak Health Bonus 1 ID
//          0x00=Unavailable
//          0x01=ID & Slot Open
// $4D3DF4: [32bit] Blessing Gems - Tak Health Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3DF8: [32bit] Blessing Gems - Tak Health Bonus 2 ID
//          0x00=No
//          0x08=ID & Slot Open
// $4D3E14: [32bit] Blessing Gems - Tak Health Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3E18: [32bit] Blessing Gems - Tak Health Bonus 3 ID
//          0x00=No
//          0x0a=ID & Slot Open
// $4D3E34: [32bit] Blessing Gems - Tak Spell Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3E38: [32bit] Blessing Gems - Tak Spell Bonus 1 ID
//          0x00=No
//          0x03=ID & Slot Open
// $4D3E54: [32bit] Blessing Gems - Tak Spell Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3E58: [32bit] Blessing Gems - Tak Spell Bonus 2 ID
//          0x00=No
//          0x06=ID & Slot Open
// $4D3E74: [32bit] Blessing Gems - Tak Spell Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3E78: [32bit] Blessing Gems - Tak Spell Bonus 3 ID
//          0x00=No
//          0x09=ID & Slot Open
// $4D3E94: [32bit] Blessing Gems - Tak Mana Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3E98: [32bit] Blessing Gems - Tak Mana Bonus 1 ID
//          0x00=No
//          0x01=ID & Slot Open
// $4D3EB4: [32bit] Blessing Gems - Tak Mana Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3EB8: [32bit] Blessing Gems - Tak Mana Bonus 2 ID
//          0x00=No
//          0x05=ID & Slot Open
// $4D3ED4: [32bit] Blessing Gems - Tak Mana Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3ED8: [32bit] Blessing Gems - Tak Mana Bonus 3 ID
//          0x00=No
//          0x0c=ID & Slot Open
// $4D3EF4: [32bit] Blessing Gems - Lok Health Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3EF8: [32bit] Blessing Gems - Lok Health Bonus 1 ID
//          0x00=Unavailable
//          0x01=ID & Slot Open
// $4D3F14: [32bit] Blessing Gems - Lok Health Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3F18: [32bit] Blessing Gems - Lok Health Bonus 2 ID
//          0x00=Unavailable
//          0x08=ID & Slot Open
// $4D3F34: [32bit] Blessing Gems - Lok Health Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3F38: [32bit] Blessing Gems - Lok Health Bonus 3 ID
//          0x00=Unavailable
//          0x0a=ID & Slot Open
// $4D3F54: [32bit] Blessing Gems - Lok Combat Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3F58: [32bit] Blessing Gems - Lok Combat Bonus 1 ID
//          0x00=Unavailable
//          0x03=ID & Slot Open
// $4D3F74: [32bit] Blessing Gems - Lok Combat Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3F78: [32bit] Blessing Gems - Lok Combat Bonus 2 ID
//          0x00=Unavailable
//          0x06=ID & Slot Open
// $4D3F94: [32bit] Blessing Gems - Lok Combat Bonus 3
//          0x00=No
//          0x01=Applied
// $4D3F98: [32bit] Blessing Gems - Lok Combat Bonus 3 ID
//          0x00=Unavailable
//          0x09=ID & Slot Open
// $4D3FB4: [32bit] Blessing Gems - Lok Combat Bonus 4
//          0x00=No
//          0x01=Applied
function lok_blessing_hammer() => dword(0x4D3FB4)
// $4D3FB8: [32bit] Blessing Gems - Lok Combat Bonus 4 ID
//          0x00=Unavailable
//          ?=ID & Slot Open
// $4D3FD4: [32bit] Blessing Gems - Lok Mana Bonus 1
//          0x00=No
//          0x01=Applied
// $4D3FD8: [32bit] Blessing Gems - Lok Mana Bonus 1 ID
//          0x00=Unavailable
//          0x01=ID & Slot Open
// $4D3FF4: [32bit] Blessing Gems - Lok Mana Bonus 2
//          0x00=No
//          0x01=Applied
// $4D3FF8: [32bit] Blessing Gems - Lok Mana Bonus 2 ID
//          0x00=Unavailable
//          0x05=ID & Slot Open
// $4D4014: [32bit] Blessing Gems - Lok Mana Bonus 3
//          0x00=No
//          0x01=Applied
// $4D4018: [32bit] Blessing Gems - Lok Mana Bonus 3 ID
//          0x00=Unavailable
//          0x0c=ID & Slot Open
achievement(
    "The Ancient Hammer of Handy Juju",
    "Unlock this mighty hammer and apply Lok's 4th Combat Bonus",
    points=5,
    trigger=
        level_ID() == 1 &&
        prev(lok_blessing_hammer()) == 0 &&
        lok_blessing_hammer() == 1
)
achievement(
    "Tak: The True Power of Juju",
    "Fully upgrade Tak's Blessing Gem slots",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(range(0x4d3dd4, 0x4d3ed8, 0x20), b => dword(b))) == 8 &&
        measured(sum_of(range(0x4d3dd4, 0x4d3ed8, 0x20), b => dword(b)) == 9)
)
achievement(
    "Lok: The Amazing Warrior",
    "Fully upgrade Lok's Blessing Gem slots",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(range(0x4d3ef4, 0x4d4014, 0x20), b => dword(b))) == 9 &&
        measured(sum_of(range(0x4d3ef4, 0x4d4014, 0x20), b => dword(b)) == 10) 
)
// $4D3120: [Float] Tak's Head Scaling (Loading Screen)
function tak_head_scaling() => float(0x4D3120)
// $4D3124: [Float] Lok's Head Scaling (Loading Screen)
function lok_head_scaling() => float(0x4D3124)
default_scale = 1.0
achievement(
    "Big Head Syndrome",
    "You got a big loading head!",
    points=0,
    trigger=
        level_ID() != 0x21 &&   
        (always_false() ||
            prev(tak_head_scaling()) == default_scale &&
            tak_head_scaling() != default_scale ||
            prev(lok_head_scaling()) == default_scale &&
            lok_head_scaling() != default_scale
        )
)
function active_char() => dword(0x612594)
character = {
    0:"Tak",
    1:"Lok"
}
// $55DE6C: [Float] Number of Bugs
function bugs() => float(0x55DE6C)
// $55DE78: [Float] Number of Gemstones
function gemstones() => float(0x55DE78)
// $55DE84: [Float] Number of Fruits
function fruits() => float(0x55DE84)
// $548CFC: [32bit] Juju Realm Leaderboard Score - Team Pupanunu
function pupanunu_score_lb() => dword(0x548CFC)
character_lookup = rich_presence_lookup("Character", active_char(), character)
rich_presence_conditional_display(level_ID() == 0, "Playing as {0} in Feathercrag: Tutorial",
    character_lookup
)
rich_presence_conditional_display(level_ID() == 1, "In The Juju Realm 🏆 {0} 🐛 {1} 💎 {2} 🍐 {3}",
    rich_presence_macro("Number", pupanunu_score_lb()),
    rich_presence_macro("Number", bugs()),
    rich_presence_macro("Number", gemstones()),
    rich_presence_macro("Number", fruits())
)
rich_presence_conditional_display(level_ID() != 0x21, "Playing as {0} in {1} ⏳ {2}",
    character_lookup,
    rich_presence_lookup("Levels", level_ID(), levels),
    rich_presence_macro("Number", timer())
)
rich_presence_display("In Menu")
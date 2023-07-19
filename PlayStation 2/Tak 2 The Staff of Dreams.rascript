// Tak 2: The Staff of Dreams
// #ID = 19204

// $000000: Important Notes on Cheevo Structure:
//          For collectibles - to protect against not picking up in levels, do the following:
//          delta level = id
//          mem recipe mixed = 0 - does not flip unless player mixes recipe from universal card, or mixes it after recipe is picked up.
//          mem > delta recipe picked up flag
// $4BB428: [32bit] Recipe Mixed- Balloon Head Showdown - One and Two Player
//          0x00=No
//          0x01=Yes
// $4BB42C: [32bit] Recipe Card Pickup (Dream's Return) - Balloon Head Showdown-One And Two Player
//          Reveals mixing requirements
//          0x00=Unavailable
//          0x01=Available
// $4BB450: [32bit] Recipe Mixed - Tak's Feather Color
//          0x00=No
//          0x01=Yes
// $4BB454: [32bit] Recipe Card Pickup (Dream's Return) - Tak's Feather Color
//          Reveals recipe requirements.
//          0x00=Unavailable
//          0x01=Available
// $4BB478: [32bit] Recipe Mixed - Vine Climb - Two Player
//          0x00=No
//          0x01=Yes
// $4BB47C: [32bit] Recipe Pickup (Greenheart Forest) Vine Climber - Two Player
//          0x00=Unavailable
//          0x01=Available
// $4BB4A0: [32bit] Recipe Mixed - Lok Character for Dinky Games
//          0x00=No
//          0x01=Yes
// $4BB4A4: [32bit] Recipe Card Pickup (Greenheart Forest) - Lok Character for Dinky Games
//          0x00=Unavailable
//          0x01=Available
//          
//          NOTE - This seems to only update once entering Juju Potions Menu
// $4BB540: [32bit] Recipe Mixed - View Commercials
//          0x00=No
//          0x01=Yes
// $4BB544: [32bit] Recipe Pickup (Gloomleaf Swamp) - View Commercials
//          0x00=Unavailable
//          0x01=Available
// $4BB5E0: [32bit] Recipe Mixed - Barrel Blitz - One Player
//          0x00=No
//          0x01=Yes
// $4BB5E4: [32bit] Recipe Card Pickup (Gloomleaf Swamp) - Barrel Blitz - One Player
//          0x00=Unavailable
//          0x01=Available
// $5205F8: [Float] Number of Tikis Collected
// $52067C: [Float] Number of Bugs
// $520688: [Float] Number of Crystals
// $520694: [Float] Number of Fruits
// $5207E4: [Pointer] Tak Info
//          +0x260=[Float] Health
//          +0x264=[Float] Max Health
//          
//          +0x6b94=[32bit] Weapon Equjipped
//          0x00=Thwack
//          0x01=Bolas
// $521784: [32bit] Level ID - Values in order of game levels.
//          Default on load=0xffffffff
//          On Load Also: 0x4a
//          0x00=Tak's Dream
//          0x01=Wetstone Lake
//          0x02=Bedlam Falls
//          0x03=Dream's Return
//          0x04=Greenheart Forest
//          0x05=Tower Approach
//          0x07=Woody Arena Part 1
//          0x06=Gloomleaf Swamp
//          0x07=Woody Arena Part 2 (Shares same as 1)
//          0x08=Silverfin River
//          0x09=Pandemonium Gate
//          0x0a=Skyrock Crater
//          0x0b=Planetarium
//          0x0c=The Dream Guardian
//          0x0d=Moon Juju Interlude
//          0x0e=Pachyderm Shrine
//          0x10=Pachyderm Rift. End = 0x46 Cutscene Leading Into Mountain Rift
//          0x0f=Gyre Mountain
//          0x12=Gyre Mountain Rift. End = 0x48 - Cutscene
//          0x11=Hotfoot Springs
//          0x13=Hotfoot Rift
//          0x14=The Wanderlands
//          0x15=Rift River
//          0x16=Dream Fortress
//          0x17=Tlaloc's Sanctuary
//          0x1a=Sandboarding Trick Score
//          0x2a=Dinky Games (Home Screen)
//          0x34=Main Menu Screen
function level() => dword(0x521784)
function lvl_clr(b, e) => prev(level()) == b && level() == e
achievement(
    "Nightmare's Beginnings...",
    "Clear Tak's Dream",
    points=5,
    trigger=
        lvl_clr(0, 1)
)
achievement(
    "Lake Boomdust",
    "Clear Wetstone Lake",
    points=5,
    trigger=
        lvl_clr(1, 2)
)
achievement(
    "Bucket Boat",
    "Clear Bedlam Falls",
    points=10,
    trigger=
        lvl_clr(2, 3)
)
achievement(
    "Reoccurring Nightmares",
    "Clear Dream's Return",
    points=5,
    trigger=
        lvl_clr(3, 4)
)
achievement(
    "Forest of Hearts",
    "Clear Greenheart Forest",
    points=5,
    trigger=
        lvl_clr(4, 5)
)
achievement(
    "Closer to the Guardian",
    "Clear Tower Approach",
    points=5,
    trigger=
        lvl_clr(5, 7)
)
achievement(
    "Woody Army!",
    "Clear Woody Arena for the first time",
    points=10,
    trigger=
        lvl_clr(7, 6)
)
achievement(
    "Frogs, Bees, Alligators, Oh My!",
    "Clear Gloomleaf Swamp",
    points=5,
    trigger=
        lvl_clr(6, 7)
)
achievement(
    "Woody Battle Part 2",
    "Clear Woody Arena for the second time",
    points=5,
    trigger=
        lvl_clr(7, 8)
)
// $521788: [32bit] Previous Level ID Loaded
// $58C048: [32bit] Character Controllable
//          0x00=No
//          0x01=Yes
// $18D2BA8: [32bit] Offset - Equipped Item Photo
//           0x02=Thwack
//           0x03=Bolas

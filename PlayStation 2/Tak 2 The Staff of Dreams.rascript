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
function bugs() => float(0x52067c)
// $520688: [Float] Number of Crystals
function crystals() => float(0x520688)
// $520694: [Float] Number of Fruits
function fruits() => float(0x520694)

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
        lvl_clr(0, 0x41)
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
achievement(
    "River Rapids 2",
    "Clear Silverfin River",
    points=5,
    trigger=
        lvl_clr(8, 9)
)
achievement(
    "Nightmare Chaos",
    "Clear Pandemonium Gates",
    points=10,
    trigger=
        lvl_clr(9, 0x44)
)
achievement(
    "Generator Platforming",
    "Clear Skyrock Crater",
    points=10,
    trigger=
        lvl_clr(0xa, 0xb)
)
achievement(
    "Gunk and Technology Excursion",
    "Clear Planetarium",
    points=10,
    trigger=
        lvl_clr(0xb, 0xc)
)
achievement(
    "The Staff of Dreams",
    "Clear the obstacles and defeat The Dream Guardian",
    points=10,
    trigger=
        lvl_clr(0xc, 0xd)
)
achievement(
    "Primal Decisions",
    "Select a new animal powerup provided to you through Moon Juju!",
    points=5,
    trigger=
        lvl_clr(0xd, 0xe)
)
achievement(
    "A Dangerous Shrine",
    "Clear Pachyderm Shrine",
    points=5,
    trigger=
        lvl_clr(0xe, 0x45)
)
achievement(
    "A Rift in Pachyderm",
    "Clear Pachyderm Rift",
    points=5,
    trigger=
        lvl_clr(0x10, 0x46)
)
achievement(
    "Mountain Trekker",
    "Clear Gyre Mountain",
    points=5,
    trigger=
        lvl_clr(0xf, 0x47)
)
achievement(
    "Rift Tearing",
    "Clear Gyre Mountain Rift",
    points=5,
    trigger=
        lvl_clr(0x12, 0x48)
)
achievement(
    "Spring Waters",
    "Clear Hotfoot Springs",
    points=5,
    trigger=
        lvl_clr(0x11, 0x13)
)
achievement(
    "Hot Feet for Rift Running",
    "Clear Hotfoot Rift",
    points=10,
    trigger=
        lvl_clr(0x13, 0x14)
)
achievement(
    "Wandering Far From Human Forme",
    "Clear The Wanderlands",
    points=10,
    trigger=
        lvl_clr(0x14, 0x15)
)
achievement(
    "Rainbow River",
    "Clear Rift River",
    points=10,
    trigger=
        lvl_clr(0x15, 0x16)
)
achievement(
    "Pins and Needles Defeated!",
    "Clear Dream Fortress!",
    points=10,
    trigger=
        lvl_clr(0x16, 0x17)
)
achievement(
    "Tlaloc's Demise",
    "Defeat Tlaloc in his sanctuary and finish the game!",
    points=25,
    trigger=
        lvl_clr(0x17, 0x42)
)
// $521788: [32bit] Previous Level ID Loaded
function recipe_mix(mix_flag) => //Blocks loading a save, as well as universal card brewing.
    level() <= 0x17 &&
    bugs() < prev(bugs()) &&
    crystals() < prev(crystals()) &&
    //fruits() < prev(fruits()) &&
    prev(dword(mix_flag + 4)) == 1 &&
    dword(mix_flag) > prev(dword(mix_flag))        
// $4BB3D8: [32bit] Recipe Mixed - Flea Flyer-One Player
//          0x00=No
//          0x01=Yes
// $4BB3DC: [32bit] Recipe Pickup (Wetstone Lake) - Flea Flyer-One Player
//          0x00=Unavailable
//          0x01=Available

// $4BB400: [32bit] Recipe Mixed - View Tak 2 Opening Cinematic
//          0x00=No
//          0x01=Yes
// $4BB404: [32bit] Recipe Pickup (Wetstone Lake) - View Tak 2 Opening Cinematic
//          0x00=Unavailable
//          0x01=Available
// $4BB428: [32bit] Recipe Mixed- Balloon Head Showdown - One and Two Player
//          0x00=No
//          0x01=Yes
// $4BB42C: [32bit] Recipe Pickup (Dream's Return) - Balloon Head Showdown-One And Two Player
//          Reveals mixing requirements
//          0x00=Unavailable
//          0x01=Available
// $4BB450: [32bit] Recipe Mixed - Tak's Feather Color
//          0x00=No
//          0x01=Yes
// $4BB454: [32bit] Recipe Pickup (Dream's Return) - Tak's Feather Color
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
// $4BB4A4: [32bit] Recipe Pickup (Greenheart Forest) - Lok Character for Dinky Games
//          0x00=Unavailable
//          0x01=Available
//          
//          NOTE - This seems to only update once entering Juju Potions Menu
// $4BB4C8: [32bit] Recipe Mixed - Increased Mana Magnet
//          0x00=No
//          0x01=Yes
// $4BB4CC: [32bit] Recipe Pickup (Tower Approach) - Increased Mana Magnet
//          0x00=Unavailable
//          0x01=Available
// $4BB4F0: [32bit] Recipe Mixed - Gloomleaf Arena - One Player
//          0x00=No
//          0x01=Yes
// $4BB4F4: [32bit] Recipe Pickup (Woody Arena) - Gloomleaf Arena - One Player
//          0x00=Unavailable
//          0x01=Available
// $4BB51C: [32bit] Recipe Mixed - Krash Kourse - Two Player
//          0x00=No
//          0x01=Yes
// $4BB520: [32bit] Recipe Pickup (Skyrock Crater) - Krash Kourse - Two Player
//          0x00=Unavailable
//          0x01=Available
// $4BB540: [32bit] Recipe Mixed - View Commercials
//          0x00=No
//          0x01=Yes
// $4BB544: [32bit] Recipe Pickup (Gloomleaf Swamp) - View Commercials
//          0x00=Unavailable
//          0x01=Available
// $4BB568: [32bit] Recipe Mixed - Catapult Chaos-Two Player
//          0x00=No
//          0x01=Yes
// $4BB56C: [32bit] Recipe Pickup (Pandemonium Gates) - Catapult Chaos-Two Player
//          0x00=Unavailable
//          0x01=Available
// $4BB590: [32bit] Recipe Mixed - Game Music
//          0x00=No
//          0x01=Yes
// $4BB594: [32bit] Recipe Pickup (Pandemonium Gates) - Game Music
//          0x00=Unavailable
//          0x01=Available
// $4BB5B8: [32bit] Recipe Mixed - New Particle Effects
//          0x00=No
//          0x01=Yes
// $4BB5BC: [32bit] Recipe Pickup (Skyrock Crater) - New Particle Effects
//          0x00=Unavailable
//          0x01=Available
// $4BB5E0: [32bit] Recipe Mixed - Barrel Blitz - One Player
//          0x00=No
//          0x01=Yes
// $4BB5E4: [32bit] Recipe Pickup (Gloomleaf Swamp) - Barrel Blitz - One Player
//          0x00=Unavailable
//          0x01=Available
// $4BB608: [32bit] Recipe Mixed - Chuckin' Chickens-One & Two Player
//          0x00=No
//          0x01=Yes
// $4BB60C: [32bit] Recipe Pickup (Planetarium) - Chuckin' Chickens-One & Two Player
//          0x00=Unavailable
//          0x01=Available
// $4BB630: [32bit] Recipe Mixed - Sound Effects Set 1
//          0x00=No
//          0x01=Yes
// $4BB634: [32bit] Recipe Pickup (Planetarium) - Sound Effects Set 1
//          0x00=Unavailable
//          0x01=Available
// $4BB658: [32bit] Recipe Mixed - Dart Tomb Dodgem-Two Player
//          0x00=No
//          0x01=Yes
// $4BB65C: [32bit] Recipe Pickup (Pachyderm Shrine) - Dart Tomb Dodgem-Two Player
//          0x00=Unavailable
//          0x01=Available
// $4BB680: [32bit] Recipe Mixed - JB Character for Dinky Games
//          0x00=No
//          0x01=Yes
// $4BB684: [32bit] Recipe Pickup (Pachyderm Shrine) - JB Character for Dinky Games
//          0x00=Unavailable
//          0x01=Available
// $4BB6A8: [32bit] Recipe Mixed - Pictures of the Tak Suit
//          0x00=No
//          0x01=Yes
// $4BB6AC: [32bit] Recipe Pickup (Pachyderm Shrine) - Pictures of the Tak Suit
//          0x00=Unavailable
//          0x01=Available
// $4BB6D0: [32bit] Recipe Mixed - Glide Ride - One Player
//          0x00=No
//          0x01=Yes
// $4BB6D4: [32bit] Recipe Pickup (Gyre Mountain) - Glide Ride - One Player
//          0x00=Unavailable
//          0x01=Available
// $4BB6F8: [32bit] Recipe Mixed - Fauna Character for Dinky Games
//          0x00=No
//          0x01=Yes
// $4BB6FC: [32bit] Recipe Pickup (Gyre Mountain) - Fauna Character for Dinky Games
//          0x00=Unavailable
//          0x01=Available
// $4BB720: [32bit] Recipe Mixed - Chicken Tennis-Two Player
//          0x00=No
//          0x01=Yes
// $4BB724: [32bit] Recipe Pickup (Hotfoot Springs) - Chicken Tennis-Two Player
//          0x00=Unavailable
//          0x01=Available
// $4BB748: [32bit] Recipe Mixed - View Concept Art
//          0x00=No
//          0x01=Yes
// $4BB74C: [32bit] Recipe Pickup (Hotfoot Springs) - View Concept Art
//          0x00=Unavailable
//          0x01=Available
// $4BB770: [32bit] Recipe Mixed - Frog Derby-One and Two Player
//          0x00=No
//          0x01=Yes
// $4BB774: [32bit] Recipe Pickup (The Wanderlands) - Frog Derby-One and Two Player
//          0x00=Unavailable
//          0x01=Available
// $4BB798: [32bit] Recipe Mixed - Dead Juju Character for Dinky Games
//          0x00=No
//          0x01=Yes
// $4BB79C: [32bit] Recipe Pickup (The Wanderlands) - Dead Juju Character for Dinky Games
//          0x00=Unavailable
//          0x01=Available
// $4BB7C0: [32bit] Recipe Mixed - View Tak 1 Game Cinematic
//          0x00=No
//          0x01=Yes
// $4BB7C4: [32bit] Recipe Pickup (The Wanderlands) - View Tak 1 Game Cinematic
//          0x00=Unavailable
//          0x01=Available
// $4BB7E8: [32bit] Recipe Mixed - Snowboard Air Time-One and Two-Player
//          0x00=No
//          0x01=Yes
// $4BB7EC: [32bit] Recipe Pickup - Snowboard Air Time-One and Two-Player
//          0x00=Unavailable
//          0x01=Available
//          NOTE: Use universal card for this one. No in-game map.
// $4BB810: [32bit] Recipe Mixed - Sound Effects Set 2
//          0x00=No
//          0x01=Yes
// $4BB814: [32bit] Recipe Pickup - Sound Effects Set 2
//          0x00=Unavailable
//          0x01=Available
//          NOTE: Use Universal card. No pickup location in-game.
// $4BB838: [32bit] Recipe Mixed - View Tak 1 Opening Cinematic
//          0x00=No
//          0x01=Yes
// $4BB83C: [32bit] Recipe Pickup - View Tak 1 Opening Cinematic
//          0x00=Unavailable
//          0x01=Available
//          NOTE: Use Universal Card - No in-game pickup location exists.
// $4BB860: [32bit] Recipe Mixed - Tlaloc Character for Dinky Games
//          0x00=No
//          0x01=Yes
// $4BB864: [32bit] Recipe Pickup - Tlaloc Character for Dinky Games
//          0x00=Unavailable
//          0x01=Available
//          NOTE: Use Universal Card. No pickup location in-game.
achievement(
    "Game of Fleas!",
    "Collect and mix the Flea Flyer One Player recipe card from Wetstone Lake!",
    points=5,
    trigger=
        recipe_mix(0x4bb3d8)
)
achievement(
    "Tak 2 Movie Theatre",
    "Collect and mix the View Tak 2 Opening Cinematic recipe card from Wetstone Lake!",
    points=5,
    trigger=
        recipe_mix(0x4bb400)
)
achievement(
    "Butting Heads",
    "Collect and mix the Balloon Head Showdown One and Two Player recipe card from Dream's Return!",
    points=5,
    trigger=
        recipe_mix(0x4bb428)
)
achievement(
    "Change in Style",
    "Collect and mix the Tak's Feather Color recipe card from Dream's Return!",
    points=5,
    trigger=
        recipe_mix(0x4bb450)
)
achievement(
    "A New Jungle Game",
    "Collect and mix the Vine Climb Two Player recipe card from Greenheart Forest!",
    points=5,
    trigger=
        recipe_mix(0x4bb478)
)
achievement(
    "Lok: The Mighty Warrior",
    "Collect and mix the Lok Character for Dinky Games recipe card from Greenheart Forest!",
    points=5,
    trigger=
        recipe_mix(0x4bb4a0)
)
achievement(
    "Powerful Pulling Sensations",
    "Collect and mix the 'Increased Mana Magnet' recipe card from Tower Approach!",
    points=5,
    trigger=
        recipe_mix(0x4bb4c8)
)
achievement(
    "Swampy Arena",
    "Collect and mix the 'Gloomleaf Arena One Player' recipe card from the Woody Arena!",
    points=5,
    trigger=
        recipe_mix(0x4bb4f0)
)
achievement(
    "Kar Krasher",
    "Collect and mix the 'Krash Kourse Two Player' recipe card from Skyrock Crater!",
    points=5,
    trigger=
        recipe_mix(0x004bb518)
)
achievement(
    "Take a Break!",
    "Collect and mix the 'View Commercials' recipe card from Gloomleaf Swamp!",
    points=5,
    trigger=
        recipe_mix(0x4bb540)
)
achievement(
    "Chaotic Weapon Choices",
    "Collect and mix the 'Catapult Chaos Two Player' recipe card from Pandemonium Gates!",
    points=5,
    trigger=
        recipe_mix(0x4bb568)
)
achievement(
    "OST Appreciation!",
    "Collect and mix the 'Game Music' recipe card from Pandemonium Gates!",
    points=5,
    trigger=
        recipe_mix(0x4bb590)
)
achievement(
    "New Looks",
    "Collect and mix the 'New Particle Effects' recipe card from Skyrock Crater!",
    points=5,
    trigger=
        recipe_mix(0x4bb5b8)
)
achievement(
    "River Rage!",
    "Collect and mix the 'Barrel Blitz One Player' recipe card from Gloomleaf Swamp!",
    points=5,
    trigger=
        recipe_mix(0x4bb5e0)
)
achievement(
    "Chickin Chit",
    "Collect and mix the 'Chuckin' Chickens One and Two Player' recipe card from Planetarium!",
    points=5,
    trigger=
        recipe_mix(0x4bb608)
)
achievement(
    "Beat Listener",
    "Collect and mix the 'Sound Effects Set 1' recipe card from Planetarium!",
    points=5,
    trigger=
        recipe_mix(0x4bb630)
)
achievement(
    "Dart Dodgin' Game!",
    "Collect and mix the 'Dart Tomb Dodgem Two Player' recipe card from Pachyderm Shrine!",
    points=5,
    trigger=
        recipe_mix(0x4bb658)
)
achievement(
    "A New Challenger Approaches Dinky",
    "Collect and mix the 'JB Character for Dinky Games' recipe card from Pachyderm Shrine!",
    points=5,
    trigger=
        recipe_mix(0x4bb680)
)
achievement(
    "Tak's Selfie",
    "Collect and mix the 'Pictures of the Tak Suit' recipe card from Pachyderm Shrine!",
    points=5,
    trigger=
        recipe_mix(0x4bb6a8)
)
achievement(
    "Flyin' High",
    "Collect and mix the 'Glide Ride One Player' recipe card from Gyre Mountain!",
    points=5,
    trigger=
        recipe_mix(0x4bb6d0)
)
achievement(
    "Fauna's Return",
    "Collect and mix the 'Fauna Character for Dinky Games' recipe card from Gyre Mountain!",
    points=5,
    trigger=
        recipe_mix(0x4bb6f8)
)
achievement(
    "Racket Slapping Chickens",
    "Collect and mix the 'Chicken Tennis Two Player' recipe card from Hotfoot Springs!",
    points=5,
    trigger=
        recipe_mix(0x4bb720)
)
achievement(
    "Conceptualizing Art Pieces",
    "Collect and mix the 'View Concept Art' recipe card from Hotfoot Springs!",
    points=5,
    trigger=
        recipe_mix(0x4bb748)
)
achievement(
    "A Game of Frogs",
    "Collect and mix the 'Frog Derby One and Two Player' recipe card from The Wanderlands!",
    points=5,
    trigger=
        recipe_mix(0x4bb770)
)
achievement(
    "A Challenging Skeleton",
    "Collect and mix the 'Dead Juju Character for Dinky Games' recipe card from The Wanderlands!",
    points=5,
    trigger=
        recipe_mix(0x4bb798)
)
achievement(
    "Tak 1 Movie Collector",
    "Collect and mix the 'View Tak 1 Game Cinematic' recipe card from The Wanderlands!",
    points=5,
    trigger=
        recipe_mix(0x4bb7c0)
)
function universal_mix(target) =>
    level() <= 0x17 &&
    bugs() < prev(bugs()) &&
    crystals() < prev(crystals()) &&
    fruits() < prev(fruits()) &&
    target > prev(target)
achievement(
    "Snowboarding Encore",
    "Mix the 'Snowboard Air Time One and Two Player' recipe card using the Universal Card!",
    points=5,
    trigger=
        universal_mix(dword(0x4bb7e8))
)
achievement(
    "Beat Master",
    "Mix the 'Sound Effects Set 2' recipe card using the Universal Card!",
    points=5,
    trigger=
        universal_mix(dword(0x4bb810))
)
achievement(
    "Tak 1 Introduction!",
    "Mix the 'View Tak 1 Opening Cinematic' recipe card using the Universal Card!",
    points=5,
    trigger=
        universal_mix(dword(0x4bb838))
)
achievement(
    "Tlaloc's Return",
    "Mix the 'Tlaloc Character for Dinky Games' recipe card using the Universal Card!",
    points=5,
    trigger=
        universal_mix(dword(0x4bb860))
)
function text_result_pointer() => dword_be(dword(dword(dword(0x4C23F8) + 0x000010) + 0x0001B8))
keyword_win = 0x596f7520
keyword_lose = 0x0536f7272
// $4C23FC: [32bit] Pointer - Minigame Timer
//          +0x10=Timer Active (Not Used in Decrement minigames)
//          0x00=No
//          0x01=Yes
//          +0x14=(Float) Time - Used in time challenge minigames.
function timer_running() => dword(dword(0x4c23fc) + 0x10)
function timer_stop() => prev(timer_running()) == 1 && timer_running() == 0
function minigame_timer() => float(dword(0x4c23fc) + 0x14)
function timer_check() => dword(0x4c23fc) != 0
// $562EA8: [32bit] Pointer - Feather Frenzy
//          +0x18=[32bit] Feathers Collected
function feather_score() => dword(dword(0x562ea8) + 0x18)
// $563A28: [Pointer] Flea Fly -1Player
//          +0x1c=[32bit] Score
function flea_score() => dword(dword(0x563a28) + 0x1c)
function single_player() => dword(0x0051aab8) == 0
achievement(
    "Chicken Obsession",
    "Win a game of Feather Frenzy!",
    points=5,
    trigger=
        level() == 0x20 && //Feather Frenzy 1P
        single_player() &&
        feather_score() >= 30 &&
        timer_check() && 
        minigame_timer() != 0.0 &&
        prev(minigame_timer()) > 0.7 &&
        minigame_timer() < 0.7
)
achievement(
    "Jibulba Flying Machine!",
    "Win a game of Flea Flyer!",
    points=5,
    trigger=
        level() == 0x29 && //Flea Flyer 1P ID
        single_player() &&
        flea_score() >= 50000 &&        
        timer_check() &&
        minigame_timer() != 0.0 && // Load protection
        prev(minigame_timer()) > 0.7 &&
        minigame_timer() < 0.7
)
// $5207E4: [Pointer] Tak Info
//          +0x260=[Float] Health
//          +0x264=[Float] Max Health
//          
//          +0x6b94=[32bit] Weapon Equjipped
//          0x00=Thwack
//          0x01=Bolas

function tak_health() => float(dword(0x5207e4) + 0x260)
achievement(
    "Water Surfer",
    "Win a game of Barrel Blitz!",
    points=5,
    trigger=
        level() == 0x26 && //Barrel Blitz Level ID
        text_result_pointer() == keyword_win &&
        single_player()
)
function snowboard_timer_stop() => prev(dword(dword(0x4c23fc) + 0x10)) == 1 && dword(prev(dword(0x4c23fc)) +0x10) == 0
achievement(
    "Snowboard Race!",
    "Win a game of Snowboard Race!",
    points=5,
    trigger=
        level() == 0x19 &&
        single_player() &&
        snowboard_timer_stop()
)
achievement(
    "Snowboard Speedrunner",
    "Beat the race with a minute or more remaining on the clock!",
    points=10,
    trigger=
        level() == 0x19 &&
        single_player() &&
        prev(minigame_timer()) >= 60.0 &&
        trigger_when(snowboard_timer_stop())
)
achievement(
    "Phoenix Fighters!",
    "Defeat Pins and Needles in Phoenix Fight!",
    points=5,
    trigger=
        level() == 0x18 &&
        single_player() &&
        text_result_pointer() == keyword_win
)
achievement(
    "One Sweet Ride",
    "Win a game of Glide Ride!",
    points=5,
    trigger=
        level() == 0x28 &&
        text_result_pointer() == keyword_win &&
        single_player()
)

// $5638C0: [Pointer] Snowboard Air Time
//          +0xafc=[Float] Time In Air
function snowboard_air_time() => float(dword(0x5638c0) +0xafc)
achievement(
    "Snowboarding? Basically Hoverboarding Instead!",
    "Win a game of Snowboard Air Time!",
    points=5,
    trigger=
        level() == 0x1b &&
        minigame_timer() != 0 &&
        prev(minigame_timer()) > 0.7 &&
        minigame_timer() < 0.7 &&
        snowboard_air_time() >= 60.0 &&
        single_player()
)
function mummy_score() => dword(dword(0x562a28) + 0x28)

achievement(
    "Mummies in Peril",
    "Win a game of Mummy Shuttle!",
    points=5,
    trigger=
        level() == 0x1e &&
        prev(minigame_timer()) > 0.7 &&
        minigame_timer() < 0.7 &&
        mummy_score() >= 1500 &&
        single_player()
)
function sandboard_score() => dword(dword(0x5207e4) +0x10fc)

achievement(
    "Sandboarding Score Slayer",
    "Win a game of Sandboard Trick Score!",
    points=5,
    trigger=
        level() == 0x1a &&
        sandboard_score() >= 50000 &&
        prev(minigame_timer()) > 0.7 &&
        minigame_timer() < 0.7 &&
        single_player()
)
function chicken_score() => dword(dword(0x5641a8) + 0x1c)
achievement(
    "Chicken Cannon Pro",
    "Win a game of Chuckin' Chickens!",
    points=5,
    trigger=
        level() == 0x21 &&
        chicken_score() >= 20000 &&
        prev(minigame_timer()) > 0.7 &&
        minigame_timer() < 0.7 &&
        single_player()
)
function gloomleaf_round() => dword(dword(0x568a28) + 0x2c)

achievement(
    "Gloomleaf Trial I",
    "Clear Round 5 of Gloomleaf Arena!",
    points=5,
    trigger=
        level() == 0x24 &&
        prev(gloomleaf_round()) == 0x4 &&
        gloomleaf_round() == 0x5 &&
        single_player()
)
achievement(
    "Gloomleaf Trial II",
    "Clear Round 10 of Gloomleaf Arena!",
    points=5,
    trigger=
        level() == 0x24 &&
        prev(gloomleaf_round()) == 0x9 &&
        gloomleaf_round() == 0xa &&
        single_player()
)
achievement(
    "Gloomleaf Trial III",
    "Clear Round 15 of Gloomleaf Arena!",
    points=10,
    trigger=
        level() == 0x24 &&
        prev(gloomleaf_round()) == 14 &&
        gloomleaf_round() == 15 &&
        single_player()
)
achievement(
    "Frog Run",
    "Win a game of Frog Derby!",
    points=5,
    trigger=
        level() == 0x22 &&
        text_result_pointer() == keyword_win &&
        single_player()
)
function state_pins() => dword(dword(0x563228) + 0x2c)
function state_needles() => dword(dword(0x563228) + 0x30)
function tak_state() => dword(dword(0x563228) + 0x34)
achievement(
    "Bobble Head Explosion!",
    "Win a game of Bobble Head Showdown",
    points=10,
    trigger=
        level() == 0x1f &&
        tak_state() != 3 &&
        prev(state_pins() + state_needles()) < 6 &&
        state_pins() + state_needles() == 6 &&
        single_player()
)
//Dinky's Challenge mode clears
//Must have all single player games unlocked:
//Snowboard Air Time, Balloon Head Showdown, Flea Flyer,
// Chuckin’ Chickens, Frog Derby, Gloomleaf Arena, Barrel Blitz, Glide Ride
//TODO: Find flags for minigame unlocks.... Lol
function dinky_rounds_count() => dword(dword(0x566a44) +0xd4)
function dinky_rounds_won() => dword(dword(0x566a44) +0xe8)
achievement(
    "Dinky's Guantlet I",
    "Beat Dinky Challenge mode with 3 games!",
    points=5,
    trigger=
        level() == 0x2a &&
        dinky_rounds_count() == 3 &&
        dinky_rounds_won() == 3
)
achievement(
    "Dinky's Guantlet II",
    "Beat Dinky Challenge mode with 5 games!",
    points=5,
    trigger=
        level() == 0x2a &&
        dinky_rounds_count() == 5 &&
        dinky_rounds_won() == 5
)
achievement(
    "Dinky's Guantlet III",
    "Beat Dinky Challenge mode with 7 games!",
    points=10,
    trigger=
        level() == 0x2a &&
        dinky_rounds_count() == 7 &&
        dinky_rounds_won() == 7
)
maps = {
    0:"In Tak's Dream",
    1:"Exploring Wetstone Lake",
    2:"Floating down Bedlam Falls",
    3:"In Dream's Return",
    4:"Exploring Greenheart Forest",
    5:"In Tower Approach",
    6:"Exploring Gloomleaf Swamp",
    7:"Fighting in Woody Arena",
    8:"Floating down Silverfin River",
    9:"At Pandemonium Gate",
    0xa:"Exploring Skyrock Crater",
    0xb:"Exploring Planetarium", 
    0xc:"Meeting The Dream Guardian",
    0xd:"Selecting an Animal power from Moon Juju",
    0xe:"Exploring Pachyderm Shrine",
    0xf:"Exploring Gyre Mountain",
    0x10:"Running in Pachyderm Rift",
    0x11:"Exploring Hotfoot Springs",
    0x12:"Running in Gyre Mountain Rift",
    0x13:"Running in Hotfoot Rift",
    0x14:"Exploring The Wanderlands",
    0x15:"Paddling down Rift River",
    0x16:"Fighting Pins & Needles at the Dream Fortress",
    0x17:"Fighting at Tlaloc's Sanctuary",
    0x18:"[Dinky Games] Playing Phoenix Attack!",
    0x1c:"[Dinky Games] Playing Vine Climb!",
    0x1d:"[Dinky Games] Playing Dart Tomb Dodgem!",
    0x1f:"[Dinky Games] Playing Bobble Head Showdown!",
    0x22:"[Dinky Games] Playing Frog Derby!",
    0x23:"[DInky Games] Playing Chicken Tennis!",
    0x25:"[Dinky Games] Playing Catapult Chaos!",
    0x27:"[Dinky Games] Playing Krash Kourse!",
    0x28:"[Dinky Games] Playing Glide Ride!",
    0x2a:"Prepping to play at Dinky's Temple!",
    0x34:"In the Main Menu",
    0x43:"Viewing the Credits"
}
text_hashes = {
    keyword_win:"[Dinky Games] Won a game of",
    keyword_lose:"[Dinky Games] Lost a game of"
}
minigame_ids = { //For final result RP string.
    0x18:"Phoenix Attack",
    0x19:"Snowboarding Race",
    0x1a:"Sandboarding Trick Score",
    0x1c:"Vine Climb",
    0x1d:"Dart Tomb Dodgem",
    0x1e:"Mummy Shuttle",
    0x1f:"Bobble Head Showdown",
    0x20:"Feather Frenzy",
    0x21:"Chuckin' Chickens",
    0x22:"Frog Derby",
    0x23:"Chicken Tennis",
    0x24:"Gloomleaf Arena",
    0x25:"Catapult Chaos",
    0x26:"Barrel Blitz",
    0x27:"Krash Kourse",
    0x28:"Glide Ride",
    0x29:"Flea Flyer"
}
function loading_progress() => float(0x51985c)
rich_presence_conditional_display(loading_progress() > prev(loading_progress()), "Loading...")
rich_presence_conditional_display(text_result_pointer() == keyword_win || text_result_pointer() == keyword_lose, "{0} {1}!",
    rich_presence_lookup("GameResult", text_result_pointer(), text_hashes),
    rich_presence_lookup("Game", level(), minigame_ids)
)
function minigame_time() => rich_presence_value("Time", minigame_timer(), "SECS")
rich_presence_conditional_display(level() == 0x19, "[Dinky Games] Playing Snowboard Race! ⏳ {0}",
    minigame_time()
)
rich_presence_conditional_display(level() == 0x1a, "[Dinky Games] Playing Sandboarding Trick Score! 🏆 {0} ⏳ {1}",
    rich_presence_macro("Number", sandboard_score()),
    minigame_time()
)
rich_presence_conditional_display(level() == 0x1b, "[Dinky Games] Playing Snowboard Air Time! Total Air Time: {0}! Time Left: {1}!",
    rich_presence_value("Time-Two", snowboard_air_time() * 100, "MILLISECS"),
    minigame_time()
)
rich_presence_conditional_display(level() == 0x1e, "[Dinky Games] Playing Mummy Shuttle! 🏆 {0} ⏳ {1}",
    rich_presence_macro("Number", mummy_score()),
    minigame_time()
)
rich_presence_conditional_display(level() == 0x20, "[Dinky Games] Playing Feather Frenzy! 🪶 {0} ⏳ {1}",
    rich_presence_macro("Number", feather_score()),
    minigame_time()
)
rich_presence_conditional_display(level() == 0x21, "[Dinky Games] Playing Chuckin' Chickens! 🏆 {0} ⏳ {1}",
    rich_presence_macro("Number", chicken_score()),
    minigame_time()
)
rich_presence_conditional_display(level() == 0x22, "[Dinky Games] Playing Frog Derby! ⏳ {0}",
    minigame_time()
)
rich_presence_conditional_display(level() == 0x24, "[Dinky Games] Playing Gloomleaf Arena! Round: {0} ⌛ {1}",
    rich_presence_macro("Number", gloomleaf_round() + 1),
    minigame_time()
)
rich_presence_conditional_display(level() == 0x26, "[Dinky Games] Playing Barrel Blitz! ⏳ {0}",
    minigame_time()
)
rich_presence_conditional_display(level() == 0x29, "[Dinky Games] Playing Flea Flyer! 🏆 {0} ⏳ {1}",
    rich_presence_macro("Number", flea_score()),
    minigame_time()
)
rich_presence_display("{0}",
    rich_presence_lookup("DefaultMap", level(), maps, "Journeying for the Staff of Dreams")
)
function score_init(target) => prev(target) == 0 && target != 0
function game_exit(target) => level() != target || text_result_pointer() == keyword_lose
function game_win() => text_result_pointer() == keyword_win
leaderboard(
    "Snowboard Race Run",
    "Quickest time after winning a game of Snowboard Race!",
    level() == 0x19 && minigame_timer() == 151.0,
    game_exit(0x19),
    game_win(),
    151.0 - prior(minigame_timer()),
    "SECS",
    true
)
leaderboard(
    "Sandboard Trick Scorer",
    "Most points scored after winning a game!",
    level() == 0x1a && minigame_timer() < prev(minigame_timer()),
    game_exit(0x1a),
    game_win(),
    sandboard_score(),
    "Score",
    false
)
leaderboard(
    "Snowboard Air Time",
    "Most Air Time total after winning a game!",
    level() == 0x1b && minigame_timer() < prev(minigame_timer()),
    game_exit(0x1b),
    game_win(),
    snowboard_air_time() * 100,
    "MILLISECS",
    false
)
leaderboard(
    "Mummy Shuttle Scorer",
    "Most points scored after winning a game!",
    level() == 0x1e && score_init(mummy_score()),
    game_exit(0x1e),
    game_win(),
    mummy_score(),
    "Score",
    false
)
leaderboard(
    "Feather Frenzy Collector!",
    "Most feathers collected after winning a game!",
    level() == 0x20 && score_init(feather_score()),
    game_exit(0x20),
    game_win(),
    feather_score(),
    "Score",
    false
)
leaderboard(
    "Chuckin' Chickens Scorer",
    "Most points scored after winning a game!",
    level() == 0x21 && score_init(chicken_score()),
    game_exit(0x21),
    game_win(),
    chicken_score(),
    "Score",
    false    
)
leaderboard(
    "Frog Derby Run",
    "Quickest time after winning a game of Frog Derby",
    level() == 0x22 && minigame_timer() == 61.0,
    game_exit(0x22),
    game_win(),
    61.0 - prior(minigame_timer()),
    "SECS",
    true
)
leaderboard(
    "Gloomleaf Arena",
    "Highest round reached in the Gloomleaf Arena",
    level() == 0x24 && minigame_timer() > prev(minigame_timer()),
    level() != 0x24,
    text_result_pointer() == keyword_win || text_result_pointer() == keyword_lose,
    gloomleaf_round() + 1,
    "Score",
    false    
)
leaderboard(
    "Barrel Blitz Run",
    "Quickest time after winning a game of Barrel Blitz",
    level() == 0x26 && minigame_timer() > prev(minigame_timer()),
    game_exit(0x26),
    game_win(),
    minigame_timer(),
    "SECS",
    true
)
leaderboard(
    "Flea Flyer Scorer",
    "Most points scored after winning a game!",
    level() == 0x29 && score_init(flea_score()),
    game_exit(0x29),
    game_win(),
    flea_score(),
    "Score",
    false
)

// $58C048: [32bit] Character Controllable
//          0x00=No
//          0x01=Yes
// $18D2BA8: [32bit] Offset - Equipped Item Photo
//           0x02=Thwack
//           0x03=Bolas


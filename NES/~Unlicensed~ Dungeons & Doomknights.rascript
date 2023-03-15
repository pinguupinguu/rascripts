// ~Unlicensed~ Dungeons & Doomknights
// #ID = 22575

// $0612: [8bit] Axe Available to Use
//        0x00=No
//        0x01=Yes
// $061A: [8bit] Location ID
//        0x01=Overworld?
//        0x02="Old Man's Cave"
function location() => byte(0x61a)
overworld = 1
caves = 2
// $067F: [8bit] Artix X-Coord
// $0680: [8bit] Artix Y-Coordinate
// $0685: [8bit] Map ID
//        Location ID: 1 - Overworld
//        0x81 = Graveyard area
//        0x10=Death's Chamber (Before Fght)
//        0x47=Death Fight Achievement: delta 0x47 > mem 0x70
//        0x70=First Platform In Game
//        
//        Location ID: 2
//        0x42 - Old Man Cave Boss Fight
//        0x41 = Old Man Boss Cave - Back Room?
function map_ID() => byte(0x685)
// $06D4: [8bit] Health
function artix_health() => byte(0x06d4)
// $06D6: [8bit] Max Number of Hearts
function artix_health_max() => byte(0x06d6)
// $06D7: [8bit] Skill Amount
// $06D8: [8bit] Number of Keys (Ones)
// $06D9: [8bit] Number of Keys Tens)
// $06DA: [8bit] Number of Coins (Ones)
// $06DB: [8bit] Number of Coins (Tens)
// $06DC: [8bit] Artix Current Level (Ones)
function artix_level_ones() => byte(0x06dc)
// $06DD: [8bit] Artix Current Level (Tens)
// $06E1: [8bit] Skill Unlock - Undead Doggie (Gives Artix Level)

achievement(
    "Fighting Fate",
    "Defeat Death in a pit!",
    points=2,
    trigger=
        prev(location()) == caves &&
        prev(map_ID()) == 0x47 &&
        map_ID() == 0x70
)
achievement(
    "Escaping the Clutches of Fate",
    "Defeat Death without taking damage",
    points=5,
    trigger=
        unless(prev(location()) != caves) &&
        never(artix_health() < prev(artix_health())) &&
        once(prev(map_ID()) == 0x10 && map_ID() == 0xfd) &&
        trigger_when(prev(map_ID()) == 0x47 && map_ID() == 0x70)
)
achievement(
    "A Heart A Day Keeps the Monsters at Bay",
    "Gain an extra heart while trying to recover your axe from the Old Man!",
    points=2,
    trigger=
        location() == caves &&
        map_ID() == 0x72 &&
        artix_health_max() - prev(artix_health_max()) == 1
)
achievement(
    "A Boney Journey for Artix's Axe!",
    "Recover your axe in the caves and level Artix up to level 1!",
    points=2,
    trigger=
        location() == caves &&
        map_ID() == 0x53 &&
        prev(artix_level_ones()) == 0 &&
        artix_level_ones() == 1
)
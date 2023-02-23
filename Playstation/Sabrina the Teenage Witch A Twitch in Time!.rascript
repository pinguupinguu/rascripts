// Sabrina the Teenage Witch: A Twitch in Time!
// #ID = 17485

// $07C8B0: [8bit] Spell Book - Squish-a-Rama Spell

// $07C8B1: [8bit] Spell Book - Upside Down
// $07C8B2: [8bit] Spell Book - Shrink
// $07C8B3: [8bit] Spell Book - Flippity-Ribbit
// $07C8B4: [8bit] Spell Book - Freeze
// $07C8B5: [8bit] Spell Book - Up Up and Away!
// $07CA00: [8bit] Map ID
function map_ID() => byte(0x07ca00)
function save_protection() => prev(map_ID()) <= 0xe && prev(map_ID()) != 0
// $07CA1E: [16bit] Selected Menu Option
// $07CB28: [16bit] Level Gem Count
// $07CB80: [8bit] Player Locked
function locked_flag() => byte(0x07cb80)
// $06D5AC: [32bit] Game Menu is Loaded
//          0x00000000=No
//          0xffffffff=Yes
function menu_load() => dword(0x06d5ac)
function clear_level() => prev(locked_flag()) == 1 && prev(menu_load()) == 0x00000000 && menu_load() == 0xffffffff 
// $08B210: [8bit] Health
// $08B450: [8bit] Final Boss Health
function final_boss_health() => byte(0x08b450)
// $08B8D0: [8bit] Boss - Shogun Warrior Health
function shogun_health() => byte(0x08b8d0)
// $08BD50: [8bit] Boss - Ra Health & The Rainmaker
function ra_rainmaker_health() => byte(0x08bd50)
// $08BE70: [8bit] Boss - Bob the Brawler Boss Health
function bob_health() => byte(0x08be70)
// $0C8518: [8bit] Lives
// $0C8556: [8bit] Global Gem Count


// $0C8569: [8bit] Virgo Clock Piece
function clock_virgo() => byte(0x0c8569) // Bob the Brawler
// $0C856C: [8bit] Sagittarius Clock Piece
function clock_saggitarius() => byte(0x0c856c) // Ra
// $0C856F: [8bit] Scorpio Clock Piece (Earned from Defeating Shogun Warrior) //Shogun Warrior
function clock_scorpio() => byte(0x0c856f)
// $0C8572: [8bit] Libra (Scales) Clock Piece
function clock_libra() => byte(0x0c8572) //Rainmaker
// $0C857A: [8bit] Treasures - Scarab Count
// $0C8948: [32bit] Caveman Village Available
//          0x00=No
//          0x01=Yes
function caveman_village_flag() => dword(0x0c8948)
// $0C8A89: [32bit] Volcanic Caves Available
//          0x00=No
//          0x01=Yes
function volcano_caves_flag() => dword(0xc8a89)
// $0C8D0B: [32bit] Egyptian Village Available
//          0x00=No
//          0x01=Yes
function egyptian_village_flag() => dword(0x0c8d0b)
// $0C8E4C: [32bit] Tomb Construction Site Available
function tomb_site_flag() => dword(0x0c8e4c)
// $0C90CE: [32bit] Japanese Fortress Available
//          0x00=No
//          0x01=Yes
function fortress_flag() => dword(0x0c90ce)
// $0C920F: [32bit] Mountaintop Temple Available
//          0x00=No
//          0x01=Yes
function mountaintop_flag() => dword(0x0c920f)
// $0C9491: [32bit] Mining Camp Available
//          0x00=No
//          0x01=Yes
function mining_flag() => dword(0x0c9491)
// $0C95D2: [32bit] Ghost Town Available
function ghost_flag() => byte(0x0c95d2)
function progression(flag) =>
       save_protection() &&
       prev(flag) == 0 &&
       flag == 1

achievement(
    "Going Through the Goo",
    "Clear The Tarpits",
    points=5,
    id=292618,
    trigger=
        map_ID() == 1 &&
        save_protection() &&
        clear_level()
)
achievement(
    "The Flintstones Don't Live Here",
    "Clear Caveman Village",
    points=5,
    id=292619,
    trigger=       
        map_ID() == 2 &&
        save_protection() &&
        clear_level()
)
achievement(
    "Volcanic Caves Smackdown!",
    "Defeat Bob the Bowler and collect the Virgo clock piece!",
    points=10,
    id=292620,
    trigger=
        
        save_protection() &&
        clock_virgo() > prev(clock_virgo())
)
achievement(
    "Into Egypt We Go!",
    "Clear Desert Canyon",    
    points=5,
    id=292621,
    trigger=
        map_ID() == 4 &&
        save_protection() &&
        clear_level()
)
achievement(
    "The Nile High Club",
    "Clear Egyptian Village",
    points=5,
    id=292622,
    trigger=
        map_ID() == 5 &&
        save_protection() &&
        clear_level()
)
achievement(
    "The Cool Sun God",
    "Beat Ra in Tomb Construction Site and collect the Sagittarius clock piece!",
    points=10,
    id=292623,
    trigger=        
        save_protection() &&
        clock_saggitarius() > prev(clock_saggitarius())
)
achievement(
    "A Formal Trip to Japan!",
    "Clear Formal Gardens",
    points=5,
    id=292624,
    trigger=
        map_ID() == 7 &&
        save_protection() &&
        clear_level()
)
achievement(
    "Fortress of Jugs",
    "Clear Japanese Fortress",
    points=5,
    id=292625,
    trigger=
        map_ID() == 8 &&
        save_protection() &&
        clear_level()
)
achievement(
    "Samurai Master",
    "Defeat the Shogun Warrior in Mountaintop Temple and collect the Scorpio clock piece!",
    points=10,
    id=292626,
    trigger=
        map_ID() == 9 &&
        save_protection() &&
        clear_level() &&
        shogun_health() == 0
)
achievement(
    "This Isn't South Dakota",
    "Clear The Badlands",
    points=5,
    id=292627,
    trigger=
        map_ID() == 0xa &&
        save_protection() &&
        clear_level()
)
achievement(
    "Mining for Diamonds. Wow!",
    "Clear Mining Camp",
    points=5,
    id=292628,
    trigger=
        map_ID() == 0xb &&
        save_protection() &&
        clear_level()
) 
achievement(
    "The Weather Outside Isn't Frightful!",
    "Defeat the Rainmaker in Ghost Town and collect the Libra clock piece!",
    points=10,
    id=292629,
    trigger=
        save_protection() &&
        clock_libra() > prev(clock_libra())
)
achievement(
    "The Final Matching Showdown!",
    "Defeat the final boss and clean up Sabrina's Chaotic mess!",
    points=25,
    id=292630,
    trigger=
        map_ID() == 0xe && //Final Fight
        prev(final_boss_health()) == 1 &&
        final_boss_health() == 0
)
// $0C8567: [8bit] Capricorn Clock Piece
function clock_capricorn() => byte(0x0c8567)
achievement(
    "The Goat",
    "Collect the Capricorn clock piece",
    points=2,
    id=292631,
    trigger=
        progression(clock_capricorn())
)
// $0C8568: [8bit] Taurus Clock Piece
function clock_taurus() => byte(0x0c8568)
achievement(
    "The Bull",
    "Collect the Taurus clock piece",
    points=2,
    id=292632,
    trigger=
        progression(clock_taurus())
)
// $0C856A: [8bit] Aeries Clock Piece
function clock_aeries() => byte(0x0c856a)
achievement(
    "The Ram",
    "Collect the Aries clock piece",
    points=2,
    id=292633,
    trigger=
        progression(clock_aeries())
)
// $0C856B: [8bit] Leo Clock Piece
function clock_leo() => byte(0x0c856b)
achievement(
    "The Lion",
    "Collect the Leo clock piece",
    points=2,
    id=292634,
    trigger=
        progression(clock_leo())
)
// $0C856D: [8bit] Pisces Clock Piece
function clock_pisces() => byte(0x0c856d)
achievement(
    "The Fish",
    "Collect the Pisces clock piece",
    points=2,
    id=292635,
    trigger=
        progression(clock_pisces())
)
// $0C856E: [8bit] Cancer Clock Piece
function clock_cancer() => byte(0x0c856e)
achievement(
    "The Crab",
    "Collect the Cancer clock piece",
    points=2,
    id=292636,
    trigger=
        progression(clock_cancer())
)
// $0C8570: [8bit] Jug Clock Piece (Aquarius?)
function clock_aquarius() => byte(0x0c8570)
achievement(
    "The Water Bearer",
    "Collect the Aquarius clock piece",
    points=2,
    id=292637,
    trigger=
        progression(clock_aquarius())
)
// $0C8571: [8bit] Gemini Clock Piece
function clock_gemini() => byte(0x0c8571)
achievement(
    "The Twins",
    "Collect the Gemini clock piece",
    points=2,
    id=292638,
    trigger=
        progression(clock_gemini())
)

function outfit_cheevo(val, var) =>
    save_protection() &&
    prev(var) == 0 &&
    var == val
// $0C8562: [8bit]  Nerfertiti Outfit Unlocked
//          0x00=No
//          0x01=Yes
function nefertiti() => byte(0x0c8562)
// $0C8563: [8bit] Cave Chick Outfit Unlocked
//          0x00=No
//          0x02=Yes
function cave_chick() => byte(0x0c8563)
// $0C8564: [8bit] Wild West Outfit Unlocked
//          0x00=No
//          0x03=Yes
function wild_west() => byte(0x0c8564)
// $0C8565: [8bit] Ninja Outfit Unlocked
//          0x00=No
//          0x04=Yes
function ninja() => byte(0xc8565)
achievement(
    "Cavely Manners",
    "Unlock the Cave Chick Outfit!",
    points=2,
    id=292639,
    trigger=
        outfit_cheevo(2, cave_chick())        
)
achievement(
    "Mummification",
    "Unlock the Nefertiti Outfit!",
    points=2,
    id=292640,
    trigger=
        outfit_cheevo(1, nefertiti())
)
achievement(
    "Yeehaw!",
    "Unlock the Wild West Outfit!",
    points=2,
    id=292641,
    trigger=
        outfit_cheevo(3, wild_west())
)
achievement(
    "A Sneaky Assassin",
    "Unlock the Ninja Outfit!",
    points=3,
    id=292642,
    trigger=
        outfit_cheevo(4, ninja())
)
// $0C8566: [8bit] Costume Equipped
//          0x00=Default
//          0x02=Cavewoman
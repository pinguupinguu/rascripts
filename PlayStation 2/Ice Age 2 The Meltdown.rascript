// Ice Age 2: The Meltdown
// #ID = 19284

// $3B3A20: [32bit] Game Pointer
//          +0x14c = Scrat Base Address
//          ++0x2a0 = Scrat Health [32bit]
//          
//          ++0x3e0 = [8bit] funny animation addr
//          ++0x550 = [Float] Scrat Power Meter (100.0/5=20.0 per part)
//          ++0x650 = Pebbles
//          ++0x654 = Acorn Count
//          ++0x56c =[Float] Scrat Underwater Meter
// $3B4174: [32bit] Minigame Pointer
//          +0xc = [32bit] Amt Collected
//          +0x10 = [32bit] Target Count
//          +0x1c = [Float] Time Left

// $3B5440: [32bit] Black Screen On
//          0x00=No
//          0x01=Yes
// $3B64EC: [32bit] Cheat Flag - Level Select Active
//          0x00=No
//          0x01=Yes

// $3B6504: [32bit] Cheat Flag  Unlock all bonuses
//          0x00=No
//          0x01=Yes
// $3B6534: [32bit] Cheat Flag - Infinite Health
//          0x00=No
//          0x01=Yes
// $3B654C: [32bit] Cheat Flag - Infinite Energy
//          0x00=No
//          0x01=Yes
// $3B6564: [32bit] Cheat Flag - Infinite Pebbles
//          0x00=No
//          0x01=Yes
cheats = [0x3b64ec, 0x3b6504, 0x3b6534, 0x3b654c, 0x3b6564]
function cheats_off() => all_of(cheats, b => dword(b) == 0)
    
// $3B7328: [32bit] Selected Menu Index
// $3B7CDC: [Pointer] Animal Base
//          +0x0 - Enemy Data 1
//          ++0x5e0=State 0x00=Active 0x01=Hit
//          ++0x5e1=Health
//          ++0x5e2=Max Health
//          ++0x5e3=ID
//          ++0x68c=Something Related to Model (0x3=Active)
//          +0x4 - Enemy Data 2
//          ++0x5e1=Boar Health 2
//          +0x8 - Enemy Data 3
//          ++0x5e1=Boar Health 3
//          +0xc - Enemy Data 4
//          ++0x5e1=Boar Health 4
//          +0x10 - Enemy Data 5
//          ++0x5e1=Boar Health 5
//          +0x14 - Enemy Data 6
//          ++0x5e1=Boar Health 6
//          +0x18 - Enemy Data 7
//          ++0x5e1=Boar Health 7
//          
//          For max healths:
//          3=Beetle Type
//          4=Boar Type
//          6=Polar Bear Type (?)
// $3B8194: [16bit] Level ID
//          0x67=Title Screen
//          0x6b=Waterpark 1
//          0x6c=Waterpark 2
//          0x6d=Waterpark 3
//          0x6e=Waterpark 4
//          0xc2=Waterpark 5
//          0x123=Eviscerator
//          0x77=Forest 1
//          
//          0x8e=Mud Bog 5
//          0xdf=Glacier 1
//          0xe1=Glacier 3
//          
//          0xe1>0xdf=End of game Glacier

function level_id() => word(0x3b8194)
function progress(start, dest) => prev(level_id()) == start && level_id() == dest && cheats_off() //Can turn off for testing purposes.
waterpark_one = 0x6b
waterpark_two = 0x6c
waterpark_three = 0x6d
waterpark_four = 0x6e
waterpark_five = 0xc2
eviscerator = 0x123
forest_one = 0x77
forest_two = 0x74
forest_three = 0x75
ice_river = 0x91
maelstrom = 0x92
maelstrom_two = 0x136
mudbog_one = 0x8d
mudbog_two = 0x8c
mudbog_three = 0x8b
mudbog_four = 0x8f
mudbog_five = 0x8e
slothvil_one = 0x8a
slothvil_two = 0x87
slothvil_three = 0x88
slothvil_four = 0x89
slothvil_five = 0x86
glacier_one = 0xdf
glacier_two = 0xe0
glacier_three = 0xe1
minigame_root = dword(0x3b4174)
function minigame_amount() => dword(minigame_root + 0xc)
function minigame_target() => dword(minigame_root + 0x10)
function minigame_time() => float(minigame_root + 0x1c)
function minigame_time_max() => float(minigame_root + 0x20)
function challenge(id, restriction, target) => level_id() == id && minigame_root != 0 && minigame_time() >= restriction && trigger_when(prev(minigame_amount()) == target - 1 && minigame_amount() == target)
achievement(
    "Park Basics",
    "Clear Waterpark 1",
    points=2,
    trigger=
        progress(waterpark_one, waterpark_two)
)
achievement(
    "Diego's Arrival",
    "Clear Waterpark 2",
    points=2,
    trigger=
        progress(waterpark_two,  waterpark_three)
)
achievement(
    "A Boaring Introduction",
    "Clear Waterpark 3",
    points=3,
    trigger=
        progress(waterpark_three, waterpark_four)
)
achievement(
    "Batting Eyes",
    "Clear Waterpark 4",
    points=3,
    trigger=
        progress(waterpark_four, waterpark_five)
)
achievement(
    "The Ice Age Begins",
    "Clear Waterpark 5",
    points=5,
    trigger=
        progress(waterpark_five, eviscerator)
)
achievement(
    "Treacherous Slide",
    "Clear Eviscerator",
    points=5,
    trigger=
        progress(eviscerator, forest_one)
)
achievement(
    "New Environment!",
    "Clear Forest 1",
    points=5,
    trigger=
        progress(forest_one, forest_two)
)
achievement(
    "Nest Rescuer",
    "Clear Forest 2",
    points=5,
    trigger=
        progress(forest_two, forest_three)
)
achievement(
    "The Grand Tree",
    "Finish catching Crash & Eddie and Clear Forest 3",
    points=10,
    trigger=
        progress(forest_three, ice_river)
)
achievement(
    "Polar Plunge",
    "Clear Ice River",
    points=5,
    trigger=
        progress(ice_river, maelstrom)
)
achievement(
    "In The Mouth of the Beast",
    "Defeat the eyeball monster and Clear Maelstrom",
    points=10,
    trigger=
        progress(maelstrom, maelstrom_two)
)
achievement(
    "Pond Exploration",
    "Clear Mudbog 1",
    points=5,
    trigger=
        progress(mudbog_one, mudbog_two)
)
achievement(
    "Egg Mixup!",
    "Clear Mudbog 2",
    points=5,
    trigger=
        progress(mudbog_two, mudbog_three)
)
achievement(
    "Enhanced Memory",
    "Complete the Mudbog Memory Challenge!",
    points=5,
    trigger=
        level_id() == mudbog_three &&
        minigame_root != 0 &&
        prev(minigame_amount()) == 4 &&
        minigame_amount() == 5
)
achievement(
    "Hippo Mud Slide",
    "Clear Mudbog 3",
    points=5,
    trigger=
        progress(mudbog_three, mudbog_four)
)

achievement(
    "Spider Caverns",
    "Clear Mudbog 4",
    points=5,
    trigger=
        progress(mudbog_four, mudbog_five)
)
achievement(
    "Tasty Swamp Nuts",
    "Clear Mudbog 5",
    points=5,
    trigger=
        progress(mudbog_five, slothvil_one)
)
achievement(
    "Ritualistic Dancing",
    "Complete the Digging Challenge and Clear Sloth Village 1",
    points=10,
    trigger=
        progress(slothvil_one, slothvil_two)
)
achievement(
    "Tiki Towers for Hours",
    "Clear Sloth Village 2",
    points=5,
    trigger=
        progress(slothvil_two, slothvil_three)
)
achievement(
    "Lava Land",
    "Clear Sloth Village 3",
    points=5,
    trigger=
        progress(slothvil_three, slothvil_one) //Level One loaded & used as a cutscene between three and four.
)
achievement(
    "Webs, Fire, Lava",
    "Clear Sloth Village 4",
    points=5,
    trigger=
        progress(slothvil_four, slothvil_five)
)
achievement(
    "Sacrifical Rescue",
    "Clear Sloth Village 5",
    points=5,
    trigger=
        progress(slothvil_five, glacier_one)
)
achievement(
    "Frozen Horizons",
    "Clear Glacier 1",
    points=5,
    trigger=
        progress(glacier_one, glacier_two)
)
achievement(
    "Piranha Waters",
    "Clear Glacier 2",
    points=10,
    trigger=
        progress(glacier_two, glacier_one)
)
achievement(
    "End of the Meltdown",
    "Clear Glacier 3 and beat the game!",
    points=25,
    trigger=
        progress(glacier_three, glacier_one)
)
// $3B821C: [32bit] Game Paused
//          0x00=No
//          0x01=Yes
// $3B8320: [Pointer]
//          +0x16c=Golden Nuts Collected
//          +0x170=Max Golden Nuts In Level
// $3F0442: [16bit] Weather Pause
//          0x00=No
//          0x01=Yes
// $418840: [32bit] Scrat Health
// $418844: [32bit] Scrat Max Health
// $418BF0: [32bit] Number of Stones
// $418BF4: [32bit] Number of Acorns
// $44C470: [Pointer Base 1]
// $455A61: [8bit] Boar health 1
// $456D00: [8bit] State
// $456D01: [8bit] Wolf Health
// $457D41: [8bit] Boar 2 Health
// $4A4A03: temp
// $1FFDC60: [32bit] Other Stupid Offset
// $1FFDCD0: [32bit] Acorn Pointer
//           + 0x654 = Count

// $3B4174: [32bit] Minigame Pointer
//          +0xc = [32bit] Amt Collected
//          +0x10 = [32bit] Target Count
//          +0x1c = [Float] Time Left



achievement(
    "Skatin' By Diego",
    "Collect all the acorns behind Diego's back with 55 seconds or more left on the clock",
    points=5,
    trigger=
        challenge(waterpark_three, 55.0, 14)
)
achievement(
    "Batics to the Test",
    "Complete the Bat Cave Challenge while not letting the timer run more than 10 seconds",
    points=5,
    trigger=
        challenge(waterpark_four, 70.0, 3)
)



// $3b8340: [Pointer] Evicserator
//          +0x162=[16bit] Score! Wow!

function eviscerator_score() => word(dword(0x3b8340) + 0x162)
function evisc_cheevo(name, target, target_desc, points) {
    achievement(
        name,
        "Score " + target_desc + " points or more on the Eviscerator!",
        points,
        trigger=
            level_id() == eviscerator &&
            prev(eviscerator_score()) < target &&
            eviscerator_score() >= target
    )    
}
evisc_cheevo("Sid's Lady Impressions", 10000, "10,000", 10)
evisc_cheevo("Sid's Slipping Sliding Score", 13000, "13,000", 10)
// $3B4174: [32bit] Minigame Pointer        
//          ===PENGUIN BOWLING===
//          +0x1e0=[32bit] Total Score
achievement(
    "Monkey Shooter",
    "Complete the Forest Monkey Challenge!",
    points=5,
    trigger=
        level_id() == forest_one &&
        minigame_root != 0 &&
        prev(minigame_amount()) == 24 &&
        minigame_amount() == 25
)
function bowling_score() => word(dword(0x3b4174) + 0x1e0 ) 
function in_bowling() => dword(0x3b4174) != 0 && level_id() == waterpark_five
function bowling_cheevo(name, target, points) {
    if(target == 300) desc = "Score a perfect 300 game in Penguin Bowling!"
    else desc = "Score " + target + " points or above in Penguin Bowling!"
    achievement(
        name,
        desc,
        points,
        trigger=
            in_bowling() &&
            prev(bowling_score()) < target &&
            bowling_score() >= target
            
    )
}  
bowling_cheevo("Bowling Beaks Better", 150, 10)
bowling_cheevo("Arctic Freeze", 200, 10)
bowling_cheevo("Skipper Would Salute", 250, 10)  
bowling_cheevo("Pingu's Perfect Plays", 300, 25)
achievement(
    "Prescription Change Needed",
    "Complete the Maelstrom Eyeball Challenge with 20 seconds or more remaining on the clock",
    points=5,
    trigger=
        challenge(maelstrom, 20.0, 30)
)

leaderboard(
    "Diego's Acorn Challenge",
    "Fastest time",
    level_id() == waterpark_three && prev(minigame_root) == 0 && minigame_root != 0,
    minigame_root == 0,
    prev(minigame_amount()) == 13 && minigame_amount() == 14,
    121.0 - minigame_time(),
    "SECS",
    true
)
level_ids = {
    0x6b:"Waterpark 1",
    0x6c:"Waterpark 2",
    0x6d:"Waterpark 3",
    0x6e:"Waterpark 4",
    0xc2:"Waterpark 5",
    0x123:"Eviscerator",
    0x77:"Forest 1",
    0x74:"Forest 2",
    0x75:"Forest 3",
    0x91:"Ice River",
    0x92:"Maelstrom",
    0x136:"Maelstrom 2",
    0x8d:"Mud Bog 1",
    0x8c:"Mud Bog 2",
    0x8b:"Mud Bog 3",
    0x8f:"Mud Bog 4",
    0x8e:"Mud Bog 5",
    0x8a:"Sloth Village 1",
    0x87:"Sloth Village 2",
    0x88:"Sloth Village 3",
    0x89:"Sloth Village 4",
    0x86:"Sloth Village 5",
    0xdf:"Glacier 1",
    0xe0:"Glacier 2",
    0xe1:"Glacier 3"
}
//Penguin Bowling separate string
minigame_names = {
    0x6d:"Diego's Acorn Cave Challenge",
    0x6e:"Bat Cave Challenge",
    0x77:"Forest Monkey Challenge",
    0x75:"Crash and Eddie Whack-A-Mole",
    0x92:"Maelstrom Eyeball Challenge",
    0x8b:"Mudbog Memory Challenge"    
}
minigame_emoji = {
    0x6d:"🌰",
    0x6e:"🦇",
    0x77:"🐵",
    0x75:"🐾",
    0x92:"👁️",
    0x8b:"🐷"	
}
function any_cheats() => any_of(cheats, b => dword(b) != 0)
function health() => dword(dword(dword(0x003b3a20)  + 0x14c) + 0x2a0)
function acorns() => dword(dword(dword(0x003b3a20)  + 0x14c) + 0x654)



rich_presence_conditional_display(any_cheats(), "Dirty cheater!")

rich_presence_conditional_display(level_id() == waterpark_five && minigame_root != 0, "Playing Penguin Bowling in Waterpark 5! | 💯 {0}",
    rich_presence_macro("Number", bowling_score())
)

rich_presence_conditional_display(minigame_root != 0, "Playing {0} Minigame! | {1} {2}/{3} | ⏰ {4}",
    rich_presence_lookup("Name", level_id(), minigame_names),
    rich_presence_lookup("Emoji", level_id(), minigame_emoji),
    rich_presence_macro("Number", minigame_amount()),
    rich_presence_macro("Number", minigame_target()),
    rich_presence_value("Timer", minigame_time(), "SECS")
)

rich_presence_conditional_display(level_id() == 0x67, "In Menu")
rich_presence_conditional_display(health() <= 50 && level_id() == eviscerator, "Riding the Eviscerator! | 💯 {0}",
    rich_presence_macro("Number", eviscerator_score())
)
rich_presence_conditional_display(health() <= 50, "Exploring {0} | ❤️ {1} | 🌰 {2}",
    rich_presence_lookup("Level", level_id(), level_ids),
    rich_presence_macro("Number", health()),
    rich_presence_macro("Number", acorns())
)
rich_presence_display("Loading {0}...",
    rich_presence_lookup("Level", level_id(), level_ids)
)


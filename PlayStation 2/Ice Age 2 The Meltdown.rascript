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
function base_progression(start, dest) => prev(level_id()) == start && level_id() == dest
waterpark_five = 0xc2
eviscerator = 0x123
forest_one = 0x77
achievement(
    "The Ice Age Begins",
    "Clear Waterpark 5",
    points=5,
    trigger=
        base_progression(0xc2, 0x123)
)
achievement(
    "Treacherous Slide",
    "Clear Eviscerator",
    points=5,
    trigger=
        base_progression(eviscerator, forest_one)
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





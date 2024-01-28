// Egg Mania Eggstreme Madness
// #ID = 19122

// $18E7FC: [32bit] Player State
//          0x00=Playing
//          0x02=Win
//          0x03=Queued
//          0x04=Placing Block
//          0x08=Holding Block
function state() => dword(0x18e7fc)
win = 2
win_no_balloon = 7
block_hold = 8
block_place = 4
// $19DD90: [8bit] Bottom Left Tile of Tower Data
// $19E580: [8bit] Row 1 Grid
// $4B13A0: [Pointer] Block Data
//          +0xd20=Leftmost Tile of Match Build Level
//          
//          +0xdf7=Rightmost Block - Row 1 of Solo
// $4BFFD4: [32bit] Current Round
//          1 past max = win
function rounds() => dword(0x4bffd4)
// $4BFFD8: [32bit] Max Rounds
// $4C05BC: [32bit] Current Score
// $4C07EC: [32bit] Spook
//          0x01=Locked
//          0x00=Unlocked
char_spook = 0x4c07ec
// $4C07F0: [32bit] Angelica Unlock Flag
//          0x01=Locked
//          0x00=Unlocked
char_angelica = 0x4c07f0
// $4C07F4: [32bit] Sir Eggolot
//          0x01=Locked
//          0x00=Unlocked
char_egg = 0x4c07f4
// $4C07F8: [32bit] Poncho
//          0x01=Locked
//          0x00=Unlocked
char_poncho = 0x4c07f8
// $4C07FC: [32bit] Yolkohama
//          0x01=Locked
//          0x00=Unlocked
char_yolko = 0x4c07fc
function char_unlock(addr) => prev(dword(addr)) == 0x1 && dword(addr) == 0xffffffff
// $4C0878: [32bit] Hardboiled Difficulty - Actual
// $4C087C: [32bit] Difficulty
function difficulty() => dword(0x4c087c)
easy = 0
med = 1
hard = 2
// $4C08A4: [32bit] Mode
//          0x02=Over-Easy
//          0x03=Hardboiled
//          0x09=Bomb Mode
//          0x0a=Solo
//          0x0b=Survival
//          0x0c=Tournament
//          0x0d=Custom
overeasy = 2
hardboiled = 3
bomb = 9
survival = 0xb
function mode() => dword(0x4c08a4)
function clear(mode, target) => mode() == mode && prev(rounds()) == target && rounds() == target+1
function clear_diff(mode, diff, target) => mode() == mode && difficulty() == diff && prev(rounds()) == target && rounds() == target+1
function clear_trigger(mode, diff, target) => mode() == mode && difficulty() == diff && trigger_when(prev(rounds()) == target && rounds() == target+1)
achievement(
    "Softcore Mode",
    "Clear all eight rounds of Over-Easy mode",
    points=5,
    trigger=
        clear(overeasy, 8)
)
achievement(
    "Over Easy Hard Mode?",
    "Clear all eight rounds of Hardboiled mode on Easy",
    points=5,
    trigger=
        clear_diff(hardboiled, easy, 8)
)
achievement(
    "Medium Block Building",
    "Clear all nine rounds of Hardboiled mode on Medium and unlock Spook!",
    points=10,
    trigger=
        char_unlock(char_spook)
)
achievement(
    "Master of Eggspectations",
    "Clear all ten rounds of Hardboiled mode on Hard and unlock Yolkohama!",
    points=25,
    trigger=
        char_unlock(0x4c07fc)
)
achievement(
    "Bombs Away!",
    "Clear all eight rounds of Bomb mode on Easy",
    points=10,
    trigger=
        clear_diff(bomb, easy, 8)        
)
achievement(
    "Royalty Bomber",
    "Clear all nine rounds of Bomb mode on Medium and unlock Sir Eggalot!",
    points=10,
    trigger=
        char_unlock(char_egg)
)
achievement(
    "Rain and Bomb Protection",
    "Clear all ten rounds of Bomb mode on Hard and unlock Poncho!",
    points=25,
    trigger=
        char_unlock(char_poncho)
)
achievement(
    "Forgotten Memory Reborn",
    "Obtain 1,000,000 points in Solo mode and unlock Angelica",
    points=10,
    trigger=
        char_unlock(char_angelica)
)
function survival_win() => dword(0x004c0020)
function survival_cheevo(name, points, difficulty, diff_name, target){
    achievement(
        name,
        "Get " + target + " Survival mode wins on " + diff_name,
        points,
        trigger=
            mode() == survival &&
            difficulty &&
            prev(survival_win()) == target - 1 &&
            survival_win() == target
    )
}
survival_cheevo("Eggcellent Architect", 5, difficulty() <= hard, "Easy difficulty or higher", 5)
survival_cheevo("Shell-Shocked Survivor", 10, difficulty() >= med, "Medium difficulty or higher", 10)
survival_cheevo("Omelette Overlord", 25, difficulty() == hard, "Hard difficulty or higher", 15)
function reset(data) => never(data)
//Fun Challenges
function balloon_spawn() => once(prev(dword(0x004c02ec)) == 0 && dword(0x004c02ec) == 1) //Checks if balloon sprite is spawned at top of screen - useful for initial hits
function tower_meter() => dword(0x0018e774)
function level_state() => dword(0x004bffc4)

achievement(
    "Perfect Bomber",
    "Win a Medium match on Bomb Mode without ever letting your tower get hit",
    points=10,
    trigger=
        unless(mode() != bomb) &&
        unless(difficulty() != med) &&
        rounds() <= 9 &&
        balloon_spawn() &&
        trigger_when(prev(level_state()) == 0 && level_state() == 1) &&
        never(tower_meter() != 0)
)
//Throws
function cross_pressed() => bit6(0x004a9583) < prev(bit6(0x004a9583)) //Cross pressed, 1>0
function block_held() => dword(0x0018e7c4)
function block_use(target, block) {
   if(target != 0) return unless(dword(0x004c02ec) == 0) && measured(repeated(target, prev(block_held()) == block && cross_pressed() ))
   else return unless(dword(0x004c02ec) == 0) && prev(block_held()) == block && cross_pressed()
} 
block_bomb = 8
block_filler = 0xa
block_hammer = 0xb
block_storm = 0xc
achievement(
    "Lumberjack of Eggs",
    "Throw 50 hammers at enemies in matches!",
    points=5,
    trigger=
        block_use(50, block_hammer)
)
achievement(
    "Bombin' Eggs",
    "Throw 50 bombs at enemies in matches!",
    points=5,
    trigger=
        block_use(50, block_bomb)
)
achievement(
    "Artist's Palette",
    "Use a filler block to fix your tower!",
    points=3,
    trigger=
        block_use(0, block_filler)
)
achievement(
    "Hurricane Eggian",
    "Use a storm block on an enemy!",
    points=2,
    trigger=
        block_use(0, block_storm)    
)
















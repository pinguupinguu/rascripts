// Egg Mania: Eggstreme Madness [Subset - Bonus]
// #ID = 28298
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
over = 3
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

function balloon_spawn() => once(prev(dword(0x004c02ec)) == 0 && dword(0x004c02ec) == 1) //Checks if balloon sprite is spawned at top of screen - useful for initial hits
function balloon_despawn() => never(prev(dword(0x004c02ec)) == 1 && dword(0x004c02ec) == 0)
function tower_meter() => dword(0x0018e774)
function level_state() => dword(0x004bffc4)
function reset(data) => never(data)
function round() => dword(0x4bffd4)
achievement(
    "Speed Winner",
    "Win an Over Easy or Hardboiled match without placing more than three blocks down!",
    points=10,
    trigger=
        unless(mode() > 3) &&
        balloon_spawn() &&
        reset(repeated(4, prev(state()) != 4 && state() == block_place)) &&
        trigger_when(prev(level_state()) == 0 && level_state() == 1)
)

function losses() => dword(0x004bffe4)
achievement(
    "Boiling Over",
    "Clear all ten rounds of Hardboiled on Hard Difficulty without a single loss",
    points=50,
    trigger=
        clear_trigger(hardboiled, hard, 10) &&
        rounds() != 0 &&
        losses() == 0        
)
achievement(
    "Egg Nog Bomb",
    "Clear all ten rounds of Bomb Mode on Hard difficulty without a single loss",
    points=50,
    trigger=
        clear_trigger(bomb, hard, 10) &&
        rounds() != 0 &&
        losses() == 0 
)
function screen() => dword(0x4c081c)

achievement(
    "Active Eggfense Training",
    "Win a round of Bomb Mode on Hard difficulty without letting your tower meter reach orange",
    points=25,
    trigger=
        unless(mode() != bomb) &&
        unless(difficulty() != hard) &&
        balloon_spawn() &&
        balloon_despawn() &&
        trigger_when(prev(level_state()) != win && level_state() == win)
        
)
achievement(
    "Darwin's Egg Theory",
    "Obtain 25 solo wins in Survival mode on Hard Difficulty",
    points=25,
    trigger=
        mode() == survival &&
        prev(survival_win()) == 24 &&
        survival_win() == 25
)
function screen_hit() => once(prev(screen()) == 4 && screen() == 0x270f)
function menu_reset() => never(prev(screen()) == 0x270f && screen() == 0)
function speedrun_clock(frames) => repeated(frames, screen_hit() && always_true())
function speedrun_cheevo(my_mode, my_difficulty, frames, rounds) =>
        unless(mode() != my_mode) &&
        unless(difficulty() != my_difficulty) &&
        never(speedrun_clock(frames)) &&
        menu_reset() &&
        screen_hit() &&
        trigger_when(round() == rounds && prev(level_state()) != 1 && level_state() == 1)
achievement(
    "Eggrun: Over Easy",
    "Beat OverEasy mode in under 12 minutes",
    points=25,
    trigger=
        speedrun_cheevo(overeasy, over, 43200, 8)
)
achievement(
    "Eggrun: Hardboiled Hard",
    "Beat Hardboiled on Hard in under 25 minutes",
    points=50,
    trigger=
        speedrun_cheevo(hardboiled, hard, 90000, 10)
)
achievement(
    "Bomb Run: Easy",
    "Beat Bomb Mode on Easy in under 13 minutes",
    points=25,
    trigger=
        speedrun_cheevo(bomb, easy, 46800, 8)
)



















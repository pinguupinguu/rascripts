// Elf Bowling 1 & 2
// #ID = 1983

// $1CB334: [Pointer] Elf Bowling 1 - Animal Data
//          +0x7c=Deer State Flag
//          0x01>0x03=Dead
//          +0x2b4=Frog State
//          0x01=Facing Right
//          0x02=Facing Left
//          0x03=Dead
//          0x05=Picked Up By Bird
//          +0x374=Bunny State
//          0x01=Facing Right
//          0x02=Facing Left
//          0x03=Running Away
// $1CB344: [32bit] Elf Bowling 1 - Current Frame
// $1CB348: [Pointer] Elf Bowling 1 Game Data
//          Two Important Notes:
//          0x0=Gutterball
//          0xffffffff=Default Blank Value
//          +0x00=[32bit] Frame 1, Shot 1 Score
//          +0x04=[32bit] Frame 1, Shot 2 Score
//          +0x08=[32bit] Frame 1 Score Partial
//          
//          +0x14=[32bit] Frame 2, Shot 1 Score
//          +0x18=[32bit] Frame 2, Shot 2 Score
//          +0x1c=[32bit] Frame 2 Score Partial
//          
//          +0x28=[32bit] Frame 3, Shot 1 Score
//          +0x2c=[32bit] Frame 3, Shot 2 Score
//          +0x30=[32bit] Frame 3 Score Partial
//          
//          +0x3c=[32bit] Frame 4, Shot 1 Score
//          +0x40=[32bit] Frame 4, Shot 2 Score
//          +0x44=[32bit] Frame 4 Score Partial
//          
//          +0x50=[32bit] Frame 5, Shot 1 Score
//          +0x54=[32bit] Frame 5, Shot 2 Score
//          +0x58=[32bit] Frame 5 Score Partial
//          
//          +0x64=[32bit] Frame 6, Shot 1 Score
//          +0x68=[32bit] Frame 6, Shot 2 Score
//          +0x6c=[32bit] Frame 6 Score Partial
//          
//          +0x78=[32bit] Frame 7, Shot 1 Score
//          +0x7c=[32bit] Frame 7, Shot 2 Score
//          +0x80=[32bit] Frame 7 Score Partial
//          
//          +0x8c=[32bit] Frame 8, Shot 1 Score
//          +0x90=[32bit] Frame 8, Shot 2 Score
//          +0x94=[32bit] Frame 8 Score Partial
//          
//          +0xa0=[32bit] Frame 9, Shot 1 Score
//          +0xa4=[32bit] Frame 9, Shot 2 Score
//          +0xa8=[32bit] Frame 9 Score Partial
//          
//          +0xb4=[32bit] Frame 10, Shot 1 Score
//          +0xb8=[32bit] Frame 10, Shot 2 Score
//          +0xbc=[32bit] Frame 10, Score Partial
//          
//          +0xc8=[32bit] Frame 10 - Bonus Shot 3
//          Applicable if 3rd shot given. If so, shot sum added to offset $bc

// $1CBA9C: [8bit] Elf Bowling 1 - Elfs Hit with Previous Ball


// $1CBDC4: [Pointer] Elf Bowling 2 - Elves in Paradise
//          Player Info
//          =====Elf Distances=====
//          +0xc0=[32bit] Player 1 - Elf 1 Distance
//          +0xc4=[32bit] Player 1 - Elf 2 Distance
//          +0xc8=[32bit] Player 1 - Elf 3 Distance
//          +0xcc=[32bit] Player 1 - Elf 4 Distance
//          +0xd0=[32bit] Player 2 - Elf 1 Distance
//          +0xd4=[32bit] Player 2 - Elf 2 Distance
//          +0xd8=[32bit] Player 2 - Elf 3 Distance
//          +0xdc=[32bit] Player 2 - Elf 4 Distance
//          =====Elf States=====
//          +0x100=[32bit] Player 1 - Elf 1 State (0=Inactive, 1=Active)
//          +0x104=[32bit] Player 1 - Elf 2 State (0=Inactive, 1=Active)
//          +0x108=[32bit] Player 1 - Elf 3 State (0=Inactive, 1=Active)
//          +0x10c=[32bit] Player 1 - Elf 4 State (0=Inactive, 1=Active)
//          +0x110=[32bit] Player 2 - Elf 1 State (0=Inactive, 1=Active)
//          +0x114=[32bit] Player 2 - Elf 2 State (0=Inactive, 1=Active)
//          +0x118=[32bit] Player 2 - Elf 3 State (0=Inactive, 1=Active)
//          +0x11c=[32bit] Player 2 - Elf 4 State (0=Inactive, 1=Active)
//          =====Elf Death States=====
//          +0x120=[32bit] Player 1 - Elf 1 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x124=[32bit] Player 1 - Elf 2 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x128=[32bit] Player 1 - Elf 3 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x12c=[32bit] Player 1 - Elf 4 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x130=[32bit] Player 2 - Elf 1 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x134=[32bit] Player 2 - Elf 2 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x138=[32bit] Player 2 - Elf 3 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x13c=[32bit] Player 2 - Elf 4 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          =====Miscellaneous=====
//          +0x2f4=[32bit] Player One Current Elf Shooting
//          +0x2f8=[32bit] Player Two Current Elf Shooting

// $1CC064: [32bit] Game Mode
//          0x00=Elf Bowling 1
//          0x01=Elf Bowling 2: Elfs in Paradise
function game_mode_classic() => dword(0x1cc064) == 0
function game_mode_paradise() => dword(0x1cc064) == 1

// $1CBAE8: [32bit] Elf Bowling 1 - Lane State
//          0x00=Default No Prior Game During Session Loaded
//          0x01=Elves Being Loaded
//          0x02=Santa Taking Aim
//          0x03=Shot Being Taken
//          0x04=Score Calcuated & Elves Hit Cleared
//          0x06=Game Over
//          0xffffffff=Out of Game (After One Game played during session)
function classic_lane() => dword(0x1cbae8)
function classic_ingame() => classic_lane() != 0 && dword(0x1cbae8) <= 6
lane_clearing=0x4
// $1CB4EC: [32bit] Elf Bowling 1 - Displayed Final Score
function classic_score() => dword(0x1cb4ec)
function point_progression(addr, target) =>
    prev(addr) < target &&
    addr >= target
achievement(
    "A Classic Christmas Tale!",
    "[Elf Bowling 1] Earn 100 points",
    points=5,
    trigger=
        game_mode_classic() &&
        classic_ingame() &&
        point_progression(classic_score(), 100)
)
achievement(
    "Pin-derful Annihilator",
    "[Elf Bowling 1] Score 200 points",
    points=10,
    trigger=
        game_mode_classic() &&
        classic_ingame() &&
        point_progression(classic_score(), 200)
)
achievement(
    "Gift-Wrapping Pro",
    "[Elf Bowling 1] Score 250 points",
    points=10,
    trigger=
        game_mode_classic() &&
        classic_ingame() &&
        point_progression(classic_score(), 250)
)
achievement(
    "Christmas Miracle Bowler",
    "[Elf Bowling 1] Achieve a perfect game of 300 points, creating a Christmas miracle on the lanes of Elf Bowling and becoming a true holiday legend.",
    points=25,
    trigger=
        game_mode_classic() &&
        classic_ingame() &&
        point_progression(classic_score(), 300)
)
// $1CB334: [Pointer] Elf Bowling 1 - Animal Data
//          +0x7c=Deer State Flag
//          0x01>0x03=Dead
//          +0x2b4=Frog State
//          0x01=Facilng Right
//          0x02=Facing Left
//          0x03=Dead
//          0x05=Picked Up By Bird
//          +0x374=Bunny State
//          0x01=Facing Right
//          0x02=Facing Left
//          0x03=Running Away
function deer_flag() => dword(tbyte(0x1cb334) + 0x7c)
function frog_flag() => dword(tbyte(0x1cb334) + 0x2b4)
achievement(
    "Venison",
    "[Elf Bowling 1] Bonk the deer.",
    points=2,
    trigger=
        game_mode_classic() &&
        prev(classic_lane()) == lane_clearing && //Check deer death during lane freeze/score calculation since any animation during this time is unique to death.
        prev(deer_flag()) == 2 &&
        deer_flag() == 3        
)
achievement(
    "Frog Pancake",
    "[Elf Bowling 1] Kill the frog with your bowling ball",
    points=3,
    trigger=
        game_mode_classic() &&
        classic_ingame() &&
        prev(frog_flag()) < 3 &&
        frog_flag() == 3
)
// $1CBEE8: [32bit] Elf Bowling 2 - Elves in Paradise (Player Number)
//          0x01=1 Player
//          0x02=2 Player
function paradise_player_count() => dword(0x1cbee8)
// $1CBEF8: [32bit] Elf Bowling 2 - Lane State
//          0x01=Loading Game
//          0x03=Elf Loading
//          0x04=Grab Elf
//          0x05=Aiming
//          0x06=Release
//          0x07=Elf Landed
//          0x08=Tallying Elves
//          0x09=Results Screen
function paradise_lane() => dword(0x1cbef8)
landed=7
tally=8
results=9
function paradise_single_player() => paradise_player_count() == 1 && paradise_lane() >= 3 && paradise_lane() <= 9
// $1CBDB8: [Pointer] Elf Bowling 2
//          +0x4=[32bit] Player 1 Score (Board)
//          +0x8=[32bit] Player 2 Score (Board)
//          +0x60=[32bit] Current Player Turn
//          0x00=Player 1
//          0x01=Player 2
//          +0xa0=[32bit] Player 1 Score (Results)
//          +0xa4=[32bit] Player 2 Score (Results)
//          +0xac=[32bit] Round Number
//          +0xc0=[32bit] Player 1 State
//          0x00=Player
//          0x01=CPU
//          +0xc4=[32bit] Player 2 State
//          0x00=Player
//          0x01=CPU
function paradise_player_score() => dword(tbyte(0x1cbdb8) + 0xa0)
function paradise_cpu_score() => dword(tbyte(0x1cbdb8) + 0xa4)

achievement(
    "Welcome to Paradise!",
    "[Elf Bowling 2] Score 1,000 points!",
    points=5,
    trigger=
        game_mode_paradise() &&
        paradise_single_player() &&
        point_progression(paradise_player_score(), 1000)
)
achievement(
    "Warm Sands, Cold Santa?",
    "[Elf Bowling 2] Score 3,000 points",
    points=10,
    trigger=
        game_mode_paradise() &&
        paradise_single_player() &&
        point_progression(paradise_player_score(), 3000)
)
achievement(
    "Christmas in Summertime!",
    "[Elf Bowling 2] Score 4,500 points",
    points=25,
    trigger=
        game_mode_paradise() &&
        paradise_single_player() &&
        point_progression(paradise_player_score(), 4500)
)
achievement(
    "Elf Paradise Master!",
    "[Elf Bowling 2] Win a game!",
    points=5,
    trigger=
        game_mode_paradise() &&
        paradise_player_count() == 1 &&
        paradise_player_score() > paradise_cpu_score() &&
        prev(paradise_lane()) == tally &&
        paradise_lane() == results
)
// $1CBDC4: [Pointer] Elf Bowling 2 - Elves in Paradise
//          Player Info
//          =====Elf States=====
//          +0x100=[32bit] Player 1 - Elf 1 State (0=Inactive, 1=Active)
//          +0x104=[32bit] Player 1 - Elf 2 State (0=Inactive, 1=Active)
//          +0x108=[32bit] Player 1 - Elf 3 State (0=Inactive, 1=Active)
//          +0x10c=[32bit] Player 1 - Elf 4 State (0=Inactive, 1=Active)
function player_one_elves_alive() => all_of(range(0x100, 0x10c, 4), b => dword(tbyte(0x1cbdc4) + b) == 1)
achievement(
    "Elf Shooter Pro",
    "[Elf Bowling 2] Complete a round with all four of your elves still on the board!",
    points=5,
    trigger=
        game_mode_paradise() &&
        paradise_player_count() == 1 &&
        player_one_elves_alive() &&
        prev(paradise_lane()) == landed &&
        paradise_lane() == tally //Elves are only tallied after all four on both sides have been bowled in-game.
)
// $1CBDB8: [Pointer] Elf Bowling 2
//          +0x60=[32bit] Current Player Turn
//          0x00=Player 1
//          0x01=Player 2
function player_turn() => dword(tbyte(0x1cbdb8) + 0x60) == 0 //Player 1 turn check
// $1CBDC4: [Pointer] Elf Bowling 2 - Elves in Paradise
//          Player Info
//          =====Elf Death States=====
//          +0x130=[32bit] Player 2 - Elf 1 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x134=[32bit] Player 2 - Elf 2 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x138=[32bit] Player 2 - Elf 3 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
//          +0x13c=[32bit] Player 2 - Elf 4 Death State
//          0x0=Alive
//          0x64=Eaten By Shark
//          0x8c=Knocked off Board
death_shark = 0x64
death_splash = 0x8c
function cpu_elf_death(val) => any_of(range(0x130, 0x13c, 4), b => prev(dword(tbyte(0x1cbdc4) + b)) == 0 && dword(tbyte(0x1cbdc4) + b) ==  val)

achievement(
    "Swimmin' Elf!",
    "[Elf Bowling 2] Knock an opponent elf off of the board's side and into the water!",
    points=2,
    trigger=
        game_mode_paradise() &&
        paradise_single_player() &&
        cpu_elf_death(death_splash)
)
achievement(
    "A Shark's Meal",
    "[Elf Bowling 2] Feed an enemy Elf to the sharks by knocking it off the end of the board. (You may never see the animation, but it happens!)",
    points=3,
    trigger=
        game_mode_paradise() &&
        paradise_single_player() &&
        cpu_elf_death(death_shark)
)

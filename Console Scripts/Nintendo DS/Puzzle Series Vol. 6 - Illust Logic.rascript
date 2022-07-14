// Puzzle Series Vol. 6 - Illust Logic
// #ID = 14936

// $04DAFC: [32bit] Puzzle Pointer
//          +0x00= [16bit] Puzzle State
//          -----------0x08=Loading
//          -----------0x09=Solving
//          -----------0x0f=Solved
//          -----------0x23=Paused
//          +0x18= [32bit] Puzzle Timer (Frames)
puzzle_pointer = 0x04dafc
function puzzle_timer() => (dword(tbyte(puzzle_pointer) + 0x18))
// $04E068: [50 bytes] Profile 1 - 10x10 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
ten_puzzles = 0x04e068
// $04E09A: [100 bytes] Profile 1 - 15x15 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
fiftn_puzzles = 0x04e09a
// $04E0FE: [100 bytes] Profile 1 - 20x20 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
twenty_puzzles = 0x04e0fe
// $04E162: [50 bytes] Profile 1 - 25x25 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
twenfive_puzzles = 0x04e162
// $04E194: [8bit] Profile 1 - Bronze Rank Certification Puzzle Solved
bronze = 0x04e194
// $04E195: [8bit] Profile 1 - Silver Rank Certification Puzzle Solved
silver = 0x04e195
// $04E196: [8bit] Profile 1 - Gold Rank Certification Puzzle Solved
gold = 0x04e196
// $04E197: [8bit] Profile 1 - Platinum Rank Certification Puzzle Solved
plat = 0x04e197
// $04E1A0: [16bit] Profile 1 - Active Puzzle Category
//          0x00=10x10
//          0x01=15x15
//          0x02=20x20
//          0x03=25x25
//          0x04=Rank Test
prof_one_category = 0x04e1a0
// $04E1A2: [16bit] Profile 1 - Current Grid Size
//          0x00=10x10
//          0x01=15x15
//          0x02=20x20
//          0x03=25x25
prof_one_grid_size = 0x04e1a2
// $04E1A6: [16bit] Profile 1 - 10x10 Active Puzzle Number
prof_one_ten_off = 0x04e1a6
// $04E1A8: [16bit] Profile 1 - 15x15 Active Puzzle Number
prof_one_fift_off = 0x04e1a8
// $04E1AA: [16bit] Profile 1 - 20x20 Active Puzzle Number
prof_one_twen_off = 0x04e1aa
// $04E1AC: [16bit] Profile 1 - 25x25 Active Puzzle Number
prof_one_twenfive_off = 0x04e1ac
// $04E1AE: [16bit] Profile 1 - Rank Active Puzzle Number
//          0x19=Bronze Rank
//          0x24=Silver Rank
//          0x4b=Gold Rank
// $04E9A0: [50 bytes] Profile 2 - 10x10 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04E9D2: [100 bytes] Profile 2 - 15x15 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04EA36: [100 bytes] Profile 2 - 20x20 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04EA9A: [50 bytes] Profile 2 - 25x25 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04EACC: [8bit] Profile 2 - Bronze Rank Certification Puzzle Solved
// $04EACD: [8bit] Profile 2 - Silver Rank Certification Puzzle Solved
// $04EACE: [8bit] Profile 2 - Gold Rank Certification Puzzle Solved
// $04EACF: [8bit] Profile 2 - Platinum Rank Certification Puzzle Solved
// $04EAD8: [16bit] Profile 2 - Active Puzzle Category
//          0x00=10x10
//          0x01=15x15
//          0x02=20x20
//          0x03=25x25
//          0x04=Rank Test
// $04EADA: [16bit] Profile 2 - Current Grid Size
//          0x00=10x10
//          0x01=15x15
//          0x02=20x20
//          0x03=25x25
// $04EADE: [16bit] Profile 2 - 10x10 Active Puzzle Number
// $04EAE0: [16bit] Profile 2 - 15x15 Active Puzzle Number
// $04EAE2: [16bit] Profile 2 - 20x20 Active Puzzle Number
// $04EAE4: [16bit] Profile 2 - 25x25 Active Puzzle Number
// $04EAE6: [16bit] Profile 2 - Rank Active Puzzle Number
//          0x14=Bronze Rank
//          0x19=Platinum Rank
//          0x24=Silver Rank
//          0x4b=Gold Rank
// $04F2D8: [50 bytes] Profile 3 - 10x10 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04F30A: [100 bytes] Profile 3 - 15x15 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04F36E: [100 bytes] Profile 3 - 20x20 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04F3D2: [50 bytes] Profile 3 - 25x25 Puzzle Stars
//          Each [8bit] Bit 0-3 summed up = 4 max flags
// $04F404: [8bit] Profile 3 - Bronze Rank Certification Puzzle Solved
// $04F405: [8bit] Profile 3 - Silver Rank Certification Puzzle Solved
// $04F406: [8bit] Profile 3 - Gold Rank Certification Puzzle Solved
// $04F407: [8bit] Profile 3 - Platinum Rank Certification Puzzle Solved
// $04F410: [16bit] Profile 3 - Active Puzzle Category
//          0x00=10x10
//          0x01=15x15
//          0x02=20x20
//          0x03=25x25
//          0x04=Rank Test
// $04F412: [16bit] Profile 3 - Current Grid Size
//          0x00=10x10
//          0x01=15x15
//          0x02=20x20
//          0x03=25x25
// $04F416: [16bit] Profile 3 - 10x10 Active Puzzle Number
// $04F418: [16bit] Profile 3 - 15x15 Active Puzzle Number
// $04F41A: [16bit] Profile 3 - 20x20 Active Puzzle Number
// $04F41C: [16bit] Profile 3 - 25x25 Active Puzzle Number
// $0500F8: [32bit] Active Save Slot
//          Each corresponding profile address value is padded at 0x938
//          Example Profile 2 Table 1 start - Profile 1 Table 1 start = 0x938
//          By AddAddressing this current value, we can avoid using alts and read the active profile address like the game does!
function active_save() => dword(0x0500F8)
CONST_SLOT_PADDING = 0x938
// $050110: [32bit] Profile 1 IsLoaded
//          0x00=No
//          0x01=Yes
function profile_load() => dword(0x050110)
// $1E3708: [32bit] In-Game Puzzle Frame Timer               
function save_protection() => prev(profile_load()) == 1 && active_save() == prev(active_save())
//count will be considered *.1 for ease of logic automation.
function puzzle_cheevo(rank, category, table, my_points,  count){
    for i in range(0, count - 1){
        achievement(
            rank + " " + i + 1,
            "Solve " + category + " puzzles " + (i * 10) + 1 + "-" + (i * 10) + 10,
            points=my_points,
            trigger=
                save_protection() &&
                prev(sum_of(range(table, table + 9), b => ((byte(active_save() * CONST_SLOT_PADDING + b) / byte(b))))) == 9 &&
                sum_of(range(table, table + 9), b => ((byte(active_save() * CONST_SLOT_PADDING + b) / byte(b)))) == 10
        )
        table = table + 10        
    }    
}
puzzle_cheevo("Noobie Solver", "10x10", ten_puzzles, 2, 5)
puzzle_cheevo("Intermediate Crosser", "15x15", fiftn_puzzles, 3, 10)
puzzle_cheevo("Advanced Painter", "20x20", twenty_puzzles, 4, 10)
puzzle_cheevo("Expert Illustrator", "25x25", twenfive_puzzles, 5, 5)
function rank(name, my_points, rank){
    achievement(
        name + " Medal",
        "Clear the " + name + " Rank test!",
        points=my_points,
        trigger=
           save_protection() &&
           prev(byte(active_save() * CONST_SLOT_PADDING + rank)) == 0 &&
           byte(active_save() * CONST_SLOT_PADDING + rank) != 0
    )
}
rank("Bronze", 2, bronze)
rank("Silver", 3, silver)
rank("Gold", 5, gold)
rank("Platinum", 5, plat)
rank_test = 4
rp_grid_nrm = {
    0:"10x10",
    1:"15x15",
    2:"20x20",
    3:"25x25"
}
rp_grid_rank = {
    0:"Bronze",
    1:"Silver",
    2:"Gold",
    3:"Platinum"
}

rich_presence_display("In Menu 🧩 {0}/300 🏅 {1}/4", 
    rich_presence_macro("Number", sum_of(range(ten_puzzles, ten_puzzles + 299), b => ((byte(active_save() * CONST_SLOT_PADDING + b) / byte(b))))),
    rich_presence_macro("Number", sum_of(range(bronze, bronze + 3), b => ((byte(active_save() * CONST_SLOT_PADDING + b) / byte(b)))))
)
function puzzle_lbs(category, grid_value, puzzle_addr, count) {
    for i in range(0, count - 1) {
        leaderboard(
            category + " Puzzle " + i + 1 + " - Speedrun",
            "Fastest solve!",
            byte(active_save() * CONST_SLOT_PADDING + prof_one_category) == grid_value && dword(puzzle_pointer) != 0 && prev(word(tbyte(puzzle_pointer) + 0)) == 8 && word(tbyte(puzzle_pointer) + 0) == 9 &&
            (always_false() || active_save() == 0 && byte(puzzle_addr) == i 
                            || active_save() == 1 && byte(puzzle_addr + CONST_SLOT_PADDING) == i 
                            || active_save() == 2 && byte(puzzle_addr + CONST_SLOT_PADDING * 2) == i),            
            prev(dword(puzzle_pointer)) != 0 && dword(puzzle_pointer) == 0,
            prev(word(tbyte(puzzle_pointer) + 0)) == 9 && word(tbyte(puzzle_pointer) + 0) == 0xf,
            puzzle_timer() ,
            "FRAMES",
            true
        ) 
    }
}
puzzle_lbs("10x10", 0, prof_one_ten_off, 50)
puzzle_lbs("15x15", 1, prof_one_fift_off, 100)
puzzle_lbs("20x20", 2, prof_one_twen_off, 100)
puzzle_lbs("25x25", 3, prof_one_twenfive_off, 50)
rank_test_times = [0x1197c, 0xd32c, 0x8cdc, 0x62ac]
for i in range(0, 3){
    leaderboard(
        rp_grid_rank[i] + " Rank Test - Speedrun",
        "Fastest time to solve!", //
        byte(active_save() * CONST_SLOT_PADDING + prof_one_category) == 4 && byte(active_save() * CONST_SLOT_PADDING + prof_one_grid_size) == i &&
            dword(puzzle_pointer) != 0 && prev(word(tbyte(puzzle_pointer) + 0)) == 8 && word(tbyte(puzzle_pointer) + 0) == 9,
        prev(dword(puzzle_pointer)) != 0 && dword(puzzle_pointer) == 0,
        prev(word(tbyte(puzzle_pointer) + 0)) == 9 && word(tbyte(puzzle_pointer) + 0) == 0xf,
        rank_test_times[i] - puzzle_timer() ,
        "FRAMES",
        true
    )
}













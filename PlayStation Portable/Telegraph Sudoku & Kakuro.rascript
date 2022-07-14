// Telegraph Sudoku & Kakuro
// #ID = 18610
// $980E90: [32bit] Active Game Mode
//          0x00=Sudoku
//          0x01=Sudoku X
//          0x02=Mini Sudoku
//          0x03=Jigsaw Sudoku
//          0x04=Kakuro
// $980E9C: [32bit] Active Profile Slot
function profile_slot() => dword(0x980e9c)
// $1E939A8: [180 bytes] Profile 3 - Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93A5C: [200 bytes] Profile 3 - Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93B24: [208 bytes] Profile 3 - Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93BF4: [132 bytes] Profile 3 - Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93C78: [60 bytes] Profile 3 - Kakuro (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93CB4: [100 bytes] Profile 3 - Kakuro (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93D18: [100 bytes] Profile 3 - Kakuro (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93D7C: [60 bytes] Profile 3 - Kakuro (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93DB8: [80 bytes] Profile 3 - Sudoku X (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93E08: [80 bytes] Profile 3 - Sudoku X (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93E58: [80 bytes] Profile 3 - Sudoku X (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93EA8: [80 bytes] Profile 3 - Sudoku X (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93EF8: [80 bytes] Profile 3 - Jigsaw Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93F48: [80 bytes] Profile 3 - Jigsaw Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93F98: [80 bytes] Profile 3 - Jigsaw Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E93FE8: [80 bytes] Profile 3 - Jigsaw Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E94038: [60 bytes] Profile 3 - Mini Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E94074: [100 bytes] Profile 3 - Mini Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E940D8: [100 bytes] Profile 3 - Mini Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E9413C: [60 bytes] Profile 3 - Mini Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95A20: [180 bytes] Profile 2 - Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95AD4: [200 bytes] Profile 2 - Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95B9C: [208 bytes] Profile 2 - Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95C6C: [132 bytes] Profile 2 - Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95CF0: [60 bytes] Profile 2 - Kakuro (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95D2C: [100 bytes] Profile 2 - Kakuro (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95D90: [100 bytes] Profile 2 - Kakuro (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95DF4: [60 bytes] Profile 2 - Kakuro (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95E30: [80 bytes] Profile 2 - Sudoku X (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95E80: [80 bytes] Profile 2 - Sudoku X (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95ED0: [80 bytes] Profile 2 - Sudoku X (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95F20: [80 bytes] Profile 2 - Sudoku X (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95F70: [80 bytes] Profile 2 - Jigsaw Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E95FC0: [80 bytes] Profile 2 - Jigsaw Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E96010: [80 bytes] Profile 2 - Jigsaw Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E96060: [80 bytes] Profile 2 - Jigsaw Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E960B0: [60 bytes] Profile 2 - Mini Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E960EC: [100 bytes] Profile 2 - Mini Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E96150: [100 bytes] Profile 2 - Mini Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E961B4: [60 bytes] Profile 2 - Mini Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97A98: [180 bytes] Profile 1 - Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97B4C: [200 bytes] Profile 1 - Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97C14: [208 bytes] Profile 1 - Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97CE4: [132 bytes] Profile 1 - Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97D68: [60 bytes] Profile 1 - Kakuro (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97DA4: [100 bytes] Profile 1 - Kakuro (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97E08: [100 bytes] Profile 1 - Kakuro (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97E6C: [60 bytes] Profile 1 - Kakuro (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97EA8: [80 bytes] Profile 1 - Sudoku X (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97EF8: [80 bytes] Profile 1 - Sudoku X (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97F48: [80 bytes] Profile 1 - Sudoku X (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97F98: [80 bytes] Profile 1 - Sudoku X (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E97FE8: [80 bytes] Profile 1 - Jigsaw Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E98038: [80 bytes] Profile 1 - Jigsaw Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E98088: [80 bytes] Profile 1 - Jigsaw Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E980D8: [80 bytes] Profile 1 - Jigsaw Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E98128: [60 bytes] Profile 1 - Mini Sudoku (Easy) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E98164: [100 bytes] Profile 1 - Mini Sudoku (Medium) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E981C8: [100 bytes] Profile 1 - Mini Sudoku (Hard) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
// $1E9822C: [60 bytes] Profile 1 - Mini Sudoku (Expert) Stars Table
//           Each [32bit] Index = Puzzle Num + 1 > Star Count
puzzles = {
    "sudoku_easy":{"Profile 1":0x1e97a98,"Profile 2":0x1e95a20,"Profile 3":0x1e939a8},
    "sudoku_med":{"Profile 1":0x1e97b4c,"Profile 2":0x1e95ad4,"Profile 3":0x1e93a5c},
    "sudoku_hard":{"Profile 1":0x1e97c14,"Profile 2":0x1e95b9c,"Profile 3":0x1e93b24},
    "sudoku_exp":{"Profile 1":0x1e97ce4,"Profile 2":0x1e95c6c,"Profile 3":0x1e93bf4},
    "kakuro_easy":{"Profile 1":0x1e97d68,"Profile 2":0x1e95cf0,"Profile 3":0x1e93c78},
    "kakuro_med":{"Profile 1":0x1e97da4,"Profile 2":0x1e95d2c,"Profile 3":0x1e93cb4},
    "kakuro_hard":{"Profile 1":0x1e97e08,"Profile 2":0x1e95d90,"Profile 3":0x1e93d18},
    "kakuro_exp":{"Profile 1":0x1e97e6c,"Profile 2":0x1e95df4,"Profile 3":0x1e93d7c},
    "xsudoku_easy":{"Profile 1":0x1e97ea8,"Profile 2":0x1e95e30,"Profile 3":0x1e93db8},
    "xsudoku_med":{"Profile 1":0x1e97ef8,"Profile 2":0x1e95e80,"Profile 3":0x1e93e08},
    "xsudoku_hard":{"Profile 1":0x1e97f48,"Profile 2":0x1e95ed0,"Profile 3":0x1e93e58},
    "xsudoku_exp":{"Profile 1":0x1e97f98,"Profile 2":0x1e95f20,"Profile 3":0x1e93ea8},
    "jigsaw_easy":{"Profile 1":0x1e97fe8,"Profile 2":0x1e95f70,"Profile 3":0x1e93ef8},
    "jigsaw_med":{"Profile 1":0x1e98038,"Profile 2":0x1e95fc0,"Profile 3":0x1e93f48},
    "jigsaw_hard":{"Profile 1":0x1e98088,"Profile 2":0x1e96010,"Profile 3":0x1e93f98},
    "jigsaw_exp":{"Profile 1":0x1e980d8,"Profile 2":0x1e96060,"Profile 3":0x1e93fe8},
    "mini_easy":{"Profile 1":0x1e98128,"Profile 2":0x1e960b0,"Profile 3":0x1e94038},
    "mini_med":{"Profile 1":0x1e98164,"Profile 2":0x1e960ec,"Profile 3":0x1e94074},
    "mini_hard":{"Profile 1":0x1e981c8,"Profile 2":0x1e96150,"Profile 3":0x1e940d8},
    "mini_exp":{"Profile 1":0x1e9822c,"Profile 2":0x1e961b4,"Profile 3":0x1e9413c}
}
// $1E99500: [32bit] Auto Correction
//           0x00=Off
//           0x01=On
// $1EF5C40: [32bit] Active Puzzle Number
// $1EF5CFC: [32bit] Music ID

// $1EF5F28: [32bit] Sudoku X InGame
//           0x00=False
//           0x01=True
// $1EF6078: [32bit] Jigsaw Sudoku InGame
//           0x00=False
//           0x01=True
// $1EF61C8: [32bit] Sudoku Mini InGame
//           0x00=False
//           0x01=True
// $1EF62F8: [32bit] Kakuro InGame
//           0x00=False
//           0x01=True
// $1EF6428: [32bit] Sudoku InGame
//           0x00=False
//           0x01=True
gamestates = {
    "xsudoku":0x1ef5f28,
    "jigsaw":0x1ef6078,
    "mini":0x1ef61c8,
    "kakuro":0x1ef62f8,
    "sudoku":0x1ef6428
}
// $1EF6030: [32bit] Number of Autosolves - Sudoku X
// $1EF6180: [32bit] Number of Autosolves - Jigsaw Sudoku
// $1EF62B0: [32bit] Number of Autosolves - Mini Sudoku
// $1EF63E0: [32bit] Number of Autosolves - Kakuro
// $1EF6530: [32bit] Number of Auto Solves Used - Sudoku
autosolves = {
    "xsudoku":0x1ef6030,
    "jigsaw":0x1ef6180,
    "mini":0x1ef62b0,
    "kakuro":0x1ef63e0,
    "sudoku":0x1ef6530
}
function write_puzzle(table_addr, table_start, table_count, profile){
    mem = []
    delta = []
    table_addr = table_addr + (table_start - 1) * 4
    for i in range(0, table_count - 1){
        array_push(mem, once(dword(table_addr + i * 4) != 0))
        array_push(delta, once(prev(dword(table_addr + i * 4)) != 0))                
    }
    return tally(table_count - 1, delta) && 
           measured(tally(table_count, mem), profile_slot() == profile - 1) && 
           never(tally(table_count, delta))        
}
function complete_cheev(name, desc, points, difficulty, mode, start, count){
    puzzle_logic = always_false()
    for i in range(1, 3){
        puzzle_logic = puzzle_logic || write_puzzle(puzzles[difficulty]["Profile " + i], start, count, i)
    }
    achievement(
        name,
        desc,
        points,
        trigger=
            prev(dword(gamestates[mode])) == 1 && 
            unless(once(prev(dword(autosolves[mode])) == 0 && dword(autosolves[mode])  == 1)) && 
            puzzle_logic
    )
}
//==========PROGRESSION==========
//=====SUDOKU=====
complete_cheev("Easy 1", "Complete Sudoku Easy Puzzles 1-10", 1, "sudoku_easy", "sudoku", 1, 10)
complete_cheev("Easy 2", "Complete Sudoku Easy Puzzles 11-20", 1, "sudoku_easy", "sudoku", 11, 10)
complete_cheev("Easy 3", "Complete Sudoku Easy Puzzles 21-30", 1, "sudoku_easy", "sudoku", 21, 10)
complete_cheev("Easy 4", "Complete Sudoku Easy Puzzles 31-45", 1, "sudoku_easy", "sudoku", 31, 15)
complete_cheev("Medium 1", "Complete Sudoku Medium Puzzles 1-10", 2, "sudoku_med", "sudoku", 1, 10)
complete_cheev("Medium 2", "Complete Sudoku Medium Puzzles 11-20", 2, "sudoku_med", "sudoku", 11, 10)
complete_cheev("Medium 3", "Complete Sudoku Medium Puzzles 21-30", 2, "sudoku_med", "sudoku", 21, 10)
complete_cheev("Medium 4", "Complete Sudoku Medium Puzzles 31-40", 2, "sudoku_med", "sudoku", 31, 10)
complete_cheev("Medium 5", "Complete Sudoku Medium Puzzles 41-50", 2, "sudoku_med", "sudoku", 41, 10)
complete_cheev("Hard 1", "Complete Sudoku Hard Puzzles 1-10", 3, "sudoku_hard", "sudoku", 1, 10)
complete_cheev("Hard 2", "Complete Sudoku Hard Puzzles 11-20", 3, "sudoku_hard", "sudoku", 11, 10)
complete_cheev("Hard 3", "Complete Sudoku Hard Puzzles 21-30", 3, "sudoku_hard", "sudoku", 21, 10)
complete_cheev("Hard 4", "Complete Sudoku Hard Puzzles 31-40", 4, "sudoku_hard", "sudoku", 31, 10)
complete_cheev("Hard 5", "Complete Sudoku Hard Puzzles 41-52", 4, "sudoku_hard", "sudoku", 41, 12)
complete_cheev("Expert 1", "Complete Sudoku Expert Puzzles 1-10", 5, "sudoku_exp", "sudoku", 1, 10)
complete_cheev("Expert 2", "Complete Sudoku Expert Puzzles 11-20", 5, "sudoku_exp", "sudoku", 11, 10)
complete_cheev("Expert 3", "Complete Sudoku Expert Puzzles 21-33", 5, "sudoku_exp", "sudoku", 21, 13)
//=====SUDOKU X=====
complete_cheev("X Easy 1", "Complete Sudoku X Easy Puzzles 1-10", 1, "xsudoku_easy", "xsudoku", 1, 10)
complete_cheev("X Easy 2", "Complete Sudoku X Easy Puzzles 11-20", 1, "xsudoku_easy", "xsudoku", 11, 10)
complete_cheev("X Medium 1", "Complete Sudoku X Medium Puzzles 1-10", 2, "xsudoku_med", "xsudoku", 1, 10)
complete_cheev("X Medium 2", "Complete Sudoku X Medium Puzzles 11-20", 2, "xsudoku_med", "xsudoku", 11, 10)
complete_cheev("X Hard 1", "Complete Sudoku X Hard Puzzles 1-10", 3, "xsudoku_hard", "xsudoku", 1, 10)
complete_cheev("X Hard 2", "Complete Sudoku X Hard Puzzles 11-20", 4, "xsudoku_hard", "xsudoku", 11, 10)
complete_cheev("X Expert 1", "Complete Sudoku X Easy Puzzles 1-10", 5, "xsudoku_exp", "xsudoku", 1, 10)
complete_cheev("X Expert 2", "Complete Sudoku X Easy Puzzles 11-20", 5, "xsudoku_exp", "xsudoku", 11, 10)
//=====MINI SUDOKU=====
complete_cheev("Mini Easy", "Complete Sudoku Mini Easy Puzzles 1-15", 2, "mini_easy", "mini", 1, 15)
complete_cheev("Mini Medium 1", "Complete Sudoku Mini Medium Puzzles 1-10", 2, "mini_med", "mini", 1, 10)
complete_cheev("Mini Medium 2", "Complete Sudoku Mini Medium Puzzles 11-25", 2, "mini_med", "mini", 11, 15)
complete_cheev("Mini Hard 1", "Complete Sudoku Mini Hard Puzzles 1-10", 2, "mini_hard", "mini", 1, 10)
complete_cheev("Mini Hard 2", "Complete Sudoku Mini Hard Puzzles 11-25", 2, "mini_hard", "mini", 11, 15)
complete_cheev("Mini Expert", "Complete Sudoku Mini Expert Puzzles 1-15", 2, "mini_exp", "mini", 1, 15)
//=====JIGSAW SUDOKU=====
complete_cheev("Jigsaw Easy 1", "Complete Jigsaw Sudoku Easy Puzzles 1-10", 1, "jigsaw_easy", "jigsaw", 1, 10)
complete_cheev("Jigsaw Easy 2", "Complete Jigsaw Sudoku Easy Puzzles 11-20", 2, "jigsaw_easy", "jigsaw", 11, 10)
complete_cheev("Jigsaw Medium 1", "Complete Jigsaw Sudoku Medium Puzzles 1-10", 3, "jigsaw_med", "jigsaw", 1, 10)
complete_cheev("Jigsaw Medium 2", "Complete Jigsaw Sudoku Medium Puzzles 11-20", 3, "jigsaw_med", "jigsaw", 11, 10)
complete_cheev("Jigsaw Hard 1", "Complete Jigsaw Sudoku Hard Puzzles 1-10", 4, "jigsaw_hard", "jigsaw", 1, 10)
complete_cheev("Jigsaw Hard 2", "Complete Jigsaw Sudoku Hard Puzzles 11-20", 4, "jigsaw_hard", "jigsaw", 11, 10)
complete_cheev("Jigsaw Expert 1", "Complete Jigsaw Sudoku Expert Puzzles 1-10", 5, "jigsaw_exp", "jigsaw", 1, 10)
complete_cheev("Jigsaw Expert 2", "Complete Jigsaw Sudoku Expert Puzzles 11-20", 5, "jigsaw_exp", "jigsaw", 11, 10)
//=====KAKURO=====
complete_cheev("Kakuro Easy", "Complete Kakuro Easy Puzzles 1-15", 5, "kakuro_easy", "kakuro", 1, 15)
complete_cheev("Kakuro Medium 1", "Complete Kakuro Medium Puzzles 1-10", 10, "kakuro_med", "kakuro", 1, 10)
complete_cheev("Kakuro Medium 2", "Complete Kakuro Medium Puzzles 11-25", 10, "kakuro_med", "kakuro", 11, 15)
complete_cheev("Kakuro Hard 1", "Complete Kakuro Hard Puzzles 1-10", 10, "kakuro_hard", "kakuro", 1, 10)
complete_cheev("Kakuro Hard 2", "Complete Kakuro Hard Puzzles 11-25", 25, "kakuro_hard", "kakuro", 11, 15)
complete_cheev("Kakuro Expert", "Complete Kakuro Expert Puzzles 1-15", 25, "kakuro_exp", "kakuro", 1, 15)
//==========END PROGRESSION==========
function sum_star(name, points, start, mode, count){
    puzzle_alts = always_false()
    for i in range(1, 3) {
    table_off = puzzles[start]["Profile " + i]
    puzzle_alts = puzzle_alts || prev(sum_of(range(table_off, table_off + (count - 1) * 4, 4), addr => dword(addr))) < count &&  
                                 measured(sum_of(range(table_off, table_off + (count - 1) * 4, 4), addr => dword(addr)) == count, profile_slot() == i - 1)  
    }
    achievement(
        "Star " + name + " Earner",
        "Earn all " + count + " stars in " + name + " Mode",
        points,
        trigger=
            prev(dword(gamestates[mode])) == 1 &&
            puzzle_alts
    )
}
//==========STARS==========
sum_star("Sudoku", 10, "sudoku_easy", "sudoku", 180)
sum_star("Kakuro", 5, "kakuro_easy", "kakuro", 80)
sum_star("Sudoku X", 5, "xsudoku_easy", "xsudoku", 80)
sum_star("Jigsaw Sudoku", 5, "jigsaw_easy", "jigsaw", 80)
sum_star("Mini Sudoku", 5, "mini_easy", "mini", 80)
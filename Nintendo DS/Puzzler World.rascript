// Puzzler World
// #ID = 16581

// $0A3CC4: [2240 bytes] - Puzzle Flag Table
//          Each entry 32bit float.
//          
//          
//          [Float] Puzzle 1 - Wordsearch Time Record
//          Default Time On Load: 3.0 - Use as load protection
main_table_base = 0x0a3cc4
 
// $0A4584: [2240 bytes] - Bonus Puzzle Flag Table
//          Each 32bit 0 = off, 1 = cleared(starred)
bonus_table_base = 0x0a4584
// $0A4E8C: [32bit] Puzzle Number
//          Val + 1 = Num
// $0A4E90: [Float] Puzzle Mode
//          1.0=Sudoku
//          2.0=Crossword
//          3.0=Fitword
//          4.0=Wordsearch
//          5.0=Silhouette
//          6.0=Spot The Difference
//          7.0=Link-A-Pix
//          8.0=Codeword
//          9.0=Hangman
//          10.0=Chain Letters
//          11.0=Equate
//          12.0=Picture Quiz
//          13.0=Jigsaw
//          14.0=Missing Piece
// $0A4E94: [32bit] Hint Tokens
// $0A6AA8: background
// $0B82B1: Ascii timer
// $0EC408: [Float] Timer
// $0EC40C: Progress Percent on Current Puzzle
// $18E359: Challenge Mode 1
//          
//          12bit Personal Best Time minus Completion Percentage (0x64=100%)
// $18E35B: 4????
// $18E35C: 3????????
// $1F6924: [Low4] Profile Number
//          Num - 1 = Slot
function save_protection() => low4(0x1f6924) == prev(low4(0x1f6924))
// $24902F: ascii timer
num = 1
base_titles = {
    1:"Puzzle Conqueror",
    2:"Enigmatic Explorer",
    3:"Mind-Bender",
    4:"Puzzle Veteran",
    5:"Brainteaser Aficionado",
    6:"Riddle Solver",
    7:"Puzzle Enthusiast",
    8:"Cryptic Master",
    9:"Puzzle Detective",
    10:"Conundrum Expert",
    11:"Labyrinth Navigator",
    12:"Puzzle Designer",
    13:"Riddle Master",
    14:"Puzzle Perfectionist",
    15:"Logic Puzzle Guru",
    16:"Maze Navigator",
    17:"Puzzle Wizard",
    18:"Cipher Maestro",
    19:"Puzzle Artisan",
    20:"Jigsaw Aficionado",
    21:"Puzzle Whiz",
    22:"Brain Tease Champion",
    23:"Puzzling Polymath",
    24:"Puzzle Creator",
    25:"Sudoku Savant",
    26:"Maze Runner",
    27:"Puzzle Seeker",
    28:"Quizzical Voyager",
    29:"Cryptogram Solver",
    30:"Puzzle Magician",
    31:"Riddle Whiz",
    32:"Enigma Solver",
    33:"Puzzle Solitaire Pro",
    34:"Brainteaser Maestro",
    35:"Puzzle Enchanter"
}
for i in range(0, 559, 16){
    my_sum =  sum_of(range(main_table_base + i * 4, main_table_base + (i + 15) * 4, 4), b => float(b) / float(b))
    achievement(
        base_titles[num],
        "Finish puzzles " + i + 1 + "-" + i + 16 + " in Challenge mode",
        points=10,
        trigger=
            prev(my_sum) == 15 &&
            measured(my_sum == 16, float(main_table_base) != 3.0)
    )
    num = num + 1        
}num = 1
challenge_titles = {
    1:"Riddle Breaker",
    2:"Challenge Virtuoso",
    3:"Logic Guru",
    4:"Enigma Aficionado",
    5:"Puzzle Maverick",
    6:"Sudoku Sage",
    7:"Cipher Sage",
    8:"Challenge Conqueror",
    9:"Maze Master",
    10:"Challenger Supreme",
    11:"Puzzler Extraordinaire",
    12:"Brain Tease Titan",
    13:"Challenge Solitaire Pro",
    14:"Challenge Enthusiast",
    15:"Maze Runner",
    16:"Brainteaser Maestro",
    17:"Challenge Seeker",
    18:"Cryptic Expert",
    19:"Challenge Enchanter",
    20:"Perplexing Pioneer",
    21:"Challenge Artisan",
    22:"Labyrinth Explorer",
    23:"Riddle Maestro",
    24:"Challenge Navigator",
    25:"Challenge Architect",
    26:"Conundrum Solver",
    27:"Jigsaw Whiz",
    28:"Challenge Veteran",
    29:"Challenge Navigator",
    30:"Mind-Twister",
    31:"Puzzle Hero",
    32:"Enigma Solver",
    33:"Puzzling Polymath",
    34:"Riddle Wizard",
    35:"Challenge Magician"
}
for i in range(0, 559, 16){
    my_sum =  sum_of(range(bonus_table_base + i * 4, bonus_table_base + (i + 15) * 4, 4), b => dword(b))
    achievement(
        challenge_titles[num],
        "Finish bonus puzzles " + i + 1 + "-" + i + 16 + " in Challenge mode",
        points=5,
        trigger=
            prev(my_sum) == 15 &&
            measured(my_sum == 16, float(main_table_base) != 3.0)
    )
    num = num + 1        
}
function timer() => float(0x0ec408)z
function mode() => float(0x0a4e90)
function puzzle_num() => dword(0x0a4e8c) + 1
function tokens() => dword(0x0a4e94)
rp_modes = {
    1:"Sudoku",
    2:"Crossword",
    3:"Fitword",
    4:"Wordsearch",
    5:"Silhouette",
    6:"Spot The Difference",
    7:"Link-A-Pix",
    8:"Codeword",
    9:"Bonus Hangman",
    10:"Bonus Chain Letters",
    11:"Bonus Equate",
    12:"Bonus Picture Quiz",
    13:"Bonus Jigsaw",
    14:"Bonus Missing Piece"    
}
rich_presence_conditional_display(timer() != 0.0, "Solving {0} 🧩 {1} ⏳ {2}",
    rich_presence_lookup("Mode", mode(), rp_modes),
    rich_presence_macro("Number", puzzle_num()),
    rich_presence_value("Timer",timer(), "SECS")
)
rich_presence_display("In Menu. Hint Tokens: {0}",
    rich_presence_macro("Number", tokens())
)




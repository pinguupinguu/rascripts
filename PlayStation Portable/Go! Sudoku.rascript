// Go! Sudoku
// #ID = 18295
// ROM: Go! Sudoku (USA) (En,Fr,De,Es,It).iso
// RA Checksum: 4550b7b5b665715728e1be6f9f6b27c9
//==========LEFT OVER CODENOTES==========
// $F6F16C: [32bit] Last Visited Screen
// $FE5C78: [32bit] Current Difficulty
//          0x0=Easy
//          0x1=Mild
//          0x2=Difficult
//          0x3=Fiendish
//==========START DEFINITIONS==========
// $8B6F8C: [32bit] Active Profile
//          0x00=Profile 1
//          0x01=Profile 2
//          0x02=Profile 3
//          0x03=Profile 4
//          0x04=Profile 5
//          0x05=Profile 6
function active_profile() => dword(0x8B6F8C)
//PUZZLE LOGIC GENERATOR
function puzzleClear(arrayOffset, pzlNum, pzlTotal){
    pzlNum = pzlNum - 1 //Get Table Index
    alt_one = 0
    alt_one_delta = 0
    alt_two = 0
    alt_two_delta = 0
    alt_three = 0
    alt_three_delta = 0
    alt_four = 0
    alt_four_delta = 0
    alt_five = 0
    alt_five_delta = 0
    alt_six = 0
    alt_six_delta = 0   
// POPULATE FLAG CHECKS FOR EACH PROFILE   
    for i in range(pzlNum, pzlNum + pzlTotal){
    //======PROFILE ONE=====
        alt_one = alt_one + bit0(arrayOffset + i)
        alt_one_delta = alt_one_delta + prev(bit0(arrayOffset + i))
    //======PROFILE TWO=====
        alt_two = alt_two + bit1(arrayOffset  + i)
        alt_two_delta = alt_two_delta + prev(bit1(arrayOffset + i))
    //=====PROFILE THREE=====
        alt_three = alt_three + bit2(arrayOffset + i)
        alt_three_delta = alt_three_delta + prev(bit2(arrayOffset + i))
    //=====PROFILE FOUR=====
        alt_four = alt_four + bit3(arrayOffset + i)
        alt_four_delta = alt_four_delta + prev(bit3(arrayOffset + i))
    //=====PROFILE FIVE=====
        alt_five = alt_five + bit4(arrayOffset + i)
        alt_five_delta = alt_five_delta + prev(bit4(arrayOffset + i))
    //=====PROFILE SIX=====
        alt_six = alt_six + bit5(arrayOffset + i)
        alt_six_delta = alt_six_delta + prev(bit5(arrayOffset + i))        
    }
//GENERATE TRIGGER:
return always_false() ||
       alt_one_delta == 9 && measured(alt_one == 10, active_profile() == 0) ||
       alt_two_delta == 9 && measured(alt_two == 10, active_profile() == 1) ||
       alt_three_delta == 9 && measured(alt_three == 10, active_profile() == 2) ||
       alt_four_delta == 9 && measured(alt_four == 10, active_profile() == 3) ||
       alt_five_delta == 9 && measured(alt_five == 10, active_profile() == 4) ||
       alt_six_delta == 9 && measured(alt_six == 10, active_profile() == 5)     
}
//Function assumes all puzzles are 9 total.
function puzzleCheevo(title, difficulty, tableaddress, num, numlimit, mypoints){
    achievement(
        title,
        "Clear " + difficulty + " puzzles " + num + "-" + num + numlimit,
        points = mypoints,
        trigger=
            puzzleClear(tableaddress, num, numlimit)            
    )
}
// $F780E0: [440 bytes] Easy Puzzle Cleared Bitflag Array
//          
//          Each Bit Corresponds to Profile Number.
//          Bit0=Profile 1
//          Bit1=Profile 2
//          Bit2=Profile 3
//          Bit3=Profile 4
//          Bit4=Profile 5
//          Bit5=Profile 6
//          
//          puzzle isCleared - 0x00=False 0x01=True
easy_table = 0xf780e0
//EASY ACHIEVEMENTS:
puzzleCheevo("Easy Series 1", "Easy", easy_table, 1, 9, 1)
puzzleCheevo("Easy Series 2", "Easy", easy_table, 11, 9, 1)
puzzleCheevo("Easy Series 3", "Easy", easy_table, 21, 9, 1)
puzzleCheevo("Easy Series 4", "Easy", easy_table, 31, 9, 1)
puzzleCheevo("Easy Series 5", "Easy", easy_table, 41, 9, 1)
puzzleCheevo("Easy Series 6", "Easy", easy_table, 51, 9, 1)
puzzleCheevo("Easy Series 7", "Easy", easy_table, 61, 9, 1)
puzzleCheevo("Easy Series 8", "Easy", easy_table, 71, 9, 1)
puzzleCheevo("Easy Series 9", "Easy", easy_table, 81, 9, 1)
puzzleCheevo("Easy Series 10", "Easy", easy_table, 91, 9, 1)
puzzleCheevo("Easy Series 11", "Easy", easy_table, 101, 9, 1)
puzzleCheevo("Easy Series 12", "Easy", easy_table, 111, 9, 1)
puzzleCheevo("Easy Series 13", "Easy", easy_table, 121, 9, 1)
puzzleCheevo("Easy Series 14", "Easy", easy_table, 131, 9, 1)
puzzleCheevo("Easy Series 15", "Easy", easy_table, 141, 9, 1)
puzzleCheevo("Easy Series 16", "Easy", easy_table, 151, 9, 1)
puzzleCheevo("Easy Series 17", "Easy", easy_table, 161, 9, 1)
puzzleCheevo("Easy Series 18", "Easy", easy_table, 171, 9, 1)
puzzleCheevo("Easy Series 19", "Easy", easy_table, 181, 9, 1)
puzzleCheevo("Easy Series 20", "Easy", easy_table, 191, 9, 1)
puzzleCheevo("Easy Series 21", "Easy", easy_table, 201, 9, 1)
puzzleCheevo("Easy Series 22", "Easy", easy_table, 211, 9, 1)
puzzleCheevo("Easy Series 23", "Easy", easy_table, 221, 9, 1)
puzzleCheevo("Easy Series 24", "Easy", easy_table, 231, 9, 1)
puzzleCheevo("Easy Series 25", "Easy", easy_table, 241, 9, 1)
puzzleCheevo("Easy Series 26", "Easy", easy_table, 251, 9, 1)
puzzleCheevo("Easy Series 27", "Easy", easy_table, 261, 9, 1)
puzzleCheevo("Easy Series 28", "Easy", easy_table, 271, 9, 1)
puzzleCheevo("Easy Series 29", "Easy", easy_table, 281, 9, 1)
puzzleCheevo("Easy Series 30", "Easy", easy_table, 291, 9, 1)
puzzleCheevo("Easy Series 31", "Easy", easy_table, 301, 9, 1)
puzzleCheevo("Easy Series 32", "Easy", easy_table, 311, 9, 1)
puzzleCheevo("Easy Series 33", "Easy", easy_table, 321, 9, 1)
puzzleCheevo("Easy Series 34", "Easy", easy_table, 331, 9, 1)
puzzleCheevo("Easy Series 35", "Easy", easy_table, 341, 9, 1)
puzzleCheevo("Easy Series 36", "Easy", easy_table, 351, 9, 1)
puzzleCheevo("Easy Series 37", "Easy", easy_table, 361, 9, 1)
puzzleCheevo("Easy Series 38", "Easy", easy_table, 371, 9, 1)
puzzleCheevo("Easy Series 39", "Easy", easy_table, 381, 9, 1)
puzzleCheevo("Easy Series 40", "Easy", easy_table, 391, 9, 1)
puzzleCheevo("Easy Series 41", "Easy", easy_table, 401, 9, 1)
puzzleCheevo("Easy Series 42", "Easy", easy_table, 411, 9, 1)
puzzleCheevo("Easy Series 43", "Easy", easy_table, 421, 9, 1)
puzzleCheevo("Easy Series 44", "Easy", easy_table, 431, 9, 1)
// $F78298: [320 bytes] Mild Puzzle Cleared Flags
//          
//          Each Bit Corresponds to Profile Number.
//          Bit0=Profile 1
//          Bit1=Profile 2
//          Bit2=Profile 3
//          Bit3=Profile 4
//          Bit4=Profile 5
//          Bit5=Profile 6
//          
//          puzzle isCleared - 0x00=False 0x01=True
mild_table = 0xF78298
//MILD ACHIEVEMENTS:
puzzleCheevo("Mildly Interesting Series 1", "Mild", mild_table, 1, 9, 2)
puzzleCheevo("Mildly Interesting Series 2", "Mild", mild_table, 11, 9, 2)
puzzleCheevo("Mildly Interesting Series 3", "Mild", mild_table, 21, 9, 2)
puzzleCheevo("Mildly Interesting Series 4", "Mild", mild_table, 31, 9, 2)
puzzleCheevo("Mildly Interesting Series 5", "Mild", mild_table, 41, 9, 2)
puzzleCheevo("Mildly Interesting Series 6", "Mild", mild_table, 51, 9, 2)
puzzleCheevo("Mildly Interesting Series 7", "Mild", mild_table, 61, 9, 2)
puzzleCheevo("Mildly Interesting Series 8", "Mild", mild_table, 71, 9, 2)
puzzleCheevo("Mildly Interesting Series 9", "Mild", mild_table, 81, 9, 2)
puzzleCheevo("Mildly Interesting Series 10", "Mild", mild_table, 91, 9, 2)
puzzleCheevo("Mildly Interesting Series 11", "Mild", mild_table, 101, 9, 2)
puzzleCheevo("Mildly Interesting Series 12", "Mild", mild_table, 111, 9, 2)
puzzleCheevo("Mildly Interesting Series 13", "Mild", mild_table, 121, 9, 2)
puzzleCheevo("Mildly Interesting Series 14", "Mild", mild_table, 131, 9, 2)
puzzleCheevo("Mildly Interesting Series 15", "Mild", mild_table, 141, 9, 2)
puzzleCheevo("Mildly Interesting Series 16", "Mild", mild_table, 151, 9, 2)
puzzleCheevo("Mildly Interesting Series 17", "Mild", mild_table, 161, 9, 2)
puzzleCheevo("Mildly Interesting Series 18", "Mild", mild_table, 171, 9, 2)
puzzleCheevo("Mildly Interesting Series 19", "Mild", mild_table, 181, 9, 2)
puzzleCheevo("Mildly Interesting Series 20", "Mild", mild_table, 191, 9, 2)
puzzleCheevo("Mildly Interesting Series 21", "Mild", mild_table, 201, 9, 2)
puzzleCheevo("Mildly Interesting Series 22", "Mild", mild_table, 211, 9, 2)
puzzleCheevo("Mildly Interesting Series 23", "Mild", mild_table, 221, 9, 2)
puzzleCheevo("Mildly Interesting Series 24", "Mild", mild_table, 231, 9, 2)
puzzleCheevo("Mildly Interesting Series 25", "Mild", mild_table, 241, 9, 2)
puzzleCheevo("Mildly Interesting Series 26", "Mild", mild_table, 251, 9, 2)
puzzleCheevo("Mildly Interesting Series 27", "Mild", mild_table, 261, 9, 2)
puzzleCheevo("Mildly Interesting Series 28", "Mild", mild_table, 271, 9, 2)
puzzleCheevo("Mildly Interesting Series 29", "Mild", mild_table, 281, 9, 2)
puzzleCheevo("Mildly Interesting Series 30", "Mild", mild_table, 291, 9, 2)
puzzleCheevo("Mildly Interesting Series 31", "Mild", mild_table, 301, 9, 2)
puzzleCheevo("Mildly Interesting Series 32", "Mild", mild_table, 311, 9, 2)
// $F783D8: [160 bytes] Difficult Puzzle Cleared Flags
//          
//          Each Bit Corresponds to Profile Number.
//          Bit0=Profile 1
//          Bit1=Profile 2
//          Bit2=Profile 3
//          Bit3=Profile 4
//          Bit4=Profile 5
//          Bit5=Profile 6
//          
//          puzzle isCleared - 0x00=False 0x01=True
difficult_table = 0xF783D8
//DIFFICULT ACHIEVEMENTS:
puzzleCheevo("Challenging Series 1", "Difficult", difficult_table, 1, 9, 3)
puzzleCheevo("Challenging Series 2", "Difficult", difficult_table, 11, 9, 3)
puzzleCheevo("Challenging Series 3", "Difficult", difficult_table, 21, 9, 3)
puzzleCheevo("Challenging Series 4", "Difficult", difficult_table, 31, 9, 3)
puzzleCheevo("Challenging Series 5", "Difficult", difficult_table, 41, 9, 3)
puzzleCheevo("Challenging Series 6", "Difficult", difficult_table, 51, 9, 3)
puzzleCheevo("Challenging Series 7", "Difficult", difficult_table, 61, 9, 3)
puzzleCheevo("Challenging Series 8", "Difficult", difficult_table, 71, 9, 3)
puzzleCheevo("Challenging Series 9", "Difficult", difficult_table, 81, 9, 3)
puzzleCheevo("Challenging Series 10", "Difficult", difficult_table, 91, 9, 3)
puzzleCheevo("Challenging Series 11", "Difficult", difficult_table, 101, 9, 3)
puzzleCheevo("Challenging Series 12", "Difficult", difficult_table, 111, 9, 3)
puzzleCheevo("Challenging Series 13", "Difficult", difficult_table, 121, 9, 3)
puzzleCheevo("Challenging Series 14", "Difficult", difficult_table, 131, 9, 3)
puzzleCheevo("Challenging Series 15", "Difficult", difficult_table, 141, 9, 3)
puzzleCheevo("Challenging Series 16", "Difficult", difficult_table, 151, 9, 3)
// $F78478: [80 bytes] Fiendish Puzzle Cleared Flags
//          
//          Each Bit Corresponds to Profile Number.
//          Bit0=Profile 1
//          Bit1=Profile 2
//          Bit2=Profile 3
//          Bit3=Profile 4
//          Bit4=Profile 5
//          Bit5=Profile 6
//          
//          puzzle isCleared - 0x00=False 0x01=True
fiendish_table = 0xF78478
puzzleCheevo("Devil's Series 1", "Fiendish", fiendish_table, 1, 9, 4)
puzzleCheevo("Devil's Series 2", "Fiendish", fiendish_table, 11, 9, 4)
puzzleCheevo("Devil's Series 3", "Fiendish", fiendish_table, 21, 9, 4)
puzzleCheevo("Devil's Series 4", "Fiendish", fiendish_table, 31, 9, 4)
puzzleCheevo("Devil's Series 5", "Fiendish", fiendish_table, 41, 9, 5)
puzzleCheevo("Devil's Series 6", "Fiendish", fiendish_table, 51, 9, 5)
puzzleCheevo("Devil's Series 7", "Fiendish", fiendish_table, 61, 9, 5)
puzzleCheevo("Devil's Series 8", "Fiendish", fiendish_table, 71, 9, 5)
//===========RICH PRESENCE==========
function menu_ID() => dword(0xF6F168)
// $A64E64: [32bit] Number of Hearts
function hearts() => dword(0xA64E64)
// $A64E68: [32bit] Max Amt of Hearts
function max_hearts() => dword(0xA64E68)
// $A64FF4: [32bit] Selected Number
// $A64FFC: [32bit] Timer in Frames (30FPS)
function frame_timer() => dword(0xA64FFC)
// $A65074: [32bit] Active Puzzle Number
function active_puzzle() => dword(0xA65074)
// $A65078: [32bit] Active Difficulty
//          0x00=Easy
//          0x01=Mild
//          0x02=Difficult
//          0x03=Fiendish
function active_difficulty() => dword(0xA65078)
difficulties = {
    0:"Easy",
    1:"Mild",
    2:"Difficult",
    3:"Fiendish"
}
// $F6F154: [32bit] Game State
//          0x00=In Menu
//          0x01=In Game
function game_state() => dword(0xF6F154)
in_menu = 0
in_game = 1
rich_presence_conditional_display(game_state() == in_game, "Solving {0} 🧩{1}  ❤️{2}/{3} ⏳{4}",
    rich_presence_lookup("Difficulty", active_difficulty(), difficulties),
    rich_presence_value("ActiveNum", active_puzzle()),
    rich_presence_value("Hearts", hearts()),
    rich_presence_value("Hearts", max_hearts()),
    rich_presence_value("Timer", frame_timer() * 2, "FRAMES")
)
// $F6F168: [32bit] Menu ID
//          0xe=Selecting a Puzzle
puzzle_select = 0xe
rich_presence_conditional_display(menu_ID() == puzzle_select, "Selecting a puzzle...")
//===DEFAULT STRING===
rich_presence_display("In Menu")
       
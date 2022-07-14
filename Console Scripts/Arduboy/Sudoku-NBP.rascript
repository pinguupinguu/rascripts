// Sudoku-NBP
// #ID = 8690

// $0102: [8bit] Game State
//        0x00=Selecting Puzzle
//        0x01=Hint Used
//        0x03=Saving Game
//        0x04=Load Game
//        0x05=Solve Puzzle Button
//        0x06=In Menu  
//        0x07=In Puzzle
function state() => byte(0x000102)
function cheat_protection() => unless(once(state() == 0x1)) && unless(once(state() == 0x5))
// $018A: [Lower4] Selected Number
// $0286: [8bit] Puzzle Number
//        0x0-0xe=Easy
//        0xf-0x18=Medium
//        0x19-0x2c=Hard
function puzzle_number() => byte(0x000286)
// $028C: [8bit] Numbers Remaining
function number_remaining() => byte(0x00028c)
function sum_puzzles(start_num) =>
    tally_of(range(start_num, start_num + 4), 5, b =>  once( puzzle_number() == b && prev(number_remaining()) == 1 && number_remaining() == 0)) //count for each achievement is five puzzles!

numbers = {
    0:{"Difficulty":"Easy", "Start":0, "End":0xe, "Points":2},
    1:{"Difficulty":"Medium", "Start":0xf, "End":0x18, "Points":3},
    2:{"Difficulty":"Hard", "Start":0x19, "End":0x2c, "Points":5}    
}
for category in numbers{
title_count = 0
    for i in range(numbers[category]["Start"], numbers[category]["End"], 5){
    title_count = title_count + 1
    achievement(
        "Ardu-" + numbers[category]["Difficulty"] + " #" + title_count,
        "Solve " + numbers[category]["Difficulty"] + " puzzles " + i + "-" + i + 4 + " (One Session, No Hints or Solve Tool!)",
        points=numbers[category]["Points"],
        trigger=
            sum_puzzles(i) &&
            cheat_protection()
    )        
  }
}
// $0288: [32bit] Timer (Seconds)
//        Divide by 1,000 to get Seconds
function timer() => dword(0x000288)
// $028D: [8bit] Bad Spot Message
//        0x00=Hidden
//        0xff=Displayed
rich_presence_conditional_display(state() == 0x7, "Solving Puzzle #{0} ⏳ {1}",
    rich_presence_macro("Number", puzzle_number()),
    rich_presence_macro("Seconds", timer() / 1000)
)
rich_presence_display("In Menus")
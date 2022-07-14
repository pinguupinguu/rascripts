// Puzzle Series Vol. 3: Sudoku
// #ID = 20072

// $0F2944: [32bit] Rank Test Progression
//          0x00=On Bronze
//          0x01=On Silver
//          0x02=On Gold
//          0x03=On Platinum
//          0x04=Cleared!
// $0F2948: [280 bytes] Easy Puzzle Frame Timer Table
//          Each [32bit] = Record Frame Timer
//          Puzzle Number = Table Index + 1
// $0F2A60: [560 bytes] Normal Puzzle Frame Timer Table
//          Each [32bit] = Record Frame Timer
//          Puzzle Number = Table Index + 1
// $0F2C90: [360 bytes] Hard Puzzle Frame Timer Table
//          Each [32bit] = Record Frame Timer
//          Puzzle Number = Table Index + 1
// $0F2DF8: [32bit] Bronze Rank Test Record Frame Timer
// $0F2DFC: [32bit] Silver Rank Test Record Frame Timer
// $0F2E00: [32bit] Gold Rank Test Record Frame Timer
// $0F2E04: [32bit] Platinum Rank Test Record Frame Timer
// $0FD0D8: [32bit] Game Pointer (When 0 = Inactive & Good for Save Protection)
//          +0x15dcc=[32bit] Puzzle State Flag
//          -----------0x00=Solving
//          -----------0x0b=Clear
//          +0x15de0 =[32bit] Current Puzzle Timer (Frames)
function game_pointer() => tbyte(0x0fd0d8)
// $10971C: [32bit] Solved Flag (In Game)
//          0x00=Solving
//          0x0b=Clear
// $109730: [32bit] Puzzle Frame Timer (In Game)
// $1124C0: [32bit] Active Puzzle Number
// $1124C4: [32bit] Active Puzzle Category
//          0x00=Easy
//          0x01=Normal
//          0x02=Hard
//          0x03=Rank Test
function active_category() => dword(0x1124c4)
category = {
    0:"Easy",
    1:"Normal",
    2:"Hard"
}
// $1124C8: [32bit] Active Rank Test Puzzle
//          0x01=Bronze
//          0x02=Silver
//          0x03=Gold
//          0x04=Platinum
ranks = {
    1:"Bronze",
    2:"Silver",
    3:"Gold",
    4:"Platinum"
}
rich_presence_conditional_display(game_pointer() != 0 && active_category() == 3, "Solving")
rich_presence_display("In Menu")
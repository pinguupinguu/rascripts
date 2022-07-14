// Hello Kitty: Puzzle Party
// #ID = 17995
// ROM = Hello Kitty - Puzzle Party (Europe) (En,Fr,De,Es,It).iso
// RA Checksum = 005c19468e9afd49ceee448e1052eb8a 
function puzzle_solve(start_addr, ind, end_ind){
    trigger_mem = 0
    trigger_delta = 0
    for i in range(ind, end_ind){
        trigger_mem = trigger_mem + byte(start_addr + i)
        trigger_delta = trigger_delta + prev(byte(start_addr + i))
    }        
    return trigger_delta == end_ind - ind   && measured(trigger_mem == (end_ind - ind) + 1)    
}
// $985603: [15 bytes] Jigsaw Puzzle - Easy Unlock Flag Table
//          Each 8bit:
//          0x00=Unfinished
//          0x01=Finished
jig_easy_table = 0x985603
achievement(
    "The Nineteenth Century",
    "Complete Easy Jigsaw Puzzles 1-5",
    points=1,
    trigger=
        puzzle_solve(jig_easy_table, 0, 4)        
)
achievement(
    "I Love More Than Candy",
    "Complete Easy Jigsaw Puzzles 6- 10",
    points=1,
    trigger=
        puzzle_solve(jig_easy_table, 5, 9)
)
achievement(
    "Comedically Easy",
    "Complete Easy Jigsaw Puzzles 11-15",
    points=1,
    trigger=
        puzzle_solve(jig_easy_table, 10, 14)
)
// $985612: [20 bytes] Jigsaw Puzzle - Hard Unlock Flag Table
//          Each 8bit:
//          0x00=Unfinished
//          0x01=Finished
jig_hard_table = 0x985612
achievement(
    "Weird Animals",
    "Complete Hard Jigsaw Puzzles 1-5",
    points=3,
    trigger=
        puzzle_solve(jig_hard_table, 0, 4)
)
achievement(
    "What Do You Do With a Hello Kitty?",
    "Complete Hard Jigsaw Puzzles 6-10",
    points=3,
    trigger=
        puzzle_solve(jig_hard_table, 5, 9)
)
achievement(
    "Big City, Big Years",
    "Complete Hard Jigsaw Puzzles 11-15",
    points=3,
    trigger=
        puzzle_solve(jig_hard_table, 10, 14)    
)
achievement(
    "A Work of Modern Art",
    "Complete Hard Jigsaw Puzzles 16-20",
    points=3,
    trigger=
        puzzle_solve(jig_hard_table, 15, 19)
)
// $985626: [10 bytes] Picture Perfect - Easy Unlock Flag Table
//          Each 8bit:
//          0x00=Unfinished
//          0x01=Finished
pic_easy_table = 0x985626
achievement(
    "Yer Basic Kitchen",
    "Complete Easy Picture Perfect Puzzles 1-5",
    points=1,
    trigger=
        puzzle_solve(pic_easy_table, 0, 4)
)
achievement(
    "Household Things",
    "Complete Easy Picture Perfect Puzzles 6-10",
    points=1,
    trigger=
        puzzle_solve(pic_easy_table, 5, 9)
)
// $985630: [10 bytes] Picture Perfect - Normal Unlock Flag Table
//          Each 8bit:
//          0x00=Unfinished
//          0x01=Finished
pic_nrm_table = 0x985630
achievement(
    "Piano Man",
    "Complete Normal Picture Perfect Puzzles 1-5",
    points=2,
    trigger=
       puzzle_solve(pic_nrm_table, 0, 4) 
)
achievement(
    "Fly Away",
    "Complete Normal Picture Perfect Puzzles 6-10",
    id=176843,
    points=2,
    trigger=
       puzzle_solve(pic_nrm_table, 5, 9) 
)
// $98563A: [15 bytes] Picture Perfect - Hard Unlock Flag Table
//          Each 8bit:
//          0x00=Unfinished
//          0x01=Finished
pic_hard_table = 0x98563a
achievement(
    "More Koalas Please!",
    "Complete Hard Picture Perfect Puzzles 1-5",
    points=5,
    trigger=
       puzzle_solve(pic_hard_table, 0, 4) 
)
achievement(
    "Umbrella-ella",
    "Complete Hard Picture Perfect Puzzles 6-10",
    points=5,
    trigger=
       puzzle_solve(pic_hard_table, 5, 9) 
)
achievement(
    "Swim Away!",
    "Complete Hard Picture Perfect Puzzles 11-15",
    points=5,
    trigger=
       puzzle_solve(pic_hard_table, 10, 14) 
)
// $985E20: [32bit] Screen ID
//          0x19=Tasty Tidbits - Playing
function tidbits_playing() => dword(0x985e20) == 0x19
// $C8E36C: [32bit] Tasty Tidbits - Level
tidbits_level = dword(0xc8e36c)
achievement(
    "Tasteful Times",
    "Clear Levels 1-10 in Tasty Tidbits",
    points=5,
    trigger=
        tidbits_playing() &&
        prev(tidbits_level) == 0x9 &&
        tidbits_level == 0xa
)
achievement(
    "Master of Tastes",
    "Clear Levels 11-20 in Tasty Tidbits",
    points=5,
    trigger=
        tidbits_playing() &&
        prev(tidbits_level) == 0x12 &&
        tidbits_level == 0x13
)
// $985E20: [32bit] Screen ID
//          0x00=Booting...
//          0x01=Title Screen
//          0x03=Main Menu
//          0x04=Gadget Screen
//          0x06=Design a Gadget Screen!
//          0x08=Setting Alarm
//          0x0a=Options
//          0x0b=Minigames
//          0x0c=Picture Perfect Title
//          0x0d=Picture Perfect How to Play
//          0x0e=Selecting a Picture Perfect Difficulty
//          0x0f=Selecting a Picture Perfect Puzzle
//          0x10=Solving a Picture Perfect Puzzle
//          0x11=Jigsaw Puzzle Title
//          0x12=Jigsaw How to Play
//          0x13=Jigsaw Puzzle Selection
//          0x14=Jigaw Puzzle Select
//          0x15=In Jigsaw
//          0x16=Tasty Tidbits Title
//          0x17=Tast Tidbits How to Play
//          0x18=Tasty Tidbits - Difficulty Select
//          0x19=Tasty Tidbits - Playing
// $C8E386: [32bit] Tasty Tidbits - High Score
// $E8E428: [32bit] Last Active Jigsaw Puzzle Difficulty
// $E8E42C: [32bit] Last Active Jigsaw Puzzle
// $E8E530: [32bit] Picture Perfect - Active Difficulty
//          0x00=Easy
//          0x01=Normal
//          0x02=Hard
// $E8E534: [32bit] Picture Perfect - Active Puzzle
// $11CE06C: [32bit] Tasty Tidbits - Current Score
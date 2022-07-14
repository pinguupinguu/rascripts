// ~Homebrew~ Superpix
// #ID = 18817
// $A000: [720 bytes] Puzzle Table
//        Separated into 80 packs of 9 levels each.
//        Each [8bit]:
//        0x00=Not Completed
//        0x01=Completed (Normal)
//        0x02=Completed (Perfect)
puzzle_table = range(0xA000, 0xA000 + 720)
function garbo_check() => never(byte(0xa000) > 2)
function cheevo_gen(start, end){
    mem_trigger = []
    delta_trigger = []    
    for i in range(start, end){
        array_push(mem_trigger,  once(byte(i) != 0))
        array_push(delta_trigger, once(prev(byte(i)) != 0))
    }
    return tally(8, delta_trigger) &&
           measured(tally(9, mem_trigger)) &&
           never(tally(9, delta_trigger))    
}
my_id = 208424
for i in range(0, 79){
    base_indice = i * 9
    //inputs = range(puzzle_table[base_indice], puzzle_table[base_indice + 8])
    achievement(
        "Puzzle Pack " + i + 1,
        "Solve all puzzles in Puzzle Pack " + i + 1 + " (One Session)",
        points=3,
        id=my_id,
        trigger=             
            cheevo_gen(puzzle_table[base_indice], puzzle_table[base_indice + 8]) &&
            garbo_check()
     ) 
     my_id = my_id + 1
}
rich_presence_display("Picrossing to unlock mastery badge...")
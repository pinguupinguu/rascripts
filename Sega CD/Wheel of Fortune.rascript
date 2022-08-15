// Wheel of Fortune
// #ID = 15994


//CONSTANTS
HUMAN = 0
COMP = 1

// $0E00: Number of Players
//        0x00=Solo
//        0x01=2 Players
//        0x02=3 Players
function players() => byte(0x0e00)
function load_protect() => byte(0xe00) <= 2
// $0E02: [8bit] Player Turn
function player_turn() => byte(0x0e02)
// $0E14: Player 1 Name (Stored in 16bit)
// $0E36: [8bit] Player 1 - State
//        0x00=Human
//        0x01=Computer
function p_one() => byte(0x0e36)
// $0E38: [8bit] Player 3 - State
//        0x00=Human
//        0x01=Computer
function p_three() => byte(0x0e38)
// $0E39: [8bit] Player 2 - State
//        0x00=Human
//        0x01=Computer
function p_two() => byte(0x0e39)
human = 0
computer = 1
//Function below checks all possible combinations of one player being an active player rather than the CPU.
function player_alts() => 
    always_false() || 
        player_turn() == 0 && p_one() == human && p_two() == computer && p_three() == computer ||
        player_turn() == 1 && p_two() == human && p_one() == computer && p_three() == computer ||
        player_turn() == 2 && p_three() == human && p_one() == computer && p_two() == computer

// 
// $0E46: 16bit Space Landed On
// $0E4A: [16bit] Player 1 - Money
function p_one_money() => word(0x0e4a)
// $0E4E: [16bit] Player Two > Money
function p_two_money() => word(0x0e4e)
// $0E52: [16bit] Player Three - Money
function p_three_money() => word(0x0e52)
// $0E66: Current Round
//        00 to 01 > Round 1
//        01 to 02 > Round 2
//        02 to 03 > Round 3
//        03 to 04 > Round 4
//        04 > 0xff > Round 5
function round() => byte(0xe66)

function versus_one_cpu() => players() == 1 && p_one() == HUMAN && p_two() == COMP
versus_one_names = {
    0:"Beginning Rivalry",
    1:"An Unlikely Opponent",
    2:"Double Trouble",
    3:"It Takes Two to Tango",
    4:"Player Two Defeated!"
}
round_index = [1, 2, 3, 4, 0xff]

my_points = 1
my_id = 223625
for i in range(0, 4){
if (i == 0) my_points = 3
else my_points = 5


    achievement(
        versus_one_names[i],
        "Win Round " + i + 1 + " against one CPU player!",
        points= my_points,
        id = my_id,
        trigger=
            versus_one_cpu() &&
            player_turn() == 0 &&
            prev(round()) == i && 
            round() == round_index[i] 
    )
    my_id = my_id + 1
}
function versus_two_cpu() => players() == 2 && p_one() == HUMAN && p_two() == COMP && p_three() == COMP
versus_two_names = {
    0:"Two Times Rivalry",
    1:"Another Unlikely Opponent",
    2:"Triple Threat",
    3:"Boasting Dollars",
    4:"Player Two AND Three Defeated!"
}


for i in range(0, 4){
    achievement(
        versus_two_names[i],
        "Win Round " + i + 1 + " against two CPU players!",
        points=5,
        id = my_id,
        trigger=
            versus_two_cpu() &&
            player_turn() == 0 &&           
            prev(round()) == i && 
            round() == round_index[i]          
    )
    my_id = my_id + 1
}
// $0E6A: [8bit] B is Guessed
//        0x00=No
//        0x42=Yes
// $0E6B: Letters Guessed
// $0ECE: 16bit Wheel Position
// $0ED7: Free Spin Count
function free_spin() => byte(0xed7)
// $0EDC: [8bit] Bonus Round - Win or Lose Flag
//        Win=0x00
//        Lose=0x01
function bonus_flag() => byte(0xedc)
// $13CC: [8bit] Bonus Option Selected?
// $13D6: [8bit] Cursor - Letters Active
//        0x00=No
//        0x01=Yes
function cursor() => byte(0x13d6)

// $13E8: [8bit] Timer Active
//        0x01=Yes
//        0x02=No
function timer_active() => byte(0x13e8)

function bonus_round_win() => bonus_flag() == 0 && prev(cursor()) == 1 && cursor() == 0 && prev(timer_active()) == 1 && timer_active() == 2
// $0E68: [8bit] Chosen Prize Index
//        0x00=A Trip to the Caribbean
//        0x01=Savings Bond!
//        0x02=A New Car!
//        0x03=$25,000
//        0x04=A Diamond Ring
function prize_index() => byte(0x0e68)
prizes = {
    0:"A Trip to the Caribbean",
    1:"A Savings Bond",
    2:"A New Car",
    3:"$25,000",
    4:"A Diamond Ring"
}
function prize_addr() => word(0x000ed0)
prize_ids = [8, 7, 9, 0xa, 0x6]

// $0ED0: [16bit] Selected Prize
//        0x1bc = About to Give
//        0x06=A Diamond Ring!
//        0x07=Savings Bond!
//        0x08=A Trip to the Caribbean
//        0x09=A New Car
//        0xa=25k
my_id = 223635
for i in range(0, 4){
    achievement(
        "Prize No. " + i + 1 + "!",
        "Win " + prizes[i] + " from the Bonus Round against two CPU players!",
        points=5,
        id=my_id,
        trigger=
            load_protect() && 
            round() == 0xff && 
            bonus_flag() == 0 &&
            prev(prize_addr()) == 0x1bb &&
            prize_addr() == prize_ids[i] &&
            player_alts()
    )
   my_id = my_id + 1
}


achievement(
    "Free Spin for Free Points!",
    "Obtain and use a free spin!",
    points=2,
    trigger=
        load_protect() && 
        prev(free_spin()) - free_spin()  == 1
)
function generate_rounds() {
    trigger = always_false()
    for i in range(0, 4) {
        trigger = trigger || prev(round()) == i && round() == round_index[i]
    }
    return trigger   
}
function letter_check() => all_of(range(0x0e6a, 0x0e6a + 25), b => byte(b) == 0)
achievement(
    "The Ultimate Guess",
    "Solve a riddle as a solo player without guessing any letters!",
    points=10,
    trigger=
        players() == 0 &&
        p_one() == HUMAN &&
        letter_check() &&
        generate_rounds()
)    
// $13FA: Timer (Tens)
// $140C: Timer (Ones)
// $1430: AFK Timer
// $1434: 00=Spin Wheel
//        01=Buy Vowel
//        02=Solve Puzzle
// $1590: Displayed Letters Data Start
// $17F4: Displayed Letters Data End
// $1800: 01=Paused
// $363E: How Long Player Name Is
// $39B4: Current Character Selected
// $3A3C: [8bit] Current Game Slot
ascii_list = {
    0x41: "A",
0x42: "B",
0x43: "C",
0x44: "D",
0x45: "E",
0x46: "F",
0x47: "G",
0x48: "H",
0x49: "I",
0x4A: "J",
0x4B: "K",
0x4C: "L",
0x4D: "M",
0x4E: "N",
0x4F: "O",
0x50: "P",
0x51: "Q",
0x52: "R",
0x53: "S",
0x54: "T",
0x55: "U",
0x56: "V",
0x57: "W",
0x58: "X",
0x59: "Y",
0x5A: "Z",
0x20: ""

}
player_text = {
    0:"solo!",
    1:"against one contestant!",
    2:"against two contestants!"
}
function name_array() => array_map(range(0x00e14, 0x00e1b), b => rich_presence_macro("ASCIIChar", byte(b)))
function game_state() => byte(0x0edb)
in_game = 0x20
in_menu = 0x00
rich_presence_conditional_display(game_state() == in_game, "{0}{1}{2}{3}{4}{5}{6}{7} is playing {8} {9}",
    rich_presence_lookup("Name", byte(0x00e15), ascii_list),
    rich_presence_lookup("Name", byte(0x00e14), ascii_list),
    rich_presence_lookup("Name", byte(0x00e17), ascii_list),
    rich_presence_lookup("Name", byte(0x00e16), ascii_list),
    rich_presence_lookup("Name", byte(0x00e19), ascii_list),
    rich_presence_lookup("Name", byte(0x00e18), ascii_list),
    rich_presence_lookup("Name", byte(0x00e1b), ascii_list),
    rich_presence_lookup("Name", byte(0x00e1a), ascii_list),
    rich_presence_lookup("Player", players(), player_text),
    rich_presence_macro("Number", bcd(p_one_money()) * 10)
    )
rich_presence_display("Jordy Sucks")
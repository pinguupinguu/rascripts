// Brain Boost: Gamma Wave
// #ID = 27133
// $107204: [8 bytes] Profile 1 - Colors Score Array
//          Each Level in Order 1-4: [16bit] Score
// $10720C: [8 bytes] Profile 1 - Numbers Score Array
// $107214: [8 bytes] Profile 1 - Circumstances Score Array
// $10721C: [8 bytes] Profile 1 - Faces Score Array
// $107224: [8 bytes] Profile 1 - Images Score Array
// $10722C: [NBit] Game Clears
//          Bit0=Numbers Level 3 Training
//          Bit1=Colors Level 3 Training
//          Bit2=Images Level 2 Training
//          Bit3=Faces Level 2 Training
//          Bit4=Circumstances Level 2 Training
//          Bit5=Numbers Level 2 Training
//          Bit6=Colors Level 2 Training
//          Bit7=Images Level 1 Training
// $10722D: [NBit] Game Clears:
//          Bit0=Faces Level 1 Training
//          Bit1=Circumstances Level 1 Training
//          Bit2=Numbers Level 1 Training
//          Bit3=Colors Level 1 Training
//          Pete Continent:
//          Bit4=Images
//          Bit5=Faces
//          Bit6=Circumstances
//          Bit7=Numbers
// $10722E: [NBit] Challenge Mode Clears:
//          Pete Continent:
//          Bit0=Colors
//          Marvin Continent:
//          Bit1=Images
//          Bit2=Faces
//          Bit3=Circumstances
//          Bit4=Numbers
//          Bit5=Colors
//          Patrick Continent:
//          Bit6=Images
//          Bit7=Faces
// $10722F: [NBit] Challenge Mode Clears
//          Patrick Continent:
//          Bit0=Circumstances
//          Bit1=Numbers
//          Bit2=Colors
//          Clifford Continent:
//          Bit3=Images
//          Bit4=Faces
//          Bit5=Circumstances
//          Bit6=Numbers
//          Bit7=Colors
// $107233: [NBit] Game Clears:
//          Bit0=Images Level 4 Training
//          Bit1=Faces Level 4 Training
//          Bit2=Circumstances Level 4 Training
//          Bit3=Numbers Level 4 Training
//          Bit4=Colors Level 4 Training
//          Bit5=Images Level 3 Training
//          Bit6=Faces Level 3 Training
//          Bit7=Circumstances Level 3 Training
// $107254: [16bit] Profile 2 -  Remember the Colors - Level 1 Score
// $1072A4: [16bit] Profile 3 -  Remember the Colors - Level 1 Score
// $1072F4: [16bit] Profile 4 -  Remember the Colors - Level 1 Score
// $107379: [8bit] Active Profile Index. Offset: $50
// $137808: [8bit] question
// $137B24: [8bit] Game Selection GUI Profile Data Index
// $137C34: [32bit] score
function profile_index() => byte(0x107379)
function index_protection() => profile_index() == prev(profile_index()) //Avoid switching profiles from 4 to 5 for triggers.
//Set up feeder function for accessor types to simplify calls.
function prof_pointer(offset, type){
    if(type == "byte") return byte(tbyte(profile_index() * 0x50) + offset)
    else if(type == "word") return word(profile_index() * 0x50 + offset)
    else if(type == "bit0") return bit0(profile_index() * 0x50 + offset)
    else if(type == "bit1") return bit1(profile_index() * 0x50 + offset)
    else if(type == "bit2") return bit2(profile_index() * 0x50 + offset)
    else if(type == "bit3") return bit3(profile_index() * 0x50 + offset)
    else if(type == "bit4") return bit4(profile_index() * 0x50 + offset)
    else if(type == "bit5") return bit5(profile_index() * 0x50 + offset)
    else if(type == "bit6") return bit6(profile_index() * 0x50 + offset)
    else return bit7(profile_index() * 0x50 + offset)    
} 
function training_one_clears() =>
    prof_pointer(0x10722d, "bit3") +
    prof_pointer(0x10722d, "bit2") +
    prof_pointer(0x10722d, "bit1") +
    prof_pointer(0x10722d, "bit0") +
    prof_pointer(0x10722c, "bit7")
function training_two_clears() =>
    prof_pointer(0x10722c, "bit2") +
    prof_pointer(0x10722c, "bit3") +
    prof_pointer(0x10722c, "bit4") +
    prof_pointer(0x10722c, "bit5") +
    prof_pointer(0x10722c, "bit6")
function training_three_clears() =>
    prof_pointer(0x10722c, "bit0") +
    prof_pointer(0x10722c, "bit1") +
    prof_pointer(0x107233, "bit5") +
    prof_pointer(0x107233, "bit6") +
    prof_pointer(0x107233, "bit7")
function training_four_clears() =>
    prof_pointer(0x107233, "bit0") +
    prof_pointer(0x107233, "bit1") +
    prof_pointer(0x107233, "bit2") +
    prof_pointer(0x107233, "bit3") +
    prof_pointer(0x107233, "bit4")
achievement(
    "Training Noobie",
    "Get game clears on all Level 1 Training categories.",
    points=5,
    trigger=
        prev(training_one_clears()) == 4 &&
        measured(training_one_clears() == 5) &&
        index_protection()
)
achievement(
    "Game Clear Collecting",
    "Get game clears on all Level 2 Training categories.",
    points=5,
    trigger=
        prev(training_two_clears()) == 4 &&
        measured(training_two_clears() == 5) &&
        index_protection()
)
achievement(
    "Practice Means Improvement",
    "Get game clears on all Level 3 Training categories.",
    points=10,
    trigger=
        prev(training_three_clears()) == 4 &&
        measured(training_three_clears() == 5) &&
        index_protection()
)
achievement(
    "Master of Expectations!",
    "Get game clears on all Level 4 Training categories.",
    points=10,
    trigger=
        prev(training_four_clears()) == 4 &&
        measured(training_four_clears() == 5) &&
        index_protection()
)
function clifford() =>
    prof_pointer(0x10722F, "bit3") +
    prof_pointer(0x10722F, "bit4") +
    prof_pointer(0x10722F, "bit5") +
    prof_pointer(0x10722F, "bit6") +
    prof_pointer(0x10722F, "bit7")
function clear(input) =>
    prev(input) == 4 &&
    measured(input == 5) &&
    index_protection()
achievement(
    "The Big Red Dog Place",
    "Clear all challenges on the Clifford Continent",
    points=5,
    trigger=
        clear(clifford())
)
function patrick() =>
    prof_pointer(0x10722F, "bit0") +
    prof_pointer(0x10722F, "bit1") +
    prof_pointer(0x10722F, "bit2") +
    prof_pointer(0x10722E, "bit6") +
    prof_pointer(0x10722E, "bit7")
achievement(
    "The Pink Star",
    "Clear all challenges on the Patrick Continent",
    points=5,
    trigger=
        clear(patrick())
)
function marvin() =>
    prof_pointer(0x10722E, "bit1") +
    prof_pointer(0x10722E, "bit2") +
    prof_pointer(0x10722E, "bit3") +
    prof_pointer(0x10722E, "bit4") +
    prof_pointer(0x10722E, "bit5") 
achievement(
    "The Space Martian",
    "Clear all challenges on the Marvin Continent",
    points=10,
    trigger=
        clear(marvin())
)
function pete() =>
    prof_pointer(0x10722E, "bit0") +
    prof_pointer(0x10722D, "bit4") +
    prof_pointer(0x10722D, "bit5") +
    prof_pointer(0x10722D, "bit6") +
    prof_pointer(0x10722D, "bit7")
achievement(
    "The Peg Leg",
    "Clear all challenges on the Pete Continent",
    points=10,
    trigger=
        clear(pete())
)
function score_table(start) => range(start, start + (8 * 4), 8)
level_one = 0x107204
level_two = 0x107206
level_three = 0x107208
level_four = 0x10720a
//Initialize logic once for condensed writing purposes.
function training(level, target) =>
        tally_of(score_table(level), 4, b => once(prev(prof_pointer(b, "word")) == target)) &&
        measured(tally_of(score_table(level), 5, b=> once(prof_pointer(b, "word") == target))) &&
        never(tally_of(score_table(level), 5, b => once(prev(prof_pointer(b, "word")) == target)))
achievement(
    "Initiative Brain Training",
    "Achieve a perfect score of 100 on all Level 1 Training mode games",
    points=5,
    trigger=
        training(level_one, 100)
)
achievement(
    "Modal Mixture Braining",
    "Achieve a perfect score of 200 on all Level 2 Training mode games",
    points=10,
    trigger=
        training(level_two, 200)
)
achievement(
    "Brain Forming",
    "Achieve a perfect score of 300 on all Level 3 Training mode games",
    points=10,
    trigger=
        training(level_three, 300)
)
achievement(
    "Dr. Kawashima Approves!",
    "Achieve a perfect score of 400 on all Level 4 Training mode games",
    points=10,
    trigger=
        training(level_four, 400)
)

function state() => byte(0x1073e0)
function mode() => byte(0x107375)
challenge = 0
training = 1
function level() => byte(0x107374)
function level_num() => level() + 1
continents = {
    0:"Clifford",
    1:"Patrick",
    2:"Marvin",
    3:"Pete"
}
function game() => byte(0x107378)
game_mode = {
    0:"Colors",
    1:"Numbers",
    2:"Circumstances",
    3:"Faces",
    4:"Images"
}
function question() => byte(0x137808)
function score() => word(0x137c34)
rich_presence_conditional_display(mode() == challenge && state() != 0 && level_num() < 5, "Playing Remember {0} on {1} Continent ❓ {2}/20 🏆 {3}", 
    rich_presence_lookup("Game", game(), game_mode),
    rich_presence_lookup("Continent", level(), continents),
    rich_presence_macro("Number", question()),
    rich_presence_macro("Number", score())
)
rich_presence_conditional_display(mode() == training && state() != 0 && level_num() < 5, "Training Remember {0} on Level {1} ❓ {2}/20 🏆 {3}", 
    rich_presence_lookup("Game", game(), game_mode),
    rich_presence_macro("Number", level_num()),
    rich_presence_macro("Number", question()),
    rich_presence_macro("Number", score())
)
rich_presence_display("In Menu")
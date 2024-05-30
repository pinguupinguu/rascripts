// Egg Mania: Eggstreme Madness
// #ID = 24974
function rounds() => dword_be(0x006d06c0)
function match_state() => dword_be(0x006d0b24)
playing = 0
win = 1
lose = 2
draw = 3
function match_win() => prev(match_state()) == 0 && match_state() == 1
function char_id() => dword_be(0x006d0d08)
chars = {
    0:"Eggy",
    1:"Robo",
    2:"Bebub",
    3:"Yolko",
    4:"Coolio",
    5:"Funky",
    6:"Astro",
    7:"Spook",
    8:"Spike",
    9:"Angel",
    10:"Eggalot",
    11:"Poncho",
    12:"Yolkohama"
}
function difficulty() => dword_be(0x006d0d20)
easy = 0
med = 1
hard = 2
over_easy = 3
game_diff = {
    0:"Easy",
    1:"Medium",
    2:"Hard"
}

function mode() => dword_be(0x006d0d30)
overeasy=2
hardboiled=3
tutorial=4
practice=6
bomb=9
solo=0xa
survival=0xb
tournament=0xc
custom=0xd
modes = {
    2:"Over Easy",
    3:"Hard Boiled",
    4:"Tutorial",
    6:"Practice",
    9:"Bomb",
    0xa:"Solo",
    0xb:"Survival",
    0xc:"Tournament",
    0xd:"Custom"
}
function main_win(mode, diff, round) =>
    mode() == mode &&
    difficulty() == diff &&
    rounds() == round &&
    match_win()
achievement(
    "Breaking the Shells",
    "Clear all eight rounds of Over Easy mode!",
    points=5,
    type="progression",
    trigger=
        main_win(overeasy, over_easy, 8)                    
)
achievement(
    "Building Blocks",
    "Clear all eight rounds of Hard Boiled mode on Easy!",
    points=5,
    type="progression",
    trigger=
        main_win(hardboiled, easy, 8)
)
achievement(
    "A Spooky Surprise",
    "Clear all nine rounds of Hard Boiled mode on Medium and unlock Spook!",
    points=10,
    type="progression",
    trigger=
        main_win(hardboiled, med, 9)
)
achievement(
    "Trials of the Eggs",
    "Clear all ten rounds of Hard Boiled mode on Hard and unlock Yolkohama!",
    points=25,
    type="win_condition",
    trigger=
        main_win(hardboiled, hard, 10)
)
achievement(
    "Venturing New Weapons",
    "Clear all eight rounds of Bomb mode on Easy!",
    points=5,
    trigger=
        main_win(bomb, easy, 8)
)
achievement(
    "A Knightly Journey",
    "Clear all nine rounds of Bomb mode on Medium and unlock Sir Eggalot!",
    points=10,
    trigger=
        main_win(bomb, med, 9)
)
achievement(
    "Raining Bombs? No Problem - Grab a Poncho!",
    "Clear all ten rounds of Bomb mode on Hard and unlock Poncho!",
    points=25,
    trigger=
        main_win(bomb, hard, 10)
)
function boolean_angelica_unlock() => dword_be(0x006d074c)
achievement(
    "Angelica's Trials",
    "Earn 1,000,000 points in Solo mode and unlock Angelica!",
    points=10,
    trigger=
        prev(boolean_angelica_unlock()) == 1 &&
        boolean_angelica_unlock() == 0
)
function survival_wins() => dword_be(0x006d0b58)
function survival_goal(diff, target) =>
    difficulty() == diff &&
    prev(survival_wins()) == target - 1 &&
    measured(survival_wins() == target)
achievement(
    "The Tortoise Wouldn't Win This Race",
    "Obtain 5 survival wins on Easy!",
    points=5,
    trigger=
        survival_goal(easy, 10)
)    
achievement(
    "Testing Building Procedures",
    "Obtain 10 survival wins on Medium!",
    points=10,
    trigger=
        survival_goal(med, 25)
)
achievement(
    "Darwin's Theory",
    "Obtain 15 survival wins on Hard!",
    points=25,
    trigger=
        survival_goal(hard, 50)
)

function char_lookup() => rich_presence_lookup("Chars", char_id(), chars)
function diff_lookup() => rich_presence_lookup("Difficulty", difficulty(), game_diff)
function in_game() => dword_be(0x006d0764) == 0x270f
rich_presence_conditional_display(mode() == overeasy && in_game(), "Playing as {0} in Over Easy on Round {1}",
    char_lookup(),
    rich_presence_macro("Number", rounds())
)
//Survival mode.
rich_presence_conditional_display(mode() == survival && in_game(), "Playing as {0} in Survival Mode on {1}. Wins: {2}",
    char_lookup(),
    diff_lookup(),
    rich_presence_macro("Number", survival_wins())
)
//Solo mode.
function solo_score() => dword_be(0x006d1060)
rich_presence_conditional_display(mode() == solo && in_game(), "Playing as {0} in Solo Mode. Score: {1}",
    char_lookup(),
    rich_presence_macro("Number", solo_score())
)
//Hardboiled & Bomb mode
rich_presence_conditional_display(mode() == bomb && in_game(), "Playing as {0} in Bomb Mode on {1}. Round: {2}",
    char_lookup(),
    diff_lookup(),
    rich_presence_macro("Number", rounds())
)
rich_presence_conditional_display(mode() == hardboiled && in_game(), "Playing as {0} in Hardboiled Mode on {1}. Round: {2}",
    char_lookup(),
    diff_lookup(),
    rich_presence_macro("Number", rounds())
)
rich_presence_conditional_display(mode() == custom && in_game(), "Playing Custom Mode!")
rich_presence_display("In Menu")



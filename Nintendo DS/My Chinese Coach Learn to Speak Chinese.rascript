// My Chinese Coach: Learn to Speak Chinese
// #ID = 14962

//Accessor Functions & Classes
global_state_program_loaded = bit2(0x0017d1fc)
load_state_false = 0
load_state_true = 1
function get_game_state(param) {
    return global_state_program_loaded == param
}

minigame_difficulty = dword(0x00192034)
easy = 0
med = 1
hard = 2
function compare_minigame_diff(param) {
    return minigame_difficulty == param
}

save_slot = dword(0x001920ac)
function get_save_slot() {
    return save_slot
}

num_lesson_unlocked = word(0x0019223c)
function compare_lesson_unlock(param){
    return num_lesson_unlocked == param
}

cheat_flag = bit3(0x0019232d)
on = 1
off = 0
function get_cheat_flag_state(param){
    return cheat_flag == param
}

current_category = dword(0x00192ce4)
category_menu = 0
category_learning = 1
category_games = 2
category_reference = 3
category_options = 4
category_help = 8
function get_current_category(param){
    return current_category == param
}

class IntroTest {
    num_right = dword(0x00192068)
    num_wrong = dword(0x0019206c)
    quest_num = dword(0x00192088)
}
Intro = IntroTest()

//Achievement Call Methods:
function get_save_protection() {
    return get_cheat_flag_state(off) && !get_current_category(category_options)
}

function get_lesson_advance(first_num, second_num){
    return prev(compare_lesson_unlock(first_num)) && compare_lesson_unlock(second_num)    
}
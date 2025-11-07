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
function get_cheat_protection() {
    return get_cheat_flag_state(off) && !get_current_category(category_options)
}

function get_lesson_advance(first_num, second_num){
    return prev(compare_lesson_unlock(first_num)) && compare_lesson_unlock(second_num)    
}

achievement(
    "您的中國之旅已經開啟。",
    "Obtain a perfect score of 50 on your Chinese placement exam!",
    points=5,
    trigger=
        compare_lesson_unlock(1) &&
        prev(Intro.num_right) == 49 &&
        Intro.num_right == 50 &&
        get_cheat_protection()
)
lesson_cheevos = {
    0:{"title":"北京之旅！", "desc":"Complete Lessons 1-29 and travel through Beijing!", "points":10, "NumEnd":29},
    1:{"title":"攀登神廟！", "desc":"Complete Lessons 30-43 and travel through North East China!", "points":10, "NumEnd":43},
    2:{"title":"中國最棒的建築！", "desc":"Complete Lessons 44-59 and travel through Northern China!", "points":10, "NumEnd":59},
    3:{"title":"新年慶祝活動！", "desc":"Complete Lessons 60-79 and travel through South East China!", "points":10, "NumEnd":79},
    4:{"title":"終於抵達香港！", "desc":"Complete Lessons 80-100 and travel through the rest of Southern China!", "points":10, "NumEnd":100},
    5:{"title":"強大的內心使人快樂。", "desc":"Complete Lessons 101-120.", "points":10, "NumEnd":120},
    6:{"title":"住在飯店", "desc":"Complete Lessons 121-140.", "points":10, "NumEnd":140},
    7:{"title":"與所有人聯繫並創造", "desc":"Complete Lessons 141-160.", "points":10, "NumEnd":160},
    8:{"title":"需要旅行援助", "desc":"Complete Lessons 161-180.", "points":10, "NumEnd":180},
    9:{"title":"繼續吸取教訓！", "desc":"Complete Lessons 181-200.", "points":10, "NumEnd":200},
    10:{"title":"良好的聲譽", "desc":"Complete Lessons 201-220.", "points":10, "NumEnd": 220},
    11:{"title":"該冷靜一下了！", "desc":"Complete Lessons 221-240.", "points":10, "NumEnd":240},
    12:{"title":"砍樹！", "desc":"Complete Lessons 241-260.", "points":10, "NumEnd":260},
    13:{"title":"我們需要低價商品！", "desc":"Complete Lessons 261-280.", "points":10, "NumEnd":280},
    14:{"title":"撲滅火焰！", "desc":"Complete Lessons 281-300.", "points":10, "NumEnd":300},
    15:{"title":"我需要律師！", "desc":"Complete Lessons 301-320.", "points":10, "NumEnd":320},
    16:{"title":"這是我們的事工", "desc":"Complete Lessons 321-340.", "points":10, "NumEnd":340},
    17:{"title":"努力學習，學好知識！", "desc":"Complete Lessons 341-360.", "points":10, "NumEnd":360},
    18:{"title":"把詞彙量練熟！", "desc":"Complete Lessons 361-380.", "points":10, "NumEnd":380},
    19:{"title":"我在廚房做飯", "desc":"Complete Lessons 381-400", "points":10, "NumEnd":400},
    20:{"title":"熱愛學習新語言", "desc":"Complete Lessons 401-420.", "points":10, "NumEnd":420},
    21:{"title":"我買了一輛新摩托車！", "desc":"Complete Lessons 421-440.", "points":10, "NumEnd":440},
    22:{"title":"一組可怕的字！", "desc":"Complete Lessons 441-460.", "points":10, "NumEnd":460},
    23:{"title":"到戶外去摸草地吧！", "desc":"Complete Lessons 461-480.", "points":10, "NumEnd":480},
    24:{"title":"學習過程已進行到一半。", "desc":"Complete Lessons 481-500.", "points":25, "NumEnd":500},
    25:{"title":"他們看到我翻滾。", "desc":"Complete Lessons 501-520.", "points":10, "NumEnd":520},
    26:{"title":"我來這裡是為了這段旅程。", "desc":"Complete Lessons 521-540.", "points":10, "NumEnd":540},
    27:{"title":"請不要打擾我們！", "desc":"Complete Lessons 541-560.", "points":10, "NumEnd":560},
    28:{"title":"一項重大成就！", "desc":"Complete Lessons 561-580.", "points":10, "NumEnd":580},
    29:{"title":"你真是個園藝專家！", "desc":"Complete Lessons 581-600.", "points":10, "NumEnd":600},
    30:{"title":"該吃晚餐啦！", "desc":"Complete Lessons 601-620.", "points":10, "NumEnd":620},
    31:{"title":"我受夠了過路費！", "desc":"Complete Lessons 621-640.", "points":10, "NumEnd":640},
    32:{"title":"我需要休假！", "desc":"Complete Lessons 641-660.", "points":10, "NumEnd":660},
    33:{"title":"別笑我！", "desc":"Complete Lessons 661-680.", "points":10, "NumEnd":680},
    34:{"title":"問題是什麼？", "desc":"Complete Lessons 681-700.", "points":10, "NumEnd":700},
    35:{"title":"意義深遠的研究成果！", "desc":"Complete Lessons 701-720.", "points":10, "NumEnd":720},
    36:{"title":"親愛的，你做得太棒了！", "desc":"Complete Lessons 721-740.", "points":10, "NumEnd":740},
    37:{"title":"您將收到這套徽章！", "desc":"Complete Lessons 741-760.", "points":10, "NumEnd":760},
    38:{"title":"憑藉力量，你將戰勝一切。", "desc":"Complete Lessons 761-780.", "points":10, "NumEnd":780},
    39:{"title":"繼續探索這門語言！", "desc":"Complete Lessons 781-800.", "points":10, "NumEnd":800},
    40:{"title":"我們如何抗議？", "desc":"Complete Lessons 801-820.", "points":10, "NumEnd":820},
    41:{"title":"我們熱愛地球！", "desc":"Complete Lessons 821-840.", "points":10, "NumEnd":840},
    42:{"title":"那支球隊太糟糕了！", "desc":"Complete Lessons 841-860.", "points":10, "NumEnd":860},
    43:{"title":"你不是新手！", "desc":"Complete Lessons 861-880.", "points":10, "NumEnd":880},
    44:{"title":"我會回來的", "desc":"Complete Lessons 881-900.", "points":10, "NumEnd":900},
    45:{"title":"無限學習！", "desc":"Complete Lessons 901-920.", "points":10, "NumEnd":920},
    46:{"title":"嘗試使用新詞！", "desc":"Complete Lessons 921-940.", "points":10, "NumEnd":940},
    47:{"title":"請簽名！", "desc":"Complete Lessons 941-960.", "points":10, "NumEnd":960},
    48:{"title":"咱們喝一杯吧！", "desc":"Complete Lessons 961-980.", "points":10, "NumEnd":980},
    49:{"title":"沒有休息時間！", "desc":"Complete Lesson 981-1000.", "points":10, "NumEnd":1000},
    50:{"title":"大學專家！", "desc":"Complete Lessons 1001-1019 and master the Chinese language!", "points":10, "NumEnd":1019}
}
for i in range(0,50){
    achievement(
        lesson_cheevos[i]["title"],
        lesson_cheevos[i]["desc"],
        points=lesson_cheevos[i]["points"],
        type="progression", //Assumed for all lesson achievements.
        trigger=
            get_cheat_protection() &&
            get_lesson_advance(lesson_cheevos[i]["NumEnd"], lesson_cheevos[i]["NumEnd"] + 1)                
    )   
}
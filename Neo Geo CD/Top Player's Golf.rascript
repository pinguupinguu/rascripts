// Top Player's Golf
// #ID = 23881
// $006D: [8bit] Match Type
//        0x00=Stroke Play
//        0x01=Match Play
//        0x02=Nassau Game
function match_stroke() => byte(0x006d) == 0
function match_play() => byte(0x006d) == 1
function nassau_play() => byte(0x006d) == 2
// $00BE: [16bit] Message Type
//        0x02=Green On
//        0x03=Rough
//        0x10=Cup In
function hole_clear() => prev(word(0x00be)) == 0x02 && word(0x00be) == 0x10
// $0106: [8bit] Strokes - P1
function strokes() => byte(0x0106)
// $0108: [8bit] Course
//        0x00=Top Player's Country Club
//        0x01=SNK Championship Golf Course
course_topplayers = 0x00
course_snk = 0x1
function course() => byte(0x0108)
// $0109: [8bit] Hole Number - 1
function hole() => byte(0x0109)
// $019E: [8bit] Caddie
//        0x01=Yes
//        0x00=No
// $0455: [16bit] Tracking Score
// $0614: [8bit] Character ID
// $0618: [8bit] Players
//        0x00=1P
//        0x01=2P
function one_player() => byte(0x0618) == 0
function two_player() => byte(0x0618) == 1
//Top Player's Country Club Data:
tp_pars = {
    0:4,
    1:5,
    2:3,
    3:4,
    4:4,
    5:3,
    6:4,
    7:5,
    8:4,
    9:4,
    10:3,
    11:4,
    12:4,
    13:4,
    14:5,
    15:4,
    16:3,
    17:5
}
tp_names = {
    0:"First Tee Triumph",
    1:"Front Nine Finesse",
    2:"Frontside Par",
    3:"Signature Hole Success",
    4:"Par-5 Powerhouse",
    5:"Putting Perfectionist",
    6:"Fairway Finisher",
    7:"Greens Master",
    8:"Bunker Banisher",
    9:"Par Precision",
    10:"Putting Prodigy",
    11:"Early Par",
    12:"Prime Time Player",
    13:"Daily Drive Dominance",
    14:"Hole Ace",
    15:"Closing Hole Conqueror",
    16:"Tournament Titan",
    17:"Master of All 18"
}
for i in range(0, 17){
    my_points = 5
    if(tp_pars[i] == 3) my_points = 10
    
    achievement(
        tp_names[i],
        "Achieve a par or better on " + "Top Player's Country Club Hole " + i + 1,
        my_points,
        trigger=
            match_stroke() &&
            one_player() &&
            course() == course_topplayers &&
            hole() == i &&
            strokes() <= tp_pars[i] &&
            hole_clear()
    )
}
//SNK Championship Golf Course Data:
snk_pars = {
    0:4,
    1:5,
    2:4,
    3:3,
    4:4,
    5:3,
    6:4,
    7:4,
    8:5,
    9:4,
    10:4,
    11:3,
    12:5,
    13:4,
    14:4,
    15:5,
    16:3,
    17:4
}
snk_names = {
    0: "Opening Tee Triumph",
    1: "Front Nine Mastery",
    2: "Front Nine Par Pro",
    3: "Signature Swing Success",
    4: "Eagle's Nest Dominator",
    5: "Putt Precision Maestro",
    6: "Fairway Symphony",
    7: "Greens Whisperer",
    8: "Bunker Virtuoso",
    9: "Precision Playmaker",
    10: "Putting Precision Prodigy",
    11: "Sunrise Swing Specialist",
    12: "Prime Time Par Pro",
    13: "Dusk Drive Dominance",
    14: "Opening Ace Achiever",
    15: "Ultimate Hole Conquest",
    16: "Championship Tournament Titan",
    17: "SNK Master of All 18"
}
for i in range(0, 17){
    my_points = 5
    if(snk_pars[i] == 3) my_points = 10
    
    achievement(
        snk_names[i],
        "Achieve a par or better on " + "SNK Championship Golf Course Hole " + i + 1,
        my_points,
        trigger=
            match_stroke() &&
            one_player() &&
            course() == course_snk &&
            hole() == i &&
            strokes() <= snk_pars[i] &&
            hole_clear()
    )
}
function pone_strokes() => word(0x455)
function ptwo_strokes() => word(0x457)
function matchplay_win(course, holes) =>
        match_play() &&
        one_player() &&
        hole() == holes - 1 && //For readability purposes, calculate actual in-game check after function pass.
        pone_strokes() < ptwo_strokes() &&
        (always_false()
         || pone_strokes() != prev(pone_strokes())
         || ptwo_strokes() != prev(ptwo_strokes())
        )
    
achievement(
    "Front Nine Top Competition",
    "Beat your opponent with a better score on Top Player's Championship Golf Course Holes 1-9 in Match Play Mode",
    points=10,
    trigger=
        matchplay_win(course_topplayers, 9)
)
achievement(
    "Top Player Trophy",
    "Get a better score than your opponent on all 18 holes at Top Player's Championship Golf Course in Match Play Mode.",
    points=25,
    trigger=
        matchplay_win(course_topplayers, 18)
)

achievement(
    "SNK Victory",
    "Get a better score than your opponent on SNK Championship Golf Course Holes 1-9 in Match Play Mode",
    points=10,
    trigger=
        matchplay_win(course_snk, 9)
)
achievement(
    "SNK Trophy",
    "Get a better score than your opponent on all 18 holes at SNK Championship Golf Course in Match Play Mode",
    points=25,
    trigger=
        matchplay_win(course_snk, 18)
)
function nassau_mode() =>
    byte(0x0619)
out = 0
in = 1
function nassau_switch() => measured(repeated(1, pone_strokes() != prev(pone_strokes()) || ptwo_strokes() != prev(ptwo_strokes()))) 
function nassau_result() =>
    always_false() 
    || hole() == 0 && nassau_mode() == in && nassau_switch()
    || hole() == 17 && nassau_mode() == out && nassau_switch()
    //|| hole() == 17 && nassau_mode() == out && repeated(0, pone_strokes() != prev(pone_strokes() || ptwo_strokes() != prev(ptwo_strokes()))
achievement(
    "Top Nassau Player",
    "Win a Nassau Game against your opponent at Top Player's Championship Golf Course",
    points=25,
    trigger=
        nassau_play() &&
        course() == course_topplayers &&
        one_player() &&
        pone_strokes() < ptwo_strokes() &&
        nassau_result()        
)
achievement(
    "SNassauK Success",
    "Win a Nassau Game against your opponent at SNK Championship Golf Course",
    points=25,
    trigger=
        nassau_play() &&
        course() == course_snk &&
        one_player() &&
        pone_strokes() < ptwo_strokes() &&
        nassau_result() 
)
achievement(
    "Hole Master",
    "Get a Hole in One on any course!",
    points=10,
    trigger=
        one_player() &&
        strokes() == 1 &&
        hole_clear()
)










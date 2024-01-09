// Top Player's Golf
// #ID = 23881
// $006D: [8bit] Match Type
//        0x00=Stroke Play
//        0x01=Match Play
//        0x02=Nassau Game
function match_stroke() => byte(0x006d) == 0
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
        "Achieve a par or better on " + "Top Player's Country Club Hole " + i + 1,
        my_points,
        trigger=
            match_stroke() &&
            one_player() &&
            hole() == i &&
            strokes() <= snk_pars[i] &&
            hole_clear()
    )
}





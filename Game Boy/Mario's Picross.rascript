// Mario's Picross
// #ID = 2450
achievement_list = {
    0:{"Title":"We'll Be Working Together From Now On", "Desc":"Complete all level 1 Easy puzzles.", "Points":3, "Type":"progression", "ID":29459, "Badge":"30220"},
1:{"Title":"Simple Symbolism", "Desc":"Complete all level 2 Easy puzzles.", "Points":4, "Type":"progression", "ID":29460, "Badge":"30114"},
2:{"Title":"As Many Puzzles As Stars In The Sky", "Desc":"Complete all level 3 Easy puzzles.", "Points":5, "Type":"progression", "ID":29461, "Badge":"30113"},
3:{"Title":"I Can Solve My House From Here!", "Desc":"Complete all level 4 Easy puzzles.", "Points":5, "Type":"progression", "ID":29462, "Badge":"30115"},
4:{"Title":"The Coming Storm", "Desc":"Complete all level 5 Easy puzzles.", "Points":5, "Type":"progression", "ID":29463, "Badge":"30116"},
5:{"Title":"It's-a Me!", "Desc":"Complete all level 6 Easy puzzles.", "Points":5, "Type":"progression", "ID":29464, "Badge":"30117"},
6:{"Title":"Picross Magician", "Desc":"Complete all level 7 Easy puzzles.", "Points":5, "Type":"progression", "ID":29465, "Badge":"30118"},
7:{"Title":"Time Enough For Mario", "Desc":"Complete all level 8 Easy puzzles.", "Points":5, "Type":"progression", "ID":29466, "Badge":"30119"},
8:{"Title":"Just Play The Game, Boy", "Desc":"Complete all level 1 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29467, "Badge":"30120"},
9:{"Title":"Chief? I'm On My Way", "Desc":"Complete all level 2 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29468, "Badge":"30121"},
10:{"Title":"As Fast As A Speeding Bullet", "Desc":"Complete all level 3 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29469, "Badge":"30122"},
11:{"Title":"Some Kinda Super Picross", "Desc":"Complete all level 4 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29470, "Badge":"30123"},
12:{"Title":"Pairly Decent", "Desc":"Complete all level 5 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29471, "Badge":"30124"},
13:{"Title":"Way Past Cool, Huh?", "Desc":"Complete all level 6 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29472, "Badge":"30125"},
14:{"Title":"Cherub's Blessing", "Desc":"Complete all level 7 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29473, "Badge":"30126"},
15:{"Title":"Best Solved Cold", "Desc":"Complete all level 8 Kinoko puzzles.", "Points":5, "Type":"progression", "ID":29474, "Badge":"30127"},
16:{"Title":"Mario de Mambo", "Desc":"Complete all level 1 Star puzzles.", "Points":5, "Type":"progression", "ID":29475, "Badge":"30145"},
17:{"Title":"King of Dirty Rascals", "Desc":"Complete all level 2 Star puzzles.", "Points":5, "Type":"progression", "ID":29476, "Badge":"30146"},
18:{"Title":"Brain Not Included", "Desc":"Complete all level 3 Star puzzles.", "Points":5, "Type":"progression", "ID":29477, "Badge":"30147"},
19:{"Title":"Lakitu's Gift", "Desc":"Complete all level 4 Star puzzles.", "Points":5, "Type":"progression", "ID":29478, "Badge":"30148"},
20:{"Title":"Hey, Wrong Course!", "Desc":"Complete all level 5 Star puzzles.", "Points":5, "Type":"progression", "ID":29479, "Badge":"30149"},
21:{"Title":"A 15x15 Point Buck", "Desc":"Complete all level 6 Star puzzles.", "Points":5, "Type":"progression", "ID":29480, "Badge":"30150"},
22:{"Title":"Always Watching You", "Desc":"Complete all level 7 Star puzzles.", "Points":5, "Type":"progression", "ID":29481, "Badge":"30151"},
23:{"Title":"You Are The Walrus", "Desc":"Complete all level 8 Star puzzles.", "Points":5, "Type":"progression", "ID":29482, "Badge":"30152"},

}

save_slot = 0x00a065
easy_puzzles_base = 0x00a2c7
kinoko_puzzles_base = 0x00aa62
star_puzzles_base = 0x00aaa2
puzzle_indexes = {
    0:{"addr":easy_puzzles_base, "start": 0, "stop":7},
    1:{"addr": kinoko_puzzles_base, "start":8, "stop":15},
    2:{"addr": star_puzzles_base, "start": 16, "stop":23}
}

for i in range(0, 2){
current_base = puzzle_indexes[i]["addr"]
for j in range(puzzle_indexes[i]["start"],puzzle_indexes[i]["stop"]) {
    
    achievement(
        achievement_list[j]["Title"],
        achievement_list[j]["Desc"],
        achievement_list[j]["Points"],
        id = achievement_list[j]["ID"],
        badge = achievement_list[j]["Badge"],
        type = achievement_list[j]["Type"],
        trigger=
            prev(sum_of(range(0 , 7), b =>    bit7(byte(save_slot) * 0x40 + current_base + b))) == 7 &&
            measured(sum_of(range(0 , 7), b =>    bit7(byte(save_slot) * 0x40 + current_base + b)) == 8) 
            
            
    )
    current_base = current_base + 8
    
}



}
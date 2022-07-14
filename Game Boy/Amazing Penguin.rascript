// Amazing Penguin
// #ID = 6430
// RA Hash: d8326bfee457ccb2c0afb8dd6ac11db2
// $C101: [8bit] Player State
//        0x01=Game Over
//        0x03=In Title
//        0x06=In Room Screen
//        0x08=Spawning In
//        0x09=In Level
//        0x0b=Level Clear
//        0x0c=Hit/Life Loss
function player_state() => byte(0x00C101)
level_clear = 0xb
title_screen = 0x3
in_game = 0x9
// $C102: [8bit] Invincibility Flag
//        0x00=False
//        0x01=True
function cheat_invincibility() => byte(0x00C102)
// $C104: [8bit] Demo Flag
function demo_flag() => byte(0x00C104)
// $C10E: [8bit] Lives
function  lives() => byte(0x00C10E)
// $C110: [8bit] Room ID
function roomID() => byte(0x00C110)
// $C114: [8bit] Stage Select Menu Cheat Active
//        0x00=False
//        0x01=True
function cheat_stageselect() => byte(0x00C114)
// $C12C: [8bit] Game State
//        0x0=In Menu
//        0x1=In Game
function game_state() => byte(0x00C12C)
// $C85C: [8bit] Enemy Count
//        Max Amount Used in 1 Room = 14        
//        Next address = Enemy Information Table Start
//        Each Entry = 7 bytes, totaling 14 entries. All have same behavior.  Structure:
//        [High4/Low4]Enemy Movement/Spawning Behavior
//        [8bit] Enemy ID
//        [8bit] Enemy Y-Coord
//        [8bit] Enemy X-Coord
//        [8bit] Enemy Animation Frame
//        [8bit] Enemy Facing Direction
//        [8bit] Boolean - Is Turning Corner? 0x0=false, 0x1=true
//=====Enemy State Variables======
enemy_state_active = 0x1
enemy_box_death = 0x7
enemy_ball_death = 0x8
enemy_state_death = 0xa
// $C85D: Enemy 1 Enemy State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
function enemy_one_state() => low4(0x00C85D)
function enemy_one_movement() => high4(0x00C85D)
// $C85E: [8bit] Enemy 1 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C85F: [8bit] Enemy 1 Y-Coordinate
// $C860: [8bit] Enemy 1 X-Coordinate
// $C861: [8bit] Enemy 1 Animation Frame
// $C862: [8bit] Enemy 1 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C863: [8bit] Enemy 1 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C864: [8bit] Enemy 2 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
function enemy_two_state() => low4(0x00C864)
function enemy_two_movement() => high4(0x00C864)
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C865: [8bit] Enemy 2 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C866: [8bit] Enemy 2 Y-Coordinate
// $C867: [8bit] Enemy 2 X-Coordinate
// $C868: [8bit] Enemy 2 Animation Frame
// $C869: [8bit] Enemy 2 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C86A: [8bit] Enemy 2 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C86B: [8bit] Enemy 3 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
function enemy_three_state() => low4(0x00C86B)
function enemy_three_movement() => high4(0x00C86B)
// $C86C: [8bit] Enemy 3 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C86D: [8bit] Enemy 3 Y-Coordinate
// $C86E: [8bit] Enemy 3 X-Coordinate
// $C86F: [8bit] Enemy 3 Animation Frame
// $C870: [8bit] Enemy 3 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C871: [8bit] Enemy 3 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C872: [8bit] Enemy 4 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
function enemy_four_state() => low4(0x00C872)
function enemy_four_movement() => high4(0x00C872)
// $C873: [8bit] Enemy 4 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C874: [8bit] Enemy 4 Y-Coordinate
// $C875: [8bit] Enemy 4 X-Coordinate
// $C876: [8bit] Enemy 4 Animation Frame
// $C877: [8bit] Enemy 4 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C878: [8bit] Enemy 4 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C879: [8bit] Enemy 5 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C87A: [8bit] Enemy 5 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C87B: [8bit] Enemy 5 Y-Coordinate
// $C87C: [8bit] Enemy 5 X-Coordinate
// $C87D: [8bit] Enemy 5 Animation Frame
// $C87E: [8bit] Enemy 5 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C87F: [8bit] Enemy 5 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C880: [8bit] Enemy 6 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C881: [8bit] Enemy 6 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C882: [8bit] Enemy 6 Y-Coordinate
// $C883: [8bit] Enemy 6 X-Coordinate
// $C884: [8bit] Enemy 6 Animation Frame
// $C885: [8bit] Enemy 6 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C886: [8bit] Enemy 6 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C887: [8bit] Enemy 7 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C888: [8bit] Enemy 7 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C889: [8bit] Enemy 7 Y-Coordinate
// $C88A: [8bit] Enemy 7 X-Coordinate
// $C88B: [8bit] Enemy 7 Animation Frame
// $C88C: [8bit] Enemy 7 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C88D: [8bit] Enemy 7 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C88E: [8bit] Enemy 8 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C88F: [8bit] Enemy 8 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C890: [8bit] Enemy 8 Y-Coordinate
// $C891: [8bit] Enemy 8 X-Coordinate
// $C892: [8bit] Enemy 8 Animation Frame
// $C893: [8bit] Enemy 8 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C894: [8bit] Enemy 8 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C895: [8bit] Enemy 9 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C896: [8bit] Enemy 9 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C897: [8bit] Enemy 9 Y-Coordinate
// $C898: [8bit] Enemy 9 X-Coordinate
// $C899: [8bit] Enemy 9 Animation Frame
// $C89A: [8bit] Enemy 9 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C89B: [8bit] Enemy 9 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C89C: [8bit] Enemy 10 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C89D: [8bit] Enemy 10 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C89E: [8bit] Enemy 10 Y-Coordinate
// $C89F: [8bit] Enemy 10 X-Coordinate
// $C8A0: [8bit] Enemy 10 Animation Frame
// $C8A1: [8bit] Enemy 10 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C8A2: [8bit] Enemy 10 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C8A3: [8bit] Enemy 11 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C8A4: [8bit] Enemy 11 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C8A5: [8bit] Enemy 11 Y-Coordinate
// $C8A6: [8bit] Enemy 11 X-Coordinate
// $C8A7: [8bit] Enemy 11 Animation Frame
// $C8A8: [8bit] Enemy 11 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C8A9: [8bit] Enemy 11 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C8AA: [8bit] Enemy 12 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C8AB: [8bit] Enemy 12 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C8AC: [8bit] Enemy 12 Y-Coordinate
// $C8AD: [8bit] Enemy 12 X-Coordinate
// $C8AE: [8bit] Enemy 12 Animation Frame
// $C8AF: [8bit] Enemy 12 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C8B0: [8bit] Enemy 12 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C8B1: [8bit] Enemy 13 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C8B2: [8bit] Enemy 13 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C8B3: [8bit] Enemy 13 Y-Coordinate
// $C8B4: [8bit] Enemy 13 X-Coordinate
// $C8B5: [8bit] Enemy 13 Animation Frame
// $C8B6: [8bit] Enemy 13 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C8B7: [8bit] Enemy 13 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C8B8: [8bit] Enemy 14 State/Movement Behavior
//        [Lower4] Enemy State:
//        0x0=Inactive
//        0x1=Active
//        0x3=Boss Movement Mimiced (Moves only on x axis)
//        0x5=Has Boss Movement
//        0x6=Boss Room - Flying Bear Enemy (Diagonal Movement)
//        0x7=Death- Flying off Board
//        0x8=Death- Caught By Ball
//        0xa=Dead State
//        [High4] Movement
//        0x0=Active (Fast Movement)
//        0x8=Active (Normal Movement)
//        0x9=Frozen/Respawning
// $C8B9: [8bit] Enemy 14 ID
//        0x03=Normal
//        0x04=Pencil
//        0x05=Pencil
//        0x6=Little Flame
//        0xc=Stamp/Boot?
//        0x7=Final Boss (Fragmented)
// $C8BA: [8bit] Enemy 14 Y-Coordinate
// $C8BB: [8bit] Enemy 14 X-Coordinate
// $C8BC: [8bit] Enemy 14 Animation Frame
// $C8BD: [8bit] Enemy 14 Facing Direction
//        0x01=Right
//        0x02=Up
//        0x04=Left
//        0x08=Down
// $C8BE: [8bit] Enemy 14 IsTurning Corner Flag
//        0x00=False
//        0x01=True
// $C8BF: [8bit] Timer
//        0x00=Out of Time
//        0x2e=Max Time
function timer() => byte(0x00C8BF)
// $C926: [BCD] [8bit] Score (Hundred Thousands)
function score_hundredthousands() => byte(0x00C926)
// $C927: [BCD] [8bit] Score (Ten-Thousands & Thousands)
function score_thousands() => byte(0x00C927)
// $C928: [BCD] [8bit] Score (Hundreds & Tens)
function score_hundreds() => byte(0x00C928)
function cheat_check() =>
    unless(cheat_invincibility() == 1)  &&
    unless(cheat_stageselect() == 1) 
level_cheevos = {
    0:{"Name":"Basic Ball Kicker", "LevelRange":4, "FirstLevel":1, "Points":3, "ID":156607, "Badge":"176365"}, //1-5
    1:{"Name": "Not Mr. Noot Noot!","LevelRange":4, "FirstLevel":6,  "Points":5, "ID":156608, "Badge":"176366"}, //6-10
    2:{"Name":"Kickin' It Through Rooms!", "LevelRange":4, "FirstLevel":1,  "Points":5, "ID":156609, "Badge":"176367"}, //11-15
    3:{"Name":"Halfway There", "LevelRange":4, "Points":5, "ID":156610, "Badge":"176368"}, //16-20
    4:{"Name":"Advanced Ball Kicker", "LevelRange":4, "Points":5, "ID":156611, "Badge":"176369"}, //21-25
    5:{"Name":"Rampin' Up The Kicks", "LevelRange":4, "Points":5, "ID":156612, "Badge":"176370"}, //26-30
    6:{"Name":"A Penguin is Watching You", "LevelRange":4, "Points":5, "ID":156613, "Badge":"176371"}, //31-35
    7:{"Name":"Still Kickin' It", "LevelRange":3, "Points":10, "ID":156614, "Badge":"176372"} //36-39    
}
//Generate Main Level Achievements.
function getLevelChain(startnum, indxcount){
    arr=[]
    trigger = always_true()
    for i in range(startnum, startnum+indxcount){
        array_push(arr, once(roomID() == i && prev(player_state()) == in_game && player_state() == level_clear))        
    }
    return measured(tally(indxcount + 1, arr))    
}
level_indx = 1
for level in level_cheevos{ 
    name = level_cheevos[level]["Name"]
    level_count = level_cheevos[level]["LevelRange"]
    my_id=level_cheevos[level]["ID"]
    my_badge=level_cheevos[level]["Badge"]
    my_points = level_cheevos[level]["Points"]
    achievement(
        name,
        "Complete Rooms " + level_indx + "-" + level_indx + level_count + " in one session. (No Cheats or Stage Select)",
        id=my_id,
        points=my_points,
        badge=my_badge,
        trigger=            
            cheat_check() &&
            demo_flag() == 0 &&
            getLevelChain(level_indx, level_count)                        
    )
    level_indx = level_indx + level_count + 1
}
//Generate Last Level Achievements.
achievement(
    "Awesomest Penguin Around",
    "Complete Room 40 and beat the game!",
    id=156615,
    badge="176373",
    points=25,
    trigger=
        cheat_check() &&
        demo_flag() == 0 &&
        roomID() == 0x28 &&
        prev(player_state()) == in_game &&
        player_state() == level_clear
)
achievement(
    "Taste My Flipper, Enemies!",
    "Defeat all enemies in Room 2 at the same time, prior to clearing the room.",
    id=156616,
    badge="176374",
    points=5,
    trigger=
        cheat_check() &&
        demo_flag() == 0 &&
        player_state() == 0x9 &&
        roomID() == 2 &&
        enemy_one_state() != prev(enemy_one_state()) &&
        enemy_one_state() == enemy_box_death &&
        enemy_two_state() != prev(enemy_two_state()) &&
        enemy_two_state() == enemy_box_death &&  
        enemy_three_state() != prev(enemy_three_state()) &&
        enemy_three_state() == enemy_box_death && 
        enemy_four_state() != prev(enemy_four_state()) &&
        enemy_four_state() == enemy_box_death
)
achievement(
    "Penguin Player Point Earner",
    "Hold 50,000 points at once.",
    id=156617,
    badge="209657",
    points=5,
    trigger=
        cheat_check() &&
        demo_flag() == 0 &&
        prev(score_thousands()) < 0x50 &&
        score_thousands() >= 0x50 &&
        score_hundreds() >= 0
)
//=====Rich Presence=====
function rp_score() => bcd(score_hundreds()) * 10 + bcd(score_thousands()) * 10000 + bcd(score_hundredthousands()) * 100000
rich_presence_conditional_display(player_state() == in_game, "Waddlin' Around Room {0} 🍄 {1} 🏆 {2}",
rich_presence_value("Room", roomID()),
rich_presence_value("Lives", lives()),
rich_presence_value("Score", rp_score()))
rich_presence_display("In Menu")
//=====Leaderboards=====
leaderboard(
    "Highest Score",
    "Highest Score after clearing Room 40",
    player_state() == in_game && roomID() == 40,
    cheat_invincibility() == 1,
    player_state() == level_clear && roomID() == 40,
    rp_score()
)
// Showdown in 2100 A.D.
// #ID = 16965

// $0046: [8bit] Player Two Score
function player_two_score() => byte(0x000046)
// $0048: [8bit] Player Two Bullet Slot 1
//        0x27=Available
//        0x0c=Used
// $0049: [8bit] Player Two Bullet Slot 2
//        0x27=Available
//        0x0c=Used
// $004A: [8bit] Player Two Bullet Slot 3
//        0x27=Available
//        0x0c=Used
// $004B: [8bit] Player Two Bullet Slot 4
//        0x27=Available
//        0x0c=Used
// $004C: [8bit] Player Two Bullet Slot 5
//        0x27=Available
//        0x0c=Used
// $004D: [8bit] Player Two Bullet Slot 6
//        0x27=Available
//        0x0c=Used
// $004E: [8bit] Player One Bullet Slot 1
//        0x27=Available
//        0x0c=Used
// $004F: [8bit] Player One Bullet Slot 2
//        0x27=Available
//        0x0c=Used
// $0050: [8bit] Player One Bullet Slot 3
//        0x27=Available
//        0x0c=Used
// $0051: [8bit] Player One Bullet Slot 4
//        0x27=Available
//        0x0c=Used
// $0052: [8bit] Player One Bullet Slot 5
//        0x27=Available
//        0x0c=Used
// $0053: [8bit] Player One Bullet Slot 6
//        0x27=Available
//        0x0c=Used
// $0055: [8bit] Player One Score
function player_one_score() => byte(0x000055)
// $0066: [8bit] Player Two Control
//        Bit1=CPU
//        Bit7=Player
// $0068: [8bit] Player One Control
//        Bit1=CPU
//        Bit7=Player
function player_check() => unless(bit7(0x00066) == 1 || bit1(0x00068) == 1) 
function point_cheevos(total) => player_check() && prev(player_one_score()) == total - 1  && player_one_score() == total
achievement(
    "I'm Dirty Dan",
    "Earn a point by having your opponent die for the first time!",
    points=1,
    trigger=
        prev(player_one_score()) == 0 &&
        player_one_score() == 1 &&
        player_check()
)
achievement(
    "Pinpoint Shot",
    "Gain five points in a round!",
    points=2,
    trigger=
        prev(player_one_score()) == 4 &&
        player_one_score() == 5 &&
        player_check()
)
achievement(
    "Master of the West!",
    "Gain 10 points to win your first round!",
    points=5,
    trigger=
        prev(player_one_score()) == 9 &&
        player_one_score() == 0x30 &&
        player_check()
)
achievement(
    "Half Perfectionist",
    "Score 5 points without letting your opponent score at all!",
    points=5,
    trigger=
        prev(player_one_score()) == 4 &&
        player_one_score() == 5 &&
        player_two_score() == 0 &&
        player_check()
)
achievement(
    "Full Perfectionist",
    "Win a round without letting your opponent score at all!",
    points=10,
    trigger=
        prev(player_one_score()) == 9 &&
        player_one_score() == 0x30 && 
        player_two_score() == 0 &&
        player_check()
)
achievement(
    "Pistol Enthusiast",
    "Shoot 100 bullets in one session",
    points=5,
    trigger=
        measured(tally_of(range(0x00004e, 0x000053), 100, b => prev(byte(b)) == 0x27 && byte(b) == 0xc)) &&
        player_check()
)
achievement(
    "Strategist",
    "Make your opponent waste all of their bullets without shooting any of yours!",
    points=2,
    trigger=
        // 
        measured(tally_of(range(0x000048, 0x00004d), 6, b => once(prev(byte(b)) == 0x27 && byte(b) == 0xc))) &&
        player_check() &&
        all_of(range(0x00004e, 0x000053), b => never(byte(b) == 0xc)) &&
        unless(player_one_score() == 0x30 || player_two_score() == 0x30)
)
                       
       

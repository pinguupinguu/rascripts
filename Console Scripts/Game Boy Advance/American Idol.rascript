// American Idol
// #ID = 8404
// RA Checksum: e140b67a8a610be8de419e4146940359
// $2B10: [16bit] Screen ID
//        0x0=In Song/Costume Selection Screen
//        0x50ec=Song Selection (Competition)
//        0x517c=Song Selection (Rehearsal)
//        0x51bc=Results Screen
//        0x524c=Results Screen (Endurance)
//        0x533c=Judge's Screen
//        0x535c=Title Screen
//        0x538c=Options
//        0x53cc=Game Mode Selection
//        0x5e0c=Credits
//        0x671c=Password
function screenID() => word(0x002B10)
endurance_results_screen = 0x524c
title_screen = 0x535c
password_screen = 0x671c
results_screen = 0x51bc
// $2B7C: [32bit] Endurance Score
function score_endurance() => dword(0x002B7C)
// $2B9C: [8bit] Game Mode
//        00=Rehearsal
//        01=Endurance
//        02=Competition
function game_mode() => byte(0x002B9C)
rehearsal=0
endurance=1
competition=2
// $2C48: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 4
//        Top/Bottom 3
function compwear_one() => byte(0x002C48)
// $2C4C: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 4
//        Top/Bottom 4
function compwear_two() => byte(0x002C4C)
// $2C50: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 4
//        Top/Bottom 5
function enduwear_one() => byte(0x002C50)
// $2C54: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 4
//        Top/Bottom 6
function enduwear_two() => byte(0x002C54)
// $2C7C: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 5
//        Top/Bottom 3
function compwear_three() => byte(0x002C7C)
// $2C80: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 5
//        Top/Bottom 4
function compwear_four() => byte(0x002C80)
// $2C84: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 5
//        Top/Bottom 5
function enduwear_three() => byte(0x002C84)
// $2C88: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 5
//        Top/Bottom 6
function enduwear_four() => byte(0x002C88)
// $2CB4: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 6
//        Top/Bottom 4
function compwear_five() => byte(0x002CB4)
// $2CB8: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 6
//        Top/Bottom 5
function compwear_six() => byte(0x002CB8)
// $2CBC: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 6
//        Top/Bottom 6
function compwear_seven() => byte(0x002CBC)
// $2CE8: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 7
//        Top/Bottom 4
function compwear_eight() => byte(0x002CE8)
// $2CEC: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 7
//        Top/Bottom 5
function compwear_nine() => byte(0x002CEC)
// $2CF0: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 7
//        Top/Bottom 6
function compwear_ten() => byte(0x002CF0)
// $2D18: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 8
//        Top/Bottom 3
function enduwear_five() => byte(0x002D18)
// $2D1C: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 8
//        Top/Bottom 4
function enduwear_six() => byte(0x002D1C)
// $2D20: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 8
//        Top/Bottom 5
function enduwear_seven() => byte(0x002D20)
// $2D24: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 8
//        Top/Bottom 6
function enduwear_eight() => byte(0x002D24)
// $2D44: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 9
//        Top/Bottom 1
function enduwear_nine() => byte(0x002D44)
// $2D48: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 9
//        Top/Bottom 2
function enduwear_ten() => byte(0x002D48)
// $2D4C: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 9
//        Top/Bottom 3
function enduwear_eleven() => byte(0x002D4C)
// $2D50: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 9
//        Top/Bottom 4
function enduwear_twelve() => byte(0x002D50)
// $2D54: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 9
//        Top/Bottom 5
function enduwear_thirteen() => byte(0x002D54)
// $2D58: [8bit] ENDURANCE MODE Outfit Unlock Flag
//        Wardrobe 9
//        Top/Bottom 6
function enduwear_fourteen() => byte(0x002D58)
// $2D78: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 10
//        Top/Bottom 1
function compwear_eleven() => byte(0x002D78)
// $2D7C: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 10
//        Top/Bottom 2
function compwear_twelve() => byte(0x002D7C)
// $2D80: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 10
//        Top/Bottom 3
function compwear_thirteen() => byte(0x002D80)
// $2D84: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 10
//        Top/Bottom 4
function compwear_fourteen() => byte(0x002D84)
// $2D88: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 10
//        Top/Bottom 5
function compwear_fifteen() => byte(0x002D88)
// $2D8C: [8bit] COMPETITION MODE Outfit Unlock Flag
//        Wardrobe 10
//        Top/Bottom 6
function compwear_sixteen() => byte(0x002D8C)
// $2DAC: [8bit] Endurance - Stage ID (25 total)
function endurance_roundnum() => byte(0x002DAC)
// $2E08: [8bit] Competition Round Number
function competition_roundnum() => byte(0x002E08)
// $2E20: TIMING - GREAT AMOUNT
function notes_great() => byte(0x002E20)
// $2E24: TIMING - GOOD AMOUNT
function notes_good() => byte(0x002E24)
// $2E28: TIMING - OKAY AMOUNT
function notes_okay() => byte(0x002E28)
// $2E2C: TIMING - POOR AMOUNT
function notes_poor() => byte(0x002E2C)
// $2E30: TIMING - BAD AMOUNT
function notes_bad() => byte(0x002E30)
// $2E38: [8bit] Host's Message ID
//        0x00=Neutral
//        0x01=Won
//        0x02=Lost
//        0x03=Welcome to Your First Audition
function host_msg() => byte(0x002E38)
// $2E50: [32bit] Endurance High Score
function score_endurance_high() => dword(0x002E50)
achievement(
   "The True American Idol",
   "Complete Competition mode.",
   id=155767,
   badge="175701",   
   points=10,
   
   trigger=
       game_mode() == competition &&
       competition_roundnum() == 9 &&
       host_msg() != prev(host_msg()) &&
       host_msg() == 1     
)
endurance_list = [
enduwear_one(),
enduwear_two(), 
enduwear_three(), 
enduwear_four(), 
enduwear_five(), 
enduwear_six(), 
enduwear_seven(), 
enduwear_eight(), 
enduwear_nine(), 
enduwear_ten(), 
enduwear_eleven(), 
enduwear_twelve(), 
enduwear_thirteen(), 
enduwear_fourteen()
]
function costume_tracker(count, itemArray){
    trigger = []
    for costume in itemArray{
        array_push(trigger, once(prev(costume) == 2 && costume == 1))
    }                  
    return measured(tally(count, trigger))
}
achievement(
    "Endurance Costume Collector",
    "Unlock all costumes from Endurance mode. (No Passwords)",
    id=155767,
    badge="175702",
    points=5,
    
    trigger=
        unless(prev(screenID()) == password_screen) &&
        game_mode() == endurance &&
        costume_tracker(14, endurance_list)
)
achievement(
    "B00bface Endurance",
    "Clear 20 stages of Endurance mode without failing.",
    id=155784,
    badge="175703",
    points=10,
   
    trigger=
        game_mode() == endurance &&
        prev(endurance_roundnum()) == 0x14 &&
        endurance_roundnum() == 0x15        
)
//=====Perfect Combo Achievements======
// $2B98: [8bit] Current Song/Last Song Played ID - Rehearsal
//        Indices for Competition Mode are Based on Song Choice.
//        0x0= I Will Survive, Note Count=34
//        0x1=I Wanna Dance With Somebody, Note Count=45
//        0x2=Twist and Shout, Note Count=35
//        0x3=Escape, Note Count=37
//        0x4=Evergreen, Note Count=59
//        0x5=A Moment Like This, Note Count=56
//        0x6=Thank You, Note Count=57
//        0x7=Genie In A Bottle, Note Count=70
//        0x8=Livin' La Vida Loca, Note Count=92
//        0x9=Bye Bye Bye, Note Count=78
//        0xa=Baby One More Time, Note Count=70
//        0xb=I Want It That Way, Note Count=70
//        0xc=Oops!...I Did It Again, Note Count=66
//        0xd=Fast Love, Note Count=67
//        0xe=Like a Virgin, Note Count=92
//        0xf=Let Me Entertain You, Note Count=83
//        0x10=Spinning Around, Note Count=92
//        0x11=Waiting for Tonight, Note Count=88
//        0x12=Suspicious Minds, Note Count=85
//        0x13=I'm A Believer, Note Count=77
function songID_rehearsal() => byte(0x002B98)
rehearsal_song_bank = {
    0x0:{"Name":"I Will Survive", "Points":5, "ID":155785, "Badge":"175704"},
    0x1:{"Name":"I Wanna Dance With Somebody", "Points":5, "ID":155786, "Badge":"175705"},
    0x2:{"Name":"Twist And Shout", "Points":5, "ID":155787, "Badge":"175706" },
    0x3:{"Name":"Escape", "Notes":37, "Points":10, "ID":155788, "Badge":"175707"},
    0x4:{"Name":"Evergreen", "Notes":59, "Points":10, "ID":155789, "Badge":"175708"},
    0x5:{"Name":"A Moment Like This", "Points":10, "ID":155790, "Badge":"175709"},
    0x6:{"Name":"Thank You", "Points":10, "ID":155791, "Badge":"175710"},
    0x7:{"Name":"Genie In A Bottle", "Points":10, "ID":155792, "Badge":"175711"},
    0x8:{"Name":"Livin' La Vida Loca", "Points":25, "ID":155793, "Badge":"175712"},
    0x9:{"Name":"Bye Bye Bye", "Points":10, "ID":155794, "Badge":"175713"},
    0xa:{"Name":"Baby One More Time", "Points":10, "ID":155795, "Badge":"175714"},
    0xb:{"Name":"I Want It That Way", "Points":10, "ID":155796, "Badge":"175715"},
    0xc:{"Name":"Ooops...! I Did It Again", "Points":10, "ID":155797, "Badge":"175716"},
    0xd:{"Name":"Fast Love", "Points":10, "ID":155798, "Badge":"175717"},
    0xe:{"Name":"Like a Virgin", "Points":10, "ID":155799, "Badge":"175718"},
    0xf:{"Name":"Let Me Entertain You", "Points":10, "ID":155800, "Badge":"175719"},
    0x10:{"Name":"Spinning Around", "Points":25, "ID":155801, "Badge":"175720"},
    0x11:{"Name":"Waiting for Tonight", "Points":10, "ID":155802, "Badge":"175721"},
    0x12:{"Name":"Suspicious Minds", "Points":10, "ID":155803, "Badge":"175722"},
    0x13:{"Name":"I'm A Believer", "Points":10, "ID":155804, "Badge":"175723"}    
}
for song in rehearsal_song_bank{
    name = rehearsal_song_bank[song]["Name"]
    my_points = rehearsal_song_bank[song]["Points"]
    my_id = rehearsal_song_bank[song]["ID"]
    my_badge = rehearsal_song_bank[song]["Badge"]
    achievement(
        name + " 100% Combo",
        "Get a 100% combo on " + name + " in Rehearsal Mode. (All Great Notes, but 3 or less Good Notes allowed.)",
        id=my_id,
        badge=my_badge,
        points=my_points,        
        trigger=            
            prev(game_mode()) == rehearsal &&
            songID_rehearsal() == song &&
            trigger_when(screenID() != prev(screenID())) &&
            trigger_when(screenID() == results_screen) &&
            notes_great() != 0 &&
            notes_good() <= 3 &&
            notes_okay() == 0 &&
            notes_poor() == 0 &&
            notes_bad() == 0
            //prev(notes_great()) == notes - 1 &&
            //notes_great() == notes            
    )    
}
//=====Rich Presence=====
rp_screens = {
    0x50ec:"Selecting a Song for Competition!",
    0x517c:"Selecting a Song to Rehearse!",
    0x51bc:"Viewing Performance Results",
    0x524c:"Viewing Endurance Results",
    0x533c:"Receiving Feedback from the Judges!",
    0x535c:"In Title Screen",
    0x538c:"In Options Screen",
    0x53cc:"In Game Mode Screen",
    0x5e0c:"Viewing the Credits",
    0x671c:"Entering a Password..."
}
//AlmightyXor Godly Function
function MapSongIdsToNames(dict)
{
    ret = {}
    for song in dict
{
        songObj = dict[song]
        ret[song] = songObj["Name"]
}
    return ret
}
rich_presence_conditional_display(game_mode() == endurance && screenID() == 0, "On Round {0} of Endurance Mode. 🏆 {1}",
rich_presence_value("RoundNum", endurance_roundnum()),
rich_presence_value("EnduranceScore", score_endurance())
)
rich_presence_conditional_display(game_mode() == competition && screenID() == 0, "In Round {0} of Competition mode.",
rich_presence_value("CompetitionRound", competition_roundnum())
)
rich_presence_conditional_display(game_mode() == rehearsal && screenID() == 0, "Rehearsing {0}",
rich_presence_lookup("SongID", songID_rehearsal(), MapSongIdsToNames(rehearsal_song_bank))
)
rich_presence_display("{0}", rich_presence_lookup("Screen", screenID(), rp_screens))
//=====Leaderboards=====
function endurance_roundnum_fourbyte() => dword(0x002DAC) //Used for leaderboard, as it can go as high as you want.
leaderboard(
    "Endurance Insanity",
    "Highest Endurance round reached without failing/rage-quitting.",
    game_mode() == endurance && screenID() == 0 && endurance_roundnum() == 1,
    always_false(),
    screenID() == endurance_results_screen || screenID() == title_screen,
    endurance_roundnum_fourbyte()
)

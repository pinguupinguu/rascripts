// Sokoban
// #ID = 19542


// $57CC: [8bit] Level 4 Notification
//        0x01=Z to Restart
//        0x02=X to Move On
function four_notification() => byte(0x57cc)
// $5F34: [8bit] Screen ID
//        0x00=Title Screen
//        0x01=In Game
//        0x02=Finished Screen
function screen_id() => byte(0x005F34)

// $5F38: [8bit] Level ID
//        0x00-0x04= Level 0-4
//        0x05=Finished Sokoban! Wow!
// $5F30: [32bit] Frame Timer
function timer() => dword(0x5f30)
function level_id() => byte(0x005F38)

function progression(in) => prev(level_id()) == in && level_id() == in + 1

for i in range(0, 4){
    achievement(
    "Level " + i,
    "Clear Level " + i + "!",
    points=1,
    trigger=
        progression(i)    
    )
}
achievement(
    "Speedrun!",
    "Clear Level 0-4 in less than 18 seconds",
    points=0,
    trigger=
        once(prev(screen_id()) == 0 && screen_id() == 1 && level_id() == 0) &&
        trigger_when(level_id() == 4 && prev(four_notification()) == 1 && four_notification() == 2) &&
        unless(repeated(0x438, once(prev(screen_id()) == 0 && screen_id() == 1 && level_id() == 0) && timer() > prev(timer()))) //Time in Frames @60FPS - 18seconds = 0x438
)

rich_presence_conditional_display(screen_id() == 0, "Playing on Level {0}",
    rich_presence_value("Level", level_id()))
rich_presence_display("In Menu...")
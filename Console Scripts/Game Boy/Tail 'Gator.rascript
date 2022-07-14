// Tail 'Gator
// #ID = 6505
// RA Hash: cac94925bf098982d31f7c9a2c296d25
// $C0C3: [8bit] Password Indice
// $C0C5: [8bit] Area ID (val +1 for RP)
//        00=Area 1
//        01=Area 2
//        02=Area 3
//        03=Area 4
//        04=Area 5
function areaID() => byte(0x00C0C5)
// $C0C6: [8bit] Stage ID
function stageID() => byte(0x00C0C6)
// $C0C9: [8bit] Room ID
//        0x3>0x4=Stage 1-1 Completion.
//        0x7>0x8=Stage 1-2 Completion
//        0xb=Boss Screen - Bull Frog Boss Fight in Area 1 - Area ID=0, Stage ID=3 
//        0xb>0xc=Stage 1-3 Completion
//        0xf>0x10=Stage 1-4 Completion
//        0x13>0x14=Stage 2-1 Completion
//        0x16>0x17=Stage 2-2 Completion
//        0x1b>0x1c=Stage 2-3 Completion
//        0x1F=Boss Screen - Fish Boss Fight in Area 2. Area ID=1, Stage ID=4 - Area 2 CLEARED.
//        0x1F>0x20=Stage 2-4 Completion
//        0x23=Bird Boss Fight in Area 3-1. Area ID=2, Stage ID=1
//        0x23>0x24=Stage 3-1 Completion
//        0x27=Otter Boss Fight in Area 3-2. Area ID=2, Stage ID= 2
//        0x27>0x28=Stage 3-2 Completion
//        0x2b>0x2c=Stage 3-3 Completion
//        0x2e>0x2f= Stage 3-4 Completion
//        0x33>0x34=Area 4 Completion
//        0x37=Dragon Boss Fight in Area 5. Area ID=4, Stage ID=5
function roomID() => byte(0x00C0C9)
// $C0CB: [NBit] Area Doors - Area 1-3 uses 4 doors. Area 4-5 have none.
//        Bit0=Door 1 (Stage 1 of Area)
//        Bit1=Door 2 (Stage 2 of Area)
//        Bit2=Door 3 (Stage 3 of Area)
//        Bit3=Door 4 (Stage 4 of Area)
function room_hit(roomcheck) => //Implemented to prevent cheesing of boss rooms.
    once(roomID() == roomcheck) &&
    never(health() < prev(health()) && health() == 0)        
function doorone() => bit0(0x00C0CB)
function doortwo() => bit1(0x00C0CB)
function doorthree() => bit2(0x00C0CB) 
function doorfour() => bit3(0x00C0CB)
// $C11E: [8bit] Chests in Current Room
function chestcnt() => byte(0x00C11E)
// $C156: [8bit] Health
function health() => byte(0x00C156)
// $C158: [8bit] Power-Up Pickups
function powerup() => byte(0x00C158)
// $C15F: [BCD] [8-Bit] Score xx00000
function millions_place() => byte(0x00C15F)
// $C160: [BCD] [8bit] Score 00xx000
function thousands_place() => byte(0x00C160)
// $C161: [BCD] [8bit] Score 0000xx0
function hundreds_place() => byte(0x00C161)
// $C1B1: [8bit] Password Digit 1
//        0-9
//        0xa7=Blank
function pwdone() => byte(0x00C1B1)
// $C1B2: [8bit] Password Digit 2
//        0-9
//        0xa7=Blank
function pwdtwo() => byte(0x00C1B2)
// $C1B3: [8bit] Password Digit 3
//        0-9
//        0xa7=Blank
function pwdthree() => byte(0x00C1B3)
// $C1B4: [8bit] Password Digit 4
//        0-9
//        0xa7=Blank
function pwdfour() => byte(0x00C1B4)
// $CB02: [8bit] Boss Health, When In Specific Area Stage & Room.
//        Stage 1 Bull Frog=0x18 Health
//        Stage 2 Fish=0x18 Health
//        Stage 3 Bird=0x18 Health
//        Stage 3 Otter=0x18 Health
//        Stage 5 Dragon=0x1e Health
function bosshealth() => byte(0x00CB02)
// $FF90: [8bit] Game State/Screen ID
//        0x2=Boot Splash Screen
//        0x3=Title Screen Half Loaded
//        0x5=Title Screen
//        0x6=Password Screen
//        0x0e=In Game
//        0x10=Paused
//        0x12=In Game Over Screen
//        0x14=Loading Into Level
function state() => byte(0x00FF90)
function pwdprotection() => prev(state()) != 6
// $FF97: [8bit] Cheat Input Address
function cheatinput() => byte(0x00FF97)
// $FF99: [8bit] Frame Counter
function cheat_protection() =>
    unless(once( state() == 0x10 && health() > prev(health()))) &&
    (always_false() ||  never(state() == 0x5))
function basic_progression(room) =>
    pwdprotection() &&
    prev(roomID()) == room &&
    roomID() == room +1 &&
    cheat_protection()
achievement(
    "Your First Gator Adventure",
    "Clear Area 1-1",
    id=155412,
    badge="175061",
    points=2,
    trigger=
        room_hit(0) &&
        basic_progression(3)
)
achievement(
    "Chomping Away",
    "Clear Area 1-2",
    id=155413,
    badge="175062",
    points=3,
    trigger=
        room_hit(4) &&
        basic_progression(7)
)
achievement(
    "Don't Bullfrog Me",
    "Defeat the Bull Frog and clear Area 1-3",
    id=155414,
    badge="175063",
    points=4,
    trigger=
        room_hit(8) &&
        basic_progression(0xb)
)
achievement(
    "Area One Conquerer",
    "Clear Area 1-4",
    id=155415,
    badge="175064",
    points=5,
    trigger=
        room_hit(0xc) &&
        basic_progression(0xf)
)
achievement(
    "Two Bad",
    "Clear Area 2-1",
    id=155416,
    badge="175065",
    points=5,
    trigger=
        room_hit(0x10) &&
        basic_progression(0x13)
)
achievement(
    "You Can Swim",
    "Clear Area 2-2",
    id=155417,
    badge="175066",
    points=5,
    trigger=
        room_hit(0x14) &&
        basic_progression(0x16)
)
achievement(
    "Olympic Swimmer",
    "Clear Area 2-3",
    id=155418,
    badge="175067",
    points=5,
    trigger=
        room_hit(0x18) &&
        basic_progression(0x1B)
)
achievement(
    "Something's Fishy Around Here",
    "Defeat the Fish Boss and clear Area 2-4",
    id=155419,
    badge="175068",
    points=5,
    trigger=
        room_hit(0x1C) &&
        basic_progression(0x1F)
)
achievement(
    "Making Birds Fly",
    "Defeat the Bird Boss and clear Area 3-1",
    id=155420,
    badge="175069",
    points=5,
    trigger=
        room_hit(0x20) &&
        basic_progression(0x23)
)
achievement(
    "Otter Box",
    "Defeat the Otter Boss and Clear Area 3-2",
    id=155421,
    badge="175070",
    points=5,
    trigger=
        room_hit(0x24) &&
        basic_progression(0x27)
)
achievement(
    "Alligators Don't Have Wings",
    "Clear Area 3-3",
    id=155422,
    badge="175071",
    points=5,
    trigger=
        room_hit(0x28) &&
        basic_progression(0x2b)    
)
achievement(
    "Fly On Outta Here",
    "Clear Area 3-4",
    id=155423,
    badge="175072",
    points=5,
    trigger=
        room_hit(0x2c) &&
        basic_progression(0x2e)
)
achievement(
    "Halfway to the Castle Dragon",
    "Clear Area 4",
    id=155424,
    badge="175073",
    points=5,
    trigger=
        room_hit(0x30) &&
        basic_progression(0x33)        
)

function dragon_death() =>
    roomID() == 0x37 &&
    bosshealth() < prev(bosshealth()) &&
    bosshealth() == 0
achievement(
    "Dragon Slayer",
    "Defeat the Castle Dragon and win the game",
    id=155425,
    badge="175074",
    points=10,
    trigger=
        areaID() == 4 &&
        stageID() == 5 &&
        dragon_death() &&
        cheat_protection()
)
function damageless(thisroomID) =>
     unless(once(health() < prev(health()))) &&
        bosshealth() < prev(bosshealth()) &&
        bosshealth() == 0 && (always_false() || never(roomID() != thisroomID))
achievement(
    "Bullfrog Squasher",
    "Defeat the Bullfrog boss without taking damage",
    id=155426,
    badge="175075",
    points=5,
    trigger=
       damageless(0xb)
)
achievement(
    "Alligator Meal",
    "Defeat the Fish boss without taking damage",
    id=155427,
    badge="175076",
    points=5,
    trigger=
        damageless(0x1f)
)
achievement(
    "Epic Bird Slayer",
    "Defeat the Bird boss without taking damage",
    id=155428,
    badge="175077",
    points=5,
    trigger=
        damageless(0x23)
)
achievement(
    "Otter Things To Do",
    "Defeat the Otter boss without taking damage",
    id=155429,
    badge="175078",
    points=5,
    trigger=
        damageless(0x27)
)
achievement(
    "Dragon Breath",
    "Defeat the Dragon boss without taking damage",
    id=155430,
    badge="175079",
    points=10,
    trigger=
        damageless(0x37)
)
achievement(
    "Point Gatherer",
    "Hold 50,000 points at once",
    id=155431,
    badge="175080",
    points=5,
    trigger=
        state() == 0xe &&
        prev(thousands_place()) < 0x50 &&
        thousands_place() >= 0x50 &&
        cheat_protection()
)
gamestates = {
    0x0:"Booting...",
    0x2:"Booting...",
    0x3:"Booting...",
    0x5:"In Menu",
    0x6:"In Password Screen",
    0x10:"Paused",
    0x12:"In Game Over Screen",
    0x14:"Loading into level..."    
}
health = {
    0:"💔",
    1:"❤️",
    2:"❤️❤️",
    3:"❤️❤️❤️",
    4:"❤️❤️❤️❤️",
    5:"❤️❤️❤️❤️❤️",
    6:"❤️❤️❤️❤️❤️❤️",
    7:"❤️❤️❤️❤️❤️❤️❤️"
}
str = {
    0:"0﹪",
    1:"14﹪",
    2:"29﹪",
    3:"43﹪",
    4:"57﹪",
    5:"71﹪",
    6:"86﹪",
    7:"100﹪"
}
function score_report() => bcd(hundreds_place()) * 10 + bcd(thousands_place()) * 1000 + bcd(millions_place()) * 100000
function cheat_report() => state() == 0x10 && health() > prev(health())
//======RICH PRESENCE======
rich_presence_conditional_display(state() == 0xe, "Exploring Area {0} {1} 💪 {2} 🏆  {3}" , 
rich_presence_value("Area", areaID() + 1),
rich_presence_lookup("Health", health(), health),
rich_presence_lookup("Strength", powerup(), str),
rich_presence_value("Points", score_report())   
)
rich_presence_display("{0}",
rich_presence_lookup("State", state(), gamestates, "Transitioning Screens..." )
)
//=====LEADERBOARDS=====
function speedrun_start(area, stage, room) =>
    areaID() == area &&
    stageID() == 1 && 
    roomID() == room
function speedrun_submit(room) =>
    prev(roomID()) == room &&
    roomID() == room + 1    
function speedrun_cancel() =>
    cheat_report() || health() < prev(health()) && health() == 0        
leaderboard(
    "Highest Score",
    "Highest Score after death/defeating the Dragon.",
    prev(state()) == 0x14 && state() == 0xe,
    cheat_report(),
    health()<prev(health()) && health() == 0 || dragon_death(),
    score_report()
)
//Leaderboard Generation for Areas with 4 Stages
room = 0
for area in range(0, 2){
    for stage in range(1,4){
      leaderboard(
          "Area " + area + 1 + "-" + stage + " Speedrun",
          "Fastest time to complete Area " + area + 1 + "-" + stage + " (No Death).",
          speedrun_start(area, stage, room),
          speedrun_cancel(),
          speedrun_submit(room + 3),
          0,
          "FRAMES"          
      )
      room = room + 4             
    }    
}
leaderboard(
    "Area 4 Speedrun",
    "Fastest time to complete Area 4 (No Death).",
    speedrun_start(3, 5, 0x30),
    speedrun_cancel(),
    speedrun_submit(0x30 + 3),
    0,
    "FRAMES"
)
leaderboard(
    "Area 5 Speedrun",
    "Fastest time to get through Stage 5 and kill the dragon (No Death).",
    speedrun_start(4, 5, 0x35),
    speedrun_cancel(),
    dragon_death(),
    0,
    "FRAMES"
)
leaderboard(
    "Pumpkin Eater",
    "Using a health password is never any good.",
    cheat_report(),
    always_false(),
    always_true(),
    0
)

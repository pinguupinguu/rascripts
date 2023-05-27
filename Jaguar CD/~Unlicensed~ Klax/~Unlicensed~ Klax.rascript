// ~Unlicensed~ Klax
// #ID = 21667

// $533F: [8bit] Wave Type Goal
//        0x00=Klax Wave
//        0x01=Diagonal Wave
//        0x02=Points Wave
//        0x03=Tile Wave
//        0x04=Horizontal Wave
function wave_goal() => byte(0x533f)
rp_waves ={
    0:"Klax Made",
    1:"Diagonals Made",
    2:"Points Earned",
    3:"Tiles Dodged",
    4:"Horizontals Made"
}
// $535A: [32bit] Score Left?
// $535D: [8bit] Klax Left
// $6460: [16bit] Timer Until Level Start
// $6477: [8bit] Game Setting?
// $6487: [8bit] Drop Meter
// $648F: [8bit] Wave Number - 1
function wave_number() => byte(0x648f)
// $64AC: [Lower4] Score - Millions
//        [Upper4] Score ID - When = 3, Game Loaded past screens in menu
// %6441: [8bit] Paddle Is Shown (In Game Check)
//        0x00=No
//        0x13=Yes
function game_loaded() => byte(0x6441) == 0x13
// $64AD: [Lower4] Score - Hundred-Thousands
// $64AE: [Lower4] Score - Ten-Thousands
// $64AF: [Lower4] Score - Thousands
// $64B0: [Lower4] Score - Hundreds
// $64B1: [Lower4] Score - Tens
// $64B2: [Lower4] Score - Ones


function stage(title, target, my_points){
    achievement(
        title,
        "Clear Stages " + target - 4 + "-" + target,
        points=my_points,
        trigger=
            game_loaded() &&
            prev(wave_number()) == target - 1 &&
            wave_number() == target
    )
}
stage("Klaxin' Stages 1", 5, 5)
stage("Klaxin' Stages 2", 10, 5)
stage("Klaxin' Stages 3", 15, 10)
stage("Klaxin' Stages 4", 20, 10)
stage("Klaxin' Stage 5", 25, 10)
stage("Klaxin' Stages 6", 30, 10)
stage("Klaxin' Stages 7", 35, 10)
stage("Klaxin' Stages 8", 40, 10)
stage("Klaxin' Stages 9", 45, 10)
stage("Klaxin' Stages 10", 50, 10)
stage("Klaxin' Stages 11", 55, 10)
stage("Klaxin' Stages 12", 60, 10)
stage("Klaxin' Stages 13", 65, 10)
stage("Klaxin' Stages 14", 70, 25)
stage("Klaxin' Stages 15", 75, 25)
stage("Klaxin' Stages 16", 80 , 25)
stage("Klaxin' Stages 17", 85, 25)
stage("Klaxin' Stages 18", 90, 25)
stage("Klaxin' Stages 19", 95, 25)
achievement(
    "Klaxin' Stages 20",
    "Clear Stages 96-99",
    points=25,
    trigger=
        game_loaded() &&
        prev(wave_number()) == 98 &&
        wave_number() == 99
)
achievement(
    "Klaxin' Stages 21",
    "Clear Stage 100 and master the art of Klax!",
    points=50,
    trigger=
        game_loaded() &&
        prev(wave_number()) == 100 &&
        wave_number() == 101
)

achievement(
    "Speedrun Skip",
    "Activate the secret warp on Stage 6!",
    5,
    trigger=
        prev(wave_number()) == 0x5 &&
        wave_number() == 0x31
)
achievement(
    "A Big Red X!",
    "Activate the secret warp on Stage 11!",
    points=5,
    trigger=
        prev(wave_number()) == 0xa &&
        wave_number() == 0x36
)

function klax_table_start() => 0x005a33
function klax_table_end() => 0x005a63

function klax_bricks() => range(klax_table_start(), klax_table_end(), 2) //Read in each start of 16bit adr
achievement(
    "New Technology",
    "Use a wildcard tile to clear some Klax blocks!",
    points=3,
    trigger=
        game_loaded() &&
        any_of(klax_bricks(), b  => bit7(b) < prev(bit7(b)) )
)

function klax_flash(addr) => prev(byte(addr)) != 0 && byte(addr) > 0xa && bit7(addr) == 0 //Check for flash, but also make sure tile is not wild card or a color.

achievement(
    "Special Combo: 5 Klax Staircase",
    "Earn 20,000 points from creating a 5 Klax staircase! (See Forum Topic!)",
    points=5,
    trigger=
        game_loaded() &&
        (always_false()
        || (prev(byte(0x005a33)) == prev(byte(0x005a3f)) && prev(byte(0x005a33)) == prev(byte(0x005a4b)) && prev(byte(0x005a33)) == prev(byte(0x005a57)) && prev(byte(0x005a33)) == prev(byte(0x005a63)) &&
            klax_flash(0x005a33)) //5 Klax Ascending Staircase                
        || (prev(byte(0x005a5b)) == prev(byte(0x005a53)) && prev(byte(0x005a5b)) == prev(byte(0x005a4b)) && prev(byte(0x005a5b)) == prev(byte(0x005a43)) && prev(byte(0x005a5b)) == prev(byte(0x005a3b)) &&
            klax_flash(0x005a5b)) //5 Klax Descending Staircase               
        )

)
achievement(
    "Special Combo: Big Earns on Wave 1",
    "Earn a LOT of points on Wave 1! (See Forum Topic!)",
    points=5,
    trigger=
        game_loaded() &&
        wave_number() == 0 &&
        prev(byte(0x005a33)) == prev(byte(0x005a3b)) && prev(byte(0x005a33)) == prev(byte(0x005a39)) && prev(byte(0x005a33)) == prev(byte(0x005a35)) && 
            prev(byte(0x005a33)) == prev(byte(0x005a63)) && prev(byte(0x005a33)) == prev(byte(0x005a61)) && prev(byte(0x005a33)) == prev(byte(0x005a5d)) && prev(byte(0x005a33)) == prev(byte(0x005a5b)) && //Columns 1 & 5 &&
        prev(byte(0x005a3d)) == prev(byte(0x005a45)) && prev(byte(0x005a3d)) == prev(byte(0x005a43)) && prev(byte(0x005a3d)) == prev(byte(0x005a3f)) && //Column 2    
        prev(byte(0x005a51)) == prev(byte(0x005a59)) && prev(byte(0x005a51)) == prev(byte(0x005a57)) && prev(byte(0x005a51)) == prev(byte(0x005a53)) && //Column 4    
        prev(byte(0x005a47)) == prev(byte(0x005a37)) && prev(byte(0x005a47)) == prev(byte(0x005a41)) && prev(byte(0x005a47)) == prev(byte(0x005a4b)) && 
            prev(byte(0x005a47)) == prev(byte(0x005a49)) && prev(byte(0x005a47)) == prev(byte(0x005a55)) && prev(byte(0x005a47)) == prev(byte(0x005a5f)) && //Column 3 & Center Row.
            klax_flash(0x005a33)
)
achievement(
    "Special Combo: The Bridge",
    "Earn 2 x 10,000 points with this combo! (See Forum Topic!)",
    points=5,
    trigger=
        game_loaded() &&
        (always_false()
        || (prev(byte(0x005a33)) == prev(byte(0x005a3f)) && prev(byte(0x005a33)) == prev(byte(0x005a4b)) && prev(byte(0x005a33)) == prev(byte(0x005a53)) && prev(byte(0x005a33)) == prev(byte(0x005a5b)) &&
            klax_flash(0x005a33)
        ) // Row 1 Start
        || (prev(byte(0x005a35)) == prev(byte(0x005a41)) && prev(byte(0x005a35)) == prev(byte(0x005a4d)) && prev(byte(0x005a35)) == prev(byte(0x005a55)) && prev(byte(0x005a35)) == prev(byte(0x005a5d)) &&
            klax_flash(0x005a35)
            ) // Row 2 Start
        || (prev(byte(0x005a37)) == prev(byte(0x005a43)) && prev(byte(0x005a37)) == prev(byte(0x005a4f)) && prev(byte(0x005a37)) == prev(byte(0x005a57)) && prev(byte(0x005a37)) == prev(byte(0x005a5f)) &&
            klax_flash(0x005a37)
        ) // Row 3 Start        
        )
)
achievement(
    "Special Combo: Mini X",
    "Earn 2 x 10,000 points with this combo! (See Forum Topic!)",
    points=5,
    trigger=
        game_loaded() &&
        (always_false()
        || (prev(byte(0x005a33)) == prev(byte(0x005a37)) && prev(byte(0x005a33)) == prev(byte(0x005a3f)) && prev(byte(0x005a33)) == prev(byte(0x005a4b)) && prev(byte(0x005a33)) == prev(byte(0x005a47)) && 
            klax_flash(0x005a33)
            )
        || (prev(byte(0x005a35)) == prev(byte(0x005a39)) && prev(byte(0x005a35)) == prev(byte(0x005a41)) && prev(byte(0x005a35)) == prev(byte(0x005a4d)) && prev(byte(0x005a35)) == prev(byte(0x005a49)) && 
            klax_flash(0x005a35)
            )    
        || (prev(byte(0x005a37)) == prev(byte(0x005a3b)) && prev(byte(0x005a37)) == prev(byte(0x005a43)) && prev(byte(0x005a37)) == prev(byte(0x005a4f)) && prev(byte(0x005a37)) == prev(byte(0x005a4b)) && 
            klax_flash(0x005a37)
            ) //Column 1 Based choices
        || (prev(byte(0x005a3d)) == prev(byte(0x005a41)) && prev(byte(0x005a3d)) == prev(byte(0x005a49)) && prev(byte(0x005a3d)) == prev(byte(0x005a55)) && prev(byte(0x005a3d)) == prev(byte(0x005a51)) && 
            klax_flash(0x005a3d)
            )
        || (prev(byte(0x005a3f)) == prev(byte(0x005a43)) && prev(byte(0x005a3f)) == prev(byte(0x005a4b)) && prev(byte(0x005a3f)) == prev(byte(0x005a57)) && prev(byte(0x005a3f)) == prev(byte(0x005a53)) && 
            klax_flash(0x005a3f)
            )
        || (prev(byte(0x005a41)) == prev(byte(0x005a45)) && prev(byte(0x005a41)) == prev(byte(0x005a4d)) && prev(byte(0x005a41)) == prev(byte(0x005a59)) && prev(byte(0x005a41)) == prev(byte(0x005a55)) && 
            klax_flash(0x005a41)
            ) //Column 2 Based choices   
        || (prev(byte(0x005a47)) == prev(byte(0x005a4b)) && prev(byte(0x005a47)) == prev(byte(0x005a53)) && prev(byte(0x005a47)) == prev(byte(0x005a5f)) && prev(byte(0x005a47)) == prev(byte(0x005a5b)) && 
            klax_flash(0x005a47)
            )
        || (prev(byte(0x005a49)) == prev(byte(0x005a4d)) && prev(byte(0x005a49)) == prev(byte(0x005a55)) && prev(byte(0x005a49)) == prev(byte(0x005a61)) && prev(byte(0x005a49)) == prev(byte(0x005a5d)) && 
            klax_flash(0x005a49)
            )
        || (prev(byte(0x005a4b)) == prev(byte(0x005a4f)) && prev(byte(0x005a4b)) == prev(byte(0x005a57)) && prev(byte(0x005a4b)) == prev(byte(0x005a63)) && prev(byte(0x005a4b)) == prev(byte(0x005a5f)) && 
            klax_flash(0x005a4b)
            ) //Column 3 Based choices
        )   
)
achievement(
    "Special Combo: The Big T",
    "Earn 2 x 10,050 points with this combo! (See Forum Topic!)",
    points=5,
    trigger=
        game_loaded() &&
        (always_false()
        || (prev(byte(0x005a47)) == prev(byte(0x005a37)) && prev(byte(0x005a47)) == prev(byte(0x005a41)) && prev(byte(0x005a47)) == prev(byte(0x005a4b)) && 
            prev(byte(0x005a47)) == prev(byte(0x005a49)) && prev(byte(0x005a47)) == prev(byte(0x005a55)) && prev(byte(0x005a47)) == prev(byte(0x005a5f)) && 
            klax_flash(0x005a47)
            ) // Column 3, Row 1
        || (prev(byte(0x005a49)) == prev(byte(0x005a39)) && prev(byte(0x005a49)) == prev(byte(0x005a43)) && prev(byte(0x005a49)) == prev(byte(0x005a4d)) && 
            prev(byte(0x005a49)) == prev(byte(0x005a4b)) && prev(byte(0x005a49)) == prev(byte(0x005a57)) && prev(byte(0x005a49)) == prev(byte(0x005a61)) && 
            klax_flash(0x005a49)
            ) // Column 3, Row 2
        || (prev(byte(0x005a4b)) == prev(byte(0x005a3b)) && prev(byte(0x005a4b)) == prev(byte(0x005a45)) && prev(byte(0x005a4b)) == prev(byte(0x005a4f)) && 
            prev(byte(0x005a4b)) == prev(byte(0x005a4d)) && prev(byte(0x005a4b)) == prev(byte(0x005a59)) && prev(byte(0x005a4b)) == prev(byte(0x005a63)) && 
            klax_flash(0x005a4b)
            ) // Column 3, Row 3    
        )
)





function wave_target() => dword_be(0x005340)
function wave_current() => dword_be(0x00535a)
function credits() => byte(0x0064ab)
rich_presence_conditional_display(game_loaded(), "Playing Klax on Wave {0} with {1} {2}. Credits: {3}",
    rich_presence_macro("Number", wave_number() + 1),
    rich_presence_macro("Number", wave_target() - wave_current()),
    rich_presence_lookup("WaveType", wave_goal(), rp_waves),
    rich_presence_macro("Number", credits() + 1)
)
rich_presence_display("In Menu")
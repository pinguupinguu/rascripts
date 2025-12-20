// Fugitive Hunter: War on Terror
// #ID = 21363

//Define base functions, vars, etc.
addr = (v) => v // Dummy accessor for ptr for if the pointed-to address is desired
function ptr(base, offsets, accessor=dword)
{
    val = base
    val = val
    
    for i in range(0, length(offsets) - 1)
    {
        addr = val + offsets[i]
        if (i == length(offsets) - 1)
        {
            val = accessor(addr)
            if accessor == double32_be
                // Get most significant bits for a double
                val = accessor(addr + 4)
        }
        else
        {
           val = dword(addr)
           val = val
        }
    }
    
    return val
}

boolean_cheats_active = dword(0x00346d0c)
bool_false = 0
bool_true = 1
function get_cheats_state(param){
    return boolean_cheats_active == param
}
difficulty = word(0x002833ca)
easy = 0
hard = 1
function get_difficulty(param){
    return difficulty == param
}

//Region Defs
region_bank = dword(0x00349c48)
region_miamistreets = 0x0 //Jamal Richardson - Miami Streets
region_innerstreets = 0x1 //Casey Webber - Inner City Streets
region_thunderrock = 0x2 //Charles Marcus - Thunder Rock, Utah
region_militiacompound = 0x3 //Lucas Aker - Upper Militia Compound
region_privatebeach = 0x4 //Armando Rojas - Private Beach
region_jungleclearing = 0x5 //Eduardo Perez - Jungle Clearing
region_paristreets = 0x6 //Ali Binasi - Paris Streets
region_catacombs = 0x7 //Amand Aziz - Catacombs
region_innercatacombs = 0x8 //Hostinec Drobek - Inner Catacombs
region_trainingcamp = 0x9 //Doctor Al-Nur - Terrorist Training Camp
region_mountaincaves = 0xa //Osama Bin Laden - Mountain Caves
region_firstmission = 0xb //On new game - Afghanistan Hills
function get_region(param){
    return region_bank == param
}

//mission objectives for capture trigger points:
objectives_captures = {
    0:word(0x00299580), //Capture Afghan Hills
    1:word(0x002981d0), //Capture Jamal Richardson
    2:word(0x002984a0), //Capture Casey Webber
    3:word(0x00298540), //Capture Charles marcus
    4:word(0x00298860), //Capture Lucas Aker
    5:word(0x00297cd0), //Capture Armando Rojas
    6:word(0x00298090), //Capture Eduardo Perez
    7:word(0x00298ef0), //Capture Ali Binasi
    8:word(0x00298bd0), //Capture Amand Aziz
    9:word(0x00298d10), //Capture Hostinec Drobek
    10:word(0x00299260),//Capture Doctor Al-Nurr
    11:word(0x002994e0) //Capture Osama Bin Laden
}

progression_banks = [
    region_firstmission,
    region_miamistreets,
    region_innerstreets,
    region_thunderrock,
    region_militiacompound,
    region_privatebeach,
    region_jungleclearing,
    region_paristreets,
    region_catacombs,
    region_innercatacombs,
    region_trainingcamp,
    region_mountaincaves
    
]
progression_titles = [
    "First Gig",
    "Kicked Jamal to the Wall",
    "Knuckle Sandwich",
    "Talked Big, Fell Hard",
    "Wrong Compound, Buddy",
    "Cut to the Combos and Cuffs",
    "Lights Out in the Hacienda",
    "Marathon Running and Boxing",
    "Walking on Skulls",
    "Drobek's Dungeon Maze",
    "Prescription: Justice",
    "America's Revenge"
]
progression_hard_titles = [
    "NULL",
    "No Place to Run",
    "Cold Resolve",
    "Concrete Nap",
    "Boxed In, Boxed Out",
    "Cartel? More Like Cardboard!",
    "Seeing Stars",
    "Rooftop Heist",
    "Uppercut Justice!",
    "Death of a Villainous Career",
    "No Medical Exemptions",
    "Knees of JUSTICE!"
]
progression_desc = [
    "NULL",
    "Capture Jamal Richardson on ",
    "Capture Casey Webber on ",
    "Capture Charles Marcus on ",
    "Capture Lucas Aker on ",
    "Capture Armando Rojas on ",
    "Capture Eduardo Perez on ",
    "Capture Ali Binasi on ",
    "Capture Amand Aziz on ",
    "Capture Hostinec Drobek on ",
    "Capture Doctor Al-Nur on ",
    "Capture Osama Bin Laden on "
]



progression_points = [
    5, //placeholder
    5,
    10,
    5,
    10,
    5,
    10,
    5,
    10,
    5,
    10,
    25
]
for i in range(0, 11){
    if(i == 0){
        achievement(
            progression_titles[i],
            "Capture your first terrorist on the Afghan hills!",
            points=progression_points[i],
            type="progression",
            trigger=
                get_cheats_state(bool_false) &&
                get_region(progression_banks[i]) &&
                prev(objectives_captures[i]) == 1 &&
                objectives_captures[i] == 3
        )
        
    }
    else {
        if(progression_points[i] == 5) hardpoints = progression_points[i] + 5 
        else hardpoints = progression_points[i]
        if(i == 11) prog = "win_condition"
        else prog = "progression"
        achievement(
            progression_titles[i],
            progression_desc[i] + "Easy or higher",
            points=progression_points[i],
            type=prog,
            trigger=
                get_cheats_state(bool_false) &&
                get_region(progression_banks[i]) &&
                 prev(objectives_captures[i]) == 1 &&
                objectives_captures[i] == 3
        )
        achievement(
            progression_hard_titles[i],
            progression_desc[i] + "Hard",
            points=hardpoints,
            type=prog,
            trigger=
                get_cheats_state(bool_false) &&
                get_difficulty(hard) &&
                get_region(progression_banks[i]) &&
                prev(objectives_captures[i]) == 1 &&
                objectives_captures[i] == 3
        )
        
    }
    
}
//Challenges begin here:
object_array = dword(0x0034a128)
fugitive_boxing_index = dword(0x00349f6c)
fugitive_capture_index = dword(0x00346eb4)
function check_binladen_henchmen_captured() => word(0x00299440) == 3
objective_americanpow = word(0x00299350)
objective_henchmen = word(0x00299440)
//Fugitive Battle Objects:

function fugitive_boxing_health_player() => ptr((fugitive_boxing_index * 0x4c) + object_array, [0x48, 0x14], float)
function fugitive_boxing_health_enemy() => ptr((fugitive_boxing_index * 0x4c) + object_array, [0x48, 0x74], float)
//Fugitive Capture Objects:
function fugitive_capture_state() => ptr((fugitive_capture_index * 0x4c) + object_array, [0x48, 0x0], dword)
fugitive_state_avail = 1
fugitive_state_init = 4
fugitive_state_box = 2
fugitive_state_capture = 5
fugitive_state_lost = 7
fugitive_state_win = 6
fugitive_state_over = 0xb
function fugitive_capture_progress() => ptr((fugitive_capture_index * 0x4c) + object_array, [0x48, 0x28], float)
function fugitive_state_check(last, next) {
    return prev(fugitive_capture_state()) == last && fugitive_capture_state() == next
}
achievement(
    "True Patriot",
    "Rescue the American POW from the clutches of Al-Qaeda in the Afghan Hills",
    points=10,
    type="progression",
    trigger=
        get_cheats_state(bool_false) &&
        get_region(region_mountaincaves) &&
        prev(objective_americanpow) == 1 &&
        objective_americanpow == 3
)
map_osama = ascii_string_equals(0x0034a558, "\\bounty\\efs\\SFX\\Are05\\Are05_03.bd")

achievement(
    "Handling the Minions",
    "Capture both of Osama Bin Laden's top henchmen in the Afghan Hills",
    points=5,
    type="progression",
    trigger=
       get_cheats_state(bool_false) &&
       get_region(region_mountaincaves) &&
       prev(objective_henchmen) == 1 &&
       objective_henchmen == 3
)
achievement(
    "Osama Bin Boxer",  
    "Capture Osama Bin Laden on Hard difficulty without your boxing meter ever going below 85%",
    points=25,
    id=568393,
    trigger=
        unless(!get_cheats_state(bool_false)) && //Check cheats disabled
        unless(!get_difficulty(hard)) && //Check that you're on hard
        unless(!map_osama) && //Check you're in the level
       unless( !check_binladen_henchmen_captured()) && //Check the henchmen are already captured, so no mistrigger.
        once(fugitive_state_check(fugitive_state_init, fugitive_state_box)) && //Check that you load the boxing
        trigger_when(fugitive_state_check(fugitive_state_capture, fugitive_state_win)) && //Trigger when you capture the terrorist
        never(fugitive_boxing_health_player() < prev(fugitive_boxing_health_player()) && fugitive_boxing_health_player() < 42.5) && //Reset if health drops below 37.5 (max 50.0)
        never(fugitive_state_check(fugitive_state_capture, fugitive_state_lost))  &&//Reset if you box successfully, but don't arrest.
        (always_false() ||  never(prev(fugitive_capture_index) != -1 && fugitive_capture_index == -1) ||
                            measured(fugitive_boxing_health_player() * 2.0 <= 100.0, fugitive_boxing_health_player() * 2.0 > 85.0, format="percent") ) 
)
//Deathless Challenges - No Bin Laden
/*
Jamal Richardson & Casey Webber
Charles Marcus & Lucas Aker
Armando Rojas & Eduardo Perez
Ali Binasi & Amand Aziz
Hostinec Drobek & Dr. Al-NUR

Lose challenge by:
- Dying
- Boxing Fail
- Arrest Fail
- Resetting to menu
*/
string_mainmenu = ascii_string_equals(0x0034a558, "\\bounty\\fmv\\fh_loop.pss")
health_player = float(0x00371ca8)
shield_player = float(0x00371cac)
function deathless_challenge_resets(){ //Util function for resets for challenges.
    
    return never(fugitive_state_check(fugitive_state_capture, fugitive_state_lost)) && //Reset if you lose final capture meter
           never(fugitive_state_check(fugitive_state_box, fugitive_state_over)) && //Reset if you lose in initial boxing round
           never(health_player < prev(health_player) && health_player <= 0.0) && //Reset if you die
           never(!prev(string_mainmenu) && string_mainmenu) //Reset if you leave the mission and goto menu.
}


function init_challenge(zone_string){
    return once(zone_string && prev(fugitive_capture_index) == -1 && fugitive_capture_index != -1 )        
}
function deathless_terrorist_tally(array, type){
    
    if(type == "trigger") return trigger_when(tally_of(array, 2, b => once(prev(b) == 1 && b == 3)))
    return measured(tally_of(array, 2, b => once(prev(b) == 1 && b == 3)))
}
function deathless_challenge(region_lock, initstring, captureflags){
    return //unless(region_bank > region_lock) &&
        unless(!get_cheats_state(bool_false)) &&
        init_challenge(ascii_string_equals(0x0034a558, initstring)) &&
        deathless_terrorist_tally(captureflags, "trigger") &&
        (always_false() || deathless_challenge_resets() || deathless_terrorist_tally(captureflags, "measured" ))
        
}
achievement(
    "Trial By Fire: Richardson & Webber",
    "Starting from Miami Streets, capture both Jamal Richardson and Casey Webber without using a continue",
    points=25,
    id=568594,
    trigger=
        deathless_challenge(region_innerstreets, "\\bounty\\efs\\loadscrn\\ls_0203.efs", [objectives_captures[1], objectives_captures[2] ])
)//Specify lower lim as method checks upper only.
achievement(
    "Trial By Fire: Marcus & Aker",
    "Starting from Thunder Rock, Utah, capture both Charles Marcus and Lucas Aker without using a continue",
    points=25,
    id=568595,
    trigger=
      // unless(region_bank < region_thunderrock) &&
       deathless_challenge(region_militiacompound, "\\bounty\\efs\\loadscrn\\ls_0302.efs", [objectives_captures[3], objectives_captures[4] ])
)
achievement(
    "Trial By Fire: Rojas & Perez",
    "Starting from Private Beach, capture both Armando Rojas and Eduardo Perez without using a continue",
    points=25,
    id=568596,
    trigger=
       // unless(region_bank < region_privatebeach) &&
        deathless_challenge(region_jungleclearing, "\\bounty\\efs\\loadscrn\\ls_0101.efs", [objectives_captures[5], objectives_captures[6] ])
)
achievement(
    "Trial By Fire: Binasi, Aziz & Drobek",
    "Starting from Paris Streets, capture Ali Binasi, Amand Aziz, and Hostinec Drobek without using a continue",
    points=25,
    id=568597,
    trigger=
      //  unless(region_bank < region_paristreets) &&
        deathless_challenge(region_catacombs, "\\bounty\\efs\\loadscrn\\ls_0401.efs", [objectives_captures[7], objectives_captures[8], objectives_captures[9]] )
)
achievement(
    "Trial By Fire: Al-NUR & Bin Laden",
    "Starting from Terrorist Training Camp, capture both Dr. Al-NUR and Osama Bin Laden without using a continue",
    points=50,
    id=568598,
    trigger=
      //  unless(region_bank < region_innercatacombs) &&
        deathless_challenge(region_trainingcamp, "\\bounty\\efs\\loadscrn\\ls_0502.efs", [ objectives_captures[10], objectives_captures[11]] )
)

//RP Calls
weapon_index = word(0x00371b9a) //reads id
curr_weapon_ammo = ptr(word(0x00371b9a) * 2, [0x00371d28], word)
curr_weapon_ammo_max = ptr(word(dword(0x00371ba8) + 0x24) * 2, [0x00371d44], word  )
wpn_lookup = {
    0x00:"TAC Shotgun",
    0x01:"CAR4 Assault Rifle",
    0x02:"PARM Sniper Rifle",
    0x03:"Grenade Launcher",
    0x05:"Fletchette Dartgun",
    0x06:"Bare Hands!",
    0x08:"Enforcer",
    0x0a:"Double Barrel Shotgun",
    0x0b:"Dragon",
    0x0c:"AKS-74U",
    0x0d:"RPG-7"
}
fugitive_bank_reads = {
    0:"down Jamal Richardson",
    1:"down Casey Webber",
    2:"down Charles Marcus",
    3:"down Lucas Aker",
    4:"down Armando Rojas",
    5:"down Eduardo Perez",
    6:"down Ali Binasi",
    7:"down Amand Aziz",
    8:"down Hostinec Drobek",
    9:"down Dr. Al-NUR",
    10:"down Osama Bin Laden",
    11:"for the Al-Qaeda organization"
}
fugitive_diff = {
    easy:"Easy",
    hard:"Hard"
}
function isPaused() => dword(0x002833d4) == 0
rich_presence_conditional_display(get_cheats_state(bool_true), "Has enabled the cheats menu and blocked cheevos. L0L0L0L")
rich_presence_conditional_display(string_mainmenu, "In Main Menu")
rich_presence_conditional_display(isPaused(), "Paused the Game")
rich_presence_conditional_display(fugitive_capture_index != -1, "Hunting {0} on {1} | HP: {2}%  Shield: {3}% | Wpn: {4} | Ammo: {5}/{6}",
    rich_presence_lookup("Fugitive", region_bank, fugitive_bank_reads),
    rich_presence_lookup("Diff", difficulty, fugitive_diff),
    rich_presence_macro("Number", (health_player / 500.0) * 100),
    rich_presence_macro("Number", (shield_player / 750.0) * 100),
    rich_presence_lookup("Wpn", weapon_index, wpn_lookup, "NAN"),
    rich_presence_macro("Number", curr_weapon_ammo),
    rich_presence_macro("Number", curr_weapon_ammo_max)
)

rich_presence_display("Loading...")


init_strings = {
    0:"\\bounty\\efs\\loadscrn\\ls_0203.efs",
    1:"\\bounty\\efs\\loadscrn\\ls_0302.efs",
    2:"\\bounty\\efs\\loadscrn\\ls_0101.efs",
    3:"\\bounty\\efs\\loadscrn\\ls_0401.efs",
    4:"\\bounty\\efs\\loadscrn\\ls_0403.efs",
    5:"\\bounty\\efs\\loadscrn\\ls_0501x.efs"
}
mission_strings = {
    0:"Mission 1 - Richardson & Webber",
    1:"Mission 2 - Marcus & Aker",
    2:"Mission 3 - Rojas & Perez",
    3:"Mission 4 - Binasi & Aziz",
    4:"Mission 5 - Drobek & Al-NUR",
    5:"Mission 6 - Bin Laden"
}

lb_mission_start = [
    region_miamistreets,
    region_thunderrock,
    region_privatebeach,
    region_paristreets,
    region_innercatacombs,
    region_mountaincaves    
]


lbs_captures = {
    0:word(0x002984a0), //Capture Casey Webber
    1:word(0x00298860), //Capture Lucas Aker
    2:word(0x00298090), //Capture Eduardo Perez
    3:word(0x00298bd0), //Capture Amand Aziz
    4:word(0x00299260),//Capture Doctor Al-Nurr
    5:word(0x002994e0) //Capture Osama Bin Laden
}

mission_score = dword(0x00373e2c)

for i in range(0, 5){
    leaderboard(
        mission_strings[i] + " (Easy)",
        "From mission start, highest score",
       get_difficulty(easy) && get_cheats_state(bool_false) && ascii_string_equals(0x0034a558, init_strings[i]) && prev(fugitive_capture_index) == -1 && fugitive_capture_index != -1,
        prev(string_mainmenu) && string_mainmenu,
        prev(lbs_captures[i]) == 1 && lbs_captures[i] == 3,
        mission_score,
        "Score",
        false
        
    )
    leaderboard(
        mission_strings[i] + " (Hard)",
        "From mission start, highest score",
       get_difficulty(hard) && get_cheats_state(bool_false) && ascii_string_equals(0x0034a558, init_strings[i]) && prev(fugitive_capture_index) == -1 && fugitive_capture_index != -1,
        prev(string_mainmenu) && string_mainmenu,
        prev(lbs_captures[i]) == 1 && lbs_captures[i] == 3,
        mission_score,
        "Score",
        false
        
    )
    
}
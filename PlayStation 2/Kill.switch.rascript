// Kill.switch
// #ID = 21017

global_state = dword(dword(0x003cda10) + 0x0)

function get_state(param){
    return global_state == param
}

difficulty = dword(0x003c0e00)
normal = 0
hard = 1

function get_diff(param){
    return difficulty == param
}
achievement(
    "Ballistic Beginnings",
    "Clear 'Training Simulator' on Normal difficulty or higher",
    points=5,
    type="progression",
    trigger=
        prev(get_state(7)) &&
        get_state(8)
)
level_names = [
    "Middle East - Opening Move",
    "Middle East - Slight Change of Plan",
    "Middle East - What's In The Box?",
    "Caspian Sea - Think Like A Gun",
    "Caspian Sea - They Can Bill Me",
    "Caspain Sea - Minimum Safe Distance",
    "North Korea - Don't Hate The Player",
    "North Korea - Alarmed",
    "North Korea - Submission",
    "North Korea - Launch Party",
    "Temple Ruins - Furious Angel",
    "Temple Ruins - The Rabbit Hole",
    "Temple Ruins - Clever Girl",
    "Temple Ruins - All The Things She Said",
    "Archer Base - False Front",
    "Archer Base - The Real Thing",
    "Archer Base - Checkmate",
    "Archer Base - Versus"
]
cheevo_names = [
    "Storming the East",
    "First Assault",
    "Change of Destination",
    "New Intel!",
    "Invading Pandora's Home",
    "Assassinate the Man in Charge!",
    "See the Gun, Breathe the Gun, Be. The. Gun.",
    "New Places for Cover!",
    "Credit and Bullet Debt",
    "Damaging Expenses",
    "Six Feet Apart Prevents Disease",
    "Send 'Em to Davy Jones' Locker!",
    "Stop the Regime",
    "Decimate the Enemy",
    "Without a Sound",
    "Silencers Would Be Helpful!",
    "Creating a Dictatorship",
    "Forced Resignation",
    "Rocket Man!",
    "Burning Out of Fuse!",
    "Signs of the Past",
    "Angry Waves of Enemies",
    "Too Tiny to Crawl Into!",
    "An Explosive Crawl",
    "Outsmart the Enemy",
    "Clever Artwork",
    "Bad Jokes",
    "That's What She Said!",
    "False Swipe!",
    "A Fake Army!",
    "Guns Ablazing!",
    "Kill. Them. ALL!",
    "Finish this Chess Match!",
    "Capture the King!",
    "The Final Fight",
    "Destroy Archer"
]


//0x25=End Game
level_array = [
    0x9,
    0xa,
    0xb,
    0xe,
    0xf,
    0x11,
    0x13,
    0x15,
    0x16,
    0x17,
    0x1a,
    0x1b,
    0x1d,
    0x1e,
    0x21,
    0x22,
    0x23,
    0x24   
]
j = 0
for i in range(0, 17){
    
    my_type = ""
    my_points = 0
    if(i == 17) {
        my_type = "win_condition"
        my_points = 10
    }
    else {
        my_type = "progression"
        my_points = 5
    }
    achievement(
        cheevo_names[j],
        "Clear \'" + level_names[i] + "\' on Normal difficulty or higher",
        points=my_points,
        type=my_type,
        trigger=
            prev(get_state(level_array[i])) && get_state(level_array[i] + 1) 
    )
    if(i == 17) {    
        my_type = ""
        my_points = 25
    }
    else {
        my_type = ""
        my_points = 10        
    }
    achievement(
        cheevo_names[j+ 1] ,
        "Clear \'" + level_names[i] + "\' on Hard difficulty",
        points=my_points,
        type=my_type,
        trigger=
            prev(get_state(level_array[i])) && get_state(level_array[i] + 1) &&
            get_diff(hard)
    )
   j = j + 2
    
}
combat_pointer = dword(0x3b18b0)
combat_hp = float(dword(0x3b18b0) + 0x132c)
combat_death = dword(combat_pointer + 0x198)
function level_deathless(set, end){ //this method assumes that the start and ends are only two ids for state.
/* set[0] == prev level id and then set[1] is starting id. This checks for while being in the game and loading
   into 1st level of new stage.
   prev state 5 checks menu into loading level from stage select which is allowed.
*/
//never(combat_pointer != 0 && global_state != set[1] && combat_hp < prev(combat_hp) && combat_hp <= 0.0) &&
    return once(prev(global_state) == set[0] && global_state == set[1] || prev(global_state) == 5 && global_state == set[1]) &&
           trigger_when(prev(global_state) == end[0] && global_state == end[1]) &&
           never(combat_pointer != 0 && prev(combat_death) != 0xb11 && combat_death == 0xb11) &&
           never(prev(global_state) != 5 && global_state == 5)    
}
level_data = {
    0:{"Title":"General's Army Is No Match", "Name":"Middle East", "Points":10, "Start":0x8, "End":0xb},
    1:{"Title":"Perfect at Sea", "Name":"Caspian Sea", "Points":10,  "Start":0xd, "End":0x11},
    2:{"Title":"Supreme Overthrow", "Name":"North Korea", "Points":25,  "Start":0x12, "End":0x17},
    3:{"Title":"Ancient Perfection", "Name":"Temple Ruins", "Points":25,  "Start":0x19, "End":0x1e},
    4:{"Title":"Revenge Without Sacrifice", "Name":"Archer Base", "Points":50,  "Start":0x20, "End":0x24}
}
for i in range(0, 4){
    my_start = level_data[i]["Start"]
    my_end = level_data[i]["End"]
    achievement(
        level_data[i]["Title"],
        "Complete the entirety of \"" + level_data[i]["Name"] + "\" on any difficulty without dying (Reset from Main Menu)",
        points=level_data[i]["Points"],
        trigger=
            level_deathless([my_start, my_start + 1], [my_end, my_end + 1]  )
    )
    
    
}

//RP
level_lookups = {
    0x7:"Shooting away on Training Simulator",
    0x9:"Shooting away on Middle East - Opening Move",
    0xa:"Shooting away on Middle East - Slight Change of Plan",
    0xb:"Shooting away on Middle East - What's In The Box?",
    0xe:"Shooting away on Caspian Sea - Think Like A Gun",
    0xf:"Shooting away on Caspian Sea - They Can Bill Me",
    0x11:"Shooting away on Caspain Sea - Minimum Safe Distance",
    0x13:"Shooting away on North Korea - Don't Hate The Player",
    0x15:"Shooting away on North Korea - Alarmed",
    0x16:"Shooting away on North Korea - Submission",
    0x17:"Shooting away on North Korea - Launch Party",
    0x1a:"Shooting away on Temple Ruins - Furious Angel",
    0x1b:"Shooting away on Temple Ruins - The Rabbit Hole",
    0x1d:"Shooting away on Temple Ruins - Clever Girl",
    0x1e:"Shooting away on Temple Ruins - All The Things She Said",
    0x21:"Shooting away on Archer Base - False Front",
    0x22:"Shooting away on Archer Base - The Real Thing",
    0x23:"Shooting away on Archer Base - Checkmate",
    0x24:"Shooting away on Archer Base - Versus"
}
diff_lookup = {
    0:"Normal",
    1:"Hard"
}
rich_presence_conditional_display(get_state(0x28), "Idling on the Demo")
rich_presence_conditional_display(get_state(0x5), "In Title Screen")
rich_presence_display("{0} on {1}",
    rich_presence_lookup("level", global_state, level_lookups, "In Game"),
    rich_presence_lookup("Diff", difficulty, diff_lookup)
)




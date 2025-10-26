// Endless Ocean
// #ID = 34600

RA_MASK = 0x1FFFFFFF
addr = (v) => v // Dummy accessor for ptr for if the pointed-to address is desired
function ptr(base, offsets, accessor=dword_be)
{
    val = base
    val = val & RA_MASK
    
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
            val = dword_be(addr)
            val = val & RA_MASK
        }
    }
    
    return val
}



spot_address = dword_be(0x0049a670)

function get_current_spot(param){
    return prior(spot_address == param) && spot_address == 0xffffffff //By checking the prior value, we can safely check that we have loaded in a spot zone in the Manoa Lai Sea.
}
spot_coral_forest = 1
function get_current_spot_raw() {
    return prior(spot_address)
}
function arg_current_spot_rp() {
    return prior(spot_address != 0xffffffff) && spot_address == 0xffffffff
}

stage_address = dword_be(0x0049bbc0)
stage_sea = 0x10000001
stage_abyss = 0x10000003
stage_ruins_moia_atoll = 0x10000005
stage_great_cave = 0x10000006
stage_ship = 0x10000004
stage_boat = 0x30000000
stage_aquarium = 0x10000002
function get_current_stage(param){
    return stage_address == param
}
function get_current_stage_rp() {
    return stage_address
}

class Event_Informational {
    Tutorial_Orientation_Diving = bit0(0x0049a5aa)
    Tutorial_Orientation_FishInteraction = bit1(0x0049a5aa)
    Tutorial_Orientation_Aquarium = bit5(0x0049a5aa)
}


class Event_Diving {
   Story_Location_CoralForest_Dolphin_Sighting = bit4(0x0049a5a5)
   Story_Location_BlueHoles_PreciousObj = bit5(0x0049a5a5)
   Story_Location_CoralForest_Dolphin_Returned = bit4(0x0049a5a4)
   Story_Location_CoralForest_AubreyDive_Complete = bit1(0x0049a5b5)
   Story_Location_GreatAquaCave_First_Enter = bit7(0x0049a5a4)
   Story_Location_GreatAquaCave_Layout_Explored = bit7(0x0049a5ac)
   Story_Location_Abyss_Explored = bit0(0x0049a5b3)
   Story_Location_Abyss_SpermWhale = bit3(0x0049a5ac)
   Story_Location_Ruins_Explored = bit1(0x0049a5b3)
   Extra_Location_ShipsRest_MaguTapah = bit7(0x0049a5c4)
   Story_Location_GreatDropoff_WhiteMother_Cutscene = bit2(0x0049a5c3)
}

class Event_Boat {
    Story_Catherine_UnderwaterPhotos = bit0(0x0049a5b5)
    Story_Catherine_AirMixture = bit4(0x0049a5b5)
}
//Define Class Calls
Diving = Event_Diving()
Boat = Event_Boat()
Misc = Event_Informational()

function save_protection() => prev(Misc.Tutorial_Orientation_Diving) == 1


//Achievement Calls

achievement(
    "An Eccoey Friend",
    "Complete your first mission exploring the terrain of The Coral Forest!",
    points=5,
    type="progression",
    trigger=
        get_current_spot(spot_coral_forest) &&
        prev(Misc.Tutorial_Orientation_FishInteraction) == 1 &&
        Diving.Story_Location_CoralForest_Dolphin_Sighting > prev(Diving.Story_Location_CoralForest_Dolphin_Sighting)    
)
achievement(
    "A Bottlenosed Discovery!",
    "Succesfully guide the dolphin back to the Coral Forest, and make a future new friend!",
    points=5,
    type="progression",
    trigger=
        get_current_stage(stage_sea) &&
        prev(Diving.Story_Location_BlueHoles_PreciousObj) == 1 &&//Checks stage progression
        Diving.Story_Location_CoralForest_Dolphin_Returned > prev(Diving.Story_Location_CoralForest_Dolphin_Returned)
)
achievement(
    "Artistic Guidance",
    "Complete your first Diving Guide mission by escorting Aubrey through the Coral Forest, and unlock the Underwater Pen!",
    points=5,
    type="progression",
    trigger=
        get_current_stage(stage_boat) &&
        prev(Diving.Story_Location_CoralForest_Dolphin_Returned) == 1 && //Check last conditional
        Diving.Story_Location_CoralForest_AubreyDive_Complete > prev(Diving.Story_Location_CoralForest_AubreyDive_Complete)
)
achievement(
    "A Dive Unlike Others!",
    "Calm Catherine's anxiety and explore the Aquarium for the first time!",
    points=5,
    type="progression",
    trigger =
        get_current_stage(stage_aquarium) &&
        prev(Misc.Tutorial_Orientation_FishInteraction) == 1 &&
        Misc.Tutorial_Orientation_Aquarium > prev(Misc.Tutorial_Orientation_Aquarium)
)
data_first_photo = dword_be(0x004b2584)
achievement(
    "Making Memories",
    "Using Catherine's camera, take your first photo of the Manoa Lai Sea!",
    points=5,
    type="progression",
    trigger=
        prev(Boat.Story_Catherine_UnderwaterPhotos) == 1 &&
        prior(get_current_stage(stage_boat)) &&
        get_current_stage(stage_sea) &&
        prev(Misc.Tutorial_Orientation_Aquarium) == 1 &&
        prev(data_first_photo) == 0 &&
        data_first_photo != 0
)
achievement(
    "Mermaid Treasures",
    "Have Catherine confirm you have fully explored the layout of The Great Aqua Cave! (See comments)",
    points=5,
    type="progression",
    trigger=
    get_current_stage(stage_great_cave) &&
    prev(Diving.Story_Location_GreatAquaCave_First_Enter) == 1 &&
    Diving.Story_Location_GreatAquaCave_Layout_Explored > prev(Diving.Story_Location_GreatAquaCave_Layout_Explored)
)
achievement(
    "Shadows, Steam, and More",
    "Have Catherine confirm you have fully explored the entirety of The Abyss! (See comments)",
    points=10,
    type="progression",
    trigger=
    get_current_stage(stage_abyss) &&
    prev(Diving.Story_Location_Abyss_SpermWhale) == 1 &&
    Diving.Story_Location_Abyss_Explored > prev(Diving.Story_Location_Abyss_Explored)
)
function deity_frag_check() => prev(bit1(0x0049a761)) == 1
achievement(
    "Remenants of a Civilzation",
    "Have Catherine confirm you have fully explored the entirety of the Underwater Ruins of Mo'ia Atoll!",
    points=10,
    type="progression",
    trigger=
        get_current_stage(stage_ruins_moia_atoll) &&
        deity_frag_check() &&
        Diving.Story_Location_Ruins_Explored > prev(Diving.Story_Location_Ruins_Explored)
)

magu_tapa = bit3(0x00f9ec93)
achievement(
    "A Mega Shark!",
    "Unlock and get obtain a first knowledge level of 'Magu Tapah'",
    points=10,
    trigger=
        get_current_stage(stage_ship) &&
        prev(bit0(0x0049a765)) == 1 && //Sharkbone Necklace
        prev(Diving.Extra_Location_ShipsRest_MaguTapah) == 1 &&
        magu_tapa > prev(magu_tapa)
)
jewel_of_life = bit4(0x0049a76b)
orca = bit3(0x00fc66b3)
achievement(
    "Jewel of the Orcas",
    "Obtain the Jewel of Life and befriend an Orca!",
    points=5,
    trigger=
        get_current_stage(stage_ship) &&
        prev(jewel_of_life) == 1 &&
        orca > prev(orca)
)
map_array_start = 0x004b73e4
map_array_size = 467 //True map array list is 468, but this size is inclusive of the start address.

function get_map_elements(start, size){
    return sum_of(range(start, start + size), b => byte(b))
}
patricks_watch = bit6(0x0049a766)
achievement(
    "Memory of a Father",
    "Recover Patrick's Lost Pocket Watch from The Green Garden",
    points=5,
    type="progression",
    trigger=
        get_current_spot(14) && //Green Garden 
        get_current_stage(stage_sea) &&
        prev(Misc.Tutorial_Orientation_FishInteraction) == 1 &&
        patricks_watch > prev(patricks_watch)
)

//White UMA
achievement(
    "The Big White UMA",
    "Finish placing all five whale sensors, and discover The Ancient Mother!",
    points=25,
    type="win_condition",
    trigger=
        get_current_stage(stage_sea) && 
        prev(Misc.Tutorial_Orientation_FishInteraction) == 1 &&
        Diving.Story_Location_GreatDropoff_WhiteMother_Cutscene > prev(Diving.Story_Location_GreatDropoff_WhiteMother_Cutscene)
)
achievement(
    "A True Explorer",
    "Explore 100% of the Manoa Lai Sea Map!",
    points=25,
    trigger=
        save_protection() &&
        prev(get_map_elements(map_array_start, map_array_size)) < 468 &&
        measured(get_map_elements(map_array_start, map_array_size) == 468, format="percent")
)



ascii_name_start = 0x0049a570
function get_ascii_no_name(param){
    return ascii_string_equals(param, "NoName", 6, a => a)
}
//Rich Presence Calls
stages = {
    0x10000002:"Swimming in the Aquarium"    
}
spots_sea = {
    0:"Lagoon",
    1:"Coral Forest",
    2:"Blue Holes",
    3:"Triple Steps",
    4:"Sunshine Beach",
    5:"Mermaid Tunnel",
    6:"Mermaid Tunnel",
    7:"Wild Channel",
    8:"Secret Lake",
    9:"Crater Cove",
    10:"Rock Bluff",
    11:"Cave Arch",
    12:"Deep Valley",
    13:"Passage to the Abyss",
    14:"Green Garden",
    15:"Great Drop-off",
    16:"Comb Reef",
    17:"Mo'ia Atoll",
    18:"The Gem Chest of Loa",
    19:"The Thimble of Mele Patua",
    20:"Dolphin Rock",
    21:"Kai Tua Meeting Place",
    22:"Ancestor Reef",
    23:"Tanganua Bay",
    24:"Spirit House",
    25:"Gallery of Souls",
    26:"Kala Lainga Thimble",
    27:"Malalapa Hollow",
    28:"Entryway Slope",
    29:"Hidden Field",
    30:"Between Heaven and Earth",
    31:"The Chin of Maala Pao",
    32:"The Dancing Stage of Kua Tua",
    33:"Ship's Rest",
    34:"Fighter Wreckage",
    35:"The Wreck of the Navier",
    36:"Inside the Navier",
    37:"Pirate Ship",
    38:""
    
    
}

spots_abyss = { //While in the Abyss
    16:"",
    17:"Whalebone Chasm",
    18:"Secret Cave",
    19:"Crystal Cave",
    20:"Fiend's Cove"
}

spots_ruins = {
    2:"", //Main ID
    3:"Central Hall",
    4:"Inside the Ruins",
    5:"Room of Oracles",
    6:"Face Stone"
    
}

spots_cove = {
    16:"", //Main ID
    17:"Great Column",
    18:"Stalactite Labyrinth",
    19:"Rim Pool",
    20:"White Room"
}

spots_ship = {
    0:"", //Main ID
    1:"Fighter Wreckage",
    2:"The Wreck of the Navier",
    3:"Inside the Navier",
    4:"Pirate Ship"
}






food = ptr(dword_be(0x006a2f70), [0x34c, 0x4c], word_be)

rich_presence_conditional_display(get_current_stage(stage_sea) && get_ascii_no_name(ascii_name_start), "In Menu")


rich_presence_conditional_display(get_current_stage(stage_boat), "On board the Gabianno")

rich_presence_conditional_display(get_current_stage(stage_ship), "Swimming in Ship's Rest | {0} Food: {1}/10",
    rich_presence_lookup("Spots_Ship", get_current_spot_raw(), spots_ship),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_great_cave), "Swimming in The Great Aqua Cove | {0} Food: {1}/10",
    rich_presence_lookup("Spots_Cove", get_current_spot_raw(), spots_cove),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_ruins_moia_atoll), "Swimming in the Underwater Ruins of Mo'ia Atoll | {0} Food: {1}/10",
    rich_presence_lookup("Spots_Ruins", get_current_spot_raw(), spots_ruins),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_sea), "Swimming in The Manoa Lai Sea | {0} Food: {1}/10",
    rich_presence_lookup("Spots_Sea", get_current_spot_raw(), spots_sea),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_abyss), "Swimming in The Abyss | {0} Food: {1}/10",
    rich_presence_lookup("Spots_Abyss", get_current_spot_raw(), spots_abyss),
    rich_presence_value("Number", food)

)



rich_presence_display("{0}",
    rich_presence_lookup("Stage", get_current_stage_rp(), stages)
)
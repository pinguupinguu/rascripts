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
stage_great_cove = 0x10000006
stage_ship = 0x10000004
function get_current_stage(param){
    return stage_address == param
}
function get_current_stage_rp() {
    return stage_address
}

ascii_name_start = 0x0049a570

function get_ascii_no_name(param){
    return ascii_string_equals(param, "NoName", 6, a => a)
}
//Rich Presence Calls
stages = {
    0x10000002:"Swimming in the Aquarium",
    0x30000000:"On board The Gabbiano"    
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

rich_presence_conditional_display(get_current_stage(stage_ship), "Swimming in Ship's Rest | {0} Food: {1}/10",
    rich_presence_lookup("Spots_Ship", get_current_spot_raw(), spots_ship),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_great_cove), "Swimming in The Great Aqua Cove | {0} Food: {1}/10",
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
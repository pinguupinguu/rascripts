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
    "Unlock and obtain a first knowledge level of 'Magu Tapa'",
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
    "Orca Hears A Who",
    "Obtain the Jewel of Life and Befriend an Orca!",
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

function get_collectible_sum(inputs){
    if(length(inputs) == 1){
        return inputs[0] > prev(inputs[0])
    }
    else return prev(sum_of(inputs, b => b)) == length(inputs) - 1 &&
                measured(sum_of(inputs, b => b) == length(inputs))
}



achievement(
    "Drift Champion",
    "Obtain the Dolphin Medal salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit2(0x0049a765)])
)
achievement(
    "A Godly Reflection",
    "Obtain all four fragments of the Whale-God Mirror salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit0(0x0049a763), bit1(0x0049a763), bit2(0x0049a763), bit3(0x0049a763)] )
)
achievement(
    "Jack Sparrow's Left Behind Treasure!",
    "Obtain all four fragments of the Pirate's Compass salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit4(0x0049a763), bit5(0x0049a763), bit6(0x0049a763), bit7(0x0049a763)])
)
achievement(
    "Old Storytelling",
    "Obtain all four fragments of the Storyboard salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit0(0x0049a762), bit1(0x0049a762), bit2(0x0049a762), bit3(0x0049a762)])
)
achievement(
    "Ancient Elements",
    "Obtain all four fragments of the Patterned Pottery salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit4(0x0049a762), bit5(0x0049a762), bit6(0x0049a762), bit7(0x0049a762)])
)
achievement(
    "The Trademark Treasure of the Sea",
    "Obtain the Iron Pearl of Manoa Lai salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit0(0x0049a761)])
)
achievement(
    "Not The American Idol...",
    "Obtain all four fragments of the Deity Idol salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a761), bit2(0x0049a761), bit3(0x0049a761), bit4(0x0049a761)])
)
achievement(
    "Unknown Languages",
    "Obtain all four fragments of the Inscribed Nephrite salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit5(0x0049a761), bit6(0x0049a761), bit7(0x0049a761), bit0(0x0049a760)])
)
achievement(
    "Hundreds of Millions Year-Old Fossils!",
    "Obtain all four fragments of the Anomalocaris Fossil salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a760), bit2(0x0049a760), bit3(0x0049a760), bit4(0x0049a760)])
)
achievement(
    "Crimson Branches",
    "Obtain all four fragments of the Red Coral salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit5(0x0049a760), bit6(0x0049a760), bit7(0x0049a760), bit0(0x0049a767)])
)
achievement(
    "A Golden Figure",
    "Obtain all four fragments of the Gold Artifact salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a767), bit2(0x0049a767), bit3(0x0049a767), bit4(0x0049a767)])
)
achievement(
    "Mid-Century Antique",
    "Obtain all four fragments of the Chinese Porcelain salvage",
    points=5,
    trigger=
        save_protection() &&
        get_collectible_sum([bit5(0x0049a767), bit6(0x0049a767), bit7(0x0049a767), bit0(0x0049a766)])
)
achievement(
    "Addicted to a Memory",
    "Obtain the Shell of Memories salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a766)])
)
achievement(
    "More Fairyland Magic",
    "Obtain the Shell of the Goddess salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit2(0x0049a766)])
)
achievement(
    "Ya Got Smokes, Man?",
    "Obtain the Vintage Lighter salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit3(0x0049a766)])
)
achievement(
    "The Micronesia Spirit",
    "Obtain the Ancestral Carving salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit4(0x0049a766)])
)
achievement(
    "Beep Beep Boop Boop!",
    "Obtain the Tin Toy salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit5(0x0049a766)])
)
achievement(
    "Authentic Sea Glass!",
    "Obtain the Hand-Cut Glass salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit7(0x0049a766)])
)
achievement(
    "Nail Biting Evidence!",
    "Obtain the Shark Tooth Necklace salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit0(0x0049a765)])
)
achievement(
    "Finding Netherland",
    "Obtain the Rare Ancient Coins salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a765)])
)
achievement(
    "Chip's Cousin",
    "Obtain the Porcelain Cup salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit3(0x0049a765)])
)
achievement(
    "An Elegant Delicacy",
    "Obtain the Silver Fork salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit4(0x0049a765)])
)
achievement(
    "Ocean-Scented Perfume",
    "Obtain the Perfume Bottle salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit5(0x0049a765)])
)
achievement(
    "Time Capture",
    "Obtain the Picture Frame salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit6(0x0049a765)])
)
achievement(
    "Queen of the Sea",
    "Obtain the Tiara salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit7(0x0049a765)])
)
achievement(
    "Elegant Writing Device",
    "Obtain the Fountain Pen salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit0(0x0049a764)])
)
achievement(
    "Baroque-Era Instrument",
    "Obtain the German Harmonica salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a764)])
)
achievement(
    "An Epic Mixtape",
    "Obtain the Cassette Tape salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit2(0x0049a764)])
)
achievement(
    "Juice Reward",
    "Obtain the Rare Juice Can salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit3(0x0049a764)])
)
achievement(
    "Reflectant Buoy",
    "Obtain the Glass Buoy salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit4(0x0049a764)])
)
achievement(
    "This Isn't Aerodactyl!",
    "Obtain the Fossilized Shell salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit5(0x0049a764)])
)
achievement(
    "A Mysterious Reptile",
    "Obtain the Lizard in Amber salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit6(0x0049a764)])
)
achievement(
    "Forged In Fire",
    "Obtain the Obsidian Arrowhead salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit7(0x0049a764)])
)
achievement(
    "Trollin' for Whales",
    "Obtain the Whalebone Lure salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit0(0x0049a76b)])
)
achievement(
    "A Lucky Find!",
    "Obtain the Lucky Shell salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a76b)])
)
achievement(
    "Old Time Swag",
    "Obtain the Ancient Bracelet salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit2(0x0049a76b)])
)
achievement(
    "Old Fashioned Stamper!",
    "Obtain the Cylindrical Stamp salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit3(0x0049a76b)])
)
achievement(
    "A Weathered Shell",
    "Obtain the Scaled Shell salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit5(0x0049a76b)])
)
achievement(
    "Looked Near Bedrock For This!",
    "Obtain the Aqua Amethyst salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit6(0x0049a76b)])
)
achievement(
    "Mysterious Faces",
    "Obtain the Stone mask salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit7(0x0049a76b)])
)
achievement(
    "Not Omanyte!",
    "Obtain the Ammonite Fossil salvage",
    points=2,
    trigger=
        save_protection() &&
        get_collectible_sum([bit0(0x0049a76a)])   
)
achievement(
    "A Rough Dream",
    "Obtain the Dream Shell salvage",
    points=3,
    trigger=
        save_protection() &&
        get_collectible_sum([bit1(0x0049a76a)])
)
achievement(
    "A Valuable Find!",
    "Obtain the Gold Bar salvage",
    points=3,
    trigger=
        save_protection() &&
        get_collectible_sum([bit2(0x0049a76a)])
)
achievement(
    "A New Currency",
    "Obtain the Cameo Brooch salvage",
    points=3,
    trigger=
        save_protection() &&
        get_collectible_sum([bit3(0x0049a76a)])
)
achievement(
    "THE RED BARON!",
    "Obtain the Toy Plane salvage",
    points=3,
    trigger=
        save_protection() &&
        get_collectible_sum([bit4(0x0049a76a)])
)

function get_bitcount_with_exclusion(addr, inclusion_array){
    my_array = []
    for i in inclusion_array{
        if i == 0 {
            array_push(my_array, bit0(addr))
        }
        if i == 1 {
            array_push(my_array, bit1(addr))
        }
        if i == 2 {
            array_push(my_array, bit2(addr))
        }
        if i == 3 {
            array_push(my_array, bit3(addr))
        }
        if i == 4 {
            array_push(my_array, bit4(addr))
        }
        if i == 5 {
            array_push(my_array, bit5(addr))
        }
        if i == 6 {
            array_push(my_array, bit6(addr))
        }
        if i == 7 {
            array_push(my_array, bit7(addr))
        }
    }
    
    return my_array
    
}
function generate_sum_array(inputs, count){
    
        return prev(sum_of(inputs, b => b)) == count - 1 &&
               measured(sum_of(inputs, b => b) == count)                
        
}
function bitcount_measured(addr) {
    return prev(bitcount(addr)) == 7 && measured(bitcount(addr) == 8)
}
hairstyles_array = []

array_push(hairstyles_array, bitcount(0x0049a73b))
array_push(hairstyles_array, bitcount(0x0049a73a))
array_push(hairstyles_array, bitcount(0x0049a739))
temp_array = get_bitcount_with_exclusion(0x0049a738, [0,1,2,3,4,5])
for i in temp_array {array_push(hairstyles_array, i)}
achievement(
    "Divin' In Style",
    "Obtain all 30 hairstyles on one save profile!",
    points=10,
    trigger=
        save_protection() &&
        generate_sum_array(hairstyles_array, 30 )
)
achievement(
    "Protection in Multiple Colors!",
    "Obtain all 8 Male/Female wesuits on one save profile!",
    points=5,
    trigger=
        save_protection() &&
        bitcount_measured(0x0049a742)
)
achievement(
    "Diving? More Like Beach Swimming Ready!",
    "Obtain all 8 bottoms on one save profile!",
    points=5,
    trigger=
        save_protection() && 
        bitcount_measured(0x0049a743)
)
achievement(
    "Binary Coded Decimal?",
    "Obtain all 8 BCD suits on one profile!",
    points=5,
    trigger=
        save_protection() &&
        bitcount_measured(0x0049a74f)
)
gloves_array = []
temp_array = get_bitcount_with_exclusion(0x0049a75f, [1,2,3,4,5,6,7])
for glove in temp_array{array_push(gloves_array, glove)}
array_push(gloves_array, bit0(0x0049a75e))
achievement(
    "Wear To Prevent Gill Cuts, Wrinkly Hands, And More!",
    "Obtain all 8 pairs of gloves on one profile!",
    points=5,
    trigger=
        save_protection() &&
        generate_sum_array(gloves_array, 8)
)
achievement(
    "Ocean Gliders",
    "Obtain all 8 pairs of fins on one profile!",
    points=5,
    trigger=
        save_protection() &&
        bitcount_measured(0x0049a757)
)
achievement(
    "You Tank My Breath Away!",
    "Obtain all 8 tanks on one profile!",
    points=5,
    trigger=
        save_protection() &&
        bitcount_measured(0x0049a753)
)
function get_encyclopedia_logic(inputs, count){
    
    return  tally_of(inputs, count - 3, b => once(prev(bit3(b)) == 1 && prev(bit4(b)) == 1)) &&
            measured(tally_of(inputs, count, b => once(bit3(b) == 1 && bit4(b) == 1)))
           
    
}

function get_encyclopedia_flag_alts(inputs) {
    my_alts = always_false()
    for animal in inputs{
        my_alts = my_alts || bit4(animal) == 1 && bit3(animal) > prev(bit3(animal))   
    }
    return my_alts
}

count_coral_dwellers = 40
encyclopedia_category_coraldwellers = [
 0xF53153,
 0xF53873,
 0xF53F93,
 0xF546B3,
 0xF554F3,
 0xF55C13,
 0xF57173,
 0xF57893,
 0xF57FB3,
 0xF58DF3,
 0xF59513,
 0xF59C33,
 0xF5A353,
 0xF5AA73,
 0xF5B193,
 0xF5BFD3,
 0xF5C6F3,
 0xF5DC53,
 0xF5F1B3,
 0xF5F8D3,
 0xF5FFF3,
 0xF62393,
 0xF62AB3,
 0xF631D3,
 0xF65573,
 0xF68033,
 0xF6A3D3,
 0xF6AAF3,
 0xF6B213,
 0xF6EB13,
 0xF6F233,
 0xF70073,
 0xF70793,
 0xF988D3,
 0xF98FF3,
 0xF9D013,
 0xFA1033,
 0xFB5F13,
 0xFC1133,
 0xFC1853
]
achievement(
    "Knowledge of the Plants",
    "Obtain a Knowledge Level of 3 of all animals under the 'Coral Dwellers' encyclopedia category.",
    points=25,
    trigger=
        get_encyclopedia_logic(encyclopedia_category_coraldwellers, count_coral_dwellers) &&
        get_encyclopedia_flag_alts(encyclopedia_category_coraldwellers) &&
        never(!save_protection())
)
count_smallfish_creatures = 78
encyclopedia_category_smallfishcreatures = [
 0xF54DD3,
 0xF586D3,
 0xF5CE13,
 0xF5D533,
 0xF5EA93,
 0xF60E33,
 0xF671F3,
 0xF67913,
 0xF72413,
 0xF72B33,
 0xF73973,
 0xF74093,
 0xF747B3,
 0xF76433,
 0xF76B53,
 0xF77273,
 0xF780B3,
 0xF78EF3,
 0xF79D33,
 0xF7A453,
 0xF7B293,
 0xF7B9B3,
 0xF8C153,
 0xF8DDD3,
 0xF8EC13,
 0xF8F333,
 0xF8FA53,
 0xF90173,
 0xF916D3,
 0xF91DF3,
 0xF92513,
 0xF95E13,
 0xFA2593,
 0xFA2CB3,
 0xFA33D3,
 0xFA3AF3,
 0xFA4213,
 0xFA4933,
 0xFA5053,
 0xFA5773,
 0xFA5E93,
 0xFA65B3,
 0xFA6CD3,
 0xFA73F3,
 0xFA7B13,
 0xFA8233,
 0xFA8953,
 0xFA9073,
 0xFA9793,
 0xFA9EB3,
 0xFAA5D3,
 0xFAB413,
 0xFABB33,
 0xFAC253,
 0xFAC973,
 0xFAD093,
 0xFAD7B3,
 0xFADED3,
 0xFAE5F3,
 0xFAED13,
 0xFAF433,
 0xFAFB53,
 0xFB0273,
 0xFB0993,
 0xFB17D3,
 0xFB1EF3,
 0xFB2613,
 0xFB2D33,
 0xFB4293,
 0xFB6D53,
 0xFB7473,
 0xFB7B93,
 0xFBA653,
 0xFBAD73,
 0xFBB493,
 0xFBBBB3,
 0xFBC2D3,
 0xFBC9F3
]
achievement(
    "No Amount of Knowledge Too Small!",
    "Obtain a Knowledge Level of 3 of all animals under the 'Small Creatures & Fish' encyclopedia category.",
    points=50,
    trigger=
        get_encyclopedia_logic(encyclopedia_category_smallfishcreatures, count_smallfish_creatures) &&
        get_encyclopedia_flag_alts(encyclopedia_category_smallfishcreatures) &&
        never(!save_protection())
)
count_largefish_creatures = 29
encyclopedia_category_smallfishcreatures = [
 0xF56A53,
 0xF5E373,
 0xF64733,
 0xF64E53,
 0xF663B3,
 0xF68753,
 0xF69593,
 0xF69CB3,
 0xF6B933,
 0xF6C773,
 0xF6D5B3,
 0xF6DCD3,
 0xF70EB3,
 0xF96C53,
 0xF97A93,
 0xF981B3,
 0xF9A553,
 0xF9BAB3,
 0xF9C8F3,
 0xFA1753,
 0xFA1E73,
 0xFBED93,
 0xFC02F3,
 0xFC0A13,
 0xFC2693,
 0xFC2DB3,
 0xFC34D3,
 0xFC3BF3,
 0xFC4313
]
achievement(
    "Big Brain Creature Knowledge",
    "Obtain a Knowledge Level of 3 of all animals under the 'Large Creatures & Fish' encyclopedia cateogyr.",
    points=10,
    trigger=
        get_encyclopedia_logic(encyclopedia_category_smallfishcreatures, count_largefish_creatures) &&
        get_encyclopedia_flag_alts(encyclopedia_category_smallfishcreatures) &&
        never(!save_protection())
)
count_deepsea_dwellers = 30
encyclopedia_category_deepseadwellers = [
 0xF5B8B3,
 0xF60713,
 0xF61553,
 0xF61C73,
 0xF638F3,
 0xF64013,
 0xF65C93,
 0xF66AD3,
 0xF6E3F3,
 0xF6F953,
 0xF71CF3,
 0xF77993,
 0xF96533,
 0xF97373,
 0xF99713,
 0xF99E33,
 0xF9C1D3,
 0xF9D733,
 0xF9DE53,
 0xF9E573,
 0xF9F3B3,
 0xF9FAD3,
 0xFA01F3,
 0xFA0913,
 0xFBD113,
 0xFBD833,
 0xFBDF53,
 0xFBE673,
 0xFC4A33,
 0xFC5153
]
achievement(
    "Endless Depths of Knowledge",
    "Obtain a Knowledge Level of 3 of all animals under the 'Deep-Sea Dwellers' encyclopedia category",
    points=10,
    trigger=
        get_encyclopedia_logic(encyclopedia_category_deepseadwellers, count_deepsea_dwellers) &&
        get_encyclopedia_flag_alts(encyclopedia_category_deepseadwellers) &&
        never(!save_protection())
)

count_dolphinswhales = 12
encyclopedia_category_dolwhale = [
 0xF755F3,
 0xF79613,
 0xF9B393,
 0xFC5873,
 0xFC5F93,
 0xFC66B3,
 0xFC6DD3,
 0xFC74F3,
 0xFC7C13,
 0xFC8333,
 0xFC8A53,
 0xFC9173
]
achievement(
    "Cheerful Animal Exploration!",
    "Obtain a Knowledge Level of 3 of all animals under the 'Dolphins & Whales' encyclopedia category.",
    points=5,
    trigger=
        get_encyclopedia_logic(encyclopedia_category_dolwhale, count_dolphinswhales) &&
        get_encyclopedia_flag_alts(encyclopedia_category_dolwhale) &&
        never(!save_protection())
)
count_coastaldwellers = 23
encyclopedia_category_coastdweller = [
 0xF68E73,
 0xF6C053,
 0xF715D3,
 0xF7CF13,
 0xF7D633,
 0xF7E473,
 0xF7EB93,
 0xF7F2B3,
 0xF7F9D3,
 0xF800F3,
 0xF80813,
 0xF80F33,
 0xF81653,
 0xF81D73,
 0xF82493,
 0xF832D3,
 0xF839F3,
 0xF84113,
 0xF84833,
 0xF85673,
 0xF864B3,
 0xF86BD3,
 0xF89DB3
]
achievement(
    "Non-Ocean Exploration!",
    "Obtain a Knowledge Level of 3 of all animals under the 'Coastal Dwellers' encyclopedia category.",
    points=10,
    trigger=
        get_encyclopedia_logic(encyclopedia_category_coastdweller, count_coastaldwellers) &&
        get_encyclopedia_flag_alts(encyclopedia_category_coastdweller) &&
        never(!save_protection())
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




depth = ptr(dword_be(0x0049cdb8), [0x74], float_be) *-0.328
food = ptr(dword_be(0x006a2f70), [0x34c, 0x4c], word_be)

rich_presence_conditional_display(get_current_stage(stage_sea) && get_ascii_no_name(ascii_name_start), "In Menu")


rich_presence_conditional_display(get_current_stage(stage_boat), "On board the Gabianno")

rich_presence_conditional_display(get_current_stage(stage_ship), "Swimming in Ship's Rest | {0} | Depth: ~{1} ft. | Food: {2}/10 ",
    rich_presence_lookup("Spots_Ship", get_current_spot_raw(), spots_ship),
    rich_presence_value("Number", depth),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_great_cave), "Swimming in The Great Aqua Cove | {0} | Depth: ~{1} ft. | Food: {2}/10",
    rich_presence_lookup("Spots_Cove", get_current_spot_raw(), spots_cove),
    rich_presence_value("Number", depth),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_ruins_moia_atoll), "Swimming in the Underwater Ruins of Mo'ia Atoll | {0} | Depth: ~{1} ft. | Food: {2}/10",
    rich_presence_lookup("Spots_Ruins", get_current_spot_raw(), spots_ruins),
    rich_presence_value("Number", depth),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_sea), "Swimming in The Manoa Lai Sea | {0} | Depth: ~{1} ft. | Food: {2}/10",
    rich_presence_lookup("Spots_Sea", get_current_spot_raw(), spots_sea),
    rich_presence_value("Number", depth),
    rich_presence_value("Number", food)
)

rich_presence_conditional_display(get_current_stage(stage_abyss), "Swimming in The Abyss | {0} | Depth: ~{1} ft. | Food: {2}/10",
    rich_presence_lookup("Spots_Abyss", get_current_spot_raw(), spots_abyss),
    rich_presence_value("Number", depth),
    rich_presence_value("Number", food)

)



rich_presence_display("{0}",
    rich_presence_lookup("Stage", get_current_stage_rp(), stages)
)
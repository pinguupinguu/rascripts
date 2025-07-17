// Guitar Hero: Aerosmith
// #ID = 20616

//Node Logic (Thanks Miagui! Used with extreme permission.)
function item_node_type_check(addr) => dword(addr + 0x4)
data_type_unlocked = 0xfef4e1e8
data_type_purchaseable = 0x61ee5765
data_type_cash = 0xf9461a46
data_type_career_score = 0xcd66c8ae
data_type_career_star = 0xfee23fd3
function item_node_next_node(addr) => dword(addr + 0xc)
function item_node_2nd_node(addr) => dword(item_node_next_node(addr) + 0xc)
function item_node_3rd_node(addr) => dword(item_node_2nd_node(addr) + 0xC)
function item_node_4th_node(addr) => dword(item_node_3rd_node(addr) + 0xC)
function item_node_unlock_flag(addr) => byte(addr + 0x8)
function item_node_career_star_flag(addr) => dword(addr + 0x8)
function item_has_been_unlocked_4nodes(node) {
    node_2nd = item_node_2nd_node(node)
    node_3rd = item_node_3rd_node(node)
    node_4th = item_node_4th_node(node)
    return (
            (
                (item_node_type_check(node) == data_type_unlocked &&
                item_node_unlock_flag(node) == 1) ||
                (item_node_type_check(node_2nd) == data_type_unlocked &&
                item_node_unlock_flag(node_2nd) == 1) ||
                (item_node_type_check(node_3rd) == data_type_unlocked &&
                item_node_unlock_flag(node_3rd) == 1) ||
                (item_node_type_check(node_4th) == data_type_unlocked &&
                item_node_unlock_flag(node_4th) == 1)
            ) &&
            (
                item_node_unlock_flag(node) > prev(item_node_unlock_flag(node)) ||
                item_node_unlock_flag(node_2nd) > prev(item_node_unlock_flag(node_2nd)) ||
                item_node_unlock_flag(node_3rd) > prev(item_node_unlock_flag(node_3rd)) ||
                item_node_unlock_flag(node_4th) > prev(item_node_unlock_flag(node_4th)) 
            )
    )
}
difficulty = dword(0x00376af4)
easy = 0
medium = 1
hard = 2
expert = 3
static_track = dword(0x37b088)
track_state_offset = 0xdc
song_id = dword(0x003fb3a0)
function track_state(offset) => dword(static_track + offset) 

song_database = {
    "Dream Police":0x33a34f1d,
"All the Young Dudes (cover)":0x5d5b4613,
"Make It":0x1f690027,
"Uncle Salty":0xcc50d114,
"Draw the Line":0x364619ba,
"I Hate Myself For Loving You":0xa04034a1,
"All Day and All of the Night (cover)":0x3cb1ab4f,
"No Surprize":0x1d0e54d6,
"Movin' Out":0x78c666ab,
"Sweet Emotion":0x9475da58,
"Complete Control":0xe440d771,
"Personality Crisis (cover)":0x5afb1da6,
"Livin' on the Edge":0x91618154,
"Rag Doll":0x8b5d73b0,
"Love in an Elevator":0xf18717a0,
"She Sells Sanctuary":0x781fe608,
"King of Rock":0xb71fc4cf,
"Nobody's Fault":0x29b81328,
"Bright Light Fright":0x9fbd7d7c,
"Walk This Way (Run DMC)":0x55a1fc1d,
"Hard to Handle (cover)":0xbdbbcd8f,
"Always On The Run":0xe1597714,
"Back In The Saddle":0x8c295d0e,
"Beyond Beautiful":0xfb394005,
"Dream On":0x81a8efa2,
"Cat Scratch Fever":0xa9229259,
"Sex Type Thing":0x248c18bc,
"Mama Kin":0xf3d54ab1,
"Toys in the Attic":0x287d05a1,
"Train Kept a Rollin'":0x2ddd4e48,
"Walk This Way":0x5f3b269a,
"Rats in the Cellar":0x00a7df47,
"Kings and Queens":0xb16f766a,
"Combination":0x21f6e550,
"Let the Music Do the Talking":0x77937bb0,
"Shakin' My Cage":0xfe9dee81,
"Pink":0xd39c8e29,
"Talk Talkin'":0xd7b44e85,
"Mercy":0x64fbf1ed,
"Pandora's Box":0x855bd7b8,
"Joe Perry Guitar Battle (Solo)":0x8ae074aa
}
function career_song_clear(my_name, my_desc, my_points, my_type, node, my_difficulty, song_checksum) {
    node_2nd = item_node_2nd_node(node)
    node_3rd = item_node_3rd_node(node)
    node_4th = item_node_4th_node(node)
    if(my_type == "win_condition"){
        checktype = "win_condition"
    }
    else checktype = ""
    achievement(
        my_name,
        my_desc,
        my_points,
        type = checktype,
        trigger=
            difficulty == my_difficulty &&
            //track_state(track_state_offset) == 1 &&
            song_id == song_checksum &&
            (
                prev(item_node_career_star_flag(node)) == 0 &&  item_node_career_star_flag(node) != 0 ||
                prev(item_node_career_star_flag(node_2nd)) == 0 &&  item_node_career_star_flag(node_2nd) != 0 ||
                prev(item_node_career_star_flag(node_3rd)) == 0 && item_node_career_star_flag(node_3rd) != 0 ||
                prev(item_node_career_star_flag(node_4th))  == 0 &&  item_node_career_star_flag(node_4th) != 0
            )
    )
    
}






draw_the_line = dword(dword(0x0055b10c) + 0x4) //Encore - Getting the Band Together
sweet_emotion = dword(dword(0x0055aa94) + 0x4) //Encore - First Taste of Success
love_in_an_elevator = dword(dword(0x0055a3bc) + 0x4) //Encore - The Triumphant Return
run_dmc_walk_this_way = dword(dword(0x00558730) + 0x4) //Encore - International Superstars
dream_on = dword(dword(0x005819c0) + 0x4) //Encore - The Great American Band
train_kept_a_rollin = dword(dword(0x00552c64) + 0x4) //Encore - Rock N' Roll Legends
//Easy Career
career_song_clear("Band Formation", "Clear all Career songs in the 'Getting the Band Together' setlist on Easy.", 5, "", draw_the_line, easy, song_database["Draw the Line"])
career_song_clear("Tuning Up", "Clear all Career songs in the 'First Taste of Success' setlist on Easy.", 5, "", sweet_emotion, easy, song_database["Sweet Emotion"])
career_song_clear("Perfect Pitch", "Clear all Career songs in the 'The Triumphant Return' setlist on Easy.", 5, "", love_in_an_elevator, easy, song_database["Love in an Elevator"])
career_song_clear("Fingerpick Chords", "Clear all Career songs in the 'International Superstars' setlist on Easy.", 5, "", run_dmc_walk_this_way, easy, song_database["Walk This Way (Run DMC)"])
career_song_clear("Patriotic Performances", "Clear all Career songs in the 'The Great American Band' setlist on Easy.", 5, "", dream_on, easy, song_database["Dream On"])
career_song_clear("An Easy Legend", "Clear all Career songs in the 'Rock 'n Roll Legends' setlist on Easy.", 5, "", train_kept_a_rollin, easy, song_database["Train Kept a Rollin'"])
//Medium Career
career_song_clear("Restringing Guitars", "Clear all Career songs in the 'Getting the Band Together' setlist on Medium.", 5, "", draw_the_line, medium, song_database["Draw the Line"])
career_song_clear("Closer On Pitch", "Clear all Career songs in the 'First Taste of Success' setlist on Medium.", 5, "", sweet_emotion, medium, song_database["Sweet Emotion"])
career_song_clear("Strumming Chords", "Clear all Career songs in the 'The Triumphant Return' setlist on Medium.", 5, "", love_in_an_elevator, medium, song_database["Love in an Elevator"])
career_song_clear("Global Rock Stars", "Clear all Career songs in the 'International Superstars' setlist on Medium.", 5, "", run_dmc_walk_this_way, medium, song_database["Walk This Way (Run DMC)"])
career_song_clear("Yankee Doodle Who?", "Clear all Career songs in the 'The Great American Band' setlist on Medium.", 5, "", dream_on, medium, song_database["Dream On"])
career_song_clear("An Improved Legend", "Clear all Career songs in the 'Rock 'n Roll Legends' setlist on Medium.", 10, "win_condition", train_kept_a_rollin, medium, song_database["Train Kept a Rollin'"])

//Hard Career
career_song_clear("Instrument Repair", "Clear all Career songs in the 'Getting the Band Together' setlist on Hard.", 5, "", draw_the_line, hard, song_database["Draw the Line"])
career_song_clear("Advanced Aural Skills!", "Clear all Career songs in the 'First Taste of Success' setlist on Hard.", 5, "", sweet_emotion, hard, song_database["Sweet Emotion"])
career_song_clear("Writing New Chords", "Clear all Career songs in the 'The Triumphant Return' setlist on Hard.", 5, "", love_in_an_elevator, hard, song_database["Love in an Elevator"])
career_song_clear("Touring International", "Clear all Career songs in the 'International Superstars' setlist on Hard.", 5, "", run_dmc_walk_this_way, hard, song_database["Walk This Way (Run DMC)"])
career_song_clear("The New National Anthem Band", "Clear all Career songs in the 'The Great American Band' setlist on Hard.", 5, "", dream_on, hard, song_database["Dream On"])
career_song_clear("Advanced Legend", "Clear all Career songs in the 'Rock 'n Roll Legends' setlist on Hard.", 10, "win_condition", train_kept_a_rollin, hard, song_database["Train Kept a Rollin'"])


//Expert Career
career_song_clear("Instrumental Upgrades", "Clear all Career songs in the 'Getting the Band Together' setlist on Expert.", 5, "", draw_the_line, expert, song_database["Draw the Line"])
career_song_clear("Pitch Perfect", "Clear all Career songs in the 'First Taste of Success' setlist on Expert.", 10, "", sweet_emotion, expert, song_database["Sweet Emotion"])
career_song_clear("Striking New Chords", "Clear all Career songs in the 'The Triumphant Return' setlist on Expert.", 10, "", love_in_an_elevator, expert, song_database["Love in an Elevator"])
career_song_clear("Mr. Worldwide", "Clear all Career songs in the 'International Superstars' setlist on Expert.", 10, "", run_dmc_walk_this_way, expert, song_database["Walk This Way (Run DMC)"])
career_song_clear("The Face of America", "Clear all Career songs in the 'The Great American Band' setlist on Expert.", 10, "", dream_on, expert, song_database["Dream On"])
career_song_clear("Rock And Roll Hall of Famers", "Clear all Career songs in the 'Rock 'n Roll Legends' setlist on Expert.", 25, "win_condition", train_kept_a_rollin, expert, song_database["Train Kept a Rollin'"])

//Career Five Star Experts
//dream_police = dword(dword(0x005581c0) + 0x4)

function career_song_five_star_clear(my_name, my_desc, my_points, node, song_checksum){
    node_2nd = item_node_2nd_node(node)
    node_3rd = item_node_3rd_node(node)
    node_4th = item_node_4th_node(node)
    achievement(
        my_name,
        my_desc,
        my_points,
        trigger=
            difficulty == expert &&
            song_id == song_checksum &&
            (
                prev(item_node_career_star_flag(node)) != 5 &&  item_node_career_star_flag(node) == 5 ||
                prev(item_node_career_star_flag(node_2nd)) != 5 &&  item_node_career_star_flag(node_2nd) == 5 ||
                prev(item_node_career_star_flag(node_3rd)) != 5 && item_node_career_star_flag(node_3rd) == 5 ||
                prev(item_node_career_star_flag(node_4th))  != 5 &&  item_node_career_star_flag(node_4th) == 5
            )
        
        
    )
}
//career_song_five_star_clear("Dream Police", "Clear 'Dream Police' in Career on Expert Guitar with five stars", 10, dream_police, song_database["Dream Police"])



index_joe_perry = dword(dword(0x0055b838) +0x4)
song_hash_guitar_battle = dword(0x003fb39c)
joe_perry = 0xda1df9e6
function guitar_battle_clear(my_name, my_desc, my_points, node, my_difficulty, song_checksum) {
    node_2nd = item_node_2nd_node(node)
    node_3rd = item_node_3rd_node(node)
    node_4th = item_node_4th_node(node)
    
    achievement(
     my_name, 
     my_desc,
     my_points,
     
    trigger=
            difficulty == my_difficulty &&
            song_hash_guitar_battle == song_checksum &&
            (
                (item_node_type_check(node) == data_type_career_score &&
                item_node_unlock_flag(node) != 0) ||
                (item_node_type_check(node_2nd) == data_type_career_score &&
                item_node_unlock_flag(node_2nd) != 0) ||
                (item_node_type_check(node_3rd) == data_type_career_score &&
                item_node_unlock_flag(node_3rd) != 0) ||
                (item_node_type_check(node_4th) == data_type_career_score &&
                item_node_unlock_flag(node_4th) != 0)
            ) &&
            (
                item_node_unlock_flag(node) > prev(item_node_unlock_flag(node)) ||
                item_node_unlock_flag(node_2nd) > prev(item_node_unlock_flag(node_2nd)) ||
                item_node_unlock_flag(node_3rd) > prev(item_node_unlock_flag(node_3rd)) ||
                item_node_unlock_flag(node_4th) > prev(item_node_unlock_flag(node_4th)) 
            )
    )
}
guitar_battle_clear("Joe Shmoe", "Defeat Joe Perry in a guitar battle on Easy!", 5, index_joe_perry, easy, joe_perry)
guitar_battle_clear("Hey, Where's Perry?", "Defeat Joe Perry in a guitar battle on Medium!", 5, index_joe_perry, medium, joe_perry)
guitar_battle_clear("Sleepy Joe", "Defeat Joe Perry in a guitar battle on Hard!", 10, index_joe_perry, hard, joe_perry)
guitar_battle_clear("Perry Smash!", "Defeat Joe Perry in a guitar battle on Expert!", 25, index_joe_perry, expert, joe_perry)

function item_array_has_been_unlocked_4nodes(node_array, size) {
    logic_array_current = []
    logic_array_previous = always_false()
    for node in node_array {
        node_2nd = item_node_2nd_node(node)
        node_3rd = item_node_3rd_node(node)
        node_4th = item_node_4th_node(node)

        // "item_node_2nd_node(node) > 0" is needed on each node to check if it isn't a single-node linked list
        array_push(logic_array_current, once(item_node_2nd_node(node) > 0 &&
                                        item_node_type_check(node) == data_type_unlocked &&
                                        item_node_unlock_flag(node) == 1))
        array_push(logic_array_current, once(item_node_2nd_node(node) > 0 &&
                                        item_node_type_check(node_2nd) == data_type_unlocked &&
                                        item_node_unlock_flag(node_2nd) == 1))
        array_push(logic_array_current, once(item_node_2nd_node(node) > 0 &&
                                        item_node_type_check(node_3rd) == data_type_unlocked &&
                                        item_node_unlock_flag(node_3rd) == 1))
        array_push(logic_array_current, once(item_node_2nd_node(node) > 0 &&
                                        item_node_type_check(node_4th) == data_type_unlocked &&
                                        item_node_unlock_flag(node_4th) == 1))

        logic_array_previous = logic_array_previous ||
                        (
                            (prev(item_node_2nd_node(node)) > 0) &&
                            (
                                (prev(item_node_unlock_flag(node)) < item_node_unlock_flag(node)) ||
                                (prev(item_node_unlock_flag(node_2nd)) < item_node_unlock_flag(node_2nd)) ||
                                (prev(item_node_unlock_flag(node_3rd)) < item_node_unlock_flag(node_3rd)) ||
                                (prev(item_node_unlock_flag(node_4th)) < item_node_unlock_flag(node_4th))
                            )
                        )
                        
        // logic_array_previous = logic_array_previous ||
        //                         (prev(item_node_type_check(node)) == data_type_unlocked &&
        //                         prev(item_node_unlock_flag(node)) == 0) ||
        //                         (prev(item_node_type_check(node_2nd)) == data_type_unlocked &&
        //                         prev(item_node_unlock_flag(node_2nd)) == 0) ||
        //                         (prev(item_node_type_check(node_3rd)) == data_type_unlocked &&
        //                         prev(item_node_unlock_flag(node_3rd)) == 0) ||
        //                         (prev(item_node_type_check(node_4th)) == data_type_unlocked &&
        //                         prev(item_node_unlock_flag(node_4th)) == 0)

        

        // array_push(logic_array_previous, prev(item_node_type_check(node)) == data_type_unlocked &&
        //                                  prev(item_node_unlock_flag(node)) == 0)
        // array_push(logic_array_previous, prev(item_node_type_check(node_2nd)) == data_type_unlocked &&
        //                                  prev(item_node_unlock_flag(node_2nd)) == 0)
        // array_push(logic_array_previous, prev(item_node_type_check(node_3rd)) == data_type_unlocked &&
        //                                  prev(item_node_unlock_flag(node_3rd)) == 0)
        // array_push(logic_array_previous, prev(item_node_type_check(node_4th)) == data_type_unlocked &&
        //                                  prev(item_node_unlock_flag(node_4th)) == 0)
    }
    return measured(tally(size, logic_array_current)) && logic_array_previous
}

function item_array_has_been_unlocked_1node(node_array, size) {
    logic_array_current = []
    logic_array_previous = always_false()

    for node in node_array {
        array_push(logic_array_current, once(item_node_type_check(node) == data_type_unlocked &&
                                             item_node_unlock_flag(node) == 1))

        logic_array_previous = logic_array_previous ||
                                (
                                    item_node_type_check(node) == data_type_unlocked &&
                                    item_node_unlock_flag(node) > prev(item_node_unlock_flag(node))
                                )
    }

    return measured(tally(size, logic_array_current)) && logic_array_previous
}


//Characters
char_metalhead = dword(dword(0x00552580) + 0x4)
char_joe_perry = dword(dword(0x00581a14) + 0x4)
char_dmc = dword(dword(0x0055b634) + 0x4)
char_tom_hamilton = dword(dword(0x00554db8) + 0x4)
char_brad_whitford = dword(dword(0x0055813c) + 0x4)
char_lou = dword(dword(0x005541e8) + 0x4)
char_elroy_budvis = dword(dword(0x005817f8) + 0x4)

//Songs
song_mercy = dword(dword(0x00552760) + 0x4)
song_combination = dword(dword(0x00555004) + 0x4)
song_walk_this_way = dword(dword(0x00555f7c) + 0x4)
song_pandoras_box = dword(dword(0x00556ce4) + 0x4)
song_let_the_music = dword(dword(0x00559c84) + 0x4)
song_pink = dword(dword(0x0055ba30) + 0x4)
song_shakin_my_cage = dword(dword(0x0055be50) + 0x4)
song_talk_talkin = dword(dword(0x0055be80) + 0x4)
song_rats_cellar = dword(dword(0x0055c798) + 0x4)

unlockables_songs = [song_mercy, song_combination, song_walk_this_way, song_pandoras_box, song_let_the_music, song_pink, song_shakin_my_cage, song_talk_talkin, song_rats_cellar]


achievement(
    "Do You Collect Vinyl Records?",
    "Purchase every extra song from The Vault!",
    points=10,
    trigger=
        item_array_has_been_unlocked_4nodes(unlockables_songs, length(unlockables_songs))
)

achievement(
    "Cyber Attack!",
    "Purchase Metalhead from The Vault!",
    10,
    trigger=
        item_has_been_unlocked_4nodes(char_metalhead)
)
achievement(
    "The American Idiot",
    "Purchase Joe Perry from The Vault!",
    points=10,
    trigger=
        item_has_been_unlocked_4nodes(char_joe_perry)
)
achievement(
    "Mr. Steal Your Girl",
    "Purchase DMC from The Vault!",
    points=10,
    trigger=
        item_has_been_unlocked_4nodes(char_dmc)
)
achievement(
    "Not You, Morello.",
    "Purchase Tom Hamilton from The Vault!",
    points=10,
    trigger=
        item_has_been_unlocked_4nodes(char_tom_hamilton)
)
achievement(
    "Return of the Guitarist",
    "Purchase Brad Whitford from The Vault!",
    points=10,
    trigger=
        item_has_been_unlocked_4nodes(char_brad_whitford)
)
achievement(
    "Devil's Comeback",
    "Purchase Lou from The Vault!",
    points=10,
    trigger=
        item_has_been_unlocked_4nodes(char_lou)
)
achievement(
    "Same Old Rock N' Roll",
    "Purchase Elroy Budvis from The Vault!",
    points=10,
    trigger=
        item_has_been_unlocked_4nodes(char_elroy_budvis)
)

















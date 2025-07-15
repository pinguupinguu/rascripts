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
function track_state(offset) => dword(static_track + offset) 
function career_song_score_clear(node, song_checksum) {
    node_2nd = item_node_2nd_node(node)
    node_3rd = item_node_3rd_node(node)
    node_4th = item_node_4th_node(node)
    return (
            difficulty == expert &&
            track_state(track_state_offset) == 1 &&
            
            (
                prev(item_node_career_star_flag(node)) == 0 &&  item_node_career_star_flag(node) != 0 ||
                prev(item_node_career_star_flag(node_2nd)) == 0 &&  item_node_career_star_flag(node_2nd) != 0 ||
                prev(item_node_career_star_flag(node_3rd)) == 0 && item_node_career_star_flag(node_3rd) != 0 ||
                prev(item_node_career_star_flag(node_4th))  == 0 &&  item_node_career_star_flag(node_4th) != 0
            )
    )
    
}
song_database = {
    1:{"Name":"Dream Police", "Hash":0x33a34f1d},
2:{"Name":"All the Young Dudes (cover)", "Hash":0x5d5b4613},
3:{"Name":"Make It", "Hash":0x1f690027},
4:{"Name":"Uncle Salty", "Hash":0xcc50d114},
5:{"Name":"Draw the Line", "Hash":0x364619ba},
6:{"Name":"I Hate Myself For Loving You", "Hash":0xa04034a1},
7:{"Name":"All Day and All of the Night (cover)", "Hash":0x3cb1ab4f},
8:{"Name":"No Surprize", "Hash":0x1d0e54d6},
9:{"Name":"Movin' Out", "Hash":0x78c666ab},
10:{"Name":"Sweet Emotion", "Hash":0x9475da58},
11:{"Name":"Complete Control", "Hash":0xe440d771},
12:{"Name":"Personality Crisis (cover)", "Hash":0x5afb1da6},
13:{"Name":"Livin' on the Edge", "Hash":0x91618154},
14:{"Name":"Rag Doll", "Hash":0x8b5d73b0},
15:{"Name":"Love in an Elevator", "Hash":0xf18717a0},
16:{"Name":"She Sells Sanctuary", "Hash":0x781fe608},
17:{"Name":"King of Rock", "Hash":0xb71fc4cf},
18:{"Name":"Nobody's Fault", "Hash":0x29b81328},
19:{"Name":"Bright Light Fright", "Hash":0x9fbd7d7c},
20:{"Name":"Walk This Way (Run DMC)", "Hash":0x55a1fc1d},
21:{"Name":"Hard to Handle (cover)", "Hash":0xbdbbcd8f},
22:{"Name":"Always On The Run", "Hash":0xe1597714},
23:{"Name":"Back In The Saddle", "Hash":0x8c295d0e},
24:{"Name":"Beyond Beautiful", "Hash":0xfb394005},
25:{"Name":"Dream On", "Hash":0x81a8efa2},
26:{"Name":"Cat Scratch Fever", "Hash":0xa9229259},
27:{"Name":"Sex Type Thing", "Hash":0x248c18bc},
28:{"Name":"Mama Kin", "Hash":0xf3d54ab1},
29:{"Name":"Toys in the Attic", "Hash":0x287d05a1},
30:{"Name":"Train Kept a Rollin'", "Hash":0x2ddd4e48},
31:{"Name":"Walk This Way", "Hash":0x5f3b269a},
32:{"Name":"Rats in the Cellar", "Hash":0x00a7df47},
33:{"Name":"Kings and Queens", "Hash":0xb16f766a},
34:{"Name":"Combination", "Hash":0x21f6e550},
35:{"Name":"Let the Music Do the Talking", "Hash":0x77937bb0},
36:{"Name":"Shakin' My Cage", "Hash":0xfe9dee81},
37:{"Name":"Pink", "Hash":0xd39c8e29},
38:{"Name":"Talk Talkin'", "Hash":0xd7b44e85},
39:{"Name":"Mercy", "Hash":0x64fbf1ed},
40:{"Name":"Pandora's Box", "Hash":0x855bd7b8},
41:{"Name":"Joe Perry Guitar Battle (Solo)", "Hash":0x8ae074aa},
}



hate_myself = dword(dword(0x0055b10c) + 0x4)
achievement(
    "Instrumental Upgrades",
    "Clear all Career songs in the 'Getting the Band Together' setlist on Expert.",
    points=10,
    trigger=
        difficulty == expert &&
        career_song_score_clear(hate_myself)
)

function guitar_battle_clear(node) { //Since we are checking the same final offset of flag, we just change conditionals to be for career score, as well as a score increment!
    node_2nd = item_node_2nd_node(node)
    node_3rd = item_node_3rd_node(node)
    node_4th = item_node_4th_node(node)
    return (
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
expert_joe_perry = dword(dword(0x0055b838) +0x4)
achievement(
    "Joe Perry Smash",
    "Defeat Joe Perry on Expert",
    25,
    trigger=
        guitar_battle_clear(expert_joe_perry)
)

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

















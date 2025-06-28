// Guitar Hero: Aerosmith
// #ID = 20616

//Node Logic (Thanks Miagui! Used with extreme permission.)
function item_node_type_check(addr) => dword(addr + 0x4)
data_type_unlocked = 0xfef4e1e8
data_type_purchaseable = 0x61ee5765
data_type_cash = 0xf9461a46
data_type_career_score = 0xcd66c8ae
function item_node_next_node(addr) => dword(addr + 0xc)
function item_node_2nd_node(addr) => dword(item_node_next_node(addr) + 0xc)
function item_node_3rd_node(addr) => dword(item_node_2nd_node(addr) + 0xC)
function item_node_4th_node(addr) => dword(item_node_3rd_node(addr) + 0xC)
function item_node_unlock_flag(addr) => byte(addr + 0x8)
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

















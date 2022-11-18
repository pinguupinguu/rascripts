// Guitar Hero
// #ID = 7994
function profile_slot() => dword(0x00b8a698)
//Venues Indices:
//1. Opening Licks: 0-4
//2. Axe-Grinders: 5-9
//3. Thrash and Burn: 10-14
//4. Return of the Shred: 15-19
//5. Fret-Burners: 20-24
//6. Face-Melters: 25-29
function populate_profile_alt_clears(difficulty_table, start, end){
    logic = always_false()
    for i in range(0, 7){
        logic = logic || sum_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), b => prev(dword(b)) == 1) == 4 &&
        measured(sum_of(range(difficulty_table[i] + (0x20 * start), difficulty_table[i] + (0x20 * end), 0x20), b => dword(b) == 1) == 5, profile_slot() == i)
    }
    return logic
}


//Career Tables
easy_clears = {
    0:0x00b8c5a4,
    1:0x00b8d474,
    2:0x00b99514,
    3:0x00b9b2b4,
    4:0x00b9edf4,
    5:0x00ba2934,
    6:0x00ba6474,
    7:0x00ba9fb4
}
achievement(
    "Easy Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 0, 4)        
)
achievement(
    "Easy Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 5, 9)
)
achievement(
    "Easy Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 10, 14)
)
achievement(
    "Easy Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 15, 19)
)
achievement(
    "Easy Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Easy (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(easy_clears, 20, 24)
)
medium_clears = {
    0:0x00b93af4,
    1:0x00b97774,
    2:0x00b9c184,
    3:0x00b9fcc4,
    4:0x00ba3804,
    5:0x00ba7344,
    6:0x00baae84,
    7:0x00bae9c4
}
achievement(
    "Medium Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 0, 4)        
)
achievement(
    "Medium Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 5, 9)
)
achievement(
    "Medium Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 10, 14)
)
achievement(
    "Medium Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 15, 19)
)
achievement(
    "Medium Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Medium (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(medium_clears, 20, 24)
)
achievement(
    "Medium Face-Melters",
    "Clear all Career mode songs in the \"Face-Melters\" setlist on Medium (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(medium_clears, 25, 29)
)
hard_clears = {
    0:0x00b949c4,
    1:0x00b98644,
    2:0x00b9d054,
    3:0x00ba0b94,
    4:0x00ba46d4,
    5:0x00ba8214,
    6:0x00babd54,
    7:0x00baf894
}
achievement(
    "Hard Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Hard (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(hard_clears, 0, 4)        
)
achievement(
    "Hard Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 5, 9)
)
achievement(
    "Hard Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 10, 14)
)
achievement(
    "Hard Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 15, 19)
)
achievement(
    "Hard Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 20, 24)
)
achievement(
    "Hard Face-Melters",
    "Clear all Career mode songs in the \"Face-Melters\" setlist on Hard (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(hard_clears, 25, 29)
)
expert_clears = {
    0:0x00b8a8b4,
    1:0x00b92ae4,
    2:0x00b9a3e4,
    3:0x00b9df24,
    4:0x00ba1a64,
    5:0x00ba55a4,
    6:0x00ba90e4,
    7:0x00bacc24
}
achievement(
    "Expert Licks",
    "Clear all Career mode songs in the \"Opening Licks\" setlist on Expert (One Profile)",
    points=5,
    trigger=
        populate_profile_alt_clears(expert_clears, 0, 4)        
)
achievement(
    "Expert Axe-Grinders",
    "Clear all Career mode songs in the \"Axe-Grinders\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 5, 9)
)
achievement(
    "Expert Thrash and Burn",
    "Clear all Career mode songs in the \"Thrash and Burn\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 10, 14)
)
achievement(
    "Expert Return of the Shred",
    "Clear all Career mode songs in the \"Return of the Shred\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 15, 19)
)
achievement(
    "Expert Fret Burners",
    "Clear all Career mode songs in the \"Fret-Burners\" setlist on Expert (One Profile)",
    points=10,
    trigger=
        populate_profile_alt_clears(expert_clears, 20, 24)
)
achievement(
    "Expert Face-Melters",
    "Clear all Career mode songs in the \"Face-Melters\" setlist on Expert (One Profile)",
    points=25,
    trigger=
        populate_profile_alt_clears(expert_clears, 25, 29)
)
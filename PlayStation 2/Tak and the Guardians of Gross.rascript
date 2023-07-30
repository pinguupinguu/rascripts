// Tak and the Guardians of Gross
// #ID = 20710

// $4A9230: [32bit] Cheat - Unlock All Levels Challenge Mode
function cheat_unlock_all_levels_challenge_mode() => dword(0x4A9230)

// $4A9238: [32bit] Cheat - Invulnerability
//          0x00=No
//          0x01=Yes
function cheat_invulnerability() => dword(0x4A9238)

// $4A923C: [32bit] Cheat Flag - Unlock All Minigames
//          0x00=No
//          0x01=Yes
function cheat_flag_unlock_all_minigames() => dword(0x4A923C)

// $4A9248: [32bit] Cheat Flag - Unlock All Awards
//          0x00=No
//          0x01=Yes
function cheat_flag_unlock_all_awards() => dword(0x4A9248)

// $4A92C7: test
function test() => byte(0x4A92C7)

// $4AAD74: [32bit] Level ID?
function level_id() => dword(0x4AAD74)

// $4ACACC: [Pointer]
//          +0x3550=[32bit] P1 Score
function pointer() => dword(0x4ACACC)



// $1BC649C: [Float] Time Taken for Level
//           
//           Save Protection: Check that != 0 Wahoo!
function time_taken_for_level() => float(0x1BC649C)
function save_protection() => time_taken_for_level() != 0
// $1BC64A0: [32bit] Number of Nunu Pieces
function number_of_nunu_pieces() => dword(0x1BC64A0)

// $1BC64A4: [32bit] Number of Blue Orbs
function number_of_blue_orbs() => dword(0x1BC64A4)

// $1BC64AC: [32bit] Level - Hits Taken
function level_hits_taken() => dword(0x1BC64AC)

// $1BC64C4: [32bit] Award Flag - The Spoiled Shrine - Tick Tock Tiki (Speedrun)
function award_flag_the_spoiled_shrine_tick_tock_tiki_speedrun() => dword(0x1BC64C4)

// $1BC64C8: [32bit] Award Flag - The Spoiled Shrine - Scavenger Shield (Nunu Collection)
function award_flag_the_spoiled_shrine_scavenger_shield_nunu_collection() => dword(0x1BC64C8)

// $1BC64CC: [32bit] Award Flag - The Spoiled Shrine - Gather Gannet Cup (Juju Juice)
function award_flag_the_spoiled_shrine_gather_gannet_cup_juju_juice() => dword(0x1BC64CC)

// $1BC64D0: [32bit] Award Flag - The Spoiled Shrine - Hog Wild Trophy (Defeat all Enemies)
function award_flag_the_spoiled_shrine_hog_wild_trophy_defeat_all_enemies() => dword(0x1BC64D0)

// $1BC64D4: [32bit] Award Flag - The Spoiled Shrine - Toughnut Tankard (Damageless)
function award_flag_the_spoiled_shrine_toughnut_tankard_damageless() => dword(0x1BC64D4)

// $1BC64D8: [32bit] Award Flag - Stinky Escape - Chrono Cup (Speedrun)
function award_flag_stinky_escape_chrono_cup_speedrun() => dword(0x1BC64D8)

// $1BC64DC: [32bit] Award Flag - Stinky Escape - Rainforest Rummage Rod (Nunu Collection)
function award_flag_stinky_escape_rainforest_rummage_rod_nunu_collection() => dword(0x1BC64DC)

// $1BC64E0: [32bit] Award Flag - Stinky Escape - Destructinator Glove (Break all Objects)
function award_flag_stinky_escape_destructinator_glove_break_all_objects() => dword(0x1BC64E0)

// $1BC64E4: [32bit] Award Flag - Stinky Escape - TAK-tical Award (Accuracy)
function award_flag_stinky_escape_tak_tical_award_accuracy() => dword(0x1BC64E4)

// $1BC64EC: [32bit] Award Flag - Swollen River Ruins - Watch Wand (Speedrun)
function award_flag_swollen_river_ruins_watch_wand_speedrun() => dword(0x1BC64EC)

// $1BC64F0: [32bit] Award Flag - Swollen River Ruins - Crafty Coconut Cup (Nunu Collection)
function award_flag_swollen_river_ruins_crafty_coconut_cup_nunu_collection() => dword(0x1BC64F0)

// $1BC64F4: [32bit] Award Flag - Swollen River Ruins - Greedy Gather Gong (Juju Juice)
function award_flag_swollen_river_ruins_greedy_gather_gong_juju_juice() => dword(0x1BC64F4)

// $1BC64F8: [32bit] Award Flag - Swollen River Ruins - Destroyer Shield (Defeat all Enemies)
function award_flag_swollen_river_ruins_destroyer_shield_defeat_all_enemies() => dword(0x1BC64F8)

// $1BC64FC: [32bit] Award Flag - Swollen River Ruins - Rhino Rumble Cup (Damageless)
function award_flag_swollen_river_ruins_rhino_rumble_cup_damageless() => dword(0x1BC64FC)

// $1BC6500: [32bit] Award Flag - Trashthulu -  Cuckoo Cup (Speedrun)
function award_flag_trashthulu_cuckoo_cup_speedrun() => dword(0x1BC6500)

// $1BC6504: [32bit] Award Flag - Trashthulu -  Sneaky-Peeky Shield (Nunu Collection)
function award_flag_trashthulu_sneaky_peeky_shield_nunu_collection() => dword(0x1BC6504)

// $1BC6508: [32bit] Award Flag - Trashthulu -  Collect-a-nator Cup (Juju Juice)
function award_flag_trashthulu_collect_a_nator_cup_juju_juice() => dword(0x1BC6508)

// $1BC650C: [32bit] Award Flag - Trashthulu -  Crazy Clash Cup (Defeat all Enemies)
function award_flag_trashthulu_crazy_clash_cup_defeat_all_enemies() => dword(0x1BC650C)

// $1BC6510: [32bit] Award Flag - Trashthulu - Burly Buffalo Shield (Damageless)
function award_flag_trashthulu_burly_buffalo_shield_damageless() => dword(0x1BC6510)

// $1BC6514: [32bit] Award Flag - Slopviathan - Time Trial TIki (Speedrun)
function award_flag_slopviathan_time_trial_tiki_speedrun() => dword(0x1BC6514)

// $1BC6518: [32bit] Award Flag - Slopviathan - Mystery Mist Mace (Nunu Collection)
function award_flag_slopviathan_mystery_mist_mace_nunu_collection() => dword(0x1BC6518)

// $1BC651C: [32bit] Award Flag - Slopviathan - Stockpile Star (Juju Juice)
function award_flag_slopviathan_stockpile_star_juju_juice() => dword(0x1BC651C)

// $1BC6520: [32bit] Award Flag - Slopviathan - Woody Whacka Cup (Defeat all Enemeis)
function award_flag_slopviathan_woody_whacka_cup_defeat_all_enemeis() => dword(0x1BC6520)

// $1BC6524: [32bit] Award Flag - Slopviathan - Sturdy Star Shield (Damageless)
function award_flag_slopviathan_sturdy_star_shield_damageless() => dword(0x1BC6524)

// $1BC6528: [32bit] Award Flag - Gorgonzilla - Racing Snake Belt (Speedrun)
function award_flag_gorgonzilla_racing_snake_belt_speedrun() => dword(0x1BC6528)

// $1BC652C: [32bit] Award Flag - Gorgonzilla - Nunu Ninja Star (Nunu Collection)
function award_flag_gorgonzilla_nunu_ninja_star_nunu_collection() => dword(0x1BC652C)

// $1BC6530: [32bit] Award Flag - Gorgonzilla - Ju Jungle Jug (Juju Juice)
function award_flag_gorgonzilla_ju_jungle_jug_juju_juice() => dword(0x1BC6530)

// $1BC6534: [32bit] Award Flag - Gorgonzilla - Tiger Tussle Trophy (Defeat all Enemies)
function award_flag_gorgonzilla_tiger_tussle_trophy_defeat_all_enemies() => dword(0x1BC6534)

// $1BC6538: [32bit] Award Flag - Gorgonzilla - Tussle King Crown (Damageless)
function award_flag_gorgonzilla_tussle_king_crown_damageless() => dword(0x1BC6538)

// $1BC653C: [32bit] Award Flag - Rancid Rapids - Greased Pig Plaque (Speedrun)
function award_flag_rancid_rapids_greased_pig_plaque_speedrun() => dword(0x1BC653C)

// $1BC6540: [32bit] Award Flag - Rancid Rapids - Curious Collector Crystal (Nunu Collection)
function award_flag_rancid_rapids_curious_collector_crystal_nunu_collection() => dword(0x1BC6540)

// $1BC6544: [32bit] Award Flag - Rancid Rapids - Sly Stash Shield (Juju Juice)
function award_flag_rancid_rapids_sly_stash_shield_juju_juice() => dword(0x1BC6544)

// $1BC6548: [32bit] Award Flag - Rancid Rapids - Scrapper Skunk Shield (Defeat all Enemies)
function award_flag_rancid_rapids_scrapper_skunk_shield_defeat_all_enemies() => dword(0x1BC6548)

// $1BC654C: [32bit] Award Flag - Rancid Rapids - Brute Force Trophy (Damageless)
function award_flag_rancid_rapids_brute_force_trophy_damageless() => dword(0x1BC654C)

// $1BC6550: [32bit] Award Flag - Stinkolossus - Turbo Trail Tiki (Speedrun)
function award_flag_stinkolossus_turbo_trail_tiki_speedrun() => dword(0x1BC6550)

// $1BC6554: [32bit] Award Flag - Stinkolossus - Jungle Hunter Cup (Nunu Collection)
function award_flag_stinkolossus_jungle_hunter_cup_nunu_collection() => dword(0x1BC6554)

// $1BC6558: [32bit] Award Flag - Stinkolossus - Hog Haord Chest (Juju Juice)
function award_flag_stinkolossus_hog_haord_chest_juju_juice() => dword(0x1BC6558)

// $1BC655C: [32bit] Award Flag - Stinkolossus - Forest Fighter Award (Defeat all Enemies)
function award_flag_stinkolossus_forest_fighter_award_defeat_all_enemies() => dword(0x1BC655C)

// $1BC6560: [32bit] Award Flag - Stinkolossus - Papanunu Protector Crown (Damageless)
function award_flag_stinkolossus_papanunu_protector_crown_damageless() => dword(0x1BC6560)

// $1BC6564: [32bit] Award Flag - Chug-A-Mug! - Rapid Rainforest Ruby (Speedrun)
function award_flag_chug_a_mug_rapid_rainforest_ruby_speedrun() => dword(0x1BC6564)

// $1BC6568: [32bit] Award Flag - Chug-A-Mug! - Swamp Search Shield (Nunu Collection)
function award_flag_chug_a_mug_swamp_search_shield_nunu_collection() => dword(0x1BC6568)

// $1BC656C: [32bit] Award Flag - Chug-A-Mug! - Jungle Rumble Sword (Destroy Objects)
function award_flag_chug_a_mug_jungle_rumble_sword_destroy_objects() => dword(0x1BC656C)

// $1BC6570: [32bit] Award Flag - Chug-A-Mug! - Shifty Swifty Sash (Boost Pads!)
function award_flag_chug_a_mug_shifty_swifty_sash_boost_pads() => dword(0x1BC6570)

// $1BC65C4: [32bit] Challenge Mode - Unlocked Levels
//           0x00=None
//           0x01=The Spoiled Shrine
//           0x02=Stinky Escape
//           0x03=Swollen River Ruins
//           0x04=Trashthulu
//           0x05=Slopviathan
//           0x06=Gorgonzilla
//           0x07=Rancid Rapids
//           0x08=Stinkolossus
//           0x09=Chug-A-Mug!
function challenge_mode_unlocked_levels() => dword(0x1BC65C4)
function progression(target) => prev(challenge_mode_unlocked_levels()) == target - 1 && challenge_mode_unlocked_levels() == target && save_protection() &&
                                cheat_invulnerability() != 1

achievement(
    "Spoiled Beginnings",
    "Clear The Spoiled Shrine in story mode!",
    points=5,
    trigger=
        progression(1)
    
)
achievement(
    "An Unexpected A-Tak",
    "Clear Stinky Escape in story mode!",
    points=5,
    trigger=
        progression(2)
)
achievement(
    "River Path",
    "Clear Swollen River Ruins in story mode",
    points=5,
    trigger=
        progression(3)
)
achievement(
    "Trashin' Levels",
    "Clear Trashthulu in story mode",
    points=5,
    trigger=
        progression(4)
)
achievement(
    "No Longer Leviathan",
    "Clear Slopviathan in story mode",
    points=10,
    trigger=
        progression(5)
    
)
achievement(
    "Not a Type of Cheese",
    "Clear Gorgonzilla in story mode",
    points=10,
    trigger=
        progression(6)
)
achievement(
    "Rapid City",
    "Clear Rancid Rapids in story mode",
    points=10,
    trigger=
        progression(7)
)
achievement(
    "Penultimate Juju Experience",
    "Clear Stinkolossus in story mode",
    points=10,
    trigger=
        progression(8)
)
achievement(
    "Tak: The Guardian of Gross",
    "Clear Chug-A-Mug and complete the game!",
    points=25,
    trigger=
        progression(9)
)
function award_single(flag) => prev(flag) == 0 && flag == 1 && save_protection()
achievement(
    "The Spoiled Shrine: Tick Tock Tiki",
    "Win the Speedrun award for The Spoiled Shrine",
    points=5,
    trigger=
        award_single(award_flag_the_spoiled_shrine_tick_tock_tiki_speedrun())
)
achievement(
    "stinky Escape: Chrono Cup",
    "Win the Speedrun award for Stinky Escape",
    points=5,
    trigger=
        award_single(award_flag_stinky_escape_chrono_cup_speedrun())
)
achievement(
    "Swollen River Ruins: Watch Wand",
    "Win the Speedrun award for Swollen River Ruins",
    points=5,
    trigger=
        award_single(award_flag_swollen_river_ruins_watch_wand_speedrun())
)
achievement(
    "Trashthulu: Cuckoo Cup",
    "Win the Speedrun award for Trashthulu",
    points=5,
    trigger=
        award_single(award_flag_trashthulu_cuckoo_cup_speedrun())
)
achievement(
    "Slopviathan: Time Trial Tiki",
    "Wih the Speedrun award for Slopviathan",
    points=5,
    trigger=
        award_single(award_flag_slopviathan_time_trial_tiki_speedrun())    
)
achievement(
    "Gorgonzilla: Racing Snake Belt",
    "Win the Speedrun award for Gorgonzilla",
    points=5,
    trigger=
        award_single(award_flag_gorgonzilla_racing_snake_belt_speedrun())    
)
achievement(
    "Rancid Rapids: Greased Pig Plaque",
    "Win the Speedrun award for Rancid Rapids",
    points=5,
    trigger=
        award_single(award_flag_rancid_rapids_greased_pig_plaque_speedrun())
)
achievement(
    "Stinkolossus: Turbo Trail Tiki",
    "Win the Speedrun award for Stinkolossus",
    points=5,
    trigger=
        award_single(award_flag_stinkolossus_turbo_trail_tiki_speedrun())
)
achievement(
    "Chu-A-Mug: Rapid Rainforest Ruby",
    "Win the Speedrun award for Chug-A-Mug!",
    points=10,
    trigger=
        award_single(award_flag_chug_a_mug_rapid_rainforest_ruby_speedrun())
)
function award_mult(type, target) => prev(type) == target - 1 && type == target && save_protection()
function nunu_sum() =>
    award_flag_the_spoiled_shrine_scavenger_shield_nunu_collection() +
    award_flag_stinky_escape_rainforest_rummage_rod_nunu_collection() +
    award_flag_swollen_river_ruins_crafty_coconut_cup_nunu_collection() +
    award_flag_trashthulu_sneaky_peeky_shield_nunu_collection() +
    award_flag_slopviathan_mystery_mist_mace_nunu_collection() +
    award_flag_gorgonzilla_nunu_ninja_star_nunu_collection() +
    award_flag_rancid_rapids_curious_collector_crystal_nunu_collection() +
    award_flag_stinkolossus_jungle_hunter_cup_nunu_collection() +
    award_flag_chug_a_mug_swamp_search_shield_nunu_collection()
achievement(
    "Pupanunu Collection",
    "Obtain 4/9 award medals under the Nunu Collection category! (See Forum Topic for List)",
    points=10,
    trigger=
        award_mult(nunu_sum(), 4)
)
achievement(
    "Memorabilia of the Pupanunu People",
    "Obtain all award medals under the Nunu Collection category! (See Forum Topic for List)",
    points=25,
    trigger=
        award_mult(nunu_sum(), 9)   
)
function juice_sum() =>
    award_flag_the_spoiled_shrine_gather_gannet_cup_juju_juice() +
    award_flag_swollen_river_ruins_greedy_gather_gong_juju_juice() +
    award_flag_trashthulu_collect_a_nator_cup_juju_juice() +
    award_flag_slopviathan_stockpile_star_juju_juice() +
    award_flag_gorgonzilla_ju_jungle_jug_juju_juice() +
    award_flag_rancid_rapids_sly_stash_shield_juju_juice() +
    award_flag_stinkolossus_hog_haord_chest_juju_juice() 
achievement(
    "Juicenator I",
    "Obtain 3/7 award medals under the Juju Juice category! (See Forum Topic for List)",
    points=5,
    trigger=
        award_mult(juice_sum(), 3)
)
achievement(
    "Juicenator II",
    "Obtain all 7 award medals under the Juju Juice category! (See Forum Topic for List)",
    points=10,
    trigger=
        award_mult(juice_sum(), 7)
)
function enemies_sum() =>
    award_flag_the_spoiled_shrine_hog_wild_trophy_defeat_all_enemies() +
    award_flag_swollen_river_ruins_destroyer_shield_defeat_all_enemies() +
    award_flag_trashthulu_crazy_clash_cup_defeat_all_enemies() +
    award_flag_gorgonzilla_tiger_tussle_trophy_defeat_all_enemies() +
    award_flag_rancid_rapids_scrapper_skunk_shield_defeat_all_enemies() +
    award_flag_stinkolossus_forest_fighter_award_defeat_all_enemies()
achievement(
    "Enemy Slayer I",
    "Earn 3/6 medals under the Destroy All Enemies category! (See Forum Topic for List)",
    points=5,
    trigger=
        award_mult(enemies_sum(), 3)
)
achievement(
    "Enemy Slayer II",
    "Obtain all 6 award medals under the Destroy All Enemies category! (See Forum Topic for List)",
    points=10,
    trigger=
        award_mult(enemies_sum(), 6)
    
)
achievement(
    "The Spoiled Shrine: Toughnut Tankard",
    "Earn the Damageless award on The Spoiled Shrine!",
    points=5,
    trigger=
        award_single(award_flag_the_spoiled_shrine_toughnut_tankard_damageless())
)
achievement(
    "Swollen River Ruins: Rhino Rumble Cup",
    "Earn the Damageless award on Swollen River Ruins",
    points=5,
    trigger=
        award_single(award_flag_swollen_river_ruins_rhino_rumble_cup_damageless())
)
achievement(
    "Trashthulu: Burly Buffalo Shield",
    "Earn the Damageless award on Trashthulu",
    points=10,
    trigger=
        award_single(award_flag_trashthulu_burly_buffalo_shield_damageless())    
)
achievement(
    "Slopviathan: Sturdy Star Shield",
    "Earn the Damageless award on Slopviathan",
    points=10,
    trigger=
        award_single(award_flag_slopviathan_sturdy_star_shield_damageless())
)
achievement(
    "Gorgonzilla: Tussle King Crown",
    "Earn the Damageless award on Gorgonzilla",
    points=10,
    trigger=
        award_single(award_flag_gorgonzilla_tussle_king_crown_damageless())
)
achievement(
    "Rancid Rapids: Brute Force Trophy",
    "Earn the Damageless award on Rancid Rapids",
    points=10,
    trigger=
        award_single(award_flag_rancid_rapids_brute_force_trophy_damageless())
)
achievement(
    "Stinkolossus: Papanunu Protector Crown",
    "Earn the Damageless award on Stinkolossus",
    points=10,
    trigger=
        award_single(award_flag_stinkolossus_papanunu_protector_crown_damageless())
)
//Specific Special Awards
achievement(
    "TAK-Tical Planning",
    "Earn the Accuracy award on Stinky Escape!",
    points=5,
    trigger=
        award_single(award_flag_stinky_escape_tak_tical_award_accuracy())
)
achievement(
    "The Destructinator Glove",
    "Earn the Break all objects award on Stinky Escape!",
    points=10,
    trigger=
        award_single(award_flag_stinky_escape_destructinator_glove_break_all_objects())
)
achievement(
    "The Jungle Rumble Sword",
    "Earn the Break all objects award on Chug-A-Mug!",
    points=5,
    trigger= 
        award_single(award_flag_chug_a_mug_jungle_rumble_sword_destroy_objects())
)
achievement(
    "The Shifty Swifty Sash",
    "Earn the Boost Pads award on Chug-A-Mug!",
    points=5,
    trigger=
        award_single(award_flag_chug_a_mug_shifty_swifty_sash_boost_pads())
)
//Minigames

// $19A7364: [Float] Minigame Time (While In Minigame)
function minigame_time_while_in_minigame() => float(0x19A7364)

// $19A74C0: [32bit] Sheep Minigame - P1 Score (While In Minigame)
function sheep_minigame_p1_score_while_in_minigame() => dword(0x19A74C0)

// $19A7650: [32bit] Sheep Minigame - P2 Score (While In Minigame)
function sheep_minigame_p2_score_while_in_minigame() => dword(0x19A7650)

function sheep_player_mode() => dword(0x01962fdc)
one = 0

achievement(
    "Sheep Shooting Expert",
    "Win a game of Tiki Shoot!",
    points=5,
    trigger=
        sheep_minigame_p1_score_while_in_minigame() > sheep_minigame_p2_score_while_in_minigame() &&
        sheep_player_mode() == one &&
        prev(minigame_time_while_in_minigame()) != 0.0 &&
        minigame_time_while_in_minigame() == 0.0
)
// $19A78E0: [32bit] Fondue Frenzy Score
function fondue_fort_score() => dword(0x19A78E0)
function fondue_player_index() => dword(0x195c74c)
function fondue_fort_timer() => float(0x19a7784)
achievement(
    "Tower of Cheese!",
    "Score 10.000 points in Fondue Fort!",
    points=5,
    trigger=
        fondue_player_index() == one &&
        fondue_fort_timer() != 0.0 &&
        prev(fondue_fort_score()) < 10000 &&
        fondue_fort_score() >= 10000 &&
        fondue_fort_score() < 20000 //Prevent misfire when entering level.
)
function goo_gunk_timer() => float(0x019a7834)
function goo_gunk_score() => dword(0x19a7990)
function goo_gunk_index() => dword(0x195723c)
function goo_score(target) =>
    goo_gunk_index() == one &&
    goo_gunk_timer() != 0.0 &&
    prev(goo_gunk_score()) < target &&
    goo_gunk_score() >= target &&
    goo_gunk_score() < target + 10000 //Prevent misfire when entering level.
achievement(
    "Goo Zapper",
    "Score 10.000 points in Goo Gunked!",
    points=5,
    trigger=
        goo_score(10000)
)
achievement(
    "Grabbed By the Goolies",
    "Score 20.000 points in Goo Gunked!",
    points=5,
    
    trigger=
        goo_score(20000)
)    
achievement(
    "Goo Monster Hunter",
    "Score 30.000 points in Goo Gunked!",
    points=10,
    trigger=
        goo_score(30000)
)
function skunk_sliding_arena_index() => dword(0x01941bec)
function skunk_sliding_player_skunks() => dword(0x0194f2a8)
function skunk_sliding_juju_skunks() => dword(0x018f26d8)
function skunk_sliding_index() => dword(0x0196f7ac)
function skunk_sliding_player_score() => dword(0x019a77a0)
function skunk_sliding_juju_score() => dword(0x019a7930)
function skunk_sliding_state_win() => prev(dword(0x019a77d0)) == 0xffffffff && dword(0x019a77d0) == 9
function skunk_win(index) =>
    skunk_sliding_index() == one &&
    skunk_sliding_arena_index() == index &&
    skunk_sliding_player_skunks() == 0 &&
    skunk_sliding_juju_skunks() == 0 &&
    skunk_sliding_player_score() > skunk_sliding_juju_score() &&
    skunk_sliding_state_win()
achievement(
    "Smellin' Up the Arena",
    "Win a game of Skunk Sliding on the first Arena layout!",
    points=5,
    trigger=
        skunk_win(0)
)
achievement(
    "Harder Shuffleboard",
    "Win a game of Skunk Sliding on the second Arena layout!",
    points=5,
    trigger=
        skunk_win(1)
)
achievement(
    "Smelly Skunk Sliding",
    "Win a game of Skunk Sliding on the third Arena layout!",
    points=10,
    trigger=
        skunk_win(2)
)












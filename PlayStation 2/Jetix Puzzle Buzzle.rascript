// Jetix Puzzle Buzzle
// #ID = 28347

// $17AC34: [32bit] State
//          0x00=Playing
//          0x01=Win
//          0x02=Lose
//          0x03=Draw
function player_state() => dword(0x17AC34)

// $17AC44: [32bit] Current Round
//          To Calculate a Mode Win:
//          $17ac44 + 1  > $17ac48
//          Number of Rounds in Each Mode:
//          All Beginner & Easy Difficulties: 8
//          Medium: 9
//          Hard: 10
function round_curr() => dword(0x17AC44)

// $17AC48: [32bit] Max Rounds
//          Funny Enough gets written during survival still, even though you don't progress via rounds.
function round_max() => dword(0x17AC48)

// $17AC90: [32bit] Survival Mode - Wins
function mode_survival_wins() => dword(0x17AC90)

// $17AD38: [32bit] Language
//          0x01=Finnish
//          0x02=English
//          0x03=French
//          0x04=German
//          0x05=Italian
//          0x06=Spanish
//          0x07=Danish
//          0x08=Norwegian
//          0x09=Swedish
//          0x0a=Dutch
function lang() => dword(0x17AD38)

// $17ADAC: [32bit] Custom Mode Settings - Custom Mode
//          0x01=Puzzle Buzzle
//          0x02=Bomb
function mode_custom_setting_mode() => dword(0x17ADAC)

// $17AE44: [32bit] Puzzle Buzzle Mode
//          0x00=Beginner
//          0x01=Expert
function mode_buzzle_mode() => dword(0x17AE44)

// $17AE50: [32bit] Puzzle Buzzle Difficulty
//          0x00=Easy
//          0x01=Medium
//          0x02=Hard
function mode_buzzle_diff() => dword(0x17AE50)

// $17AE54: [32bit] Extra Modes Difficulty
//          0x00=Easy
//          0x01=Medium
//          0x02=Hard
function mode_misc_diff() => dword(0x17AE54)

// $17B6F8: [32bit] Level Timer (Frames @ 50FPS)
function level_timer_frames() => dword(0x17B6F8)

// $17B798: [32bit] Score
function level_score() => dword(0x17B798)

// $17B7AC: [32bit] Boolean - Timer IsActive
//          0x00=False
//          0x01=True
//          
//          Inst Seq:
//          00127A28 lw v1,-0x7444(gp)  //v1 = $17b7ac
//          00127A2C addiu v0,zero,0x1 //v0 = Reference
//          00127A30 bne v1,v0,0x00127A44 //If Timer is Inactive, skip over instructions to set
function level_timer_active() => dword(0x17B7AC)

// $1A8230: [32bit] Solo Mode - Max Level Score
function mode_solo_score_maxlevel() => dword(0x1A8230)

// $1A8270: [32bit] Solo Mode - Max Bonus Bricks
function mode_solo_score_bonusbricks() => dword(0x1A8270)

// $1B3A34: [32bit] Mode
//          0x01=Puzzle Buzzle
//          0x02=Solo
//          0x03=Bomb
//          
//          0x05=Survival
function mode_id() => dword(0x1B3A34)

// $1B71EC: [32bit] Custom Mode Settings - Bomb Time Boolean
//          0x00=Off
//          0x01=On
function mode_custom_setting_boolean_bombtime() => dword(0x1B71EC)

// $1B71F0: [32bit] Custom Mode Settings - Water
//          0x00=Slow
//          0x01=Medium
//          0x02=Fast
function mode_custom_setting_water() => dword(0x1B71F0)

// $1B71F4: [32bit] Custom Difficulty
//          0x01=Easy
//          0x02=Medium
//          0x03=Hard
function mode_custom_setting_difficulty() => dword(0x1B71F4)

// $1B71FC: [32bit] Custom Mode Settings - Rounds
//          0x002710=Infinite (10000)
function mode_custom_setting_rounds() => dword(0x1B71FC)

// $1B7200: [32bit] Custom Mode Settings - Trick Bricks Boolean
//          0x00=Off
//          0x01=On
function mode_custom_setting_boolean_trickbricks() => dword(0x1B7200)

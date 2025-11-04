// Cutthroat Island
// #ID = 8598


function room_ID() => word(0x001e36)
stage_majesty = 0x0
stage_quarry = 0x2
stage_spittafield_start = 0x4
stage_spittafield_end = 0x18
stage_carriagechase = 0xa
stage_harbour = 0x8
stage_mutiny = 0xc
stage_jungle = 0xe
stage_jungle_end_one = 0x12
stage_jungle_end_two = 0x14
stage_cliffs = 0x2e
stage_chamber = 0x22
stage_treasure_chamber = 0x2a
stage_cliffs_two = 0x30
stage_cove = 0x16
stage_sea_battle = 0x32
stage_sea_battle_end = 0x34
function end_game_flag() => bit7(0x0020ec) > prev(bit7(0x0020ec))
function player_count() => word(0x001c7c)
single_player = 0
function stage_clear(prev, curr){
    return prev(room_ID()) == prev && room_ID() == curr && player_count() == single_player
}

achievement(
    "Swashbuckling Beginning!",
    "Clear \"His Majesty's Prison\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_majesty, stage_quarry)
)
achievement(
    "Cart Ride on a... Dirt Path?",
    "Clear \"Quarry\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_quarry, stage_spittafield_start)
)
achievement(
    "Downtown Riot",
    "Clear \"Spittalfield\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_spittafield_end, stage_carriagechase)
)
achievement(
    "Horsedrawn Escape",
    "Clear \"Carriage Chase\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_carriagechase, stage_harbour)
)
achievement(
    "Water Side Rematch!",
    "Clear \"Harbour\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_harbour, stage_mutiny)
)
achievement(
    "Boat Showdown!",
    "Clear \"Mutiny\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_mutiny, stage_jungle)
)
achievement(
    "We Got Fun and Games",
    "Clear \"Jungle\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_jungle_end_one, stage_jungle_end_two)
)
achievement(
    "Cutthroat Cliffhanger",
    "Clear \"Cliff\" for the first time",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_cliffs, stage_chamber)
)
achievement(
    "Across Chains, Treasure Lies!",
    "Clear \"Treasure Chamber\"",
    points=10,
    type="progression",
    trigger=
        stage_clear(stage_treasure_chamber, stage_cliffs_two)
)
achievement(
    "Cliff Jumping!",
    "Clear \"Cliff\" for the second and final time",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_cliffs_two, stage_cove)
)
achievement(
    "A Predatory Encounter!",
    "Clear \"Cove\"",
    points=5,
    type="progression",
    trigger=
        stage_clear(stage_cove, stage_sea_battle)

)
function char() => word(0x001d48)
morgan = 0 
shaw = 2
achievement(
    "Morgan's Sea Battle",
    "Clear \"Sea Battle\" as Morgan",
    points=10,
    type="win_condition",
    trigger=
        room_ID() == stage_sea_battle_end &&
        player_count() == single_player && 
        char() == morgan && 
        end_game_flag()
)
achievement(
    "Shaw's Sea Battle",
    "Clear \"Sea Battle\" as Shaw",
    points=10,
    type="win_condition",
    trigger=
        room_ID() == stage_sea_battle_end &&
        player_count() == single_player && 
        char() == shaw && 
        end_game_flag()
)
function health() => word(0x0007cc)
achievement(
    "A Flawless Final Showdown",
    "As Morgan, defeat the final boss in \"Sea Battle\" without taking damage",
    points=25,
    trigger=
        unless(char() != morgan) &&
        once(prev(room_ID()) == stage_sea_battle && room_ID() == stage_sea_battle_end) &&
        trigger_when(end_game_flag()) &&
        never(health() < prev(health()))
)
achievement(
    "A Flawless Final Shawdown",
    "As Shaw, defeat the final boss in \"Sea Battle\" without taking damage",
    points=25,
    trigger=
        unless(char() != shaw) &&
        once(prev(room_ID()) == stage_sea_battle && room_ID() == stage_sea_battle_end) &&
        trigger_when(end_game_flag()) &&
        never(health() < prev(health()))
)
function chest_count() => word(0x002090)
achievement(
    "Sweepstakes Winner",
    "Collect all five treasure chests throughout the game to unlock unique Sweepstakes questions",
    points=10,
    trigger=
        prev(chest_count()) == 4 &&
        measured(chest_count() == 5)
)

//RP

char_lookup = {
    morgan:"Morgan",
    shaw:"Shaw"
}
room_lookup = {
    0:"His Majesty's Prison",
    2:"Quarry",
    4:"Spittalfield",
    6:"Spittalfield",
    8:"Harbour",
    0xa:"Carriage Chase",
    0xc:"Mutiny",
    0xe:"Jungle",
    0x10:"Jungle",
    0x12:"Jungle",
    0x14:"Jungle",
    0x16:"Cove",
    0x18:"Spittalfield",
    0x1c:"Spittalfield",
    0x1e:"Spittalfield",
    0x20:"Spittalfield",
    0x22:"Treasure Chamber",
    0x24:"Treasure Chamber",
    0x26:"Treasure Chamber",
    0x2a:"Treasure Chamber",
    0x2e:"Cliff",
    0x30:"Cliff",
    0x32:"Sea Battle",
    0x34:"Sea Battle"
}
offhand_lookup = {
    0xffff:"",
    0x0001:"Scimitar",
    0x0002:"Sabre",
    0x0004:"Dagger",
    0x0005:"Hammer",
    0x0008:"Candle",
    0x0009:"Pistol",
    0x000b:"Bottle",
    0x000e:"Bomb"
    
}

function score() => word(0x0020cc) + (word(0x0020ce) * 10) + (word(0x0020d0) * 100) + (word(0x0020d2) * 1000) + (word(0x0020d4) * 10000)
function score_shaw() => word(0x0020d6) + (word(0x0020d8) * 10) + (word(0x0020da) * 100) + (word(0x0020dc) * 1000) + (word(0x0020de) * 10000)
function morgan_offhand() => word(0x001dd6)
function morgan_live() => word(0x0020e4)
function shaw_live() => word(0x0020e6)
rich_presence_conditional_display(player_count() != single_player, "You are playing in multiplayer! Achievements won't work!")

rich_presence_conditional_display(char() == morgan && score() != 0 && player_count() == single_player, "Morgan is swashbuckling through {0} | Offhand: {1} | Lives: {2} | Score: {3}",
    rich_presence_lookup("Room", room_ID(), room_lookup),
    rich_presence_lookup("Offhand", word(0x001dd6), offhand_lookup),
    rich_presence_macro("Number", morgan_live()),
    rich_presence_value("Score", score(), "POINTS")

)
rich_presence_conditional_display(char() == shaw && score_shaw() != 0 && player_count() == single_player, "Shaw is swashbuckling through {0} | Offhand: {1} | Lives: {2} | Score: {3}",
    rich_presence_lookup("Room", room_ID(), room_lookup),
    rich_presence_lookup("Offhand", word(0x001dd8), offhand_lookup),
    rich_presence_value("Digit", shaw_live()),
    rich_presence_value("Score", score_shaw(), "POINTS")

)



rich_presence_display("In Menu")











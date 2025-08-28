// Pokémon Ranger: Guardian Signs
// #ID = 16163
function game_state() => dword(0x000a4994)
in_game = 2
in_battle = 3
in_menu = 0x1c

function map() => word_be(0x00134a57)
map_ids = {
    0x0200:"Dolce Island: Southern Beach",
    0x0201:"Dolce Island: Heights",
    0x0202:"Dolce Island: Heights",
    0x0203:"Dolce Island: Eastern Beach",
    0x0300:"Renbow Island: Cocona Village",
    0x0301:"Renbow Island: Cocona Village",
    0x0302:"Renbow Island: Cocona Village",
    0x0303:"Renbow Island: Cocona Village",
    0x0304:"Renbow Island: Cocona Village",
    0x0305:"Renbow Island: Cocona Village",
    0x0306:"Renbow Island: Cocona Village",
    0x0400:"Renbow Island: Teakwood Forest",
    0x0401:"Renbow Island: Teakwood Forest",
    0x0500:"Renbow Island: Rasp Cavern",
    0x0501:"Renbow Island: Rasp Cavern",
    0x0503:"Renbow Island: Rasp Cavern",
    0x0504:"Renbow Island: Rasp Cavern",
    0x0505:"Renbow Island: Rasp Cavern",
    0x0507:"Renbow Island: Rasp Cavern",
    0x0508:"Renbow Island: Rasp Cavern",
    0x0601:"Renbow Island: Cocona Village",
    0x0603:"Renbow Island: Lapras Beach",
    
    0x0800:"Renbow Island: Curl Bay",
    0x0900:"Renbow Island: Rand's House",
    0x0903:"Renbow Island: Rand's House",
    0x0904:"Renbow Island: Rand's House",
    0x0905:"Renbow Island: Rand's House"
}


/*
Missing Map locations:
Rasp Cavern - Pokemon Sign door

*/

rich_presence_conditional_display(game_state() == in_battle, "Fighting a Pokemon")
rich_presence_conditional_display(game_state() == in_game, "Exploring {0}",
    rich_presence_lookup("Map", map(), map_ids)

)
rich_presence_display("In Menu")
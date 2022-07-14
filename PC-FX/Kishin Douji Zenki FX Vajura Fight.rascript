// Kishin Douji Zenki FX: Vajura Fight
// #ID = 9525

// $00270C: [16bit] Player Health
function health() => word(0x00270c)
// $00270E: [16bit] Player (Max Health)
// $0029EC: [16bit] Current Boss Health
function boss_health() => word(0x0029ec)
// $0029EE: [16bit] Boss - Max Health
// $025A04: [32bit] Difficulty Level
//          0x00=Easy
//          0x01=Normal
//          0x02=Hard
function difficulty() => dword(0x025a04)
easy = 0
normal = 1
hard = 2
rp_difficulty = {
    0:"Easy",
    1:"Normal",
    2:"Hard"
}

function player_state() => dword(0x035360)
// $035360: [32bit] Player State
//          0xffffffff = In Menu
//          0x01= Game Over (Use Continue)
//          0x00 = In Game (Zenki)
//          0x02 = In Game (Chiaki)
zenki = 0
chiaki = 2
// $035828: [32bit] Number of Credits
function credits() => byte(0x035828)
// $035394: [8bit] Number of Players
//          0x01=1 Player
//          0x02=2 Player
function players() => dword(0x035394)
// $029D80: [32bit] Room ID
function room_ID() => dword(0x029d80)
//          0x00000000 = Booting
//          0xffffffff = In Title
//          =====STAGE 1========
//          The Provocation of the Black Demon God
//          0x000710a4 = Room 1 - (Wawashi Fight)
function progression(lastroom, newroom) =>
        difficulty() >= normal &&
        players() == 1 &&
        prev(room_ID()) == lastroom &&
        room_ID() == newroom
achievement(
    "The Provocation of the Black Demon God",
    "Defeat Wawashi and Clear Stage 1 on Normal or higher!",
    points=3,
    trigger=
        progression(0x000710a4, 0x00078c7e)
)
//          =====STAGE 2========
//          Unknown Dark World
//          0x00078c7e = Room 1 (Endoku Fight)
//          0x00079080 = Room 2
//          0x00079664 = Room 3 (Last Phase)
//          0x00079780 = Room 4 (Endoku Death)
achievement(
    "Unknown Dark World",
    "Defeat Endoku and Clear Stage 2 on Normal or higher!",
    points=5,
    trigger=
        progression(0x00079664, 0x00079780)
)
//          =====STAGE 3========
//          Messenger from the Sky
//          0x00072fd2 = Room 1 (Shoukouga Fight)
achievement(
    "Messenger from the Sky",
    "Defeat Shoukouga and Clear Stage 3 on Normal or higher!",
    points=5,
    trigger=
        progression(0x00072fd2, 0x0007a6ee)
)
//          =====STAGE 4========
//          The Train
//          0x0007a6ee = Room 1
//          0x0007a828 = Room 2
//          0x0007aa4a = Room 3
//          0x0007a938 = Room 4
//          0x000730d6 = Room 5 - (Gahekiyou Fight)
//          0x000726da = Room 6
achievement(
    "The Train",
    "Defeat Gahekiyou and Clear Stage 4 on Normal or higher!",
    points=5,
    trigger=
        progression(0x000730d6, 0x000726da)
)
//          =====STAGE 5========
//          The Sewers
//          0x000781ce = Room 1
//          0x00078328 = Room 2 (Gairinzan Fight)
achievement(
    "The Sewers",
    "Defeat Gairinzan and Clear Stage 5 on Normal or higher!",
    points=5,
    trigger=
        progression(0x00078328, 0x00070714)
)
//          =====STAGE 6========
//          The Captive Girl
//          0x00070714 = Room 1
//          0x0007080c = Room 2
//          0x000708f0 = Room 3 (Girl Captive)
achievement(
    "The Captive Girl",
    "Complete Stage 6 on Normal or higher!",
    points=5,
    trigger=
        progression(0x000708f0, 0x00070ae4)
)
//          0x00070ae4 = Room 4 (Room Before Next Stage)
//          =====STAGE 7========
//          High Rise Thugs
//          0x0007801e = Room 1
//          0x000780ec = Room 2 (Hiki  Fight)
//          0x00078272 = Room 3
achievement(
    "High Rise Thugs",
    "Defeat Hiki and Clear Stage 7 on Normal or higher!",
    points=5,
    trigger=
        progression(0x000780ec, 0x00078272)
)
//          =====STAGE 8========
//          The Rooftops
//          0x000704e8 = Room 1
//          0x0007061c = Room 2
achievement(
    "The Rooftops",
    "Clear Stage 8 on Normal or higher!",
    points=5,
    trigger=
        progression(0x0007061c, 0x00079fee)
)
//          =====STAGE 9========
//          Tetuhenreki: Made of Strength
//          0x00079fee = Room 1 (Tetuhenreki Fight)
achievement(
    "Tetuhenreki: Made of Strength",
    "Defeat Tetuhenreki? and Clear Stage 9 on Normal or higher!",
    points=5,
    trigger=
        progression(0x00079fee, 0x00072ab2)
)
//          =====STAGE 10========
//          Tetuhenreki's Counterattack!
//          0x00072ab2 = Room 1 - (Tetuhenreki Fight Phase 2)
achievement(
    "Tetuhenreki's Counterattack!",
    "Finally defeat Tetuhenreki and Clear Stage 10 on Normal or higher!",
    points=5,
    trigger=
        progression(0x00072ab2, 0x00072b90)
)
//          0x00072b90 = Room 2
//          =====STAGE 11========
//          Fear Giant Razurou
//          0x0007825e = Room 1 (Razurou Fight)
achievement(
    "Fear Giant Razurou",
    "Defeat Razurou and Clear Stage 11 on Normal or higher!",
    points=10,
    trigger=
        progression(0x0007825e, 0x00071cf8)
)
//          =====STAGE 12========
//          The Final Battle!
//          0x00071cf8 = Room 1 (Marubasu Fight)
//          =====ENDING========
achievement(
    "The Final Battle!",
    "Defeat Marabasu and win the game on Normal or higher!",
    points=25,
    trigger=
        progression(0x00071cf8, 0x00078f84)
)
//          0x00078f84 = Ending Room
// $029D84: [8bit] Game Is Paused
//          0x00=No
//          0x01=Yes
// $035360: [32bit] Player State
//          0xffffffff = In Menu
//          0x01= Game Over (Use Continue?)
//          0x00 = In Game (Zenki)
//          0x02 = In Game (Chiaki)
function damageless_hit(lastroom, currentroom, menu_check){
    if(menu_check == "level select") {
        return once((prev(room_ID()) == lastroom || prev(room_ID()) == 0xffffffff) && room_ID() == currentroom)
    }
    else return once(prev(room_ID()) == lastroom && room_ID() == currentroom)
}
function damageless_check() =>
        trigger_when(boss_health() < prev(boss_health()) && boss_health() == 0) &&
        never(difficulty() != hard) &&
        never(health() < prev(health())) &&
        never(players() == 2)
achievement(
    "Bested Wawashi",
    "Defeat Wawashi without taking damage on Hard difficulty",
    points=10,
    trigger=
        damageless_hit(0xffffffff, 0x000710a4, "normal") &&
        damageless_check()        
)
achievement(
    "Bested Endoku",
    "Defeat Endoku and his minions without taking damage Hard difficulty",
    points=10,
    trigger=
        damageless_hit(0x000710a4, 0x00078c7e, "level select") &&
        damageless_check()
)
achievement(
    "Bested Shoukouga",
    "Defeat Shoukouga without taking damage on Hard difficulty",
    points=10,
    trigger=
        damageless_hit(0x00079780, 0x00072fd2, "level select") &&
        damageless_check()
)
achievement(
    "Bested Gahekiyou",
    "Defeat Gahekiyou without taking damage on Hard difficulty",
    points=10,
    trigger=
        damageless_hit(0x0007a938, 0x000730d6, "normal") &&
        damageless_check()
)
achievement(
    "Bested Gairinzan",
    "Defeat Gairinzan without taking damage on Hard difficulty",
    points=10,
    trigger=
        damageless_hit(0x000781ce, 0x00078328, "normal") &&
        damageless_check()
)
achievement(
    "Bested Hiki",
    "Defeat Hiki without taking damage on Hard difficulty",
    points=10,
    trigger=
        damageless_hit(0x0007801e, 0x000780ec, "normal") &&
        damageless_check()
)
achievement(
    "Bested Tetuhenreki",
    "Successfully run away and defeat Tetuhenreki without taking damage on Hard difficulty",
    points=25,
    trigger=
        damageless_hit(0x0007061c, 0x00079fee, "level select") &&
        damageless_check()
)
achievement(
    "Bested Razurou",
    "Defeat Razurou without taking damage on Hard difficulty (First hit unavoidable!)",
    points=25,
    trigger=
        damageless_hit(0x00072b90, 0x0007825e, "level select") &&
        trigger_when(boss_health() < prev(boss_health()) && boss_health() == 0) &&
        never(difficulty() != hard) &&
        never(repeated(2, health() < prev(health())))
)
achievement(
    "Bested Marubasu",
    "Defeat Marubasu without taking damage on Hard difficulty",
    points=25,
    trigger=
        damageless_hit(0x0007825e, 0x00071cf8, "level select") &&
        damageless_check()
)
function no_game_over() =>
       damageless_hit(0xffffffff, 0x000710a4, "normal") && 
       trigger_when(prev(room_ID()) == 0x00071cf8 && room_ID() == 0x00078f84)
       never(difficulty() != hard) &&
       never(credits() == 0 && health() < prev(health()) && health() == 0) &&
       never(players() == 2)
achievement(
    "Vajura On!",
    "Beat the game as Chiaki on Hard difficulty without losing all your credits and taking game over! (One Session)",
    points=50,
    id=225663,
    trigger=       
       no_game_over() &&
       never(player_state() == zenki) &&
       never(difficulty() != hard)
)
achievement(
    "You Got the Thunder!",
    "Beat the game as Zenki on Hard difficulty without losing all your credits and taking game over! (One Session)",
    points=50,
    id=225664,
    trigger=
        no_game_over() &&
       never(player_state() == chiaki) &&
       never(difficulty() != hard)
)
achievement(
    "A Long, Dark Ride...",
    "Get through the train and reach Gahekiyou's fight room without taking any damage on Hard difficulty!",
    points=25,
    trigger=
        damageless_hit(0x00072fd2, 0x0007a6ee, "level select") &&
        trigger_when(prev(room_ID()) == 0x0007a938 && room_ID() == 0x000730d6) &&
        never(health() < prev(health())) &&
        never(difficulty() != hard)
)
achievement(
    "Kermit the Unconscious Frog",
    "Get a secret extra credit!",
    points=2,
    trigger=
        room_ID() == 0x000726da &&
        credits() > prev(credits())        
)

characters = {
    0:"Zenki",
    2:"Chiaki"
}

room_ids = {
    0x00000000: "Booting…",
    0xffffffff: "In Menu",    
    0x000710a4: "Stage 1",
    0x00078c7e: "Stage 2-1",
    0x00079080: "Stage 2-2",
    0x00079664: "Stage 2-3",
    0x00079780: "Stage 2-4",
    0x00072fd2: "Stage 3-1",
    0x0007a3ee: "Stage 4-1",
    0x0007a828: "Stage 4-2",
    0x0007aa4a: "Stage 4-3",
    0x0007a938: "Stage 4-4",
    0x000730d6: "Stage 4-5",
    0x000726da: "Stage 4-6",
    0x000781ce: "Stage 5-1",
    0x00078328: "Stage 5-2",
    0x00070714: "Stage 6-1",
    0x0007080c: "Stage 6-2",
    0x000708f0: "Stage 6-3",
    0x00070ae4: "Stage 6-4",
    0x0007801e: "Stage 7-1",
    0x000780ec: "Stage 7-2",
    0x00078272: "Stage 7-3",
    0x000704e8: "Stage 8-1",
    0x0007061c: "Stage 8-2",
    0x00079fee: "Stage 9",
    0x00072ab2: "Stage 10-1",
    0x00072b90: "Stage 10-2",
    0x0007825e: "Stage 11",
    0x00071cf8: "Stage 12",
    0x00078f84: "The Ending!"
}
rich_presence_conditional_display(player_state() == 1, "Game Over!")
rich_presence_conditional_display(room_ID() != 0x0 && room_ID() != 0xffffffff && room_ID() != 0x78f84, "{0} is in {1} on {2} 💳 {3}",
    rich_presence_lookup("Char", player_state(), characters),
    rich_presence_lookup("Stage", room_ID(), room_ids),
    rich_presence_lookup("Diff", difficulty(), rp_difficulty),
    rich_presence_macro("Number", credits())
)
rich_presence_display("{0}",
    rich_presence_lookup("Stage", room_ID(), room_ids)
)
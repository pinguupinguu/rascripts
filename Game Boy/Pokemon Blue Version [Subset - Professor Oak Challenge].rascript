// Pokemon Blue Version [Subset - Professor Oak Challenge]
// #ID = 29295

// $CD3D: 3>2>1>00 Caught
// $CEEC: 0x00 = evolved
// $CFCB: Character on Map (8-bit)
//        
//        0xff = Invalid
//        0x00 = No
//        0x01 = Yes

// $D2F6: Dex Starts below
// $D2F7: 1-8
//        [bit0] Bulbasaur (Starter)
//        [bit1] Ivysaur (Starter)
//        [bit2] Venusaur (Starter)
//        [bit3] Charmander (Starter)
//        [bit4] Charmeleon (Starter)
//        [bit5] Charizard (Starter)
//        [bit6] Squirtle (Starter)
//        [bit7] Wartortle (Starter)
// $D2F8: 8-16
//        [bit0] Blastoise (Starter)
//        [bit1] Caterpie
//        [bit2] Metapod
//        [bit3] Butterfree
//        [bit4] Weedle
//        [bit5] Kakuna
//        [bit6] Beedrill
//        [bit7] Pidgey
// $D2F9: 17-24
//        [bit0] Pidgeotto
//        [bit1] Pidgeot
//        [bit2] Rattata
//        [bit3] Raticate
//        [bit4] Spearow
//        [bit5] Fearow
//        [bit6] Ekans (R)
//        [bit7] Arbok (R)
// $D2FA: 25-32
//        [bit0] Pikachu
//        [bit1] Raichu
//        [bit2] Sandshrew (B)
//        [bit3] Sandslash (B)
//        [bit4] NidoranF
//        [bit5] Nidorina
//        [bit6] Nidoqueen
//        [bit7] NidoranM
// $D2FB: 33-40
//        [bit0] Nidorino
//        [bit1] Nidoking
//        [bit2] Clefairy
//        [bit3] Clefable
//        [bit4] Vulpix (B)
//        [bit5] Ninetales (B)
//        [bit6] Jigglypuff
//        [bit7] Wigglytuff
// $D2FC: 41-48
//        [bit0] Zubat
//        [bit1] Golbat
//        [bit2] Oddish (R)
//        [bit3] Gloom (R)
//        [bit4] Vileplume (R)
//        [bit5] Paras
//        [bit6] Parasect
//        [bit7] Venonat
// $D2FD: 49-56
//        [bit0] Venomoth
//        [bit1] Diglett
//        [bit2] Dugtrio
//        [bit3] Meowth (B)
//        [bit4] Persian (B)
//        [bit5] Psyduck
//        [bit6] Golduck
//        [bit7] Mankey (R)
// $D2FE: 57-64
//        [bit0] Primeape (R)
//        [bit1] Growlithe (R)
//        [bit2] Arcanine (R)
//        [bit3] Poliwag
//        [bit4] Poliwhirl
//        [bit5] Poliwrath
//        [bit6] Abra
//        [bit7] Kadabra
// $D2FF: 65-72
//        [bit0] Alakazam (Trade)
//        [bit1] Machop
//        [bit2] Machoke
//        [bit3] Machamp (Trade)
//        [bit4] Bellsprout (B)
//        [bit5] Weepinbell (B)
//        [bit6] Victreebel (B)
//        [bit7] Tentacool
// $D300: 73-80
//        [bit0] Tentacruel
//        [bit1] Geodude
//        [bit2] Graveler
//        [bit3] Golem (Trade)
//        [bit4] Ponyta
//        [bit5] Rapidash
//        [bit6] Slowpoke
//        [bit7] Slowbro
// $D301: 81-88
//        [bit0] Magnemite
//        [bit1] Magneton
//        [bit2] Farfetch'd
//        [bit3] Doduo
//        [bit4] Dodrio
//        [bit5] Seel
//        [bit6] Dewgong
//        [bit7] Grimer
// $D302: 89-96
//        [bit0] Muk
//        [bit1] Shellder
//        [bit2] Cloyster
//        [bit3] Gastly
//        [bit4] Haunter
//        [bit5] Gengar (Trade)
//        [bit6] Onix
//        [bit7] Drowzee
// $D303: 97-104
//        [bit0] Hypno
//        [bit1] Krabby
//        [bit2] Kingler
//        [bit3] Voltorb
//        [bit4] Electrode
//        [bit5] Exeggcute
//        [bit6] Exeggutor
//        [bit7] Cubone
// $D304: 105-112
//        [bit0] Marowak
//        [bit1] Hitmonlee (Choice)
//        [bit2] Hitmonchan (Choice)
//        [bit3] Lickitung
//        [bit4] Koffing
//        [bit5] Weezing
//        [bit6] Rhyhorn
//        [bit7] Rhydon
// $D305: 113-120
//        [bit0] Chansey
//        [bit1] Tangela
//        [bit2] Kangaskhan
//        [bit3] Horsea
//        [bit4] Seadra
//        [bit5] Goldeen
//        [bit6] Seaking
//        [bit7] Staryu
// $D306: 121-128
//        [bit0] Starmie
//        [bit1] Mr. Mime
//        [bit2] Scyther (R)
//        [bit3] Jynx
//        [bit4] Electabuzz (R)
//        [bit5] Magmar (B)
//        [bit6] Pinsir (B)
//        [bit7] Tauros
// $D307: 129-136
//        [bit0] Magikarp
//        [bit1] Gyrados
//        [bit2] Lapras
//        [bit3] Ditto
//        [bit4] Eevee
//        [bit5] Vaporeon (Choice)
//        [bit6] Jolteon (Choice)
//        [bit7] Flareon (Choice)
// $D308: 137-144
//        [bit0] Porygon
//        [bit1] Omanyte (Choice)
//        [bit2] Omastar (Choice)
//        [bit3] Kabuto (Choice)
//        [bit4] Kabutops (Choice)
//        [bit5] Aerodactyl
//        [bit6] Snorlax
//        [bit7] Articuno
// $D309: Pokedex Caught End 145-151 / 7F=full
//        [bit0] Zapdos
//        [bit1] Moltres
//        [bit2] Dratini
//        [bit3] Dragonair
//        [bit4] Dragonite
//        [bit5] Mewtwo
//        [bit6] Mew (Unobtainable)
// $D356: Badges
// $D35B: [8bit] Audio Bank
//        00=None

// $D367: bit 7 = Title Screen
// $D5AE: bit5 = Eevee
// $D72E: bit0 = Lapras
// $D737: Trades
//        bit0 = Nidorino for Nidorina Trade
//        bit1 = Abra for Mr. Mime Trade
//        bit3 = Ponyta for Seel Trade
//        bit4 = Spearow for Farfetch'd Trade
//        bit5 = Slowbro for Lickitung
//        bit6 = Poliwhirl for Jynx Trade
//        bit7 = Raichu for Electrode Trade
// $D738: Trades
//        bit0 = Venonat for Tangela Trade
//        bit1 = NidoranM for NidoranF Trade
// $D7B1: bit0 = Claimed Prize
//        bit1 = Blackbelt 01 (Karate Master)
//        bit2 = Blackbelt 02
//        bit3 = Blackbelt 03
//        bit4 = Blackbelt 04
//        bit5 = Blackbelt 05
//        bit6 = Hitmonlee
//        bit7 = Hitmonchan
// $D7C6: bit7 = Bought Magikarp
// $DA40: Hours (2 bytes)
// $DA42: Minutes (2 bytes)
// $DA44: Seconds
// $DA45: Frames


// $D35E: [8bit] Map Bank
//        0x28=Oak's Lab
map_bank = byte(0xd35e)
oak_lab = 0x28
brock_gym = 0x36
in_title = 0x00
save_protection = prev(map_bank) != in_title
// $D164: [8bit] First Pokemon In Slot
//        0xff=Invalid
//        0x99=Bulbasaur
//        0xb0=Charmander
//        0xb1=Squirtle
first_slot = byte(0xd164)
invalid = 0xff
bulbasaur = 0x99
charmander = 0xb0
squirtle = 0xb1
achievement(
    "Beginning Your Journey",
    "Select Charmander, Bulbasaur, or Squirtle as your starter Pokemon.",
    points=1,
    trigger=
        map_bank == oak_lab &&
        
        prev(first_slot) == invalid &&
        (always_false()
         || first_slot == bulbasaur
         || first_slot == charmander
         || first_slot == squirtle
        )        
)
function own(flag) => prev(flag) == 1
function update(flag) => flag > prev(flag)
pkmn = { //Reference table as pokemon_flags[name] for calls.
    "Bulbasaur": bit0(0xd2f7),
    "Ivysaur": bit1(0xd2f7),
    "Venusaur": bit2(0xd2f7),
    "Charmander": bit3(0xd2f7),
    "Charmeleon": bit4(0xd2f7),
    "Charizard": bit5(0xd2f7),
    "Squirtle": bit6(0xd2f7),
    "Wartortle": bit7(0xd2f7),
    "Blastoise": bit0(0xd2f8),
    "Caterpie": bit1(0xd2f8),
    "Metapod": bit2(0xd2f8),
    "Butterfree": bit3(0xd2f8),
    "Weedle": bit4(0xd2f8),
    "Kakuna": bit5(0xd2f8),
    "Beedrill": bit6(0xd2f8),
    "Pidgey": bit7(0xd2f8),
    "Pidgeotto": bit0(0xd2f9),
    "Pidgeot": bit1(0xd2f9),
    "Rattata": bit2(0xd2f9),
    "Raticate": bit3(0xd2f9),
    "Spearow": bit4(0xd2f9),
    "Fearow": bit5(0xd2f9),
    "Ekans": bit6(0xd2f9),
    "Arbok": bit7(0xd2f9),
    "Pikachu": bit0(0xd2fa),
    "Raichu": bit1(0xd2fa),
    "Sandshrew": bit2(0xd2fa),
    "Sandslash": bit3(0xd2fa),
    "NidoranF": bit4(0xd2fa),
    "Nidorina": bit5(0xd2fa),
    "Nidoqueen": bit6(0xd2fa),
    "NidoranM": bit7(0xd2fa),
    "Nidorino": bit0(0xd2fb),
    "Nidoking": bit1(0xd2fb),
    "Clefairy": bit2(0xd2fb),
    "Clefable": bit3(0xd2fb),
    "Vulpix": bit4(0xd2fb),
    "Ninetales": bit5(0xd2fb),
    "Jigglypuff": bit6(0xd2fb),
    "Wigglytuff": bit7(0xd2fb),
    "Zubat": bit0(0xd2fc),
    "Golbat": bit1(0xd2fc),
    "Oddish": bit2(0xd2fc),
    "Gloom": bit3(0xd2fc),
    "Vileplume": bit4(0xd2fc),
    "Paras": bit5(0xd2fc),
    "Parasect": bit6(0xd2fc),
    "Venonat": bit7(0xd2fc),
    "Venomoth": bit0(0xd2fd),
    "Diglett": bit1(0xd2fd),
    "Dugtrio": bit2(0xd2fd),
    "Meowth": bit3(0xd2fd),
    "Persian": bit4(0xd2fd),
    "Psyduck": bit5(0xd2fd),
    "Golduck": bit6(0xd2fd),
    "Mankey": bit7(0xd2fd),
    "Primeape": bit0(0xd2fe),
    "Growlithe": bit1(0xd2fe),
    "Arcanine": bit2(0xd2fe),
    "Poliwag": bit3(0xd2fe),
    "Poliwhirl": bit4(0xd2fe),
    "Poliwrath": bit5(0xd2fe),
    "Abra": bit6(0xd2fe),
    "Kadabra": bit7(0xd2fe),
    "Alakazam": bit0(0xd2ff),
    "Machop": bit1(0xd2ff),
    "Machoke": bit2(0xd2ff),
    "Machamp": bit3(0xd2ff),
    "Bellsprout": bit4(0xd2ff),
    "Weepinbell": bit5(0xd2ff),
    "Victreebel": bit6(0xd2ff),
    "Tentacool": bit7(0xd2ff),
    "Tentacruel": bit0(0xd300),
    "Geodude": bit1(0xd300),
    "Graveler": bit2(0xd300),
    "Golem": bit3(0xd300),
    "Ponyta": bit4(0xd300),
    "Rapidash": bit5(0xd300),
    "Slowpoke": bit6(0xd300),
    "Slowbro": bit7(0xd300),
    "Magnemite": bit0(0xd301),
    "Magneton": bit1(0xd301),
    "Farfetch'd": bit2(0xd301),
    "Doduo": bit3(0xd301),
    "Dodrio": bit4(0xd301),
    "Seel": bit5(0xd301),
    "Dewgong": bit6(0xd301),
    "Grimer": bit7(0xd301),
    "Muk": bit0(0xd302),
    "Shellder": bit1(0xd302),
    "Cloyster": bit2(0xd302),
    "Gastly": bit3(0xd302),
    "Haunter": bit4(0xd302),
    "Gengar": bit5(0xd302),
    "Onix": bit6(0xd302),
    "Drowzee": bit7(0xd302),
    "Hypno": bit0(0xd303),
    "Krabby": bit1(0xd303),
    "Kingler": bit2(0xd303),
    "Voltorb": bit3(0xd303),
    "Electrode": bit4(0xd303),
    "Exeggcute": bit5(0xd303),
    "Exeggutor": bit6(0xd303),
    "Cubone": bit7(0xd303),
    "Marowak": bit0(0xd304),
    "Hitmonlee": bit1(0xd304),
    "Hitmonchan": bit2(0xd304),
    "Lickitung": bit3(0xd304),
    "Koffing": bit4(0xd304),
    "Weezing": bit5(0xd304),
    "Rhyhorn": bit6(0xd304),
    "Rhydon": bit7(0xd304),
    "Chansey": bit0(0xd305),
    "Tangela": bit1(0xd305),
    "Kangaskhan": bit2(0xd305),
    "Horsea": bit3(0xd305),
    "Seadra": bit4(0xd305),
    "Goldeen": bit5(0xd305),
    "Seaking": bit6(0xd305),
    "Staryu": bit7(0xd305),
    "Starmie": bit0(0xd306),
    "Mr. Mime": bit1(0xd306),
    "Scyther": bit2(0xd306),
    "Jynx": bit3(0xd306),
    "Electabuzz": bit4(0xd306),
    "Magmar": bit5(0xd306),
    "Pinsir": bit6(0xd306),
    "Tauros": bit7(0xd306),
    "Magikarp": bit0(0xd307),
    "Gyrados": bit1(0xd307),
    "Lapras": bit2(0xd307),
    "Ditto": bit3(0xd307),
    "Eevee": bit4(0xd307),
    "Vaporeon": bit5(0xd307),
    "Jolteon": bit6(0xd307),
    "Flareon": bit7(0xd307),
    "Porygon": bit0(0xd308),
    "Omanyte": bit1(0xd308),
    "Omastar": bit2(0xd308),
    "Kabuto": bit3(0xd308),
    "Kabutops": bit4(0xd308),
    "Aerodactyl": bit5(0xd308),
    "Snorlax": bit6(0xd308),
    "Articuno": bit7(0xd308),
    "Zapdos": bit0(0xd309),
    "Moltres": bit1(0xd309),
    "Dratini": bit2(0xd309),
    "Dragonair": bit3(0xd309),
    "Dragonite": bit4(0xd309),
    "Mewtwo": bit5(0xd309),
    "Mew": bit6(0xd309)
}
badges ={
    "Brock":bit0(0xd356),
    "Misty":bit1(0xd356)
}
/* There are three ways of updating the Pokedex:
Catching for the first time. (Typically first evolution)
Catching OR evolving (Middle Evolution)
Evolving (Final evolution)
We need to create three separate functions to account for these events across the dex.
*/
function gym_check(mode, checks) {
    if(mode == 1) return checks 
    else return 0==0
}
function obtain(name, points, flag, badge, mode, checks){
    achievement(
        name,
        "Obtain " + name,
        points=points,
        trigger=
            save_protection &&
            badge == 0 &&
            update(flag) &&
            gym_check(mode, checks)
    )
}
/*
Check for either evolve or caught pokemon
by utilizing two addresses in alts
*/

function evolve_raw(flag, last_flag) => prev(last_flag) == 1 && update(flag)
function evolve(name, points, flag, last_flag, badge, mode, checks){
    achievement(
        name,
        "Obtain " + name,
        points=points,
        trigger=
            save_protection &&
            badge == 0 &&
            prev(last_flag) == 1 && update(flag) &&
            gym_check(mode, checks)
    )
}
achievement(
    "Charmeleon, Ivysaur, Wartortle",
    "Evolve your starter for the first time",
    points=2,
    trigger=
        save_protection &&
        (always_false()
        || own(pkmn["Bulbasaur"]) && update(pkmn["Ivysaur"])
        || own(pkmn["Charmander"]) && update(pkmn["Charmeleon"])
        || own(pkmn["Squirtle"]) && update(pkmn["Wartortle"])
        )
)
achievement(
    "Charizard, Venusaur, Blastoise",
    "Evolve your starter for the second and final time",
    points=3,
    trigger=
        save_protection &&
        (always_false()
        || own(pkmn["Ivysaur"]) && update(pkmn["Venusaur"])
        || own(pkmn["Charmeleon"]) && update(pkmn["Charizard"])
        || own(pkmn["Wartortle"]) && update(pkmn["Blastoise"])
        )
)
//First Gym Area:
obtain("Caterpie", 1, pkmn["Caterpie"], badges["Brock"], 0 , 0)
obtain("Metapod", 2, pkmn["Metapod"], badges["Brock"], 0, 0)
evolve("Butterfree", 3, pkmn["Butterfree"], pkmn["Metapod"], badges["Brock"], 0 , 0)
obtain("Weedle", 1, pkmn["Weedle"], badges["Brock"], 0 , 0)
obtain("Kakuna", 2, pkmn["Kakuna"], badges["Brock"], 0 , 0)
evolve("Beedrill", 3, pkmn["Beedrill"], pkmn["Kakuna"], badges["Brock"], 0 , 0)
obtain("Pidgey", 1, pkmn["Pidgey"], badges["Brock"], 0 , 0)
evolve("Pidgeotto", 2, pkmn["Pidgeotto"], pkmn["Pidgey"], badges["Brock"], 0 , 0)
evolve("Pidgeot", 3, pkmn["Pidgeot"], pkmn["Pidgeotto"], badges["Brock"], 0 , 0)
obtain("Rattata", 1, pkmn["Rattata"], badges["Brock"], 0 , 0)
evolve("Raticate", 2, pkmn["Raticate"], pkmn["Rattata"], badges["Brock"], 0 , 0)
obtain("Spearow", 1, pkmn["Spearow"], badges["Brock"], 0, 0)
evolve("Fearow", 2, pkmn["Fearow"], pkmn["Spearow"], badges["Brock"], 0 , 0)
obtain("Pikachu", 1, pkmn["Pikachu"], badges["Brock"], 0 , 0)
obtain("NidoranF", 1, pkmn["NidoranF"], badges["Brock"], 0 , 0)
evolve("Nidorina", 2, pkmn["Nidorina"], pkmn["NidoranF"], badges["Brock"], 0 , 0)
obtain("NidoranM", 1, pkmn["NidoranM"], badges["Brock"], 0 , 0)
evolve("Nidorino", 2, pkmn["Nidorino"], pkmn["NidoranM"], badges["Brock"], 0 , 0)

/*
Check starter flags as they will only contribute a total sum of 3 as there's only one evolution line.
Each array will then be combined into the following badge to account for ALL pokemon caught.
*/

brock_mons = [ 
    pkmn["Bulbasaur"],
    pkmn["Ivysaur"],
    pkmn["Venusaur"],
    pkmn["Charmander"],
    pkmn["Charmeleon"],
    pkmn["Charizard"],
    pkmn["Squirtle"],
    pkmn["Wartortle"],
    pkmn["Blastoise"],
    pkmn["Caterpie"],
    pkmn["Metapod"],
    pkmn["Butterfree"],
    pkmn["Weedle"],
    pkmn["Kakuna"],
    pkmn["Beedrill"],
    pkmn["Pidgey"],
    pkmn["Pidgeotto"],
    pkmn["Pidgeot"],
    pkmn["Rattata"],
    pkmn["Raticate"],
    pkmn["Spearow"],
    pkmn["Fearow"],
    pkmn["Pikachu"],
    pkmn["NidoranF"],
    pkmn["Nidorina"],
    pkmn["NidoranM"],
    pkmn["Nidorino"]                
]
brock_check = sum_of(brock_mons, b => b) == 21
achievement(
    "Badge of Rock",
    "Obtain the Boulder Badge by defeating Brock with all 21 possible Pokemon Obtained",
    points=10,
    trigger=
       measured(brock_check) &&
        trigger_when(map_bank == brock_gym && badges["Brock"] > prev(badges["Brock"]))
)
/* End total: 21
Start Badge 2: */
obtain("Clefairy", 1, pkmn["Clefairy"], badges["Misty"], 1, brock_check)
obtain("Jigglypuff", 1, pkmn["Jigglypuff"], badges["Misty"], 1, brock_check)
obtain("Zubat", 1, pkmn["Zubat"], badges["Misty"], 1, brock_check)
evolve("Golbat", 2, pkmn["Golbat"], pkmn["Zubat"], badges["Misty"], 1, brock_check)
obtain("Paras", 1, pkmn["Paras"], badges["Misty"], 1, brock_check)
evolve("Parasect", 2, pkmn["Parasect"], pkmn["Paras"], badges["Misty"], 1, brock_check)
obtain("Diglett", 1, pkmn["Diglett"], badges["Misty"], 1, brock_check)
obtain("Dugtrio", 2, pkmn["Dugtrio"], badges["Misty"], 1, brock_check)
obtain("Abra", 1, pkmn["Abra"], badges["Misty"], 1, brock_check)
evolve("Kadabra", 2, pkmn["Kadabra"], pkmn["Abra"], badges["Misty"], 1, brock_check)
obtain("Geodude", 1, pkmn["Geodude"], badges["Misty"], 1, brock_check)
evolve("Graveler", 2, pkmn["Graveler"], pkmn["Geodude"], badges["Misty"], 1, brock_check)
obtain("Farfetch'd", 1, pkmn["Farfetch'd"], badges["Misty"], 1, brock_check)
obtain("Drowzee", 1, pkmn["Drowzee"], badges["Misty"], 1, brock_check)
evolve("Hypno", 2, pkmn["Hypno"], pkmn["Drowzee"], badges["Misty"], 1, brock_check)
obtain("Mr. Mime", 1, pkmn["Mr. Mime"], badges["Misty"], 1, brock_check)
obtain("Magikarp", 1, pkmn["Magikarp"], badges["Misty"], 1, brock_check)
evolve("Gyrados", 2, pkmn["Gyrados"], pkmn["Magikarp"], badges["Misty"], 1, brock_check)
obtain("Sandshrew", 1, pkmn["Sandshrew"], badges["Misty"], 1, brock_check)
evolve("Sandslash", 2, pkmn["Sandslash"], pkmn["Sandshrew"], badges["Misty"], 1, brock_check)
obtain("Meowth", 1, pkmn["Meowth"], badges["Misty"], 1, brock_check)
evolve("Persian", 2, pkmn["Persian"], pkmn["Meowth"], badges["Misty"], 1, brock_check)
obtain("Bellsprout", 1, pkmn["Bellsprout"], badges["Misty"], 1, brock_check)
evolve("Weepinbell", 2, pkmn["Weepinbell"], pkmn["Bellsprout"], badges["Misty"], 1, brock_check)

moon_stone_choices = [
    pkmn["Nidoqueen"],
    pkmn["Nidoking"],
    pkmn["Clefable"],
    pkmn["Wigglytuff"]    
]
achievement(
    "Moon Power I",
    "Obtain one of the following: Nidoqueen, Nidoking, Clefable, or Wigglytuff",
    points=3,
    trigger=
        brock_check &&
        sum_of(moon_stone_choices, b=>prev(b)) == 0 &&
        (always_false()
        || evolve_raw(pkmn["Nidoqueen"], pkmn["Nidorina"])
        || evolve_raw(pkmn["Nidoking"], pkmn["Nidorino"])
        || evolve_raw(pkmn["Clefable"], pkmn["Clefairy"])
        || evolve_raw(pkmn["Wigglytuff"], pkmn["Jigglypuff"])
        )                
)
achievement(
    "Moon Power II",
    "Obtain one of the following: Nidoqueen, Nidoking, Clefable, or Wigglytuff",
    points=3,
    trigger=
        brock_check &&
        sum_of(moon_stone_choices, b=>prev(b)) == 1 &&
        (always_false()
        || evolve_raw(pkmn["Nidoqueen"], pkmn["Nidorina"])
        || evolve_raw(pkmn["Nidoking"], pkmn["Nidorino"])
        || evolve_raw(pkmn["Clefable"], pkmn["Clefairy"])
        || evolve_raw(pkmn["Wigglytuff"], pkmn["Jigglypuff"])
        )                
)


// Pokemon Platinum Version [Subset - Professor Oak Challenge]
// #ID = 17897
// $101D40: [Pointer]
//          [24bit + 0x8C] Trainer ID (16bit)
//          [24bit + 0x8E] Secret Trainer ID (16bit)
//          [24bit + 0x90] Money (32bit)
//          [24bit + 0x96] Badges Obtained [NBit]
//          [24bit + 0x644] Inventory - Items start (32bit each)
//          [24bit + 0x8D8] Inventory - Key Items start (32bit each)
//          [24bit + 0x9A0] Inventory - TMs/HMs start (32bit each)
//          [24bit + 0xB30] Inventory - Mails start (32bit each)
//          [24bit + 0xB60] Inventory - Medicine start (32bit each)
//          [24bit + 0xC00] Inventory - Berries start (32bit each)
//          [24bit + 0xD00] Inventory - Pokeballs start (32bit each)
//          [24bit + 0xD3C] Inventory Battle Items start (32bit each)
//          [24bit + 0xE20] National ID of Starter (16bit)
//          [24bit + 0xE38] Lottery Number (16bit)
//          [24bit + 0x104F] Ghost Grandpa Event flag (Bit3)
//          [24bit + 0x104F] Ghost Girl Event flag (Bit4)
//          [24bit + 0x1053] Groagunk Event flag (Bit5)
//          [24bit + 0x1294] Map ID
//          [24bit + 0x12AC] Pokedex caught start (Bit each)
//          [24bit + 0x1380] Pokedex seen start (Bit each)
//          [24bit + 0x1656] Pokedex Available (Bit0)
//          [24bit + 0x1657] National Dex obtained (Bit0)
//          [24bit + 0x454C] Underground Traps start
//          [24bit + 0x4E4C] Accessories start
//          [24bit + 0xDDED] Villa Furniture start (Bit each)
//          [24bit + 0x285AC] Coal Badge shining
//          [24bit + 0x285B0] Forest Badge shining
//          [24bit + 0x285B4] Cobble Badge shining
//          [24bit + 0x285B8] Fen Badge shining
//          [24bit + 0x285BC] Relic Badge shining
//          [24bit + 0x285C0] Mine Badge shining
//          [24bit + 0x285C4] Icicle Badge shining
//          [24bit + 0x285C8] Beacon Badge shining
function game_pointer() => tbyte(0x101d40)
function save_protection() => prev(game_pointer()) != 0 && game_pointer() == prev(game_pointer())
// $1BEB04: [16bit] Music ID
//          0x475=Evolution
evolution = 0x475
function evoscreen_music() => word(0x1beb04) == evolution
// $000096: [NBit] Offset - Badges
//          Bit0=Coal Badge
//          Bit1=Forest Badge
//          Bit2=Relic Badge
//          Bit3=Cobble Badge
//          Bit4=Fen Badge
//          Bit5=Mine Badge
//          Bit6=Icicle Badge
//          Bit7=Beacon Badge

badges = {
    "Coal":bit0(game_pointer() + 0x96),
    "Forest":bit1(game_pointer() + 0x96),    
    "Cobble":bit2(game_pointer() + 0x96),
    "Fen":bit3(game_pointer() + 0x96),
    "Relic":bit4(game_pointer() + 0x96),
    "Mine":bit5(game_pointer() + 0x96),
    "Icicle":bit6(game_pointer() + 0x96),
    "Beacon":bit7(game_pointer() + 0x96)
}
// $001294: [32bit] Offset - Map ID
//          0x2f=Oreburgh City Gym
//          0x43=Eterna City Gym
//          0x58 = Hearthome City Gym
//          0x85 = Veilstone City Gym
//          0x9a=Sunyshore City Gym
//          0xa7 = Snowpoint City Gym

function map_ID() => dword(game_pointer() + 0x1294)
canalave_gym=0x23
oreburgh_gym=0x2f
eterna_gym=0x43
hearthome_gym=0x58
hearthome_fantina=0x5b
veilstone_gym=0x85
sunyshore_gym=0x9c
snowpoint_gym=0xa7
champ_room=0xb9
final_room=0xba
// $001340: [NBit] Offset - Pokedex Caught Flags Start 1-7
//          b0=Bulbasaur (Unobtainable)
//          b1=Ivysaur (Unobtainable)
//          b2=Venusaur (Unobtainable)
//          b3=Charmander (Unobtainable)
//          b4=Charmeleon (Unobtainable)
//          b5=Charizard (Unobtainable)
//          b6=Squirtle (Unobtainable)
//          b7=Wartortle (Unobtainable)
// $001341: [Offset] - Pokemon Caught Flags
//          8-16
//          b0=Blastoise (Unobtainable)
//          b1=Caterpie (Unobtainable)
//          b2=Metapod (Unobtainable)
//          b3=Butterfree (Unobtainable)
//          b4=Weedle (Unobtainable)
//          b5=Kakuna (Unobtainable)
//          b6=Beedrill (Unobtainable)
//          b7=Pidgey
// $001342: [Offset] - Pokemon Caught Flags
//          17-24
//          b0=Pidgeotto
//          b1=Pidgeot
//          b2=Ratatta
//          b3=Raticate
//          b4=Spearow
//          b5=Fearow
//          b6=Ekans (Unobtainable)
//          b7=Arbok (Unobtainable)
// $001343: [Offset] - Pokemon Caught Flags
//          25-32
//          b0=Pikachu
//          b1=Raichu
//          b2=Sandshrew (Unobtainable)
//          b3=Sandslash (Unobtainable)
//          b4=NidoranF
//          b5=Nidorina
//          b6=Nidoking
//          b7=NidoranM
// $001344: [Offset] - Pokemon Caught Flags
//          33-40
//          b0=Nidorino
//          b1=Nidoking
//          b2=Clefairy
//          b3=Clefable
//          b4=Vulpix (Unobtainable)
//          b5=Ninetales (Unobtainable)
//          b6=Jigglypuff
//          b7=Wigglytuff
// $001345: [Offset] - Pokemon Caught Flags
//          41-48
//          b0=Zubat
//          b1=Golbat
//          b2=Oddish
//          b3=Gloom
//          b4=Vileplume
//          b5=Paras
//          b6=Parasect
//          b7=Venonat
// $001346: [Offset] - Pokemon Caught Flags
//          49-56
//          b0=Venomoth
//          b1=Diglett
//          b2=Dugtrio
//          b3=Meowth
//          b4=Persian
//          b5=Psyduck
//          b6=Golduck
//          b7=Mankey
// $001347: [Offset] - Pokemon Caught Flags
//          57-64
//          b0=Primape
//          b1=Growlithe (Unobtainable)
//          b2=Arcanine (Unobtainable)
//          b3=Poliwag
//          b4=Poliwhirl
//          b5=Poliwrath
//          b6=Abra
//          b7=Kadabra
// $001348: [Offset] - Pokemon Caught Flags
//          65-72
//          b0=Alakazam (Unobtainable)
//          b1=Machop
//          b2=Machoke
//          b3=Machamp (Unobtainable)
//          b4=Bellsprout
//          b5=Weepinbell
//          b6=Victreebell
//          b7=Tentacool
// $001349: [Offset] - Pokemon Caught Flags
//          73-80
//          b0=Tentacruel
//          b1=Geodude
//          b2=Graveler
//          b3=Golem (Unobtainable)
//          b4=Ponyta
//          b5=Rapidash
//          b6=Slowpoke
//          b7=Slowbro
// $00134A: [Offset] - Pokemon Caught Flags
//          81-88
//          b0=Magnemite
//          b1=Magneton
//          b2=Farfetch'd
//          b3=Doduo
//          b4=Dodrio
//          b5=Seel
//          b6=Dewgong
//          b7=Grimer
// $00134B: [Offset] - Pokemon Caught Flags
//          89-96
//          b0=Muk
//          b1=Shellder
//          b2=Cloyster
//          b3=Gastly
//          b4=Haunter
//          b5=Gengar (Unobtainable)
//          b6=Onix
//          b7=Drowzee
// $00134C: [Offset] - Pokemon Caught Flags
//          97-104
//          b0=Hypno
//          b1=Krabby
//          b2=Kingler
//          b3=Voltorb
//          b4=Electrode
//          b5=Exeggute
//          b6=Exeggutor
//          b7=Cubone
// $00134D: [Offset] - Pokemon Caught Flags
//          105-112
//          b0=Marowak
//          b1=Hitmonlee
//          b2=Hitmonchan
//          b3=Lickitung
//          b4=Koffing
//          b5=Wheezing
//          b6=Rhyhorn
//          b7=Rhydon
// $00134E: [Offset] - Pokemon Caught Flags
//          113-120
//          b0=Chansey
//          b1=Tangela
//          b2=Kangaskhan
//          b3=Horsea
//          b4=Seadra
//          b5=Goldeen
//          b6=Seadra
//          b7=Staryu
// $00134F: [Offset] - Pokemon Caught Flags
//          121-128
//          b0=Starmie
//          b1=Mr. Mime
//          b2=Scyther
//          b3=Jynx
//          b4=Electabuzz
//          b5=Magmar
//          b6=Pinsir
//          b7=Tauros
// $001350: [Offset] - Pokemon Caught Flags
//          129-136
//          b0=Magikarp
//          b1=Gyarados
//          b2=Lapras
//          b3=Ditto
//          b4=Eevee
//          b5=Vaporeon
//          b6=Jolteon
//          b7=Flareon
// $001351: [Offset] - Pokemon Caught Flags
//          137-144
//          b0=Porygon
//          b1=Omanyte
//          b2=Omastar
//          b3=Kabuto
//          b4=Kabutops
//          b5=Aerodactyl
//          b6=Snorlax
//          b7=Articuno
// $001352: [Offset] - Pokemon Caught Flags
//          145-152
//          b0=Zapdos
//          b1=Moltres
//          b2=Dratini
//          b3=Dragonair
//          b4=Dragonite
//          b5=Mewtwo (Unobtainable)
//          b6=Mew
//          b7=Chikorita (Unobtainable)
// $001353: [Offset] - Pokemon Caught Flags
//          153-160
//          Bit 0 = Bayleef
//          Bit 1 = Meganium
//          Bit 2 = Cyndaquil
//          Bit 3 = Quilava
//          Bit 4 = Typhlosion
//          Bit 5 = Totodile
//          Bit 6 = Croconaw
//          Bit 7 = Feraligatr
// $001354: [Offset] - Pokemon Caught Flags
//          161-168
//          b0=Sentret
//          b1=Furret
//          b2=Hoothoot
//          b3=Noctowl
//          b4=Ledyba
//          b5=Ledian
//          b6=Spinarak
//          b7=Ariados
// $001355: [Offset] - Pokemon Caught Flags
//          169-176
//          b0=Crobat
//          b1=Chinchou
//          b2=Lanturn
//          b3=Pichu
//          b4=Cleffa
//          b5=Igglybuff
//          b6=Togepi
//          b7=Togetic
// $001356: [Offset] - Pokemon Caught Flags
//          177-184
//          b0=Natu
//          b1=Xatu
//          b2=Mareep
//          b3=Flaaffy
//          b4=Ampharos
//          b5=Bellossom
//          b6=Marill
//          b7=Azumarill
// $001357: [Offset] - Pokemon Caught Flags
//          185-192
//          b0=Sudowoodo
//          b1=Politoed (Unobtainable)
//          b2=Hoppip
//          b3=Skiploom
//          b4=Jumpluff
//          b5=Aipom
//          b6=Sunkern
//          b7=Sunflora
// $001358: [Offset] - Pokemon Caught Flags
//          193-200
//          b0=Yanma
//          b1=Wooper
//          b2=Quagsire
//          b3=Espeon
//          b4=Umbreon
//          b5=Murkrow (Unobtainable)
//          b6=Slowking (Unobtainable)
//          b7=Misdreavus (Unobtainable)
// $001359: [Offset] - Pokemon Caught Flags
//          201-208
//          b0=Unown
//          b1=Wobuffet
//          b2=Girafirig
//          b3=Pineco (Unobtainable)
//          b4=Forretress (Unobtainable)
//          b5=Dunsparce
//          b6=Gligar
//          b7=Steelix
// $00135A: [Offset] - Pokemon Caught Flags
//          209-216
//          b0=Snubbull
//          b1=Granbull
//          b2=Qwilfish
//          b3=Scizor (Unobtainable)
//          b4=Shuckle (Unobtainable)
//          b5=Heracross
//          b6=Sneasel
//          b7=Teddiursa (Unobtainable)
// $00135B: [Offset] - Pokemon Caught Flags
//          217-224
//          Bit 0 = Ursaring
//          Bit 1 = Slugma
//          Bit 2 = Magcargo
//          Bit 3 = Swinub
//          Bit 4 = Piloswine
//          Bit 5 = Corsola
//          Bit 6 = Remoraid
//          Bit 7 = Octillery
// $00135C: [Offset] - Pokemon Caught Flags
//          225-232
//          Bit 0 = Delibird
//          Bit 1 = Mantine
//          Bit 2 = Skarmory
//          Bit 3 = Houndour
//          Bit 4 = Houndoom
//          Bit 5 = Kingdra
//          Bit 6 = Phanpy
//          Bit 7 = Donphan
// $00135D: [Offset] - Pokemon Caught Flags
//          
//          233-240
//          Bit 0 = Porygon2
//          Bit 1 = Stantler
//          Bit 2 = Smeargle
//          Bit 3 = Tyrogue
//          Bit 4 = Hitmontop
//          Bit 5 = Smoochum
//          Bit 6 = Elekid
//          Bit 7 = Magby
// $00135E: [Offset] - Pokemon Caught Flags
//          241-248
//          Bit 0 = Miltank
//          Bit 1 = Blissey
//          Bit 2 = Raikou
//          Bit 3 = Entei
//          Bit 4 = Suicune
//          Bit 5 = Larvitar
//          Bit 6 = Pupitar
//          Bit 7 = Tyranitar
// $00135F: [Offset] - Pokemon Caught Flags
//          249-256
//          Bit 0 = Lugia
//          Bit 1 = Ho-Oh
//          Bit 2 = Celebi
//          Bit 3 = Treecko
//          Bit 4 = Grovyle
//          Bit 5 = Sceptile
//          Bit 6 = Torchic
//          Bit 7 = Combusken
// $001360: [Offset] - Pokemon Caught Flags
//          257-264
//          Bit 0 = Blaziken
//          Bit 1 = Mudkip
//          Bit 2 = Marshtomp
//          Bit 3 = Swampert
//          Bit 4 = Poochyena
//          Bit 5 = Mightyena
//          Bit 6 = Zigzagoon
//          Bit 7 = Linoone
// $001361: [Offset] - Pokemon Caught Flags
//          265-272
//          Bit 0 = Wurmple
//          Bit 1 = Silcoon
//          Bit 2 = Beautifly
//          Bit 3 = Cascoon
//          Bit 4 = Dustox
//          Bit 5 = Lotad
//          Bit 6 = Lombre
//          Bit 7 = Ludicolo
// $001362: [Offset] - Pokemon Caught Flags
//          273-280
//          Bit 0 = Seedot
//          Bit 1 = Nuzleaf
//          Bit 2 = Shiftry
//          Bit 3 = Taillow
//          Bit 4 = Swellow
//          Bit 5 = Wingull
//          Bit 6 = Pelipper
//          Bit 7 = Ralts
// $001363: [Offset] - Pokemon Caught Flags
//          281-288
//          Bit 0 = Kirlia
//          Bit 1 = Gardevoir
//          Bit 2 = Surskit
//          Bit 3 = Masquerain
//          Bit 4 = Shroomish
//          Bit 5 = Breloom
//          Bit 6 = Slakoth
//          Bit 7 = Vigoroth
// $001364: [Offset] - Pokemon Caught Flags
//          289-296
//          Bit 0 = Slaking
//          Bit 1 = Nincada
//          Bit 2 = Ninjask
//          Bit 3 = Shedinja
//          Bit 4 = Whismur
//          Bit 5 = Loudred
//          Bit 6 = Exploud
//          Bit 7 = Makuhita
// $001365: [Offset] - Pokemon Caught Flags
//          297-304
//          Bit 0 = Hariyama
//          Bit 1 = Azurill
//          Bit 2 = Nosepass
//          Bit 3 = Skitty
//          Bit 4 = Delcatty
//          Bit 5 = Sableye
//          Bit 6 = Mawile
//          Bit 7 = Aron
// $001366: [Offset] - Pokemon Caught Flags\
//          305-312
//          Bit 0 = Lairon
//          Bit 1 = Aggron
//          Bit 2 = Meditite
//          Bit 3 = Medicham
//          Bit 4 = Electrike
//          Bit 5 = Manectric
//          Bit 6 = Plusle
//          Bit 7 = Minun
// $001367: [Offset] - Pokemon Caught Flags
//          313-320
//          Bit 0 = Volbeat
//          Bit 1 = Illumise
//          Bit 2 = Roselia
//          Bit 3 = Gulpin
//          Bit 4 = Swalot
//          Bit 5 = Carvanha
//          Bit 6 = Sharpedo
//          Bit 7 = Wailmer
// $001368: [Offset] - Pokemon Caught Flags
//          321-328
//          Bit 0 = Wailord
//          Bit 1 = Numel
//          Bit 2 = Camerupt
//          Bit 3 = Torkoal
//          Bit 4 = Spoink
//          Bit 5 = Grumpig
//          Bit 6 = Spinda
//          Bit 7 = Trapinch
// $001369: [Offset] - Pokemon Caught Flags
//          329-336
//          Bit 0 = Vibrava
//          Bit 1 = Flygon
//          Bit 2 = Cacnea
//          Bit 3 = Cacturne
//          Bit 4 = Swablu
//          Bit 5 = Altaria
//          Bit 6 = Zangoose
//          Bit 7 = Seviper
// $00136A: [Offset] - Pokemon Caught Flags
//          337-344
//          Bit 0 = Lunatone
//          Bit 1 = Solrock
//          Bit 2 = Barboach
//          Bit 3 = Whiscasth
//          Bit 4 = Corphish
//          Bit 5 = Crawdaunt
//          Bit 6 = Baltoy
//          Bit 7 = Claydol
// $00136B: [Offset] - Pokemon Caught Flags
//          345-352
//          Bit 0 = Lileep
//          Bit 1 = Cradily
//          Bit 2 = Anorith
//          Bit 3 = Armaldo
//          Bit 4 = Feebas
//          Bit 5 = Milotic
//          Bit 6 = Castform
//          Bit 7 = Kecleon
// $00136C: [Offset] - Pokemon Caught Flags
//          353-360
//          Bit 0 = Shuppet
//          Bit 1 = Banette
//          Bit 2 = Duskull
//          Bit 3 = Dusclops
//          Bit 4 = Tropius
//          Bit 5 = Chimecho
//          Bit 6 = Absol
//          Bit 7 = Wynaut
// $00136D: [Offset] - Pokemon Caught Flags
//          361-368
//          Bit 0 = Snorunt
//          Bit 1 = Glalie
//          Bit 2 = Spheal
//          Bit 3 = Sealeo
//          Bit 4 = Walrein
//          Bit 5 = Clamperl
//          Bit 6 = Huntail
//          Bit 7 = Gorebyss
// $00136E: [Offset] - Pokemon Caught Flags
//          369-376
//          Bit 0 = Relicanth
//          Bit 1 = Luvdisc
//          Bit 2 = Bagon
//          Bit 3 = Shelgon
//          Bit 4 = Salamence
//          Bit 5 = Beldum
//          Bit 6 = Metang
//          Bit 7 = Metagross
// $00136F: [Offset] - Pokemon Caught Flags
//          377-384
//          Bit 0 = Regirock
//          Bit 1 = Regice
//          Bit 2 = Registeel
//          Bit 3 = Latias
//          Bit 4 = Latios
//          Bit 5 = Kyogre
//          Bit 6 = Groudon
//          Bit 7 = Rayquaza
// $001370: [Offset] - Pokemon Caught Flags
//          
//          385-392
//          Bit 0 = Jirachi
//          Bit 1 = Deoxys
//          Bit 2 = Turtwig
//          Bit 3 = Grotle
//          Bit 4 = Torterra
//          Bit 5 = Chimchar
//          Bit 6 = Monferno
//          Bit 7 = Infernape
// $001371: [Offset] - Pokemon Caught Flags
//          393-400
//          Bit 0 = Piplup
//          Bit 1 = Prinplup
//          Bit 2 = Empoleon
//          Bit 3 = Starly
//          Bit 4 = Staravia
//          Bit 5 = Staraptor
//          Bit 6 = Bidoof
//          Bit 7 = Bibarel
// $001372: [Offset] - Pokemon Caught Flags
//          401-408
//          Bit 0 = Kricketot
//          Bit 1 = Kricketune
//          Bit 2 = Shinx
//          Bit 3 = Luxio
//          Bit 4 = Luxray
//          Bit 5 = Budew
//          Bit 6 = Roserade
//          Bit 7 = Cranidos
// $001373: [Offset] - Pokemon Caught Flags
//          409-416
//          Bit 0 = Rampardos
//          Bit 1 = Shieldon
//          Bit 2 = Bastiodon
//          Bit 3 = Burmy
//          Bit 4 = Wormadam
//          Bit 5 = Mothim
//          Bit 6 = Combee
//          Bit 7 = Vespiquen
// $001374: [Offset] - Pokemon Caught Flags
//          417-424
//          Bit 0 = Pachirisu
//          Bit 1 = Buizel
//          Bit 2 = Floatzel
//          Bit 3 = Cherubi
//          Bit 4 = Cherrim
//          Bit 5 = Shellos
//          Bit 6 = Gastrodon
//          Bit 7 = Ambipom
// $001375: [Offset] - Pokemon Caught Flags
//          425-432
//          Bit 0 = Drifloon
//          Bit 1 = Drifblim
//          Bit 2 = Buneary
//          Bit 3 = Lopunny
//          Bit 4 = Mismagius
//          Bit 5 = Honchkrow
//          Bit 6 = Glameow
//          Bit 7 = Purugly
// $001376: [Offset] - Pokemon Caught Flags
//          433-440
//          Bit 0 = Chingling
//          Bit 1 = Stunky
//          Bit 2 = Skuntank
//          Bit 3 = Bronzor
//          Bit 4 = Bronzong
//          Bit 5 = Bonsly
//          Bit 6 = Mime Jr.
//          Bit 7 = Happiny
// $001377: [Offset] - Pokemon Caught Flags
//          441-448
//          Bit 0 = Chatot
//          Bit 1 = Spiritomb
//          Bit 2 = Gible
//          Bit 3 = Gabite
//          Bit 4 = Garchomp
//          Bit 5 = Munchlax
//          Bit 6 = Riolu
//          Bit 7 = Lucario
// $001378: [Offset] - Pokemon Caught Flags
//          449-456
//          Bit 0 = Hippopotas
//          Bit 1 = Hippowdon
//          Bit 2 = Skorupi
//          Bit 3 = Drapion
//          Bit 4 = Croagunk
//          Bit 5 = Toxicroak
//          Bit 6 = Carnivine
//          Bit 7 = Finneon
// $001379: [Offset] - Pokemon Caught Flags
//          457-464
//          Bit 0 = Lumineon
//          Bit 1 = Mantyke
//          Bit 2 = Snover
//          Bit 3 = Abomasnow
//          Bit 4 = Weavile
//          Bit 5 = Magnezone
//          Bit 6 = Lickilicky
//          Bit 7 = Rhyperior
// $00137A: [Offset] - Pokemon Caught Flags
//          465-472
//          Bit 0 = Tangrowth
//          Bit 1 = Electivire
//          Bit 2 = Magmortar
//          Bit 3 = Togekiss
//          Bit 4 = Yanmega
//          Bit 5 = Leafeon
//          Bit 6 = Glaceon
//          Bit 7 = Gliscor
// $00137B: [Offset] - Pokemon Caught Flags
//          473-480
//          Bit 0 = Mamoswine
//          Bit 1 = Porygon-Z
//          Bit 2 = Gallade
//          Bit 3 = Probopass
//          Bit 4 = Dusknoir
//          Bit 5 = Froslass
//          Bit 6 = Rotom
//          Bit 7 = Uxie
// $00137C: [Offset] - Pokemon Caught Flags
//          481-488
//          Bit 0 = Mesprit
//          Bit 1 = Azelf
//          Bit 2 = Dialga
//          Bit 3 = Palkia
//          Bit 4 = Heatran
//          Bit 5 = Regigigas
//          Bit 6 = Giratina
//          Bit 7 = Cresselia
// $00137D: [Offset] - Pokemon Caught Flags
//          489-493
//          Bit 0 = Phione
//          Bit 1 = Manaphy
//          Bit 2 = Darkrai
//          Bit 3 = Shaymin
//          Bit 4 = Arceus
// $001380: [62 bytes] Offset - Pokedex Seen Flags Table - National Dex Order
//          61 Bitcounts
//          Last [8bit] =  Bit0-4. (489-493)
// $001656: [NBit] Offset - Pokedex Available (Bit0)
//          0=No
//          1=Yes
pokedex = {
"Bulbasaur":bit0(game_pointer()+0x1340),
"Ivysaur":bit1(game_pointer()+0x1340),
"Venusaur":bit2(game_pointer()+0x1340),
"Charmander":bit3(game_pointer()+0x1340),
"Charmeleon":bit4(game_pointer()+0x1340),
"Charizard":bit5(game_pointer()+0x1340),
"Squirtle":bit6(game_pointer()+0x1340),
"Wartortle":bit7(game_pointer()+0x1340),
"Blastoise":bit0(game_pointer()+0x1341),
"Caterpie":bit1(game_pointer()+0x1341),
"Metapod":bit2(game_pointer()+0x1341),
"Butterfree":bit3(game_pointer()+0x1341),
"Weedle":bit4(game_pointer()+0x1341),
"Kakuna":bit5(game_pointer()+0x1341),
"Beedrill":bit6(game_pointer()+0x1341),
"Pidgey":bit7(game_pointer()+0x1341),
"Pidgeotto":bit0(game_pointer()+0x1342),
"Pidgeot":bit1(game_pointer()+0x1342),
"Rattata":bit2(game_pointer()+0x1342),
"Raticate":bit3(game_pointer()+0x1342),
"Spearow":bit4(game_pointer()+0x1342),
"Fearow":bit5(game_pointer()+0x1342),
"Ekans":bit6(game_pointer()+0x1342),
"Arbok":bit7(game_pointer()+0x1342),
"Pikachu":bit0(game_pointer()+0x1343),
"Raichu":bit1(game_pointer()+0x1343),
"Sandshrew":bit2(game_pointer()+0x1343),
"Sandslash":bit3(game_pointer()+0x1343),
"Nidoran_M":bit4(game_pointer()+0x1343),
"Nidorina":bit5(game_pointer()+0x1343),
"Nidoqueen":bit6(game_pointer()+0x1343),
"Nidoran_F":bit7(game_pointer()+0x1343),
"Nidorino":bit0(game_pointer()+0x1344),
"Nidoking":bit1(game_pointer()+0x1344),
"Clefairy":bit2(game_pointer()+0x1344),
"Clefable":bit3(game_pointer()+0x1344),
"Vulpix":bit4(game_pointer()+0x1344),
"Ninetales":bit5(game_pointer()+0x1344),
"Jigglypuff":bit6(game_pointer()+0x1344),
"Wigglytuff":bit7(game_pointer()+0x1344),
"Zubat":bit0(game_pointer()+0x1345),
"Golbat":bit1(game_pointer()+0x1345),
"Oddish":bit2(game_pointer()+0x1345),
"Gloom":bit3(game_pointer()+0x1345),
"Vileplume":bit4(game_pointer()+0x1345),
"Paras":bit5(game_pointer()+0x1345),
"Parasect":bit6(game_pointer()+0x1345),
"Venonat":bit7(game_pointer()+0x1345),
"Venomoth":bit0(game_pointer()+0x1346),
"Diglett":bit1(game_pointer()+0x1346),
"Dugtrio":bit2(game_pointer()+0x1346),
"Meowth":bit3(game_pointer()+0x1346),
"Persian":bit4(game_pointer()+0x1346),
"Psyduck":bit5(game_pointer()+0x1346),
"Golduck":bit6(game_pointer()+0x1346),
"Mankey":bit7(game_pointer()+0x1346),
"Primeape":bit0(game_pointer()+0x1347),
"Growlithe":bit1(game_pointer()+0x1347),
"Arcanine":bit2(game_pointer()+0x1347),
"Poliwag":bit3(game_pointer()+0x1347),
"Poliwhirl":bit4(game_pointer()+0x1347),
"Poliwrath":bit5(game_pointer()+0x1347),
"Abra":bit6(game_pointer()+0x1347),
"Kadabra":bit7(game_pointer()+0x1347),
"Alakazam":bit0(game_pointer()+0x1348),
"Machop":bit1(game_pointer()+0x1348),
"Machoke":bit2(game_pointer()+0x1348),
"Machamp":bit3(game_pointer()+0x1348),
"Bellsprout":bit4(game_pointer()+0x1348),
"Weepinbell":bit5(game_pointer()+0x1348),
"Victreebel":bit6(game_pointer()+0x1348),
"Tentacool":bit7(game_pointer()+0x1348),
"Tentacruel":bit0(game_pointer()+0x1349),
"Geodude":bit1(game_pointer()+0x1349),
"Graveler":bit2(game_pointer()+0x1349),
"Golem":bit3(game_pointer()+0x1349),
"Ponyta":bit4(game_pointer()+0x1349),
"Rapidash":bit5(game_pointer()+0x1349),
"Slowpoke":bit6(game_pointer()+0x1349),
"Slowbro":bit7(game_pointer()+0x1349),
"Magnemite":bit0(game_pointer()+0x134a),
"Magneton":bit1(game_pointer()+0x134a),
"Farfetch’d":bit2(game_pointer()+0x134a),
"Doduo":bit3(game_pointer()+0x134a),
"Dodrio":bit4(game_pointer()+0x134a),
"Seel":bit5(game_pointer()+0x134a),
"Dewgong":bit6(game_pointer()+0x134a),
"Grimer":bit7(game_pointer()+0x134a),
"Muk":bit0(game_pointer()+0x134b),
"Shellder":bit1(game_pointer()+0x134b),
"Cloyster":bit2(game_pointer()+0x134b),
"Gastly":bit3(game_pointer()+0x134b),
"Haunter":bit4(game_pointer()+0x134b),
"Gengar":bit5(game_pointer()+0x134b),
"Onix":bit6(game_pointer()+0x134b),
"Drowzee":bit7(game_pointer()+0x134b),
"Hypno":bit0(game_pointer()+0x134c),
"Krabby":bit1(game_pointer()+0x134c),
"Kingler":bit2(game_pointer()+0x134c),
"Voltorb":bit3(game_pointer()+0x134c),
"Electrode":bit4(game_pointer()+0x134c),
"Exeggcute":bit5(game_pointer()+0x134c),
"Exeggutor":bit6(game_pointer()+0x134c),
"Cubone":bit7(game_pointer()+0x134c),
"Marowak":bit0(game_pointer()+0x134d),
"Hitmonlee":bit1(game_pointer()+0x134d),
"Hitmonchan":bit2(game_pointer()+0x134d),
"Lickitung":bit3(game_pointer()+0x134d),
"Koffing":bit4(game_pointer()+0x134d),
"Weezing":bit5(game_pointer()+0x134d),
"Rhyhorn":bit6(game_pointer()+0x134d),
"Rhydon":bit7(game_pointer()+0x134d),
"Chansey":bit0(game_pointer()+0x134e),
"Tangela":bit1(game_pointer()+0x134e),
"Kangaskhan":bit2(game_pointer()+0x134e),
"Horsea":bit3(game_pointer()+0x134e),
"Seadra":bit4(game_pointer()+0x134e),
"Goldeen":bit5(game_pointer()+0x134e),
"Seaking":bit6(game_pointer()+0x134e),
"Staryu":bit7(game_pointer()+0x134e),
"Starmie":bit0(game_pointer()+0x134f),
"Mr. Mime":bit1(game_pointer()+0x134f),
"Scyther":bit2(game_pointer()+0x134f),
"Jynx":bit3(game_pointer()+0x134f),
"Electabuzz":bit4(game_pointer()+0x134f),
"Magmar":bit5(game_pointer()+0x134f),
"Pinsir":bit6(game_pointer()+0x134f),
"Tauros":bit7(game_pointer()+0x134f),
"Magikarp":bit0(game_pointer()+0x1350),
"Gyarados":bit1(game_pointer()+0x1350),
"Lapras":bit2(game_pointer()+0x1350),
"Ditto":bit3(game_pointer()+0x1350),
"Eevee":bit4(game_pointer()+0x1350),
"Vaporeon":bit5(game_pointer()+0x1350),
"Jolteon":bit6(game_pointer()+0x1350),
"Flareon":bit7(game_pointer()+0x1350),
"Porygon":bit0(game_pointer()+0x1351),
"Omanyte":bit1(game_pointer()+0x1351),
"Omastar":bit2(game_pointer()+0x1351),
"Kabuto":bit3(game_pointer()+0x1351),
"Kabutops":bit4(game_pointer()+0x1351),
"Aerodactyl":bit5(game_pointer()+0x1351),
"Snorlax":bit6(game_pointer()+0x1351),
"Articuno":bit7(game_pointer()+0x1351),
"Zapdos":bit0(game_pointer()+0x1352),
"Moltres":bit1(game_pointer()+0x1352),
"Dratini":bit2(game_pointer()+0x1352),
"Dragonair":bit3(game_pointer()+0x1352),
"Dragonite":bit4(game_pointer()+0x1352),
"Mewtwo":bit5(game_pointer()+0x1352),
"Mew":bit6(game_pointer()+0x1352),
"Chikorita":bit7(game_pointer()+0x1352),
"Bayleef":bit0(game_pointer()+0x1353),
"Meganium":bit1(game_pointer()+0x1353),
"Cyndaquil":bit2(game_pointer()+0x1353),
"Quilava":bit3(game_pointer()+0x1353),
"Typhlosion":bit4(game_pointer()+0x1353),
"Totodile":bit5(game_pointer()+0x1353),
"Croconaw":bit6(game_pointer()+0x1353),
"Feraligatr":bit7(game_pointer()+0x1353),
"Sentret":bit0(game_pointer()+0x1354),
"Furret":bit1(game_pointer()+0x1354),
"Hoothoot":bit2(game_pointer()+0x1354),
"Noctowl":bit3(game_pointer()+0x1354),
"Ledyba":bit4(game_pointer()+0x1354),
"Ledian":bit5(game_pointer()+0x1354),
"Spinarak":bit6(game_pointer()+0x1354),
"Ariados":bit7(game_pointer()+0x1354),
"Crobat":bit0(game_pointer()+0x1355),
"Chinchou":bit1(game_pointer()+0x1355),
"Lanturn":bit2(game_pointer()+0x1355),
"Pichu":bit3(game_pointer()+0x1355),
"Cleffa":bit4(game_pointer()+0x1355),
"Igglybuff":bit5(game_pointer()+0x1355),
"Togepi":bit6(game_pointer()+0x1355),
"Togetic":bit7(game_pointer()+0x1355),
"Natu":bit0(game_pointer()+0x1356),
"Xatu":bit1(game_pointer()+0x1356),
"Mareep":bit2(game_pointer()+0x1356),
"Flaaffy":bit3(game_pointer()+0x1356),
"Ampharos":bit4(game_pointer()+0x1356),
"Bellossom":bit5(game_pointer()+0x1356),
"Marill":bit6(game_pointer()+0x1356),
"Azumarill":bit7(game_pointer()+0x1356),
"Sudowoodo":bit0(game_pointer()+0x1357),
"Politoed":bit1(game_pointer()+0x1357),
"Hoppip":bit2(game_pointer()+0x1357),
"Skiploom":bit3(game_pointer()+0x1357),
"Jumpluff":bit4(game_pointer()+0x1357),
"Aipom":bit5(game_pointer()+0x1357),
"Sunkern":bit6(game_pointer()+0x1357),
"Sunflora":bit7(game_pointer()+0x1357),
"Yanma":bit0(game_pointer()+0x1358),
"Wooper":bit1(game_pointer()+0x1358),
"Quagsire":bit2(game_pointer()+0x1358),
"Espeon":bit3(game_pointer()+0x1358),
"Umbreon":bit4(game_pointer()+0x1358),
"Murkrow":bit5(game_pointer()+0x1358),
"Slowking":bit6(game_pointer()+0x1358),
"Misdreavus":bit7(game_pointer()+0x1358),
"Unown":bit0(game_pointer()+0x1359),
"Wobbuffet":bit1(game_pointer()+0x1359),
"Girafarig":bit2(game_pointer()+0x1359),
"Pineco":bit3(game_pointer()+0x1359),
"Forretress":bit4(game_pointer()+0x1359),
"Dunsparce":bit5(game_pointer()+0x1359),
"Gligar":bit6(game_pointer()+0x1359),
"Steelix":bit7(game_pointer()+0x1359),
"Snubbull":bit0(game_pointer()+0x135a),
"Granbull":bit1(game_pointer()+0x135a),
"Qwilfish":bit2(game_pointer()+0x135a),
"Scizor":bit3(game_pointer()+0x135a),
"Shuckle":bit4(game_pointer()+0x135a),
"Heracross":bit5(game_pointer()+0x135a),
"Sneasel":bit6(game_pointer()+0x135a),
"Teddiursa":bit7(game_pointer()+0x135a),
"Ursaring":bit0(game_pointer()+0x135b),
"Slugma":bit1(game_pointer()+0x135b),
"Magcargo":bit2(game_pointer()+0x135b),
"Swinub":bit3(game_pointer()+0x135b),
"Piloswine":bit4(game_pointer()+0x135b),
"Corsola":bit5(game_pointer()+0x135b),
"Remoraid":bit6(game_pointer()+0x135b),
"Octillery":bit7(game_pointer()+0x135b),
"Delibird":bit0(game_pointer()+0x135c),
"Mantine":bit1(game_pointer()+0x135c),
"Skarmory":bit2(game_pointer()+0x135c),
"Houndour":bit3(game_pointer()+0x135c),
"Houndoom":bit4(game_pointer()+0x135c),
"Kingdra":bit5(game_pointer()+0x135c),
"Phanpy":bit6(game_pointer()+0x135c),
"Donphan":bit7(game_pointer()+0x135c),
"Porygon2":bit0(game_pointer()+0x135d),
"Stantler":bit1(game_pointer()+0x135d),
"Smeargle":bit2(game_pointer()+0x135d),
"Tyrogue":bit3(game_pointer()+0x135d),
"Hitmontop":bit4(game_pointer()+0x135d),
"Smoochum":bit5(game_pointer()+0x135d),
"Elekid":bit6(game_pointer()+0x135d),
"Magby":bit7(game_pointer()+0x135d),
"Miltank":bit0(game_pointer()+0x135e),
"Blissey":bit1(game_pointer()+0x135e),
"Raikou":bit2(game_pointer()+0x135e),
"Entei":bit3(game_pointer()+0x135e),
"Suicune":bit4(game_pointer()+0x135e),
"Larvitar":bit5(game_pointer()+0x135e),
"Pupitar":bit6(game_pointer()+0x135e),
"Tyranitar":bit7(game_pointer()+0x135e),
"Lugia":bit0(game_pointer()+0x135f),
"Ho-Oh":bit1(game_pointer()+0x135f),
"Celebi":bit2(game_pointer()+0x135f),
"Treecko":bit3(game_pointer()+0x135f),
"Grovyle":bit4(game_pointer()+0x135f),
"Sceptile":bit5(game_pointer()+0x135f),
"Torchic":bit6(game_pointer()+0x135f),
"Combusken":bit7(game_pointer()+0x135f),
"Blaziken":bit0(game_pointer()+0x1360),
"Mudkip":bit1(game_pointer()+0x1360),
"Marshtomp":bit2(game_pointer()+0x1360),
"Swampert":bit3(game_pointer()+0x1360),
"Poochyena":bit4(game_pointer()+0x1360),
"Mightyena":bit5(game_pointer()+0x1360),
"Zigzagoon":bit6(game_pointer()+0x1360),
"Linoone":bit7(game_pointer()+0x1360),
"Wurmple":bit0(game_pointer()+0x1361),
"Silcoon":bit1(game_pointer()+0x1361),
"Beautifly":bit2(game_pointer()+0x1361),
"Cascoon":bit3(game_pointer()+0x1361),
"Dustox":bit4(game_pointer()+0x1361),
"Lotad":bit5(game_pointer()+0x1361),
"Lombre":bit6(game_pointer()+0x1361),
"Ludicolo":bit7(game_pointer()+0x1361),
"Seedot":bit0(game_pointer()+0x1362),
"Nuzleaf":bit1(game_pointer()+0x1362),
"Shiftry":bit2(game_pointer()+0x1362),
"Taillow":bit3(game_pointer()+0x1362),
"Swellow":bit4(game_pointer()+0x1362),
"Wingull":bit5(game_pointer()+0x1362),
"Pelipper":bit6(game_pointer()+0x1362),
"Ralts":bit7(game_pointer()+0x1362),
"Kirlia":bit0(game_pointer()+0x1363),
"Gardevoir":bit1(game_pointer()+0x1363),
"Surskit":bit2(game_pointer()+0x1363),
"Masquerain":bit3(game_pointer()+0x1363),
"Shroomish":bit4(game_pointer()+0x1363),
"Breloom":bit5(game_pointer()+0x1363),
"Slakoth":bit6(game_pointer()+0x1363),
"Vigoroth":bit7(game_pointer()+0x1363),
"Slaking":bit0(game_pointer()+0x1364),
"Nincada":bit1(game_pointer()+0x1364),
"Ninjask":bit2(game_pointer()+0x1364),
"Shedinja":bit3(game_pointer()+0x1364),
"Whismur":bit4(game_pointer()+0x1364),
"Loudred":bit5(game_pointer()+0x1364),
"Exploud":bit6(game_pointer()+0x1364),
"Makuhita":bit7(game_pointer()+0x1364),
"Hariyama":bit0(game_pointer()+0x1365),
"Azurill":bit1(game_pointer()+0x1365),
"Nosepass":bit2(game_pointer()+0x1365),
"Skitty":bit3(game_pointer()+0x1365),
"Delcatty":bit4(game_pointer()+0x1365),
"Sableye":bit5(game_pointer()+0x1365),
"Mawile":bit6(game_pointer()+0x1365),
"Aron":bit7(game_pointer()+0x1365),
"Lairon":bit0(game_pointer()+0x1366),
"Aggron":bit1(game_pointer()+0x1366),
"Meditite":bit2(game_pointer()+0x1366),
"Medicham":bit3(game_pointer()+0x1366),
"Electrike":bit4(game_pointer()+0x1366),
"Manectric":bit5(game_pointer()+0x1366),
"Plusle":bit6(game_pointer()+0x1366),
"Minun":bit7(game_pointer()+0x1366),
"Volbeat":bit0(game_pointer()+0x1367),
"Illumise":bit1(game_pointer()+0x1367),
"Roselia":bit2(game_pointer()+0x1367),
"Gulpin":bit3(game_pointer()+0x1367),
"Swalot":bit4(game_pointer()+0x1367),
"Carvanha":bit5(game_pointer()+0x1367),
"Sharpedo":bit6(game_pointer()+0x1367),
"Wailmer":bit7(game_pointer()+0x1367),
"Wailord":bit0(game_pointer()+0x1368),
"Numel":bit1(game_pointer()+0x1368),
"Camerupt":bit2(game_pointer()+0x1368),
"Torkoal":bit3(game_pointer()+0x1368),
"Spoink":bit4(game_pointer()+0x1368),
"Grumpig":bit5(game_pointer()+0x1368),
"Spinda":bit6(game_pointer()+0x1368),
"Trapinch":bit7(game_pointer()+0x1368),
"Vibrava":bit0(game_pointer()+0x1369),
"Flygon":bit1(game_pointer()+0x1369),
"Cacnea":bit2(game_pointer()+0x1369),
"Cacturne":bit3(game_pointer()+0x1369),
"Swablu":bit4(game_pointer()+0x1369),
"Altaria":bit5(game_pointer()+0x1369),
"Zangoose":bit6(game_pointer()+0x1369),
"Seviper":bit7(game_pointer()+0x1369),
"Lunatone":bit0(game_pointer()+0x136a),
"Solrock":bit1(game_pointer()+0x136a),
"Barboach":bit2(game_pointer()+0x136a),
"Whiscash":bit3(game_pointer()+0x136a),
"Corphish":bit4(game_pointer()+0x136a),
"Crawdaunt":bit5(game_pointer()+0x136a),
"Baltoy":bit6(game_pointer()+0x136a),
"Claydol":bit7(game_pointer()+0x136a),
"Lileep":bit0(game_pointer()+0x136b),
"Cradily":bit1(game_pointer()+0x136b),
"Anorith":bit2(game_pointer()+0x136b),
"Armaldo":bit3(game_pointer()+0x136b),
"Feebas":bit4(game_pointer()+0x136b),
"Milotic":bit5(game_pointer()+0x136b),
"Castform":bit6(game_pointer()+0x136b),
"Kecleon":bit7(game_pointer()+0x136b),
"Shuppet":bit0(game_pointer()+0x136c),
"Banette":bit1(game_pointer()+0x136c),
"Duskull":bit2(game_pointer()+0x136c),
"Dusclops":bit3(game_pointer()+0x136c),
"Tropius":bit4(game_pointer()+0x136c),
"Chimecho":bit5(game_pointer()+0x136c),
"Absol":bit6(game_pointer()+0x136c),
"Wynaut":bit7(game_pointer()+0x136c),
"Snorunt":bit0(game_pointer()+0x136d),
"Glalie":bit1(game_pointer()+0x136d),
"Spheal":bit2(game_pointer()+0x136d),
"Sealeo":bit3(game_pointer()+0x136d),
"Walrein":bit4(game_pointer()+0x136d),
"Clamperl":bit5(game_pointer()+0x136d),
"Huntail":bit6(game_pointer()+0x136d),
"Gorebyss":bit7(game_pointer()+0x136d),
"Relicanth":bit0(game_pointer()+0x136e),
"Luvdisc":bit1(game_pointer()+0x136e),
"Bagon":bit2(game_pointer()+0x136e),
"Shelgon":bit3(game_pointer()+0x136e),
"Salamence":bit4(game_pointer()+0x136e),
"Beldum":bit5(game_pointer()+0x136e),
"Metang":bit6(game_pointer()+0x136e),
"Metagross":bit7(game_pointer()+0x136e),
"Regirock":bit0(game_pointer()+0x136f),
"Regice":bit1(game_pointer()+0x136f),
"Registeel":bit2(game_pointer()+0x136f),
"Latias":bit3(game_pointer()+0x136f),
"Latios":bit4(game_pointer()+0x136f),
"Kyogre":bit5(game_pointer()+0x136f),
"Groudon":bit6(game_pointer()+0x136f),
"Rayquaza":bit7(game_pointer()+0x136f),
"Jirachi":bit0(game_pointer()+0x1370),
"Deoxys":bit1(game_pointer()+0x1370),
"Turtwig":bit2(game_pointer()+0x1370),
"Grotle":bit3(game_pointer()+0x1370),
"Torterra":bit4(game_pointer()+0x1370),
"Chimchar":bit5(game_pointer()+0x1370),
"Monferno":bit6(game_pointer()+0x1370),
"Infernape":bit7(game_pointer()+0x1370),
"Piplup":bit0(game_pointer()+0x1371),
"Prinplup":bit1(game_pointer()+0x1371),
"Empoleon":bit2(game_pointer()+0x1371),
"Starly":bit3(game_pointer()+0x1371),
"Staravia":bit4(game_pointer()+0x1371),
"Staraptor":bit5(game_pointer()+0x1371),
"Bidoof":bit6(game_pointer()+0x1371),
"Bibarel":bit7(game_pointer()+0x1371),
"Kricketot":bit0(game_pointer()+0x1372),
"Kricketune":bit1(game_pointer()+0x1372),
"Shinx":bit2(game_pointer()+0x1372),
"Luxio":bit3(game_pointer()+0x1372),
"Luxray":bit4(game_pointer()+0x1372),
"Budew":bit5(game_pointer()+0x1372),
"Roserade":bit6(game_pointer()+0x1372),
"Cranidos":bit7(game_pointer()+0x1372),
"Rampardos":bit0(game_pointer()+0x1373),
"Shieldon":bit1(game_pointer()+0x1373),
"Bastiodon":bit2(game_pointer()+0x1373),
"Burmy":bit3(game_pointer()+0x1373),
"Wormadam":bit4(game_pointer()+0x1373),
"Mothim":bit5(game_pointer()+0x1373),
"Combee":bit6(game_pointer()+0x1373),
"Vespiquen":bit7(game_pointer()+0x1373),
"Pachirisu":bit0(game_pointer()+0x1374),
"Buizel":bit1(game_pointer()+0x1374),
"Floatzel":bit2(game_pointer()+0x1374),
"Cherubi":bit3(game_pointer()+0x1374),
"Cherrim":bit4(game_pointer()+0x1374),
"Shellos":bit5(game_pointer()+0x1374),
"Gastrodon":bit6(game_pointer()+0x1374),
"Ambipom":bit7(game_pointer()+0x1374),
"Drifloon":bit0(game_pointer()+0x1375),
"Drifblim":bit1(game_pointer()+0x1375),
"Buneary":bit2(game_pointer()+0x1375),
"Lopunny":bit3(game_pointer()+0x1375),
"Mismagius":bit4(game_pointer()+0x1375),
"Honchkrow":bit5(game_pointer()+0x1375),
"Glameow":bit6(game_pointer()+0x1375),
"Purugly":bit7(game_pointer()+0x1375),
"Chingling":bit0(game_pointer()+0x1376),
"Stunky":bit1(game_pointer()+0x1376),
"Skuntank":bit2(game_pointer()+0x1376),
"Bronzor":bit3(game_pointer()+0x1376),
"Bronzong":bit4(game_pointer()+0x1376),
"Bonsly":bit5(game_pointer()+0x1376),
"Mime Jr.":bit6(game_pointer()+0x1376),
"Happiny":bit7(game_pointer()+0x1376),
"Chatot":bit0(game_pointer()+0x1377),
"Spiritomb":bit1(game_pointer()+0x1377),
"Gible":bit2(game_pointer()+0x1377),
"Gabite":bit3(game_pointer()+0x1377),
"Garchomp":bit4(game_pointer()+0x1377),
"Munchlax":bit5(game_pointer()+0x1377),
"Riolu":bit6(game_pointer()+0x1377),
"Lucario":bit7(game_pointer()+0x1377),
"Hippopotas":bit0(game_pointer()+0x1378),
"Hippowdon":bit1(game_pointer()+0x1378),
"Skorupi":bit2(game_pointer()+0x1378),
"Drapion":bit3(game_pointer()+0x1378),
"Croagunk":bit4(game_pointer()+0x1378),
"Toxicroak":bit5(game_pointer()+0x1378),
"Carnivine":bit6(game_pointer()+0x1378),
"Finneon":bit7(game_pointer()+0x1378),
"Lumineon":bit0(game_pointer()+0x1379),
"Mantyke":bit1(game_pointer()+0x1379),
"Snover":bit2(game_pointer()+0x1379),
"Abomasnow":bit3(game_pointer()+0x1379),
"Weavile":bit4(game_pointer()+0x1379),
"Magnezone":bit5(game_pointer()+0x1379),
"Lickilicky":bit6(game_pointer()+0x1379),
"Rhyperior":bit7(game_pointer()+0x1379),
"Tangrowth":bit0(game_pointer()+0x137a),
"Electivire":bit1(game_pointer()+0x137a),
"Magmortar":bit2(game_pointer()+0x137a),
"Togekiss":bit3(game_pointer()+0x137a),
"Yanmega":bit4(game_pointer()+0x137a),
"Leafeon":bit5(game_pointer()+0x137a),
"Glaceon":bit6(game_pointer()+0x137a),
"Gliscor":bit7(game_pointer()+0x137a),
"Mamoswine":bit0(game_pointer()+0x137b),
"Porygon-Z":bit1(game_pointer()+0x137b),
"Gallade":bit2(game_pointer()+0x137b),
"Probopass":bit3(game_pointer()+0x137b),
"Dusknoir":bit4(game_pointer()+0x137b),
"Froslass":bit5(game_pointer()+0x137b),
"Rotom":bit6(game_pointer()+0x137b),
"Uxie":bit7(game_pointer()+0x137b),
"Mesprit":bit0(game_pointer()+0x137c),
"Azelf":bit1(game_pointer()+0x137c),
"Dialga":bit2(game_pointer()+0x137c),
"Palkia":bit3(game_pointer()+0x137c),
"Heatran":bit4(game_pointer()+0x137c),
"Regigigas":bit5(game_pointer()+0x137c),
"Giratina":bit6(game_pointer()+0x137c),
"Cresselia":bit7(game_pointer()+0x137c),
"Phione":bit0(game_pointer()+0x137d),
"Manaphy":bit1(game_pointer()+0x137d),
"Darkrai":bit2(game_pointer()+0x137d),
"Shaymin":bit3(game_pointer()+0x137d),
"Arceus":bit4(game_pointer()+0x137d)
}
achievement(
    "Startin' Oak Right!",
    "Choose your starter Pokemon",
    points=1,
    trigger=
        save_protection() &&
        (always_false() 
        || pokedex["Turtwig"] > prev(pokedex["Turtwig"])
        || pokedex["Chimchar"] > prev(pokedex["Chimchar"])
        || pokedex["Piplup"] > prev(pokedex["Piplup"])        
        )
)
achievement(
    "A Second Form",
    "Evolve your starter Pokemon",
    points=2,
    trigger=
        save_protection() &&
        badges["Coal"] == 0 &&
        (always_false()
        || prev(pokedex["Turtwig"]) == 1 && pokedex["Grotle"] > prev(pokedex["Grotle"])    
        || prev(pokedex["Chimchar"]) == 1 && pokedex["Monferno"] > prev(pokedex["Monferno"])
        || prev(pokedex["Piplup"]) == 1 && pokedex["Prinplup"] > prev(pokedex["Prinplup"])            
        )
)
achievement(
    "The Final Evolution",
    "Evolve your starter into its final form",
    points=3,
    trigger=
        save_protection() &&
        badges["Coal"] == 0 &&
        (always_false() 
        || prev(pokedex["Grotle"]) == 1 && pokedex["Torterra"] > prev(pokedex["Torterra"])    
        || prev(pokedex["Monferno"]) == 1 && pokedex["Infernape"] > prev(pokedex["Infernape"])
        || prev(pokedex["Prinplup"]) == 1 && pokedex["Empoleon"] > prev(pokedex["Empoleon"])   
        )
)
function catch(badge_restriction, pokemon) =>
    save_protection() &&
    badge_restriction == 0 &&
    pokemon > prev(pokemon)
function evolve(badge_restriction, prevpokemon, pokemon) =>
    save_protection() &&
    badge_restriction == 0 &&
    evoscreen_music() &&
    prevpokemon == 1 &&
    pokemon > prev(pokemon)
function starter_alts() =>
    (always_false() 
    || pokedex["Turtwig"] + pokedex["Grotle"] + pokedex["Torterra"] == 3
    || pokedex["Piplup"] + pokedex["Prinplup"] + pokedex["Empoleon"] == 3
    || pokedex["Chimchar"] + pokedex["Monferno"] + pokedex["Infernape"] == 3
    )
function gym(area_sum, limit_sum, gym_map, badge ) => //
        save_protection() &&
        area_sum == limit_sum &&
        map_ID() == gym_map &&
        trigger_when(badge > prev(badge)) &&
        starter_alts()
achievement(
    "Starly",
    "Catch a Starly",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Starly"])
)
achievement(
    "Staravia",
    "Evolve Starly into Staravia",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Starly"], pokedex["Staravia"])
)
achievement(
    "Staraptor",
    "Evolve Staravia into Staraptor",
    points=3,
    trigger=
        evolve(badges["Coal"], pokedex["Staravia"], pokedex["Staraptor"])
)
achievement(
    "Bidoof",
    "Catch a Bidoof",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Bidoof"])
)
achievement(
    "Bibarel",
    "Evolve Bidoof into Bibarel",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Bidoof"], pokedex["Bibarel"])
)
achievement(
    "Kricketot",
    "Catch a Kricketot",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Kricketot"])
)
achievement(
    "Kricketune",
    "Evolve Kricketot into Kricketune",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Kricketot"], pokedex["Kricketune"])
)
achievement(
    "Abra",
    "Catch an Abra",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Abra"])
)
achievement(
    "Kadabra",
    "Evolve Abra into Kadabra",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Abra"], pokedex["Kadabra"])
    
)
achievement(
    "Magikarp",
    "Catch a Magikarp",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Magikarp"])
)
achievement(
    "Gyarados",
    "Evolve Magikarp into Gyarados",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Magikarp"], pokedex["Gyarados"])
)
achievement(
    "Holy Shinx",
    "Catch a Shinx",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Shinx"])
)
achievement(
    "Luxio",
    "Evolve Shinx into Luxio",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Shinx"], pokedex["Luxio"])
)
achievement(
    "Luxray",
    "Evolve Luxio into Luxray",
    points=3,
    trigger=
        evolve(badges["Coal"], pokedex["Luxio"], pokedex["Luxray"])
)
achievement(
    "Budew",
    "Catch a Budew",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Budew"])
)
achievement(
    "Roselia",
    "Evolve Budew into Roselia",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Budew"], pokedex["Roselia"])
)
achievement(
    "Zubat",
    "Catch a Zubat",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Zubat"])
)
achievement(
    "Golbat",
    "Evolve Zubat into Golbat",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Zubat"], pokedex["Golbat"])
)
achievement(
    "Crobat",
    "Evolve Golbat into Crobat",
    points=3,
    trigger=
        evolve(badges["Coal"], pokedex["Golbat"], pokedex["Crobat"])
)
achievement(
    "Geodude",
    "Catch a Geodude",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Geodude"])
)
achievement(
    "Graveler",
    "Evolve Geodude into Graveler",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Geodude"], pokedex["Graveler"])
)
achievement(
    "Onix",
    "Catch an Onix",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Onix"])
)
achievement(
    "Machop",
    "Catch a Machop",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Machop"])
)
achievement(
    "Machoke",
    "Evolve Machop into Machoke",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Machop"], pokedex["Machoke"])
)
achievement(
    "Psyduck",
    "Catch a Psyduck",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Psyduck"])
)
achievement(
    "Golduck",
    "Evolve Psyduck into Golduck",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Psyduck"], pokedex["Golduck"])
)
achievement(
    "Wurmple",
    "Catch a Wurmple",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Wurmple"])
)
achievement(
    "Silcoon",
    "Evolve Wurmple into Silcoon",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Wurmple"], pokedex["Silcoon"])
)
achievement(
    "Beautifly",
    "Evolve Silcoon into Beautifly",
    points=3,
    trigger=
        evolve(badges["Coal"], pokedex["Silcoon"], pokedex["Beautifly"])
)
achievement(
    "Cascoon",
    "Evolve Wurmple into Cascoon",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Wurmple"], pokedex["Cascoon"])
)
achievement(
    "Dustox",
    "Evolve Cascoon into Dustox",
    points=3,
    trigger=
        evolve(badges["Coal"], pokedex["Cascoon"], pokedex["Dustox"])
)
achievement(
    "Ponyta",
    "Catch a Ponyta",
    points=1,
    trigger=
        catch(badges["Coal"], pokedex["Ponyta"])
)
achievement(
    "Rapidash",
    "Evolve Ponyta into Rapidash",
    points=2,
    trigger=
        evolve(badges["Coal"], pokedex["Ponyta"], pokedex["Rapidash"])
)

function areaone_caught_sum() =>
     pokedex["Starly"]
    +pokedex["Staravia"]
    +pokedex["Staraptor"]
    +pokedex["Bidoof"]
    +pokedex["Bibarel"]
    +pokedex["Kricketot"]
    +pokedex["Kricketune"]
    +pokedex["Abra"]
    +pokedex["Kadabra"]
    +pokedex["Magikarp"]
    +pokedex["Gyarados"]
    +pokedex["Shinx"]
    +pokedex["Luxio"]
    +pokedex["Luxray"]
    +pokedex["Budew"]
    +pokedex["Roselia"]
    +pokedex["Zubat"]
    +pokedex["Golbat"]
    +pokedex["Crobat"]
    +pokedex["Geodude"]
    +pokedex["Graveler"]
    +pokedex["Onix"]
    +pokedex["Machop"]
    +pokedex["Machoke"]
    +pokedex["Psyduck"]
    +pokedex["Golduck"]
    +pokedex["Wurmple"]
    +pokedex["Silcoon"]
    +pokedex["Beautifly"]
    +pokedex["Cascoon"]
    +pokedex["Dustox"]
    +pokedex["Ponyta"]
    +pokedex["Rapidash"]
    
achievement(
    "Professor Roark",
    "Collect all 36 currently available Pokemon and get the Coal Badge!",
    points=10,
    trigger=
        gym(areaone_caught_sum(), 33, oreburgh_gym, badges["Coal"])                
)
achievement(
    "Roserade",
    "Evolve Roselia into Roserade",
    points=3,
    trigger=
        evolve(badges["Forest"], pokedex["Roselia"], pokedex["Roserade"])
)
achievement(
    "Burmy",
    "Catch a Burmy",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Burmy"])
)
achievement(
    "Wormadam",
    "Evolve Burmy into Wormadam",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Burmy"], pokedex["Wormadam"])
)
achievement(
    "Mothim",
    "Catch a Mothim",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Mothim"])
)
achievement(
    "Combee",
    "Catch a Combee",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Combee"])
)
achievement(
    "Vespiquen",
    "Evolve a Combee into Vespiquen",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Combee"], pokedex["Vespiquen"])
)
achievement(
    "Pachirisu",
    "Catch a Pachirisu",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Pachirisu"])
)
achievement(
    "Buizel",
    "Catch a Buizel",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Buizel"])
)
achievement(
    "Floatzel",
    "Evolve a Buizel into Floatzel",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Buizel"], pokedex["Floatzel"])
)
achievement(
    "Cherrubi",
    "Catch a Cherubi",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Cherubi"])
)
achievement(
    "Cherrim",
    "Evolve Cherubi into Cherrim",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Cherubi"], pokedex["Cherrim"])
)
achievement(
    "Shellos",
    "Catch a Shellos",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Shellos"])
)
achievement(
    "Gastrodon",
    "Evolve Shellos into Gastrodon",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Shellos"], pokedex["Gastrodon"])
)
achievement(
    "Heracross",
    "Catch a Heracross",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Heracross"])
)
achievement(
    "Aipom",
    "Catch an Aipom",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Aipom"])
)
achievement(
    "Ambipom",
    "Evolve Aipom into Ambipom",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Aipom"], pokedex["Ambipom"])
)
achievement(
    "Drifloon",
    "Catch a Drifloon",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Drifloon"])
)
achievement(
    "Drifblim",
    "Evolve Drifloon into Drifblim",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Drifloon"], pokedex["Drifblim"])
)
achievement(
    "Buneary",
    "Catch a Buneary",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Buneary"])
)
achievement(
    "Lopunny",
    "Evolve Buneary into Lopunny",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Buneary"], pokedex["Lopunny"])
)
achievement(
    "Gastly",
    "Catch a Gastly",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Gastly"])
)
achievement(
    "Haunter",
    "Evolve Gastly into Haunter",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Gastly"], pokedex["Haunter"])
)
achievement(
    "Chingling",
    "Catch a Chingling",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Chingling"])
)
achievement(
    "Chimecho",
    "Evolve Chingling into Chimecho",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Chingling"], pokedex["Chimecho"])
)
achievement(
    "Meditite",
    "Catch a Meditie",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Meditite"])
)
achievement(
    "Medicham",
    "Evolve Meditite into Medicham",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Meditite"], pokedex["Medicham"])
)
achievement(
    "Bronzor",
    "Catch a Bronzor",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Bronzor"])
)
achievement(
    "Bronzong",
    "Evolve Bronzor into Bronzong",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Bronzor"], pokedex["Bronzong"])
)
achievement(
    "Cleffa",
    "Catch a Cleffa",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Cleffa"])
)
achievement(
    "Clefairy",
    "Evolve Cleffa into Clefairy",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Cleffa"], pokedex["Clefairy"])
)
achievement(
    "Clefable",
    "Evolve Clefairy into Clefable",
    points=3,
    trigger=
        evolve(badges["Forest"], pokedex["Clefairy"], pokedex["Clefable"])
)
achievement(
    "Chatot",
    "Catch a Chatot",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Chatot"])
)
achievement(
    "Hoothoot",
    "Catch a Hoothoot",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Hoothoot"])
)
achievement(
    "Noctowl",
    "Evolve Hoothoot into Noctowl",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Hoothoot"], pokedex["Noctowl"])
)
achievement(
    "Munchlax",
    "Catch a Munchlax",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Munchlax"])
)
achievement(
    "Snorlax",
    "Evolve Munchlax into Snorlax",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Munchlax"], pokedex["Snorlax"])
)
achievement(
    "Nosepass",
    "Catch a Nosepass",
    points=1,
    trigger=
        catch(badges["Forest"], pokedex["Nosepass"])
)
achievement(
    "Probopass",
    "Evolve Nosepass into Probopass",
    points=2,
    trigger=
        evolve(badges["Forest"], pokedex["Nosepass"], pokedex["Probopass"])
)
achievement(
    "Fossilization I",
    "Obtain either Cranidos or Shieldon",
    points=1,
    trigger=
        save_protection() &&
        badges["Forest"] == 0 &&
        (always_false()
        || pokedex["Cranidos"] > prev(pokedex["Cranidos"])
        || pokedex["Shieldon"] > prev(pokedex["Shieldon"])    
        )
)
achievement(
    "Fossilization II",
    "Obtain either Rampardos or Bastiodon",
    points=2,
    trigger=
        save_protection() &&
        badges["Forest"] == 0 &&
        (always_false()
        || pokedex["Cranidos"] == 1 && pokedex["Rampardos"] > prev(pokedex["Rampardos"])
        || pokedex["Shieldon"] == 1 && pokedex["Bastiodon"] > prev(pokedex["Bastiodon"])    
            
        )
)
function areatwo_caught_sum() =>
    pokedex["Roserade"]
    +pokedex["Burmy"]
    +pokedex["Wormadam"]
    +pokedex["Mothim"]
    +pokedex["Combee"]
    +pokedex["Vespiquen"]
    +pokedex["Pachirisu"]
    +pokedex["Buizel"]
    +pokedex["Floatzel"]
    +pokedex["Cherubi"]
    +pokedex["Cherrim"]
    +pokedex["Shellos"]
    +pokedex["Gastrodon"]
    +pokedex["Heracross"]
    +pokedex["Aipom"]
    +pokedex["Ambipom"]
    +pokedex["Drifloon"]
    +pokedex["Drifblim"]
    +pokedex["Buneary"]
    +pokedex["Lopunny"]
    +pokedex["Gastly"]
    +pokedex["Haunter"]
    +pokedex["Chingling"]
    +pokedex["Chimecho"]
    +pokedex["Meditite"]
    +pokedex["Medicham"]
    +pokedex["Bronzor"]
    +pokedex["Bronzong"]
    +pokedex["Cleffa"]
    +pokedex["Clefairy"]
    +pokedex["Clefable"]
    +pokedex["Chatot"]
    +pokedex["Hoothoot"]
    +pokedex["Noctowl"]
    +pokedex["Munchlax"]
    +pokedex["Snorlax"]
    +pokedex["Nosepass"]
    +pokedex["Probopass"]
    +pokedex["Cranidos"]
    +pokedex["Rampardos"]
    +pokedex["Shieldon"]
    +pokedex["Bastiodon"]
achievement(
    "Professor Gardenia",
    "Collect all 76 currently available Pokemon and get the Forest Badge!",
    points=10,
    trigger=
        gym(
            areaone_caught_sum() + areatwo_caught_sum(), 
            73,
            eterna_gym,
            badges["Forest"]
        )
)
achievement(
    "Gible",
    "Catch a Gible",
    points=1,
    trigger=
        catch(badges["Relic"], pokedex["Gible"])
)
achievement(
    "Gabite",
    "Evolve Gible into Gabite",
    points=2,
    trigger=
        evolve(badges["Relic"], pokedex["Gible"], pokedex["Gabite"])        
)
achievement(
    "Garchomp",
    "Evolve Gabite into Garchomp",
    points=3,
    trigger=
        evolve(badges["Relic"], pokedex["Gabite"], pokedex["Garchomp"])
)
achievement(
    "Rotom",
    "Catch Rotom",
    points=5,
    trigger=
        catch(badges["Relic"], pokedex["Rotom"])
)
achievement(
    "Gligar",
    "Catch a Gligar",
    points=1,
    trigger=
        catch(badges["Relic"], pokedex["Gligar"])
)
achievement(
    "Ralts",
    "Catch a Ralts",
    points=1,
    trigger=
        catch(badges["Relic"], pokedex["Ralts"])
)
achievement(
    "Kirlia",
    "Catch a Kirlia",
    points=2,
    trigger=
        evolve(badges["Relic"], pokedex["Ralts"], pokedex["Kirlia"])
)
achievement(
    "Gardevoir",
    "Evolve Kirlia into Gardevoir",
    points=3,
    trigger=
        evolve(badges["Relic"], pokedex["Kirlia"], pokedex["Gardevoir"])
)
achievement(
    "Gallade",
    "Evolve Kirlia into Gallade",
    points=3,
    trigger=
        evolve(badges["Relic"], pokedex["Kirlia"], pokedex["Gallade"])
)
achievement(
    "Togepi",
    "Obtain Togepi",
    points=1,
    trigger=
        catch(badges["Relic"], pokedex["Togepi"])
)
achievement(
    "Togetic",
    "Evolve Togepi into Togetic",
    points=2,
    trigger=
        evolve(badges["Relic"], pokedex["Togepi"], pokedex["Togetic"])
)
achievement(
    "Togekiss",
    "Evolve Togetic into Togekiss",
    points=3,
    trigger=
        evolve(badges["Relic"], pokedex["Togetic"], pokedex["Togekiss"])
)
achievement(
    "Eevee",
    "Obtain Eevee",
    points=1,
    trigger=
        catch(badges["Relic"], pokedex["Eevee"])
)
function eevolution_sum() =>
     pokedex["Vaporeon"] 
    +pokedex["Jolteon"] 
    +pokedex["Flareon"]
    +pokedex["Espeon"] 
    +pokedex["Umbreon"] 
    +pokedex["Leafeon"]
achievement(
    "Eeveelution I",
    "Obtain your first Eeveelution",
    points=2,
    trigger=
        save_protection() &&
        prev(eevolution_sum()) == 0 &&
        eevolution_sum() == 1
)    
function areathree_caught_sum() =>
    pokedex["Gible"]
   +pokedex["Gabite"]
   +pokedex["Garchomp"]
   +pokedex["Rotom"]
   +pokedex["Gligar"]
   +pokedex["Ralts"]
   +pokedex["Kirlia"]
   +pokedex["Gardevoir"]
   +pokedex["Gallade"]
   +pokedex["Eevee"]
   +pokedex["Togepi"]
   +pokedex["Togetic"]
   +pokedex["Togekiss"]
achievement(
    "Professor Fantina",
    "Collect all 90 currently available Pokemon and earn the Relic Badge!",
    points=10,
    trigger=        
            areaone_caught_sum() +
            areatwo_caught_sum() +
            eevolution_sum() +
            areathree_caught_sum() == 87 &&
            map_ID() >= hearthome_gym &&
            map_ID() <= hearthome_fantina &&
            trigger_when(badges["Relic"] > prev(badges["Relic"])) &&
            starter_alts()                                         
)
achievement(
    "Eeveelution II",
    "Obtain your second Eeveelution",
    points=2,
    trigger=
        save_protection() &&
        prev(eevolution_sum()) == 1 &&
        eevolution_sum() == 2
)
achievement(
    "Eeveelution III",
    "Obtain your third Eeveelution",
    points=2,
    trigger=
        save_protection() &&
        prev(eevolution_sum()) == 2 &&
        eevolution_sum() == 3
)
achievement(
    "Eeveelution IV",
    "Obtain your fourth Eeveelution",
    points=2,
    trigger=
        save_protection() &&
        prev(eevolution_sum()) == 3 &&
        eevolution_sum() == 4
)
achievement(
    "Eeveelution V",
    "Obtain your fifth Eeveelution",
    points=2,
    trigger=
        save_protection() &&
        prev(eevolution_sum()) == 4 &&
        eevolution_sum() == 5
)
achievement(
    "Eeveelution VI",
    "Obtain your sixth Eeveelution",
    points=2,
    trigger=
        save_protection() &&
        prev(eevolution_sum()) == 5 &&
        eevolution_sum() == 6
)
achievement(
    "Goldeen",
    "Catch a Goldeen",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Goldeen"])
)
achievement(
    "Seaking",
    "Evolve Goldeen into Seaking",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Goldeen"], pokedex["Seaking"])
)
achievement(
    "Barboach",
    "Catch a Barboach",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Barboach"])
)
achievement(
    "Whiscash",
    "Evolve Barboach into Whiscash",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Barboach"], pokedex["Whiscash"])    
)
achievement(
    "Chansey",
    "Catch a Chansey",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Chansey"])    
)
achievement(
    "Blissey",
    "Evolve Chansey into Blissey",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Chansey"], pokedex["Blissey"])
)
achievement(
    "Pichu",
    "Catch a Pichu",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Pichu"])
)
achievement(
    "Pikachu",
    "Evolve Pichu into Pikachu, or catch a Pikachu!",
    points=2,
    trigger=
        catch(badges["Cobble"], pokedex["Pikachu"])        
)
achievement(
    "Richu",
    "Evolve Pikachu into Raichu",
    points=3,
    trigger=
        evolve(badges["Cobble"], pokedex["Pikachu"], pokedex["Raichu"])
)
achievement(
    "Unown",
    "Catch an Unown",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Unown"])
)
achievement(
    "Wooper",
    "Catch a Wooper",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Wooper"])
)
achievement(
    "Quagsire",
    "Obtain a Quagsire",
    points=2,
    trigger=
        catch(badges["Cobble"], pokedex["Quagsire"])
)
achievement(
    "Wingull",
    "Catch a Wingull",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Wingull"])
)
achievement(
    "Pelipper",
    "Evolve Wingull into Pelipper",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Wingull"], pokedex["Pelipper"])
)
achievement(
    "Girafarig",
    "Catch a Girafarig",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Girafarig"])        
)
achievement(
    "Hippopotas",
    "Catch a Hippopotas",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Hippopotas"])
)
achievement(
    "Hippowdon",
    "Evolve Hippopotas into Hippowdon",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Hippopotas"], pokedex["Hippowdon"])
)
achievement(
    "Marill",
    "Catch a Marill",
    points=2,
    trigger=
        catch(badges["Cobble"], pokedex["Marill"])
)
achievement(
    "Azumarill",
    "Evolve Marill into Azumarill",
    points=3,
    trigger=
        evolve(badges["Cobble"], pokedex["Marill"], pokedex["Azumarill"])
)
achievement(
    "Skorupi",
    "Catch a Skorupi",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Skorupi"])
)
achievement(
    "Drapion",
    "Evolve Skorupi into Drapion",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Skorupi"], pokedex["Drapion"])
)
achievement(
    "Croagunk",
    "Catch a Croagunk",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Croagunk"])
)
achievement(
    "Toxicroak",
    "Evolve Croagunk into Toxicroak",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Croagunk"], pokedex["Toxicroak"])
)
achievement(
    "Carnivine",
    "Catch a Carnivine",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Carnivine"])
)
achievement(
    "Remoraid",
    "Catcha Remoraid",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Remoraid"])
)
achievement(
    "Octillery",
    "Evolve Remoraid into Octillery",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Remoraid"], pokedex["Octillery"])
)
achievement(
    "Finneon",
    "Catch a Finneon",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Finneon"])
)
achievement(
    "Lumineon",
    "Evolve Finneon into Lumineon",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Finneon"], pokedex["Lumineon"])
)
achievement(
    "Gliscor",
    "Evolve Gligar into Gliscor",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Gligar"], pokedex["Gliscor"])
)
achievement(
    "Lickitung",
    "Catch a Lickitung",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Lickitung"])
)
achievement(
    "Lickylicky",
    "Evolve Lickitung into Lickilicky",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Lickitung"], pokedex["Lickilicky"])
)
achievement(
    "Houndour",
    "Catch a Houndour",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Houndour"])
)
achievement(
    "Houndoom",
    "Evolve Houndour into Houndoom",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Houndour"], pokedex["Houndoom"])
)
achievement(
    "Tangela",
    "Catch a Tangela",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Tangela"])
)
achievement(
    "Tangrowth",
    "Evolve Tangela into Tangrowth",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Tangela"], pokedex["Tangrowth"])
)
achievement(
    "Yanma",
    "Catch a Yanma",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Yanma"])
)
achievement(
    "Yanmega",
    "Evolve Yanma into Yanmega",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Yanma"], pokedex["Yanmega"])
)
achievement(
    "Tropius",
    "Catch a Tropius",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Tropius"])    
)
achievement(
    "Rhyhorn",
    "Catch a Rhyhorn",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Rhyhorn"])
)
achievement(
    "Rhydon",
    "Evolve Rhyhorn into Rhydon",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Rhyhorn"], pokedex["Rhydon"])
)
achievement(
    "Duskull",
    "Catch a Duskull",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Duskull"])
)
achievement(
    "Dusclops",
    "Evolve Duskull into Dusclops",
    points=2,
    trigger=
        evolve(badges["Cobble"], pokedex["Duskull"], pokedex["Dusclops"])
)
achievement(
    "Porygon",
    "Obtain a Porygon",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Porygon"])
)
achievement(
    "Scyther",
    "Catch a Scyther",
    points=1,
    trigger=
        catch(badges["Cobble"], pokedex["Scyther"])
)
function areafour_caught_sum() =>
     pokedex["Goldeen"]
    +pokedex["Seaking"]
    +pokedex["Barboach"]
    +pokedex["Whiscash"]
    +pokedex["Chansey"]
    +pokedex["Blissey"]
    +pokedex["Pichu"]
    +pokedex["Pikachu"]
    +pokedex["Raichu"]
    +pokedex["Unown"]
    +pokedex["Wooper"]
    +pokedex["Quagsire"]
    +pokedex["Wingull"]
    +pokedex["Pelipper"]
    +pokedex["Girafarig"]
    +pokedex["Hippopotas"]
    +pokedex["Hippowdon"]
    +pokedex["Marill"]
    +pokedex["Azumarill"]
    +pokedex["Skorupi"]
    +pokedex["Drapion"]
    +pokedex["Croagunk"]
    +pokedex["Toxicroak"]
    +pokedex["Carnivine"]
    +pokedex["Remoraid"]
    +pokedex["Octillery"]
    +pokedex["Finneon"]
    +pokedex["Lumineon"]
    +pokedex["Gliscor"]
    +pokedex["Lickitung"]
    +pokedex["Lickilicky"]
    +pokedex["Houndour"]
    +pokedex["Houndoom"]
    +pokedex["Tangela"]
    +pokedex["Tangrowth"]
    +pokedex["Yanma"]
    +pokedex["Yanmega"]
    +pokedex["Tropius"]
    +pokedex["Rhyhorn"]
    +pokedex["Rhydon"]
    +pokedex["Duskull"]
    +pokedex["Dusclops"]
    +pokedex["Porygon"]
    +pokedex["Scyther"]
achievement(
    "Professor Maylene",
    "Obtain all 139 currently available Pokemon and earn the Cobble badge!",
    points=10,
    trigger=
        gym(
            areaone_caught_sum() + 
            areatwo_caught_sum() +
            eevolution_sum() +
            areathree_caught_sum() +
            areafour_caught_sum(),
            136,
            veilstone_gym,
            badges["Cobble"]
        )
)
achievement(
    "Apprentice Wake",
    "Continue to have all 139 currently available and earn the Fen badge!",
    points=5,
    trigger=
        save_protection() &&
        badges["Fen"] > prev(badges["Fen"])
)
achievement(
    "Steelix",
    "Catch a Steelix",
    points=2,
    trigger=
        catch(badges["Mine"], pokedex["Steelix"])
)
achievement(
    "Bonsly",
    "Breed a Bonsly",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Bonsly"])    
)
achievement(
    "Sudowoodo",
    "Catch a Sudowoodo",
    points=2,
    trigger=
        catch(badges["Mine"],  pokedex["Sudowoodo"])
)
achievement(
    "Mime Jr.",
    "Breed a Mime Jr.",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Mime Jr."])
)
achievement(
    "Mr. Mime",
    "Catch Mr. Mime",
    points=2,
    trigger=
        catch(badges["Mine"], pokedex["Mr. Mime"])
)
achievement(
    "Happiny",
    "Breed a Happiny",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Happiny"])
)
achievement(
    "Riolu",
    "Obtain a Riolu",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Riolu"])
)
achievement(
    "Lucario",
    "Evolve Riolu into Lucario",
    points=2,
    trigger=
        evolve(badges["Mine"], pokedex["Riolu"], pokedex["Lucario"])
)
achievement(
    "Azurill",
    "Obtain an Azurill",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Azurill"])
)
achievement(
    "Tentacool",
    "Catch a Tentacool",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Tentacool"])
)
achievement(
    "Tentacruel",
    "Catch a Tentacruel",
    points=2,
    trigger=
        catch(badges["Mine"], pokedex["Tentacruel"])
)
achievement(
    "Swablu",
    "Catch a Swablu",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Swablu"])
)
achievement(
    "Altaria",
    "Evolve Swablu into Altaria",
    points=2,
    trigger=
        evolve(badges["Mine"], pokedex["Swablu"], pokedex["Altaria"])
)
achievement(
    "Magnemite",
    "Catch a Magnemite",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Magnemite"])
)
achievement(
    "Magneton",
    "Evolve Magnemite into Magneton",
    points=2,
    trigger=
        evolve(badges["Mine"], pokedex["Magnemite"], pokedex["Magneton"])
)
achievement(
    "Magnezone",
    "Evolve Magneton into Magnezone",
    points=3,
    trigger=
        evolve(badges["Mine"], pokedex["Magneton"], pokedex["Magnezone"])
)
achievement(
    "Magby",
    "Breed a Magby",
    points=1,
    trigger=
        catch(badges["Mine"], pokedex["Magby"])
)
achievement(
    "Magmar",
    "Catch a Magmar",
    points=2,
    trigger=
        catch(badges["Mine"], pokedex["Magmar"])
)
function areafive_caught_sum() =>
     pokedex["Steelix"]
+pokedex["Bonsly"]
+pokedex["Sudowoodo"]
+pokedex["Mime Jr."]
+pokedex["Mr. Mime"]
+pokedex["Happiny"]
+pokedex["Riolu"]
+pokedex["Lucario"]
+pokedex["Azurill"]
+pokedex["Tentacool"]
+pokedex["Tentacruel"]
+pokedex["Swablu"]
+pokedex["Altaria"]
+pokedex["Magnemite"]
+pokedex["Magneton"]
+pokedex["Magnezone"]
+pokedex["Magby"]
+pokedex["Magmar"]
achievement(
    "Professor Byron",
    "Obtain all 157 currently available Pokemon and get the Mine badge!",
    points=10,
    trigger=
    gym(
        areaone_caught_sum() + 
        areatwo_caught_sum() +
        eevolution_sum() +
        areathree_caught_sum() +
        areafour_caught_sum() +
        areafive_caught_sum(),
        154,
        canalave_gym,
        badges["Mine"]
    )
)
achievement(
    "Feebas",
    "Catch a Feebas",
    points=5,
    trigger=
        catch(badges["Icicle"], pokedex["Feebas"])
)
achievement(
    "Milotic",
    "Evolve Feebas into Milotic",
    points=10,
    trigger=
        evolve(badges["Icicle"], pokedex["Feebas"], pokedex["Milotic"])
)
achievement(
    "Snover",
    "Catch a Snover",
    points=1,
    trigger=
        catch(badges["Icicle"], pokedex["Snover"])
)
achievement(
    "Abomasnow",
    "Evolve Snover into Abomasnow",
    points=2,
    trigger=
        evolve(badges["Icicle"], pokedex["Snover"], pokedex["Abomasnow"])
)
achievement(
    "Sneasel",
    "Catch a Sneasel",
    points=1,
    trigger=
        catch(badges["Icicle"], pokedex["Sneasel"])    
)
achievement(
    "Eeveelution VII",
    "Evolve Eevee into Glaceon",
    points=2,
    trigger=
        evolve(badges["Icicle"], pokedex["Eevee"], pokedex["Glaceon"])
)
achievement(
    "Swinub",
    "Catch a Swinub",
    points=1,
    trigger=
        catch(badges["Icicle"], pokedex["Swinub"])
)
achievement(
    "Piloswine",
    "Evolve Swinub into Piloswine",
    points=2,
    trigger=
        evolve(badges["Icicle"], pokedex["Swinub"], pokedex["Piloswine"])
)
achievement(
    "Mamoswine",
    "Evolve Piloswine into Mamoswine",
    points=3,
    trigger=
        evolve(badges["Icicle"], pokedex["Piloswine"], pokedex["Mamoswine"])
)
achievement(
    "Snorunt",
    "Catch a Snorunt",
    points=1,
    trigger=
        catch(badges["Icicle"], pokedex["Snorunt"])
)
achievement(
    "Glalie",
    "Evolve Snorunt into Glalie",
    points=2,
    trigger=
        evolve(badges["Icicle"], pokedex["Snorunt"], pokedex["Glalie"])      
)
achievement(
    "Froslass",
    "Evolve Snorunt into Froslass",
    points=2,
    trigger=
        evolve(badges["Icicle"], pokedex["Snorunt"], pokedex["Froslass"])
)
function areasix_caught_sum() =>
    pokedex["Feebas"]
+pokedex["Milotic"]
+pokedex["Snover"]
+pokedex["Abomasnow"]
+pokedex["Sneasel"]
+pokedex["Glaceon"]
+pokedex["Swinub"]
+pokedex["Piloswine"]
+pokedex["Mamoswine"]
+pokedex["Snorunt"]
+pokedex["Glalie"]
+pokedex["Froslass"]
achievement(
    "Professor Candice",
    "Obtain all 169 currently available Pokemon and get the Mine badge!",
    points=10,
    trigger=
    gym(
        areaone_caught_sum() + 
        areatwo_caught_sum() +
        eevolution_sum() +
        areathree_caught_sum() +
        areafour_caught_sum() +
        areafive_caught_sum() +
        areasix_caught_sum(),
        166,
        snowpoint_gym,
        badges["Icicle"]
    )
)
achievement(
    "Mantyke",
    "Catch a Mantyke",
    points=1,
    trigger=
        catch(badges["Beacon"], pokedex["Mantyke"])    
)
achievement(
    "Mantine",
    "Evolve Mantyke into Mantine",
    points=2,
    trigger=
        evolve(badges["Beacon"], pokedex["Mantyke"], pokedex["Mantine"])
)
achievement(
    "Weavile",
    "Evolve Sneasel into Weavile",
    points=2,
    trigger=
        evolve(badges["Beacon"], pokedex["Sneasel"], pokedex["Weavile"])
)
achievement(
    "Elekid",
    "Breed an Elekid",
    points=1,
    trigger=
        catch(badges["Beacon"], pokedex["Elekid"])
)
achievement(
    "Electabuzz",
    "Catch a Electabuzz",
    points=2,
    trigger=
        catch(badges["Beacon"], pokedex["Electabuzz"])
)
achievement(
    "Absol",
    "Catch an Absol",
    points=1,
    trigger=
        catch(badges["Beacon"], pokedex["Absol"])
)
achievement(
    "Giratina",
    "Catch Giratina",
    points=5,
    trigger=
        catch(badges["Beacon"], pokedex["Giratina"])
)
achievement(
    "Uxie",
    "Catch Uxie",
    points=5,
    trigger=
        catch(badges["Beacon"], pokedex["Uxie"])
)
achievement(
    "Azelf",
    "Catch Azelf",
    points=5,
    trigger=
        catch(badges["Beacon"], pokedex["Azelf"])
)
achievement(
    "Mesprit",
    "Catch Mesprit",
    points=5,
    trigger=
        catch(badges["Beacon"], pokedex["Mesprit"])
)
function areaseven_caught_sum() =>
    pokedex["Mantyke"]
+pokedex["Mantine"]
+pokedex["Weavile"]
+pokedex["Uxie"]
+pokedex["Azelf"]
+pokedex["Mesprit"]
+pokedex["Elekid"]
+pokedex["Electabuzz"]
+pokedex["Absol"]
+pokedex["Giratina"]
achievement(
    "Professor Volkner",
    "Obtain all 179 currently available Pokemon and get the Beacon badge!",
    points=10,
    trigger=
    gym(
        areaone_caught_sum() + 
        areatwo_caught_sum() +
        eevolution_sum() +
        areathree_caught_sum() +
        areafour_caught_sum() +
        areafive_caught_sum() +
        areasix_caught_sum() +
        areaseven_caught_sum(),
        176,
        sunyshore_gym,
        badges["Beacon"]
    )
)
achievement(
    "Oak's Collection in Action",
    "Defeat the Elite 4, and prove to Oak that you're the champion!",
    points=10,
    trigger=
        prev(map_ID()) == champ_room &&
        map_ID() == final_room
)
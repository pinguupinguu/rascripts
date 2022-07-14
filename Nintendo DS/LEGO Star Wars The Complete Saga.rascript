// LEGO Star Wars: The Complete Saga
// #ID = 15351
// RA Checksum: 6d5586af4c4b2b5dd02d9462089569c2
// $124A0F: Bit0=Debug enabled
function debug() => bit0(0x00124A0F)
// $125444: In Free Play
// $125445: In Level
// $125446: Current Level
// $125449: Current Character
// $12544C: Total Studs (32bit)
// $13019D: Game paused
//          00=False
//          01=True
//          03=In Shop/Other at Cantina
// $13019F: Music Volume
// $1301A0: Sound Volume
// $1301A2: Debug Cheats
//          Bit0=Skip Activation
//          Bit1=Boba Fett unlocked in Shop
//          Bit2=Darth Vader unlocked
//          Bit4=The Emperor unlocked in Shop
//          Bit5=1.000.000 Studs at load
//          Bit6=3.000.000 Studs at load
//          Bit7=Evasion Survival unlocked in Shop
// $1301A3: Debug Cheats
//          Bit0=Focus Survival unlocked in Shop
// $132484: Character 1 in Level
// $132485: Character 2 in Level
// $1324BE: Character Party 1
// $1324BF: Character Party 2
// $1324C0: Character Party 3
// $1324C1: Character Party 4
// $1324C2: Character Party 5
// $1324C3: Character Party 6
// $1324C4: Character Party 7
// $1324C5: Character Party 8
// $132719: [8bit] Active Save Slot
//          0xff=No Save Slot Loaded
//          0x00=Game 1
//          0x01=Game 2
function save_profile() => byte(0x132719)
function save_protection() => save_profile() == prev(save_profile())

// $132724: Total Time (32bit)
//          Bit2=Phantom Menace - Negotiations Free Play Complete (Gold Brick 2)
// $132754: [NBit] Level Flags
//          Bit3=Phantom Menace - Escape from Naboo Free Play Complete (Gold Brick 2)
// $132756: [NBit] Level Flags
//          Bit4=UNUSED - No Free Play!
//          Bit6=UNUSED
// $132758: [NBit] Level Flags
//          Bit5=Phantom Menace - Retake Theed Palace Free Play Complete (Gold Brick 2)
// $13275A: [NBit] Level Flags
//          Bit6=Phantom Menace - Darth Maul Free Play Complete
// $13275C: [NBit] Level Flags
//          Bit7=Attack of the Clones - Discovery on Kamino Free Play Complete (Gold Brick 2)
// $13275F: [NBit] Level Flags
//          Bit0=Attack of the Clones - Droid Factory Free Play Complete (Gold Brick 2)
// $132761: [NBit] Level Flags
//          Bit1=Attack of the Clones - Jedi Battle Free Play Complete (Gold Brick 2)
// $132763: [NBit] Level Flags
//          Bit2=UNUSED
//          Bit4=UNUSED
// $132765: [NBit] Level Flags
//          Bit3=Attack of the Clones - Count Dooku Free Play Complete (Gold Brick 2)
// $132767: [NBit] Level Flags
//          Bit4=UNUSED
//          Bit6=UNUSED
// $132769: [NBit] Level Flags
//          Bit5=Revenge of the Sith - General Grievous Free Play Complete (Gold Brick 2)
// $13276B: [NBit] Level Flag
//          Bit6=Revenge of the Sith - Defense of Kashyyyk Free Play Complete (Gold Brick 2)
// $13276D: [NBit] Level Flags
//          Bit7=Revenge of the Sith - Ruin of the Jedi Free Play Complete (Gold Brick 2)
// $132770: [NBit] Level Flags
//          Bit0=Revenge of the Sith - Darth Vader Free Play Complete (Gold Brick 2)
// $132771: [NBit] Level Flags
//          Bit7=A New Hope - Secret Plans Available
// $132772: [NBit] Level Flags
//          Bit1=A New Hope - Secret Plans Free Play Complete (Gold Brick 2)
// $132774: [NBit] Level Flags
//          Bit2=A New Hope - The Jundland Wastes Free Play Complete (Gold Brick 2)
// $132776: [NBit] Level Flags
//          Bit3=A New Hope - Mos Eisley Spaceport Free Play Complete (Gold Brick 2)
// $132778: [NBit] Level Flags
//          Bit4=A New Hope - Death Star Escape Free Play Complete (Gold Brick 2)
// $13277A: [NBit] Level Flags
//          Bit5=UNUSED
//          Bit7=UNUSED
// $13277C: [NBit] Level Flags
//          Bit6=UNUSED
// $13277D: [NBit] Level Flags
//          Bit0=UNUSED
// $13277E: [NBit] Level Flags
//          Bit7=The Empire Strikes Back - Escape from Echo Base Free Play Complete (Gold Brick 2)
// $132781: [NBit] Level Flags
//          Bit0=UNUSED
//          Bit2=UNUSED
// $132783: [NBit] Level Flags
//          Bit1=The Empire Strikes Back - Dagobah Free Play Complete (Gold Brick 2)
// $132783: [NBit] Level Flags
//          Bit4=The Empire Strikes Back - Dagobah Red Brick Collected
// $132785: [NBit] Level Flags
//          Bit2=The Empire Strikes Back - Cloud City Trap Free Play Complete (Gold Brick 2)
// $132787: [NBit] Level Flags
//          Bit3=Return of the Jedi - Jabba's Palace Free Play Complete (Gold Brick 2)
// $132789: [NBit] Level Flags
//          Bit4=UNUSED
//          Bit6=UNUSED
// $13278B: [NBit] Level Flags
//          Bit5=Return of the Jedi - The Battle of Endor Free Play Complete (Gold Brick 2)
// $13278D: [NBit] Level Flags
//          Bit6=Return of the Jedi - Jedi Destiny Free Play Complete (Gold Brick 2)
// $13278F: [NBit] Level Flags
//          Bit7=UNUSED
//          Bit1=UNUSED
// =====STORY PROGRESSION======
function progression(levelcheck, completion) =>
    save_protection() &&
    levelcheck == 1 &&
    completion > prev(completion)
// $132752: [NBit] Level Flags
//          Bit0=Phantom Menace - Negotiations Available
//          Bit1=Phantom Menace -  Negotiations Story Complete (Gold Brick 1)
achievement(
    "Menacing Negotiations",
    "Clear the story mode of Negotiations in The Phantom Menace.",    
    points=5,
    id=151911,
    badge="170844",
    trigger=
        progression(bit0(0x132752), bit1(0x132752))
)
// $132754: [NBit] Level Flags
//          Bit1=Phantom Menace - Escape from Naboo Available
//          Bit2=Phantom Menace - Escape from Naboo Story Complete (Gold Brick 1)
achievement(
    "Running from Naboo",
    "Clear the story mode of Escape from Naboo in The Phantom Menace.",    
    points=5,
    id=151912,
    badge="170845",
    trigger=
        progression(bit1(0x132754), bit2(0x132754))
)
// $132756: [NBit] Level Flags
//          Bit2=Phantom Menace - Mos Espa Podrace Available
//          Bit3=Phantom Menace - Mos Espa Podrace Story Complete (Gold Brick 1)
achievement(
    "Podracing in Mos Espa",
    "Clear the story mode of Mos Espa Podrace in The Phantom Menace.",    
    points=5,
    id=151913,
    badge="170846",
    trigger=
        progression(bit2(0x132756), bit3(0x132756)) 
)
// $132758: [NBit] Level Flags
//          Bit3=Phantom Menace - Retake Theed Palace Available
//          Bit4=Phantom Menace - Retake Theed Palace Story Complete (Gold Brick 1)
achievement(
    "Retaking a Palace",
    "Clear the story mode of Retake Theed Palace in The Phantom Menace.",    
    points=5,
    id=151914,
    badge="170847",
    trigger=
        progression(bit3(0x132758), bit4(0x132758))
)
// $13275A: [NBit] Level Flags
//          Bit4=Phantom Menace - Darth Maul Available
//          Bit5=Phantom Menace - Darth Maul Story Complete
achievement(
    "Darth Maul",
    "Clear the story mode of Darth Maul in The Phantom Menace.",    
    points=10,
    id=151915,
    badge="170848",
    trigger=
        progression(bit4(0x13275A), bit5(0x13275A))
)
// $13275C: [NBit] Level Flags
//          Bit5=Attack of the Clones - Discoveryy on Kamino Available
//          Bit6=Attack of the Clones - Discoveryy on Kamino Story Complete (Gold Brick 1)
achievement(
    "Discovering Kamino",
    "Clear the story mode of Discovery on Kamino in Attack of the Clones.",    
    points=5,
    id=151916,
    badge="170849",
    trigger=
        progression(bit5(0x13275C), bit6(0x13275C))
)
// $13275E: [NBit] Level Flags
//          Bit6=Attack of the Clones - Droid Factory Available
//          Bit7=Attack of the Clones - Droid Factory Story Complete (Gold Brick 1)
achievement(
    "Droid Factory Invasion",
    "Clear the story mode of Droid Factory in Attack of the Clones.",   
    points=5,
    id=151917,
    badge="170850",
    trigger=
        progression(bit6(0x13275E), bit7(0x13275E))
)
// $132760: [NBit] Level Flags
//          Bit7=Attack of the Clones - Jedi Battle Available
// $132761: [NBit] Level Flags
//          Bit0=Attack of the Clones - Jedi Battle Story Complete (Gold Brick 1)
achievement(
    "Battling Jedis",
    "Clear the story mode of Jedi Battle in Attack of the Clones.",    
    points=5,
    id=151918,
    badge="170851",
    trigger=
        progression(bit7(0x132760), bit0(0x132761))
)
// $132763: [NBit] Level Flags
//          Bit0=Attack of the Clones - Gunship Cavalry Available
//          Bit1=Attack of the Clones - Gunship Cavalry Story Complete (Gold Brick 1)
achievement(
    "Fire the Cavalry",
    "Clear the story mode of Gunship Cavalry in Attack of the Clones.",    
    points=5,
    id=151919,
    badge="170852",
    trigger=
        progression(bit0(0x132763), bit1(0x132763))
)
// $132765: [NBit] Level Flags
//          Bit1=Attack of the Clones - Count Dooku Available
//          Bit2=Attack of the Clones - Count Dooku Story Complete (Gold Brick 1)
achievement(
    "Fighting Dooku",
    "Clear the story mode of Count Dooku in Attack of the Clones.",   
    points=10,
    id=151920,
    badge="170853",
    trigger=
        progression(bit1(0x132765), bit2(0x132765))
        
)
// $132767: [NBit] Level Flags
//          Bit2=Revenge of the Sith - Battle over Coruscant - Available
//          Bit3=Revenge of the Sith - Battle over Coruscant Story Complete (Gold Brick 1)
achievement(
    "Battle of Croissants",
    "Clear the story mode of Battle over Coruscant in Revenge of the Sith.",        
    points=5,
    id=151921,
    badge="170854",
    trigger=
        progression(bit2(0x132767), bit3(0x132767))    
)
// $132769: [NBit] Level Flags
//          Bit3=Revenge of the Sith - General Grievous Available
//          Bit4=Revenge of the Sith - General Grievous Story Complete (Gold Brick 1)
achievement(
    "Grievous Loss",
    "Clear the story mode of General Grievous in Revenge of the Sith.",    
    points=5, 
    id=151922,
    badge="170855",
    trigger=
        progression(bit3(0x132769), bit4(0x132769))
)
// $13276B: [NBit] Level Flag
//          Bit4=Revenge of the Sith - Defense of Kashyyyk Available
//          Bit5=Revenge of the Sith - Defense of Kashyyyk Story Complete (Gold Brick 1)
achievement(
    "Defense of Kashyyyk",
    "Clear the story mode of Defense of Kashyyyk in Revenge of the Sith",
    points=5,
    id=151923,
    badge="170856",
    trigger=
        progression(bit4(0x13276B), bit5(0x13276B))
)
// $13276D: [NBit] Level Flags
//          Bit5=Revenge of the Sith - Ruin of the Jedi Available
//          Bit6=Revenge of the Sith - Ruin of the Jedi Story Complete (Gold Brick 1)
achievement(
    "Ruining the Jedis",
    "Clear the story mode of Ruin of the Jedi in Revenge of the Sith.",
    points=5,
    id=151924,
    badge="170857",
    trigger=
        progression(bit5(0x13276D), bit6(0x13276D))
)
// $13276F: [NBit] Level Flags
//          Bit6=Revenge of the Sith - Darth Vader Available
//          Bit7=Revenge of the Sith - Darth Vader Story Complete (Gold Brick 1)
achievement(
    "I Am Your Father",
    "Clear the story mode of Darth Vader in Revenge of the Sith.",
    points=10,
    id=151925,
    badge="170858",
    trigger=
        progression(bit6(0x13276F), bit7(0x13276F))
)
// $132771: [NBit] Level Flags
//          Bit7=A New Hope - Secret Plans Available
// $132772: [NBit] Level Flags
//          Bit0=A New Hope - Secret Plans Story Complete (Gold Brick 1)
achievement(
    "Secret Plans...",
    "Clear the story mode of Secret Plans in A New Hope.",
    points=5,
    id=151926,
    badge="170859",
    trigger=
        progression(bit7(0x132771), bit0(0x132772))
)
// $132774: [NBit] Level Flags
//          Bit0=A New Hope - The Jundland Wastes Available
//          Bit1=A New Hope - The Jundland Wastes Story Complete (Gold Brick 1)
achievement(
    "Wasteful Jundland",
    "Clear the story mode of The Jundland Wastes in A New Hope.",
    points=5,
    id=151927,
    badge="170860",
    trigger=
        progression(bit0(0x132774), bit1(0x132774))
)
// $132776: [NBit] Level Flags
//          Bit1=A New Hope - Mos Eisley Spaceport Available
//          Bit2=A New Hope - Mos Eisley Spaceport Story Complete (Gold Brick 1)
achievement(
    "Spaceport!",
    "Clear the story mode of Mos Eisley Spaceport in A New Hope.",
    points=5,
    id=151928,
    badge="170861",
    trigger=
        progression(bit1(0x132776), bit2(0x132776))
)
// $132778: [NBit] Level Flags
//          Bit2=A New Hope - Death Star Escape Available
//          Bit3=A New Hope - Death Star Escape Story Complete (Gold Brick 1)
achievement(
    "A Deathly Escape!",
    "Clear the story mode of Death Star Escape in A New Hope.",
    points=5,
    id=151929,
    badge="170862",
    trigger=
        progression(bit2(0x132778), bit3(0x132778))
)
// $13277A: [NBit] Level Flags
//          Bit3=A New Hope - Rebel Attack Available
//          Bit4=A New Hope - Rebel Attack Story Complete (Gold Brick 1)
achievement(
    "Rebellious Attack",
    "Clear the story mode of Rebel Attack in A New Hope.",
    points=10,
    id=151930,
    badge="170863",
    trigger=
        progression(bit3(0x13277A), bit4(0x13277A))
)
// $13277C: [NBit] Level Flags
//          Bit4=The Empire Strikes Back - Hoth Battle Available
//          Bit5=The Empire Strikes Back - Hoth Battle Story Complete (Gold Brick 1)
achievement(
    "Hoth Battle",
    "Clear the story mode of Hoth Battle in The Empire Strikes Back.",
    points=5,
    id=151931,
    badge="170864",
    trigger=
        progression(bit4(0x13277C), bit5(0x13277C))
)
// $13277E: [NBit] Level Flags
//          Bit5=The Empire Strikes Back - Escape from Echo Base Available
//          Bit6=The Empire Strikes Back - Escape from Echo Base Story Complete (Gold Brick 1)
achievement(
    "Escaping the Echoes",
    "Clear the story mode of Escape from Echo Base in The Empire Strikes Back.",
    points=5,
    id=151932,
    badge="170865",
    trigger=
        progression(bit5(0x13277E), bit6(0x13277E))
)
// $132780: [NBit] Level Flags
//          Bit6=The Empire Strikes Back - Falcon Flight Available
//          Bit7=The Empire Strikes Back - Falcon Flight Story Complete (Gold Brick 1)
achievement(
    "Flight of the Falcon",
    "Clear the story mode of Falcon Flight in The Empire Strikes Back.",
    points=5,
    id=151933,
    badge="170866",
    trigger=
        progression(bit6(0x132780), bit7(0x132780))
)
// $132782: [NBit] Level Flags
//          Bit7=The Empire Strikes Back - Dagobah Available
// $132783: [NBit] Level Flags
//          Bit0=The Empire Strikes Back - Dagobah Story Complete (Gold Brick 1)
achievement(
    "Dagobah",
    "Clear the story mode of Dagobah in The Empire Strikes Back.",
    points=5,
    id=151934,
    badge="170867",
    trigger=
        progression(bit7(0x132782), bit0(0x132783))
    
)
// $132785: [NBit] Level Flags
//          Bit0=The Empire Strikes Back - Cloud City Trap Available
//          Bit1=The Empire Strikes Back - Cloud City Trap Story Complete (Gold Brick 1)
achievement(
    "On Cloud Nine",
    "Clear the story mode of Cloud City Trap in The Empire Strikes Back.",
    points=10,
    id=151935,
    badge="170868",
    trigger=
        progression(bit0(0x132785), bit1(0x132785))
)
// $132787: [NBit] Level Flags
//          Bit1=Return of the Jedi - Jabba's Palace Available
//          Bit2=Return of the Jedi - Jabba's Palace Story Complete (Gold Brick 1)
achievement(
    "Jabba's Palace",
    "Clear the story mode of Jabba's Palace in Return of the Jedi.",
    points=5,
    id=151936,
    badge="170869",
    trigger=
        progression(bit1(0x132787), bit2(0x132787))
)
// $132789: [NBit] Level Flags
//          Bit2=Return of the Jedi - Speeder Showdown Available
//          Bit3=Return of the Jedi - Speeder Showdown Story Complete (Gold Brick 1)
achievement(
    "Speeding Showdown",
    "Clear the story mode of Speeder Showdown in Return of the Jedi.",
    points=5,
    id=151937,
    badge="170870",
    trigger=
        progression(bit2(0x132789), bit3(0x132789))    
)
// $13278B: [NBit] Level Flags
//          Bit3=Return of the Jedi - The Battle of Endor Available
//          Bit4=Return of the Jedi - The Battle of Endor Story Complete (Gold Brick 1)
achievement(
    "Battling Endormen",
    "Clear the story mode of The Battle of Endor in Return of the Jedi.",
    points=5,
    id=151938,
    badge="170871",
    trigger=
        progression(bit3(0x13278B), bit4(0x13278B))
)
// $13278D: [NBit] Level Flags
//          Bit4=Return of the Jedi - Jedi Destiny Available
//          Bit5=Return of the Jedi - Jedi Destiny Story Complete (Gold Brick 1)
achievement(
    "Find Your Destiny!",
    "Clear the story mode of Jedi Destiny in Return of the Jedi.",
    points=10,
    id=151939,
    badge="170872",
    trigger=
        progression(bit4(0x13278D), bit5(0x13278D))
)
// $13278F: [NBit] Level Flags
//          Bit5=Return of the Jedi -Into the Death Star Available
//          Bit6=Return of the Jedi -Into the Death Star Story Complete (Gold Brick 1)
achievement(
    "Into the Death Star",
    "Clear the story mode of Into the Death Star in Return of the Jedi.",
    points=25,
    id=151940,
    badge="170873",
    trigger=
        progression(bit5(0x13278F), bit6(0x13278F))
)
// =====GAMEMODE COLLECTIBLES/EXTRA EVENTS======
// $132752: [NBit] Level Flags
//          Bit7=Phantom Menace - Negotiations - Minikit 1
// $132753: [NBit] Level Flags
//          Bit0-7=Phantom Menace - Negotiations - MiniKits 2-9
// $132754: [NBit] Level Flags
//          Bit0=Phantom Menace - Negotiations - Minikit 10
// $132755: [NBit] Level Flags
//          Bit0-7=Phantom Menace - Escape from Naboo MiniKits 1-8
// $132756: [NBit] Level Flags
//          Bit0=Phantom Menace - Escape from Naboo Minikit 9
//          Bit1=Phantom Menace - Escape from Naboo Minikit 10
// $132757: [NBit] Level Flags
//          Bit1-7=Phantom Menace - Mos Espa Podrace - Minikits 1-7
// $132758: [NBit] Level Flags
//          Bit0-Bit2=Phantom Menace - Mos Espa Podrace Minikits 8-10
// $132759: [NBit] Level Flags
//          Bit2-7=Phantom Menace - Retake Theed Palace Minikit 1-6
// $13275A: [NBit] Level Flags
//          Bit0-3=Phantom Menace - Retake Theed Palace Minikit 7-10 (Gold Brick 5)
// $13275B: [NBit] Level Flags
//          Bit3-7=Phantom Menace - Darth Maul Minikit 1-5
// $13275C: [NBit] Level Flags
//          Bit0-4=Phantom Menace - Darth Maul Minikit 6-10 (Gold Brick 5)
function phantommenace_minikit() =>
    bit7(0x132752) +
    bitcount(0x132753) +
    bit0(0x132754) +
    bitcount(0x132755) +
    bit0(0x132756) +
    bit1(0x132756) +
    bit1(0x132757) +
    bit2(0x132757) +
    bit3(0x132757) +
    bit4(0x132757) +
    bit5(0x132757) +
    bit6(0x132757) +
    bit7(0x132757) +
    bit0(0x132758) +
    bit1(0x132758) +
    bit2(0x132758) +
    bit2(0x132759) +
    bit3(0x132759) +
    bit4(0x132759) +
    bit5(0x132759) +
    bit6(0x132759) +
    bit7(0x132759) +
    bit0(0x13275A) +
    bit1(0x13275A) +
    bit2(0x13275A) +
    bit3(0x13275A) +
    bit3(0x13275B) +
    bit4(0x13275B) +
    bit5(0x13275B) +
    bit6(0x13275B) +
    bit7(0x13275B) +    
    bit0(0x13275C) +
    bit1(0x13275C) +
    bit2(0x13275C) +
    bit3(0x13275C) +
    bit4(0x13275C)
achievement(
    "Menacing Collection",
    "Collect all 50 minikits in The Phantom Menace.",
    points=10,
    id=151941,
    badge="170874",
    trigger=
        save_protection() &&
        prev(phantommenace_minikit()) < 50 &&
        measured(phantommenace_minikit() == 50)
)
// $13275D: [NBit] Level Flags
//          Bit4-7=Attack of the Clones - Discovery on Kamino Minikit 1-4
// $13275E: [NBit] Level Flags
//          Bit0-5=Attack of the Clones - Discovery on Kamino Minikit 5-10 (Gold Brick 5)
// $13275F: [NBit] Level Flags
//          Bit5-7=Attack of the Clones - Droid Factory Minikit 1-3
// $132760: [NBit] Level Flags
//          Bit0-6=Attack of the Clones - Droid Factory Minikit 4-10 (Gold Brick 5)
// $132761: [NBit] Level Flags
//          Bit6-7=Attack of the Clones - Jedi Battle Minikit 1-2
// $132762: [NBit] Level Flags
//          Bit0-7=Attack of the Clones - Jedi Battle Minikit 3-10
// $132763: [NBit] Level Flags
//          Bit7=Attack of the Clones - Gunship Cavalry Minikit 1
// $132764: [NBit] Level Flags
//          Bit0-7=Attack of the Clones - Gunship Cavalry Minikit 2-9
// $132765: [NBit] Level Flags
//          Bit0=Attack of the Clones - Gunship Cavalry Minikit 10 (Gold Brick 3)
// $132766: [NBit] Level Flags
//          Bit0-7=Attack of the Clones - Count Dooku Minikit 1-8
// $132767: [NBit] Level Flags
//          Bit0-1=Attack of the Clones - Count Dooku Minikit 9-10 (Gold Brick 5)
function attackofclones_minikit() =>
    bit4(0x13275D) +
    bit5(0x13275D) +
    bit6(0x13275D) +
    bit7(0x13275D) +    
    bit0(0x13275E) +
    bit1(0x13275E) +
    bit2(0x13275E) +
    bit3(0x13275E) +
    bit4(0x13275E) +
    bit5(0x13275E) +    
    bit5(0x13275F) +
    bit6(0x13275F) +
    bit7(0x13275F) +    
    bit0(0x132760) +
    bit1(0x132760) +
    bit2(0x132760) +
    bit3(0x132760) +
    bit4(0x132760) +
    bit5(0x132760) +
    bit6(0x132760) +    
    bit6(0x132761) +
    bit7(0x132761) +    
    bitcount(0x132762) +    
    bit7(0x132763) +    
    bitcount(0x132764) +   
    bit0(0x132765) +    
    bitcount(0x132766) +    
    bit0(0x132767) +
    bit1(0x132767)       
achievement(
    "Cloning the Collection",
    "Collect all 50 minikits in Attack of the Clones.",
    points=10,
    id=151942,
    badge="170875",
    trigger=
        save_protection() &&
        prev(attackofclones_minikit()) < 50 &&
        measured(attackofclones_minikit() == 50)            
)
// $132768: [NBit] Level Flags
//          Bit1-7=Revenge of the Sith - Battle over Coruscant Minikit 1-7
// $132769: [NBit] Level Flags
//          Bit0-2=Revenge of the Sith - Battle over Coruscant Minikit 8-10
// $13276A: [NBit] Level Flags
//          Bit2-7=Revenge of the Sith - General Grievous Mini Kit 1-6
// $13276B: [NBit] Level Flag
//          Bit0-3=Revenge of the Sith - General Grievous Minikit 7-10 (Gold Brick 5)
// $13276C: [NBit] Level Flags
//          Bit3-7=Revenge of the Sith - Defense of Kashyyyk Minikit 1-5
// $13276D: [NBit] Level Flags
//          Bit0-4=Revenge of the Sith - Defense of Kashyyyk Minikit 6-10 (Gold Brick 5)
// $13276E: [NBit] Level Flags 
//          Bit4-7=Revenge of the Sith - Ruin of the Jedi Minikit 1-4
// $13276F: [NBit] Level Flags
//          Bit0-5=Revenge of the Sith - Ruin of the Jedi Minikit 5-10 (Gold Brick 5)
// $132770: [NBit] Level Flags
//          Bit5-7=Revenge of the Sith - Darth Vader Minikit 1-3
// $132771: [NBit] Level Flags
//          Bit0-6=Revenge of the Sith - Darth Vader Minikit 4-10
function revengeofsith_minikit() =>
    bit1(0x132768) +
    bit2(0x132768) +
    bit3(0x132768) +
    bit4(0x132768) +
    bit5(0x132768) +
    bit6(0x132768) +
    bit7(0x132768) +    
    bit0(0x132769) +
    bit1(0x132769) +
    bit2(0x132769) +    
    bit2(0x13276A) +
    bit3(0x13276A) +
    bit4(0x13276A) +
    bit5(0x13276A) +
    bit6(0x13276A) +
    bit7(0x13276A) +    
    bit0(0x13276B) +
    bit1(0x13276B) +
    bit2(0x13276B) +
    bit3(0x13276B) +    
    bit3(0x13276C) +
    bit4(0x13276C) +
    bit5(0x13276C) +
    bit6(0x13276C) +
    bit7(0x13276C) +    
    bit0(0x13276D) +
    bit1(0x13276D) +
    bit2(0x13276D) +
    bit3(0x13276D) +
    bit4(0x13276D) +    
    bit4(0x13276E) +
    bit5(0x13276E) +
    bit6(0x13276E) +
    bit7(0x13276E) +    
    bit0(0x13276F) +
    bit1(0x13276F) +
    bit2(0x13276F) +
    bit3(0x13276F) +
    bit4(0x13276F) +
    bit5(0x13276F) +    
    bit5(0x132770) +
    bit6(0x132770) +
    bit7(0x132770) +    
    bit0(0x132771) +
    bit1(0x132771) +
    bit2(0x132771) +
    bit3(0x132771) +
    bit4(0x132771) +
    bit5(0x132771) +
    bit6(0x132771) 
achievement(
    "Revenge of the Collector",
    "Collect all 50 minikits in Revenge of the Sith. ",
    points=10,
    id=152119,
    badge="170892",
    trigger=
        save_protection() &&
        prev(revengeofsith_minikit()) < 50 &&
        measured(revengeofsith_minikit() == 50)
)
// $132788: [NBit] Level Flags
//          Bit0-7=Return of the Jedi - Jabba's Palace Minikit 1-8
// $132789: [NBit] Level Flags
//          Bit0-1=Return of the Jedi - Jabba's Palace Minikit 9-10
// $13278A: [NBit] Level Flags
//          Bit1-7=Return of the Jedi - Speeder Showdown Minikit 1-7
// $13278B: [NBit] Level Flags
//          Bit0-2=Return of the Jedi - Speeder Showdown 8-10
// $13278C: [NBit] Level Flags
//          Bit2-7=Return of the Jedi - The Battle of Endor Minikit 1-6
// $13278D: [NBit] Level Flags
//          Bit0-3=Return of the Jedi - The Battle of Endor Minikit 7-10
// $13278E: [NBit] Level Flags
//          Bit3-7=Return of the Jedi - Jedi Destiny Minikit 1-5
// $13278F: [NBit] Level Flags
//          Bit0-4=Return of the Jedi - Jedi Destiny Minikit 6-10
// $132790: [NBit] Level Flags
//          Bit4-7=Return of the Jedi -Into the Death Star Minikit 1-4
// $132791: [NBit] Level Flags
//          Bit0-5=Return of the Jedi -Into the Death Star Minikit 5-10
function jedireturn_minikit() =>
    bitcount(0x132788) +    
    bit0(0x132789) +
    bit1(0x132789) +    
    bit1(0x13278A) +
    bit2(0x13278A) +
    bit3(0x13278A) +
    bit4(0x13278A) +
    bit5(0x13278A) +
    bit6(0x13278A) +
    bit7(0x13278A) +    
    bit0(0x13278B) +
    bit1(0x13278B) +
    bit2(0x13278B) +    
    bit2(0x13278C) +
    bit3(0x13278C) +
    bit4(0x13278C) +
    bit5(0x13278C) +
    bit6(0x13278C) +
    bit7(0x13278C) +    
    bit0(0x13278D) +
    bit1(0x13278D) +
    bit2(0x13278D) +
    bit3(0x13278D) +    
    bit3(0x13278E) +
    bit4(0x13278E) +
    bit5(0x13278E) +
    bit6(0x13278E) +
    bit7(0x13278E) +    
    bit0(0x13278F) +
    bit1(0x13278F) +
    bit2(0x13278F) +
    bit3(0x13278F) +
    bit4(0x13278F) +    
    bit4(0x132790) +
    bit5(0x132790) +
    bit6(0x132790) +
    bit7(0x132790) +    
    bit0(0x132791) +
    bit1(0x132791) +
    bit2(0x132791) +
    bit3(0x132791) +
    bit4(0x132791) +
    bit5(0x132791)
// $132772: [NBit] Level Flags
//          Bit6-7=A New Hope - Secret Plans Minikit 1-2
// $132773: [NBit] Level Flags
//          Bit0-7=A New Hope - Secret Plans Minikit 3-10 (Gold Brick 5)
// $132774: [NBit] Level Flags
//          Bit7=A New Hope - The Jundland Wastes Minikit 1
// $132775: [NBit] Level Flags
//          Bit0-7=A New Hope - The Jundland Wastes Minikit 2-9
// $132776: [NBit] Level Flags
//          Bit0=A New Hope - The Jundland Wastes Minikit 10 (Gold Brick 5)
// $132777: [NBit] Level Flags
//          Bit0-7=A New Hope - Mos Eisley Spaceport Minikit 1-8
// $132778: [NBit] Level Flags
//          Bit0-1=A New Hope - Mos Eisley Spaceport Minikit 9-10 (Gold Brick 5)
// $132779: [NBit] Level Flags
//          Bit1-7=A New Hope - Death Star Escape Minikit 1-7
// $13277A: [NBit] Level Flags
//          Bit0-2=A New Hope - Death Star Escape Minikit 8-10 (Gold Brick 5)
// $13277B: [NBit] Level Flags
//          Bit2-7=A New Hope - Rebel Attack Minikit 1-6
// $13277C: [NBit] Level Flags
//          Bit0-3=A New Hope - Rebel Attack Minikit 7-10 (Gold Brick 3)
function newhope_minikit() =>
    bit6(0x132772) +
    bit7(0x132772) +    
    bitcount(0x132773) +    
    bit7(0x132774) +    
    bitcount(0x132775) +    
    bit0(0x132776) +    
    bitcount(0x132777) +    
    bit0(0x132778) +
    bit1(0x132778) +    
    bit1(0x132779) +
    bit2(0x132779) +
    bit3(0x132779) +
    bit4(0x132779) +
    bit5(0x132779) +
    bit6(0x132779) +
    bit7(0x132779) +    
    bit0(0x13277A) +
    bit1(0x13277A) +
    bit2(0x13277A) +    
    bit2(0x13277B) +
    bit3(0x13277B) +
    bit4(0x13277B) +
    bit5(0x13277B) +
    bit6(0x13277B) +
    bit7(0x13277B) +    
    bit0(0x13277C) +
    bit1(0x13277C) +
    bit2(0x13277C) +
    bit3(0x13277C) 
achievement(
    "Hope for A New Collection",
    "Collect all 50 minikits in A New Hope",
    points=10,
    id=152120,
    badge="170893",
    trigger=
        save_protection() &&
        prev(newhope_minikit()) < 50 &&
        measured(newhope_minikit() == 50)            
)
// $13277D: [NBit] Level Flags
//          Bit3-7=The Empire Strikes Back - Hoth Battle Minikit 1-5
// $13277E: [NBit] Level Flags
//          Bit0-4=The Empire Strikes Back - Hoth Battle Minikit 6-10 (Gold Brick 3)
// $13277F: [NBit] Level Flags
//          Bit4-7=The Empire Strikes Back - Escape from Echo Base Minikit 1-4
// $132780: [NBit] Level Flags
//          Bit0-5=The Empire Strikes Back - Escape from Echo Base Minikit 5-10 (Gold Brick 5)
// $132781: [NBit] Level Flags
//          Bit5-7=The Empire Strikes Back - Falcon Flight Minikit 1-3
// $132782: [NBit] Level Flags
//          Bit0-6=The Empire Strikes Back - Falcon Flight Minikit 4-10
// $132783: [NBit] Level Flags
//          Bit6-7=The Empire Strikes Back - Dagobah Minikit 1-2
// $132784: [NBit] Level Flags
//          Bit0-7=The Empire Strikes Back - Dagobah Minikit 3-10 (Gold Brick 5)
// $132785: [NBit] Level Flags
//          Bit7=The Empire Strikes Back - Cloud City Trap Minikit 1
// $132786: [Nbit] Level Flags
//          Bit0-7=The Empire Strikes Back - Cloud City Trap Minikit 2-9
// $132787: [NBit] Level Flags
//          Bit0=The Empire Strikes Back - Cloud City Trap Minikit 10 (Gold Brick 5)
function empiresback_minikit() =>
    bit3(0x13277D) +
    bit4(0x13277D) +
    bit5(0x13277D) +
    bit6(0x13277D) +
    bit7(0x13277D) +    
    bit0(0x13277E) +
    bit1(0x13277E) +
    bit2(0x13277E) +
    bit3(0x13277E) +
    bit4(0x13277E) +    
    bit4(0x13277F) +
    bit5(0x13277F) +
    bit6(0x13277F) +
    bit7(0x13277F) +    
    bit0(0x132780) +
    bit1(0x132780) +
    bit2(0x132780) +
    bit3(0x132780) +
    bit4(0x132780) +
    bit5(0x132780) +    
    bit5(0x132781) +
    bit6(0x132781) +
    bit7(0x132781) +    
    bit0(0x132782) +
    bit1(0x132782) +
    bit2(0x132782) +
    bit3(0x132782) +
    bit4(0x132782) +
    bit5(0x132782) +
    bit6(0x132782) +    
    bit6(0x132783) +
    bit7(0x132783) +    
    bitcount(0x132784) +    
    bit7(0x132785) +    
    bitcount(0x132786) +    
    bit0(0x132787)
achievement(
    "The Kit Strikes Back!",
    "Collect all 50 minikits in The Empire Strikes Back.",
    points=10,
    id=151943,
    badge="170876",
    trigger=
        save_protection() &&
        prev(empiresback_minikit()) < 50 &&
        measured(empiresback_minikit() == 50)
)           
achievement(
    "Return of the Minikit",
    "Collect all 50 minikits in Return of the Jedi.",
    points=10,
    id=151944,
    badge="170877",
    trigger=
        save_protection() &&
        prev(jedireturn_minikit()) < 50 &&
        measured(jedireturn_minikit() == 50)        
)        
// $132752: [NBit] Level Flags
//          Bit3=Phantom Menace - Negotiations True Jedi (Story - Gold Brick 3)
//          Bit4=Phantom Menace - Negotiations True Jedi (Free Play - Gold Brick 4)
// $132754: [NBit] Level Flags
//          Bit4=Phantom Menace - Escape from Naboo True Jedi Story (Gold Brick 3)
//          Bit5=Phantom Menace - Escape from Naboo True Jedi Free Play (Gold Brick 4)
// $132756: [NBit] Level Flags
//          Bit5=Phantom Menace - Mos Espa Podrace True Jedi (Story - Gold Brick 2)
// $132758: [NBit] Level Flags
//          Bit6=Phantom Menace - Retake Theed Palace True Jedi Story (Gold Brick 3)
//          Bit7=Phantom Menace - Retake Theed Palace True Jedi Free Play (Gold Brick 4)
// $13275A: [NBit] Level Flags
//          Bit7=Phantom Menace - Darth Maul True Jedi Story
// $13275B: [NBit] Level Flags
//          Bit0=Phantom Menace - Darth Maul True Jedi Free Play
function phantommenace_truejedi() =>
    bit3(0x132752) +
    bit4(0x132752) +
    bit4(0x132754) +
    bit5(0x132754) +
    bit5(0x132756) +
    bit6(0x132758) +
    bit7(0x132758) +
    bit7(0x13275A) +
    bit0(0x13275B)
achievement(
    "Menacing Jedi",
    "Obtain True Jedi status all nine times in The Phantom Menace.",
    points=5,
    id=151945,
    badge="170878",
    trigger=
        save_protection() &&
        prev(phantommenace_truejedi()) < 9 &&
        measured(phantommenace_truejedi() == 9)
)
// $13275D: [NBit] Level Flags
//          Bit0=Attack of the Clones - Discovery on Kamino True Jedi Story (Gold Brick 3)
//          Bit1=Attack of the Clones - Discovery on Kamino True Jedi Free Play (Gold Brick 4)
// $13275F: [NBit] Level Flags
//          Bit1=Attack of the Clones - Droid Factory True Jedi Story (Gold Brick 3)
//          Bit2=Attack of the Clones - Droid Factory True Jedi Free Play (Gold Brick 4)
// $132761: [NBit] Level Flags
//          Bit2=Attack of the Clones - Jedi Battle True Jedi Story (Gold Brick 3)
//          Bit3=Attack of the Clones - Jedi Battle True Jedi Free Play (Gold Brick 4)
// $132763: [NBit] Level Flags
//          Bit3=Attack of the Clones - Gunship Cavalry True Jedi Story (Gold Brick 2)
// $132765: [NBit] Level Flags
//          Bit4=Attack of the Clones - Count Dooku True Jedi Story (Gold Brick 3)
//          Bit5=Attack of the Clones - Count Dooku True Jedi Free Play (Gold Brick 4)
function attackofclones_truejedi() =>
    bit0(0x13275D) +
    bit1(0x13275D) +
    bit1(0x13275F) +
    bit2(0x13275F) +
    bit2(0x132761) +
    bit3(0x132761) +
    bit3(0x132763) +
    bit4(0x132765) +
    bit5(0x132765)
achievement(
    "Attacking the True Jedi of Clones",
    "Obtain True Jedi status all nine times in Attack of the Clones.",
    points=5,
    id=151946,
    badge="170879",
    trigger=
    save_protection() &&
    prev(attackofclones_truejedi()) < 9 &&
    measured(attackofclones_truejedi() == 9)
)
// $132767: [NBit] Level Flags
//          Bit5=Revenge of the Sith - Battle over Coruscant True Jedi Story (Gold Brick 2) 
// $132769: [NBit] Level Flags
//          Bit6=Revenge of the Sith - General Grievous True Jedi Story (Gold Brick 3)
//          Bit7=Revenge of the Sith - General Grievous True Jedi Free Play (Gold Brick 4)
// $13276B: [NBit] Level Flag
//          Bit7=Revenge of the Sith - Defense of Kashyyyk True Jedi Story (Gold Brick 3)
// $13276C: [NBit] Level Flags
//          Bit0=Revenge of the Sith - Defense of Kashyyyk True Jedi Free Play (Gold Brick 4)
// $13276E: [NBit] Level Flags
//          Bit0=Revenge of the Sith - Ruin of the Jedi True Jedi Story (Gold Brick 3)
//          Bit1=Revenge of the Sith - Ruin of the Jedi True Jedi Free Play (Gold Brick 4)
// $132770: [NBit] Level Flags
//          Bit1=Revenge of the Sith - Darth Vader True Jedi Story (Gold Brick 3)
//          Bit2=Revenge of the Sith - Darth Vader True Jedi Free Play (Gold Brick 4)
function revengeofsith_truejedi() =>
    bit5(0x132767) +
    bit6(0x132769) +
    bit7(0x132769) +
    bit7(0x13276B) +
    bit0(0x13276C) +
    bit0(0x13276E) +
    bit1(0x13276E) +
    bit1(0x132770) +
    bit2(0x132770)
achievement(
    "Revenge of the True Jedi!",
    "Obtain True Jedi status all nine times in Revenge of the Sith.",
    points=5,
    id=151947,
    badge="170880",
    trigger=
        save_protection() &&
        prev(revengeofsith_truejedi()) < 9 &&
        measured(revengeofsith_truejedi() == 9)            
)
// $132772: [NBit] Level Flags
//          Bit2=A New Hope - Secret Plans True Jedi Story (Gold Brick 3)
//          Bit3=A New Hope - Secret Plans True Jedi Free Play (Gold Brick 4)
// $132774: [NBit] Level Flags
//          Bit3=A New Hope - The Jundland Wastes True Jedi Story (Gold Brick 3)
//          Bit4=A New Hope - The Jundland Wastes True Jedi Free Play (Gold Brick 4)
// $132776: [NBit] Level Flags
//          Bit4=A New Hope - Mos Eisley Spaceport True Jedi Story (Gold Brick 3)
//          Bit5=A New Hope - Mos Eisley Spaceport True Jedi Free Play (Gold Brick 4)
// $132778: [NBit] Level Flags
//          Bit5=A New Hope - Death Star Escape True Jedi Story (Gold Brick 3)
//          Bit6=A New Hope - Death Star Escape True Jedi Free Play (Gold Brick 4)
// $13277A: [NBit] Level Flags
//          Bit6=A New Hope - Rebel Attack True Jedi Story (Gold Brick 2)
function newhope_truejedi() =>
    bit2(0x132772) +
    bit3(0x132772) +
    bit3(0x132774) +
    bit4(0x132774) +
    bit4(0x132776) +
    bit5(0x132776) +
    bit5(0x132778) +
    bit6(0x132778) +
    bit6(0x13277A)
achievement(
    "Hopeful Jedi",
    "Obtain True Jedi status all nine times in A New Hope.",
    points=5,
    id=151948,
    badge="170881",
    trigger=
        save_protection() &&
        prev(newhope_truejedi()) < 9 &&
        measured(newhope_truejedi() == 9)        
)
// $13277C: [NBit] Level Flags
//          Bit7=The Empire Strikes Back - Hoth Battle True Jedi Story (Gold Brick 2)
// $13277F: [NBit] Level Flags
//          Bit0=The Empire Strikes Back - Escape from Echo Base True Jedi Story (Gold Brick 3)
//          Bit1=The Empire Strikes Back - Escape from Echo Base True Jedi Free Play (Gold Brick 4)
// $132781: [NBit] Level Flags
//          Bit1=The Empire Strikes Back - Falcon Flight True Jedi Story (Gold Brick 2)
// $132783: [NBit] Level Flags
//          Bit2=The Empire Strikes Back - Dagobah True Jedi Story (Gold Brick 3)
//          Bit3=The Empire Strikes Back - Dagobah True Jedi Free Play (Gold Brick 4)
// $132785: [NBit] Level Flags
//          Bit3=The Empire Strikes Back - Cloud City Trap True Jedi Story (Gold Brick 3)
//          Bit4=The Empire Strikes Back - Cloud City Trap True Jedi Free Play (Gold Brick 4)
function empiresback_truejedi() =>
    bit7(0x13277C) +
    bit0(0x13277F) +
    bit1(0x13277F) +
    bit1(0x132781) +
    bit2(0x132783) +
    bit3(0x132783) +
    bit3(0x132785) +
    bit4(0x132785)
achievement(
    "The Jedi Strikes Back",
    "Obtain True Jedi status all eight times in The Empire Strikes Back.",
    points=5,
    id=151949,
    badge="170882",
    trigger=
        save_protection() &&
        prev(empiresback_truejedi()) < 8 &&
        measured(empiresback_truejedi() == 8)               
)
// $132787: [NBit] Level Flags
//          Bit4=Return of the Jedi - Jabba's Palace True Jedi Story (Gold Brick 3)
//          Bit5=Return of the Jedi - Jabba's Palace True Jedi Free Play (Gold Brick 4)
// $132789: [NBit] Level Flags
//          Bit5=Return of the Jedi - Speeder Showdown True Jedi Story (Gold Brick 2)
// $13278B: [NBit] Level Flags
//          Bit6=Return of the Jedi - The Battle of Endor True Jedi Story (Gold Brick 3)
//          Bit7=Return of the Jedi - The Battle of Endor True Jedi Free Play (Gold Brick 4)
// $13278D: [NBit] Level Flags
//          Bit7=Return of the Jedi - Jedi Destiny True Jedi Story (Gold Brick 3)
// $13278E: [NBit] Level Flags
//          Bit0=Return of the Jedi - Jedi Destiny True Jedi Free Play (Gold Brick 4)
// $132790: [NBit] Level Flags
//          Bit0=Return of the Jedi -Into the Death Star True Jedi Story (Gold Brick 2)
function jedireturn_truejedi() =>
    bit4(0x132787) +
    bit5(0x132787) +
    bit5(0x132789) +
    bit6(0x13278B) +
    bit7(0x13278B) +
    bit7(0x13278D) +
    bit0(0x13278E) +
    bit0(0x132790)
achievement(
    "Return of the True Jedi",
    "Obtain True Jedi status all eight times in Return of the Jedi.",
    points=5,
    id=151950,
    badge="170883",
    trigger=
        save_protection() &&
        prev(jedireturn_truejedi()) < 8 &&
        measured(jedireturn_truejedi() == 8)        
)
//PHANTOM MENACE:
// $132752: [NBit] Level Flags
//          Bit5=Phantom Menace - Negotiations - Red Power Brick 1 - Deflection Challenge
// $132754: [NBit] Level Flags
//          Bit6=Phantom Menace - Escape from Naboo Red Brick Collected
// $132756: [NBit] Level Flags
//          Bit7=Phantom Menace - Mos Espa Podrace Red Brick Collected
// $132759: [NBit] Level Flags
//          Bit0=Phantom Menace - Retake Theed Palace Red Brick Collected
// $13275B: [NBit] Level Flags
//          Bit1=Phantom Menace - Darth Maul Red Brick Collected
//ATTACK OF THE CLONES:
// $13275D: [NBit] Level Flags
//          Bit2=Attack of the Clones - Discovery on Kamino Red Brick Collected
// $13275F: [NBit] Level Flags
//          Bit3=Attack of the Clones - Droid Factory Red Brick Collected
// $132761: [NBit] Level Flags
//          Bit4=Attack of the Clones - Jedi Battle Red Brick Collected
// $132763: [NBit] Level Flags
//          Bit5=Attack of the Clones - Gunship Cavalry Red Brick Collected
// $132765: [NBit] Level Flags
//          Bit6=Attack of the Clones - Count Dooku Red Brick Collected
//REVENGE OF THE SITH:
// $132767: [NBit] Level Flags
//          Bit7=Revenge of the Sith - Battle over Coruscant Red Brick Collected
// $13276A: [NBit] Level Flags
//          Bit0=Revenge of the Sith - General Grievous Red Brick Collected
// $13276C: [NBit] Level Flags
//          Bit1=Revenge of the Sith - Defense of Kashyyyk Red Brick Collected
// $13276E: [NBit] Level Flags
//          Bit2=Revenge of the Sith - Ruin of the Jedi Red Brick Collected
// $132770: [NBit] Level Flags
//          Bit3=Revenge of the Sith - Darth Vader Red Brick Collected
//A NEW HOPE:
// $132772: [NBit] Level Flags
//          Bit4=A New Hope - Secret Plans Red Brick Collected
// $132774: [NBit] Level Flags 
//          Bit5=A New Hope - The Jundland Wastes Red Brick Collected
// $132776: [NBit] Level Flags
//          Bit6=A New Hope - Mos Eisley Spaceport Red Brick Collected
// $132778: [NBit] Level Flags
//          Bit7=A New Hope - Death Star Escape Red Brick Collected
// $13277B: [NBit] Level Flags
//          Bit0=A New Hope - Rebel Attack Red Brick Collected
//THE EMPIRE STRIKES BACK:
// $13277D: [NBit] Level Flags
//          Bit1=The Empire Strikes Back - Hoth Battle Red Brick Collected
// $13277F: [NBit] Level Flags
//          Bit2=The Empire Strikes Back - Escape from Echo Base Red Brick Collected
// $132781: [NBit] Level Flags
//          Bit3=The Empire Strikes Back - Falcon Flight Red Brick Collected
// $132783: [NBit] Level Flags
//          Bit4=The Empire Strikes Back - Dagobah Red Brick Collected
// $132785: [NBit] Level Flags
//          Bit5=The Empire Strikes Back - Cloud City Trap Red Brick Collected
//RETURN OF THE JEDI:
// $132787: [NBit] Level Flags
//          Bit6=Return of the Jedi - Jabba's Palace Red Brick Collected
// $132789: [NBit] Level Flags
//          Bit7=Return of the Jedi - Speeder Showdown Red Brick Collected
// $13278C: [NBit] Level Flags
//          Bit0=Return of the Jedi - The Battle of Endor Red Brick Collected
// $13278E: [NBit] Level Flags
//          Bit1=Return of the Jedi - Jedi Destiny Red Brick Collected
// $132790: [NBit] Level Flags
//          Bit2=Return of the Jedi -Into the Death Star Red Brick Collected
function redbricks_found() =>
//PHANTOM MENACE:
    bit5(0x132752) +
    bit6(0x132754) +
    bit7(0x132756) +
    bit0(0x132759) +
    bit1(0x13275B) +
//ATTACK OF THE CLONES    
    bit2(0x13275D) +
    bit3(0x13275F) +
    bit4(0x132761) +
    bit5(0x132763) +
    bit6(0x132765) +
//REVENGE OF THE SITH:
    bit7(0x132767) +
    bit0(0x13276A) +
    bit1(0x13276C) +
    bit2(0x13276E) +
    bit3(0x132770) +
//A NEW HOPE:    
    bit4(0x132772) +
    bit5(0x132774) +
    bit6(0x132776) +
    bit7(0x132778) +
    bit0(0x13277B) +
//THE EMPIRE STRIKES BACK:
    bit1(0x13277D) +
    bit2(0x13277F) +
    bit3(0x132781) +
    bit4(0x132783) +
    bit5(0x132785) +
//RETURN OF THE JEDI:
    bit6(0x132787) +
    bit7(0x132789) +
    bit0(0x13278C) +
    bit1(0x13278E) +
    bit2(0x132790)
achievement(
    "Red Brick Obsession",
    "Collect all 30 red bricks in the game on one save file.",
    points=10,
    id=151951,
    badge="170884",
    trigger=
        save_protection() &&
        prev(redbricks_found()) < 30 &&
        measured(redbricks_found() == 30)
)    
// $13272A: [NBit] DS Minigame Cleared Flags:
//          
//          Bit0=Deflection Survival
//          Bit1=Deflection Challenge
//          Bit2=Levitation Survival
//          Bit3=Levitation Challenge
//          Bit4=Pitstop
//          Bit5=Kamino Survival
//          Bit6=Kamino Challenge
//          Bit7=Grievous
// $13272B: [NBit] DS Minigame Flags:
//          Bit0&1=UNUSED
//          Bit2= Focus Survival
//          Bit3= Activation
//          Bit4= Evasion Survival
//          Bit5= Evasion Challenge
function minigames_cleared() =>
    bitcount(0x13272A) +
    bit2(0x13272B) + 
    bit3(0x13272B) +
    bit4(0x13272B) +
    bit5(0x13272B)
achievement(
    "Minigame Elitist",
    "Complete all mini-game challenges on one save file and unlock the 12 gold bricks!",
    points=10,
    id=151952,
    badge="170885",
    trigger=
        save_protection() &&
        prev(minigames_cleared()) < 12 &&
        measured(minigames_cleared() == 12)        
)
// =====PURCHASES=====
// $13272C: [NBit] Hint Purchased Bitflags 1-8
// $13272D: [NBit] Hint Purchased Bitflags 9-16
// $13272E: [NBit] Hint Purchased Bitflags 
//          bit0-3=Hint Purchased Bitflags 17-20
function hints() => 
    bitcount(0x13272C) +
    bitcount(0x13272D) +
    bit0(0x13272E) +
    bit1(0x13272E) + 
    bit2(0x13272E) +
    bit3(0x13272E)    
achievement(
    "What're You Hinting At?",
    "Purchase all hints on one save file.",
    points=3,
    id=151953,
    badge="170886",
    trigger=
        save_protection() &&
        prev(hints()) < 20 &&
        measured(hints() == 20)    
)
//PHANTOM MENACE:
// $132752: [NBit] Level Flags
//          Bit6=Phantom Menace - Negotiations - Red Power Brick 1 Purchased
// $132754: [NBit] Level Flags
//          Bit7=Phantom Menace - Escape from Naboo Red Power Brick 2 Bought - Protocol Activation Panel Minigame
// $132757: [NBit] Level Flags
//          Bit0=Phantom Menace - Mos Espa Podrace - Red Power Brick 3 - Pitstop Purchased
// $132759: [NBit] Level Flags
//          Bit1=Phantom Menace - Retake Theed Palace Red Power Brick 4 Big Blasters Purchased
// $13275B: [NBit] Level Flags
//          Bit2=Phantom Menace - Darth Maul Red Power Brick 5 Score x2
//ATTACK OF THE CLONES:
// $13275D: [NBit] Level Flags
//          Bit3=Attack of the Clones - Discovery on Kamino Red Power Brick 6 Kamino Challenge Purchased
// $13275F: [NBit] Level Flags
//          Bit4=Attack of the Clones - Droid Factory Red Power Brick 7 Evasion Challenge Purchased
// $132761: [NBit] Level Flags
//          Bit5=Attack of the Clones - Jedi Battle Red Power Brick 8 Astromech Activation Panel Purchased
// $132763: [NBit] Level Flags
//          Bit6=Attack of the Clones - Gunship Cavalry Red Power Brick 9 Infinite Torpedoes Purchased
// $132765: [NBit] Level Flags
//          Bit7=Attack of the Clones - Count Dooku Red Power Brick 10 Score x4 Purchased
//REVENGE OF THE SITH:
// $132768: [NBit] Level Flags
//          Bit0=Revenge of the Sith - Battle over Coruscant Red Power Brick 11 Self Destruct Purchased
// $13276A: [NBit] Level Flags
//          Bit1=Revenge of the Sith - General Grievous Red Power Brick 12 Grievous Purchased
// $13276C: [NBit] Level Flags
//          Bit2=Revenge of the Sith - Defense of Kashyyyk Red Power Brick 13 Super Lightsabers Purchased
// $13276E: [NBit] Level Flags
//          Bit3=Revenge of the Sith - Ruin of the Jedi Red Power Brick 14 Focus Survival
// $132770: [NBit] Level Flags
//          Bit4=Revenge of the Sith - Darth Vader Red Power Brick 15 Score x6 Purchased
//A NEW HOPE:
// $132772: [NBit] Level Flags
//          Bit5=A New Hope - Secret Plans Red Power Brick 16 Levitation Challenge Purchased
// $132774: [NBit] Level Flags
//          Bit6=A New Hope - The Jundland Wastes Red Power Brick 17 Fast Build Purchased
// $132776: [NBit] Level Flags
//          Bit7=A New Hope - Mos Eisley Spaceport Red Power Brick 18 Deflection Survival Purchased
// $132779: [NBit] Level Flags
//          Bit0=A New Hope - Death Star Escape Red Power Brick 19 Imperial Activation Panel Purchased
// $13277B: [NBit] Level Flags
//          Bit1=A New Hope - Rebel Attack Red Power Brick 20 Score x8 Purchased
//THE EMPIRE STRIKES BACK:
// $13277D: [NBit] Level Flags
//          Bit2=The Empire Strikes Back - Hoth Battle Red Power Brick 21 Evasion Survival Purchased
// $13277F: [NBit] Level Flags
//          Bit3=The Empire Strikes Back - Escape from Echo Base Red Power Brick 22 Regenerate Hearts Purchased
// $132781: [NBit] Level Flags
//          Bit4=The Empire Strikes Back - Falcon Flight Red Power Brick 23 Kamino Survival Purchased
// $132783: [NBit] Level Flags
//          Bit5=The Empire Strikes Back - Dagobah Red Power Brick 24 Super Blasters Purchased
// $132785: [NBit] Level Flags
//          Bit6=The Empire Strikes Back - Cloud City Trap Red Power Brick 25 Score x10 Purchased
//RETURN OF THE JEDI:
// $132787: [NBit] Level Flags
//          Bit7=Return of the Jedi - Jabba's Palace Red Power Brick 26 Bounty Hunter Activation Panel Purchased
// $13278A: [NBit] Level Flags
//          Bit0=Return of the Jedi - Speeder Showdown Red Power Brick 27 Activation Purchased
// $13278C: [NBit] Level Flags
//          Bit1=Return of the Jedi - The Battle of Endor Red Power Brick 28 Super Ewok Catapult Purchased
// $13278E: [NBit] Level Flags
//          Bit2=Return of the Jedi - Jedi Destiny Red Power Brick 29 Levitation Survival Purchased
// $132790: [NBit] Level Flags
//          Bit3=Return of the Jedi -Into the Death Star Red Power Brick 30 Invincibility Purchased
function redbricks_purchased() =>
    bit6(0x132752) +
    bit7(0x132754) +
    bit0(0x132757) +
    bit1(0x132759) +
    bit2(0x13275B) +
    bit3(0x13275D) +
    bit4(0x13275F) +
    bit5(0x132761) +
    bit6(0x132763) +
    bit7(0x132765) +
    bit0(0x132768) +
    bit1(0x13276A) +
    bit2(0x13276C) +
    bit3(0x13276E) +
    bit4(0x132770) +
    bit5(0x132772) +
    bit6(0x132774) +
    bit7(0x132776) +
    bit0(0x132779) +
    bit1(0x13277B) +
    bit2(0x13277D) +
    bit3(0x13277F) +
    bit4(0x132781) +
    bit5(0x132783) +
    bit6(0x132785) +
    bit7(0x132787) +
    bit0(0x13278A) +
    bit1(0x13278C) +
    bit2(0x13278E) +
    bit3(0x132790)
achievement(
    "Red Brick Purchaser",
    "Purchase all red brick extras from the shop on one save file.",
    points=10,
    id=151954,
    badge="170887",
    trigger=
        save_protection() &&
        prev(redbricks_purchased()) < 30 &&
        measured(redbricks_purchased() == 30)
)
//67 in shop, +1 for darth vader totaling 68
// $132734: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit4&5=Gonk Droid Bought
//          Bit6&7=PK Droid Bought
// $132735: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit2&3=Battle Droid
//          Bit4&5=Battle Droid (Security)
//          Bit6&7=Battle Droid (Commander)
// $132736: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Droideka
// $132737: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Royal Guard
//          Bit2&3=Padme
// $132738: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit2&3=Darth Maul
// $132739: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Clone
//          Bit6&7=Geonosian
// $13273A: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Battle Droid (Geonosis)
//          Bit6&7=Super Battle Droid       
// $13273B: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Jango Fett
//          Bit2&3=Boba Fett (Boy)
//          Bit4&5=Luminara
//          Bit6&7=Ki-Adi Mundi
// $13273C: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Kit Fisto
//          Bit2&3=Shaak Ti
//          Bit4&5=Count Dooku
// $13273D: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit6&7=General Grievous
// $13273E: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Grievous' Bodyguard
//          Bit4&5=Clone (Episode III)
//          Bit6&7=Clone (Episode III, Pilot)
// $13273F: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Clone (Episode III, Swamp)
//          Bit2&3=Clone (Episode III, Walker)
//          Bit4&5=Mace Windu (Episode III)
//          Bit6&7=Disguised Clone     
// $132740: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit4&5=Rebel Friend
// $132742: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Stormtrooper
//          Bit2&3=Imperial Shuttle Pilot
// $132743: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Jawa
//          Bit2&3=Tusken Raider
// $132744: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Sandtrooper
//          Bit2&3=Greedo
//          Bit4&5=Imperial Spy
// $132745: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit2&3=Grand Moff Tarkin
//          Bit4&5=Beach Trooper
//          Bit6&7=Imperial Officer     
// $132746: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=TIE Fighter Pilot
//          Bit2&3=Death Star Trooper
//          Bit4&5=Rebel Trooper (Hoth)
//          Bit6&7=Rebel Pilot
// $132747: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit4&5=Han Solo (Hood)
//          Bit6&7=Snowtrooper
// $132748: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Luke Skywalker (Hoth)
// $132749: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit6&7=Lobot
// $13274A: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Ugnaught
//          Bit2&3=Bespin Guard
//          Bit4&5=Prncess Leia (Prisoner)
// $13274C: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Gamorrean Guard
//          Bit2&3=Palace Guard
//          Bit4&5=Bib Fortuna
//          Bit6&7=Skiff Guard
// $13274D: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Boba Fett
//          Bit6&7=Scout Trooper
// $13274E: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bi0&1=Ewok
//          Bit6=Darth Vader unlocked in Shop
//          Bit7=Darth Vader unlocked    
// $13274F: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=The Emperor
//          Bit2&3=Imperial Guard
//          Bit4&5=Admiral Ackbar
//          Bit6&7=Yoda (Ghost)
// $132750: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=Ben Kenobi (Ghost)
//          Bit2&3=Anakin Skywalker (Ghost)
//          Bit4&5=IG-88
//          Bit6&7=Bossk
// $132751: [NBit] Character Flags: 1stbit=Appear in Shop 2ndbit= Purchased
//          Bit0&1=4-LOM
//          Bit2&3=Dengar
function character_purchases() =>
    bit5(0x132734) +
    bit7(0x132734) +
    bit3(0x132735) +
    bit5(0x132735) +
    bit7(0x132735) +
    bit1(0x132736) +
    bit1(0x132737) +
    bit3(0x132737) +    
    bit3(0x132738) +
    bit1(0x132739) +
    bit7(0x132739) +
    bit1(0x13273A) +
    bit7(0x13273A) +    
    bit1(0x13273B) +
    bit3(0x13273B) +
    bit5(0x13273B) +
    bit7(0x13273B) +
    bit1(0x13273C) +
    bit3(0x13273C) +
    bit5(0x13273C) +
    bit7(0x13273D) +
    bit1(0x13273E) +
    bit5(0x13273E) +
    bit7(0x13273E) +
    bit1(0x13273F) +
    bit3(0x13273F) +
    bit5(0x13273F) +
    bit7(0x13273F) +
    bit5(0x132740) +
    bit1(0x132742) +
    bit3(0x132742) +
    bit1(0x132743) +
    bit3(0x132743) +
    bit1(0x132744) +
    bit3(0x132744) +
    bit5(0x132744) +
    bit3(0x132745) +
    bit5(0x132745) +
    bit7(0x132745) +
    bit1(0x132746) +
    bit3(0x132746) +
    bit5(0x132746) +
    bit7(0x132746) +
    bit5(0x132747) +
    bit7(0x132747) +
    bit1(0x132748) +
    bit7(0x132749) +
    bit1(0x13274A) +
    bit3(0x13274A) +
    bit5(0x13274A) +
    bit1(0x13274C) +
    bit3(0x13274C) +
    bit5(0x13274C) +
    bit7(0x13274C) +
    bit1(0x13274D) +
    bit7(0x13274D) +
    bit1(0x13274E) +   
    bit1(0x13274F) +
    bit3(0x13274F) +
    bit5(0x13274F) +
    bit7(0x13274F) +
    bit1(0x132750) +
    bit3(0x132750) +
    bit5(0x132750) +
    bit7(0x132750) +
    bit1(0x132751) +
    bit3(0x132751)
achievement(
    "50% Committed to Characters",
    "Purchase at last half of the characters in the game on one save profile.",
    points=10,
    id=151955,
    badge="170888",
    trigger=
        save_protection() &&
        prev(character_purchases()) < 34 &&
        measured(character_purchases() == 34)    
)
achievement(
    "Character Overlord",
    "Purchase/Unlock all characters in the game on one save profile. (Unlock Vader before last purchase.)",
    points=25,
    id=151956,
    badge="170889",
    trigger=
        save_protection() &&         
        prev(character_purchases()) < 67 &&
        measured(character_purchases() == 67)
)
achievement(
    "The Real Father",
    "Unlock Darth Vader.",
    points=1,
    id=151957,
    badge="170890",
    trigger=
        bit7(0x13274E) > prev(bit7(0x13274E)) && //- Darth Vader
        save_profile() != 0xff
) 
// $1301A1: Debug Cheats
//          Bit3=All Characters
//          Bit4=All Levels
//          Bit5=All Extras
//          Bit6=All Minikits
//          Bit7=Loadsmoney   
// $12544C: Total Studs (32bit)
function studs() => dword(0x12544C)
achievement(
    "Hell of a Stud",
    "Hold 20,000,000 studs at one time.",
    points=25,
    id=151958,
    badge="170891",
    trigger=    
        save_protection() &&
        prev(studs()) < 0x1e8480 &&
        studs() >= 0x1e8480 &&
        prev(bit7(0x1301A1)) == 0
)

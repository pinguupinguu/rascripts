// LEGO Pirates of the Caribbean: The Video Game
// #ID = 15356
// RA HASH = 2a0df7a6ec7f473179f15ac2da054799 

// $15575E: [8bit] Save Profile Active
//          0xff = Inactive (Save Protection!)
//          0x00 = Slot 1
//          0x01 = Slot 2
//          0x02 = Slot 3
function save_addr() => byte(0x15575e)
function save_protection() =>  save_addr() == prev(save_addr()) && prev(save_addr()) != 0xff 
// ====================MAIN PROGRESSION====================
// ========CHAPTER 1: THE CURSE OF THE BLACK PEARL========
// $1557AA: [NBit] Level Flags
//          Bit0=Port Royal  Available
//          Bit1=Port Royal  Free Play Available
achievement(
    "The Royal Port",
    "Complete the first story adventure in The Curse of the Black Pearl",
    points=5,
    id=148763,
    badge="167295",
    trigger=
        save_protection() &&
        bit0(0x1557AA) == 1 &&
        bit1(0x1557AA) > prev(bit1(0x1557aa))
)
// $1557AD: [NBit] Level Flags
//          Bit0=Tortuga  Available
//          Bit1=Tortuga  Free Play Available
achievement(
    "Tortuga",
    "Complete the second story adventure in The Curse of the Black Pearl",
    points=5,
    id=148764,
    badge="167296",
    trigger=
        save_protection() &&
        bit0(0x1557AD) == 1 &&
        bit1(0x1557AD) > prev(bit1(0x1557AD))
)
// $1557AE: [NBit] Level Flags
//          Bit4=Battle at Sea  Available
//          Bit5=Battle at Sea  Free Play Available
achievement(
    "Battle At Sea",
    "Complete the third story adventure in The Curse of the Black Pearl",
    points=5,
    id=148765,
    badge="167297",
    trigger=
        save_protection() &&
        bit4(0x1557AE) == 1 &&
        bit5(0x1557AE) > prev(bit5(0x1557AE))
    
)
// $1557B0: [NBit] Level Flags
//          Bit0=Isla de Muerta Available
//          Bit1=Isla de Muerta Free Play Available
achievement(
    "Isla de Muerta",
    "Complete the fourth story adventure in The Curse of the Black Pearl",
    points=10,
    id=148766,
    badge="167298",
    trigger=
        save_protection() &&
        bit0(0x1557B0) == 1 &&
        bit1(0x1557B0) > prev(bit1(0x1557B0))
)
// ========CHAPTER 2: DEADMAN'S CHEST========

// $1557B1: [NBit] Level Flags
//          Bit4=Isle de Pelegostos Available
//          Bit5=Isle de Pelegostos  Free Play Available
achievement(
    "Isla de Pelegostos",
    "Complete the first story adventure in Deadman's Chest",
    points=5,
    id=148767,
    badge="167299",
    trigger=
        save_protection() &&
        bit4(0x1557B1) == 1 &&
        bit5(0x1557B1) > prev(bit5(0x1557B1))    
)
// $1557B3: [NBit] Level Flags
//          Bit6=Davy Jones' Key Available
//          Bit7=Davy Jones' Key Free Play Available
achievement(
    "'Key to 'Davy Jones LOCKER!'",
    "Complete the second story adventure in Deadman's Chest",
    points=5,
    id=148768,
    badge="167300",
    trigger=
        save_protection() &&
        bit6(0x1557B3) == 1 &&
        bit7(0x1557B3) > prev(bit7(0x1557B3))
)
// $1557B5: [NBit] Level Flags
//          Bit2=Isla Cruces Available
//          Bit3=Isla Cruces Free Play Available
achievement(
    "Cross the Islands",
    "Complete the third story adventure in Deadman's Chest",
    points=5,
    id=148769,
    badge="167301",
    trigger=
        save_protection() && 
        bit2(0x1557B5) == 1 &&
        bit3(0x1557B5) > prev(bit3(0x1557B5))
)
// $1557B7: [NBit] Level Flags
//          Bit4=The Kraken Available
//          Bit5=The Kraken Free Play Available
achievement(
    "Kraken Me Up",
    "Complete the fourth story adventure in Deadman's Chest",
    points=10,
    id=148770,
    badge="167302",
    trigger=
        save_protection() &&
        bit4(0x1557B7) == 1 &&
        bit5(0x1557B7) > prev(bit5(0x1557B7))
)
// ========CHAPTER 3: AT WORLD'S END========
// $1557B8: [NBit] Level Flags
//          Bit2=Singapore Available
//          Bit3=Singapore Free Play Available
achievement(
    "Singapore",
    "Complete the first story adventure in At World's End ",
    points=5,
    id=148771,
    badge="167303",
    trigger=
        save_protection() &&
        bit2(0x1557B8) == 1 &&
        bit3(0x1557B8) > prev(bit3(0x1557B8))
)
// $1557B9: [NBit] Level Flags
//          Bit6=Escape the Dutchman Available
//          Bit7=Escape the Dutchman Free Play  Available
achievement(
    "Escape the Dutchman",
    "Complete the second story adventure in At World's End",
    points=5,
    id=148772,
    badge="167304",
    trigger=
        save_protection() &&
        bit6(0x1557B9) == 1 &&
        bit7(0x1557B9) > prev(bit7(0x1557B9))
)
// $1557BA: [NBit] Level Flags
//          Bit4=Shipwreck Cove Available
//          Bit5=Shipwreck Cove Free Play Available
achievement(
    "Shipwreck Cove",
    "Complete the third story adventure in At World's End",
    points=5,
    id=148773,
    badge="167305",
    trigger=
        save_protection() &&
        bit4(0x1557BA) == 1 &&
        bit5(0x1557BA) > prev(bit5(0x1557BA))
)
// $1557BB: [NBit] Level Flags
//          Bit2=The Maelstrom Available
//          Bit3=The Maelstrom Free Play Available
achievement(
    "The Maelstrom",
    "Complete the fourth story adventure in At World's End",
    points=10,
    id=148774,
    badge="167306",
    trigger=
        save_protection() &&
        bit2(0x1557BB) == 1 &&
        bit3(0x1557BB) > prev(bit3(0x1557BB))
)
// ========CHAPTER 4: ON STRANGER TIDES========
// $0x1557BD: [NBit] Level Flags
//          Bit4=London Available
//          Bit5=London Free Play Available
achievement(
    "London",
    "Complete the first story adventure in On Stranger Tides",
    points=5,
    id=148775,
    badge="167308",
    trigger=
        save_protection() &&
        bit4(0x1557BD) == 1 &&
        bit5(0x1557BD) > prev(bit5(0x1557BD))
) 
// $1557BF: [NBit] Level Flags
//          Bit0=Queen Anne's Revenge Available
//          Bit1=Queen Anne's Revenge Free Play Available
achievement(
    "Revenge of the Queen!",
    "Complete the second story adventure in On Stranger Tides",
    points=5,
    id=148776,
    badge="167309",
    trigger=
        save_protection() &&
        bit0(0x1557BF) == 1 &&
        bit1(0x1557BF) > prev(bit1(0x1557BF))
)
// $1557C0: [NBit] Level Flags
//          Bit4=White Cap Bay Available
//          Bit5=White Cap Bay Free Play Available
achievement(
    "White Cap Bay",
    "Complete the third story adventure in On Stranger Tides",
    points=10,
    id=148777,
    badge="167310",
    trigger=
        save_protection() &&
        bit4(0x1557C0) == 1 &&
        bit5(0x1557C0) > prev(bit5(0x1557C0))
)
// $1557C2: [NBit] Level Flags
//          Bit0=The Fountain of Youth Available
//          Bit1=The Fountain of Youth Free Play Available
achievement(
    "The Fountain of Youth",
    "Complete the fourth story adventure in On Stranger Tides",
    points=25,
    id=148778,
    badge="167311",
    trigger=
        save_protection() &&
        bit0(0x1557C2) == 1 &&
        bit1(0x1557C2) > prev(bit1(0x1557C2))    
)
// ===================COLLECTIBLES======================
//TRUE PIRATE STATUS (STORY AND FREEPLAY) AWARDS A MESSAGE IN A BOTTLE.
// $1557C5: [NBit] Port Royal Message in a Bottle Flags
// $1557C6: [NBit] Tortuga Message in a Bottle Flags
// $1557C7: [NBit] Battle at Sea Message in a Bottle Flags
// $1557C8: [NBit] Isla de Muerta Message in a Bottle Flags
function chapterone_mainbottles() =>
    bitcount(0x1557c5) +
    bitcount(0x1557c6) +
    bitcount(0x1557c7) +
    bitcount(0x1557c8)
// $0x1557AA: [NBit] Level Flags
//          Bit3=Port Royal True Pirate - Story
//          Bit4=Port Royal True PIrate - Free Play
// $0x1557AD: [NBit] Level Flags
//          Bit3=Tortuga True Pirate - Story
//          Bit4=Tortuga True Pirate - Free Play
// $0x1557AE: [NBit] Level Flags
//          Bit7=Battle at Sea True Pirate - Story
// $0x1557AF: [NBit] Level Flags
//          Bit0=Battle at Sea True Pirate - Free Play
// $0x1557B0: [NBit] Level Flags
//          Bit3=Isla de Muerta True Pirate - Story
//          Bit4=Isla de Muerta True Pirate - Free Play    
function chapterone_truepirate() =>   
    bit3(0x1557AA) +
    bit4(0x1557AA) +
    bit3(0x1557AD) +
    bit4(0x1557AD) +
    bit7(0x1557AE) +
    bit0(0x1557AF) +
    bit3(0x1557B0) + 
    bit4(0x1557B0)
achievement(
    "Cursed Collector",
    "Collect all minikits in The Curse of the Black Pearl on one save slot.",
    points=10,
    id=148779,
    badge="167312",
    trigger=
        save_protection() &&
        prev(chapterone_mainbottles() + chapterone_truepirate()) < 40 &&
        measured(chapterone_mainbottles() + chapterone_truepirate() == 40)
)
// $1557C9: [NBit] Isla de Pelegostos Message in a Bottle Flags
// $1557CA: [NBit] Davy Jones' Key Message in a Bottle Flags
// $1557CB: [NBit] Isla Cruces Message in a Bottle Flags
// $1557CC: [NBit] The Kraken Message in a Bottle Flags
function chaptertwo_mainbottles() =>
    bitcount(0x1557C9) +
    bitcount(0x1557CA) +
    bitcount(0x1557CB) +
    bitcount(0x1557CC) 
// $1557B1: [NBit] Level Flags
//          Bit7=Isle de Pelegostos True Pirate - Story
// $1557B2: [NBit] Level Flags
//          Bit0=Isle de Pelegostos True Pirate - Free Play
// $1557B4: [NBit] Level Flags
//          Bit1=Davy Jones' Key True Pirate - Story
//          Bit2=Davy Jones' Key True Pirate - Free Play
// $1557B5: [NBit] Level Flags
//          Bit5=Isla Cruces True Pirate - Story
//          Bit6=Isla Crcues True Pirate - Free Play
// $1557B7: [NBit] Level Flags
//          Bit7=The Kraken True Pirate - Story
// $1557B8: [NBit] Level Flags
//          Bit0=The Kraken True Pirate - Free Play
function chaptertwo_truepirate() =>
    bit7(0x1557B1) +
    bit0(0x1557B2) +
    bit1(0x1557B4) +
    bit2(0x1557B4) +
    bit5(0x1557B5) +
    bit6(0x1557B5) +
    bit7(0x1557B7) +
    bit0(0x1557B8)
achievement(
    "Deadman's Collector",
    "Collect all minikits in Deadman's Chest on one save slot.", 
    points=10,
    id=148780,
    badge="167313",
    trigger=
        save_protection() &&
        prev(chaptertwo_mainbottles() + chaptertwo_truepirate()) < 40 &&
        measured(chaptertwo_mainbottles() + chaptertwo_truepirate() == 40)
)
// $1557CD: [NBit] Singapore Message in a Bottle Flags
// $1557CE: [NBit] Escape the Dutchman Message in a Bottle Flags
// $1557CF: [NBit] Shipwreck Cove Message in a Bottle Flags
// $1557D0: [NBit] The Maelstrom Message in a Bottle Flags
function chapterthree_mainbottles() =>
    bitcount(0x1557CD) +
    bitcount(0x1557CE) +
    bitcount(0x1557CF) +
    bitcount(0x1557D0)
// $1557B8: [NBit] Level Flags
//          Bit5=Singapore True Pirate - Story
//          Bit6=Singapore True Pirate - Free Play Available
// $1557BA: [NBit] Level Flags
//          Bit1=Escape the Dutchman True Pirate - Story
//          Bit2=Escape the Dutchman True Pirate - Free Play
//          Bit7=Shipwreck Cove True Pirate - Story
// $1557BB: [NBit] Level Flags
//          Bit0=Shipwreck Cove True Pirate - Free Play
//          Bit5=The Maelstrom True Pirate - Story
//          Bit6=The Maelstrom True Pirate - Free Play Available
function chapterthree_truepirate() =>
    bit5(0x1557B8) +
    bit6(0x1557B8) +
    bit1(0x1557BA) +
    bit2(0x1557BA) +
    bit7(0x1557BA) +
    bit0(0x1557BB) +
    bit5(0x1557BB) +
    bit6(0x1557BB)
achievement(
    "Never Ending Collector",
    "Collect all minikits in At World's End on one save slot.",
    points=10,
    id=148781,
    badge="167314",
    trigger=
        save_protection() &&
        prev(chapterthree_mainbottles() + chapterthree_truepirate()) < 40 &&
        measured(chapterthree_mainbottles() + chapterthree_truepirate() == 40)
       
)
// $1557D1: [NBit] London Message in a Bottle Flags
// $1557D2: [NBit] Queen Anne's Revenge Message in a Bottle Flags
// $1557D3: [NBit] White Cap Bay Message in a Bottle Flags
// $1557D4: [NBit] The Fountain of Youth Message in a Bottle Flags
function chapterfour_mainbottles() =>
    bitcount(0x1557D1) +
    bitcount(0x1557D2) +
    bitcount(0x1557D3) +
    bitcount(0x1557D4)
// $1557BD: [NBit] Level Flags
//          Bit7=London True Pirate - Story
// $1557BE: [NBit] Level Flags
//          Bit0=London True Pirate - Free Play
// $1557BF: [NBit] Level Flags
//          Bit3=Queen Anne's Revenge True Pirate - Story
//          Bit4=Queen Anne's Revenge True Pirate - Free Play
// $1557C0: [NBit] Level Flags
//          Bit7=White Cap True Pirate - Story
// $1557C1: [NBit] Level Flags
//          Bit0=White Cap Bay True Pirate - Free Play
// $1557C2: [NBit] Level Flags
//          Bit3=The Fountain of Youth True Pirate - Story
//          Bit4=The Fountain of Youth True Pirate - Free Play
function chapterfour_truepirate() =>
    bit7(0x1557BD) +
    bit0(0x1557BE) +
    bit3(0x1557BF) +
    bit4(0x1557BF) +
    bit7(0x1557C0) +
    bit0(0x1557C1) +
    bit3(0x1557C2) +
    bit4(0x1557C2)
achievement(
    "Strangely Addicted Collector",
    "Collect all minikits in On Stranger Tides on one save slot.",
    points=10,
    id=148782,
    badge="167315",
    trigger=
        save_protection() &&
        prev(chapterfour_mainbottles() + chapterfour_truepirate()) < 40 &&
        measured(chapterfour_mainbottles() + chapterfour_truepirate() == 40)    
)   
achievement(
    "A Pirate's Life for Me!",
    "Obtain 'True Pirate' status on every level in Story and Free Play mode.",
    points=10,
    id=148783,
    badge="167318",
    trigger=
        save_protection() &&       
        prev(chapterone_truepirate() + chaptertwo_truepirate() + chapterthree_truepirate() + chapterfour_truepirate()) < 32 &&
        measured(chapterone_truepirate() + chaptertwo_truepirate() + chapterthree_truepirate() + chapterfour_truepirate() == 32)
)
// $1557D9: [NBit] Red Brick Collection Flags 00= Not 01=Collected
//          Bit0=Port Royal
//          Bit1=Tortuga
//          Bit2=Battle at Sea
//          Bit3=Isla de Muerta
//          Bit4=Isla de Pelegostos
//          Bit5=Davy Jones' Key
//          Bit6=Isla Cruces
//          Bit7=The Kraken
// $1557DA: [NBit] Red Brick Collection Flags 00= Not 01=Collected
//          Bit0=Singapore
//          Bit1=Escape the Dutchman
//          Bit2=Shipwreck Cove
//          Bit3=The Maelstrom
//          Bit4=London
//          Bit5=Queen Anne's Revenge
//          Bit6=White Cap Bay
//          Bit7=The Fountain of Youth
function redbrick_count() => bitcount(0x1557d9) + bitcount(0x1557da)
achievement(
    "Bricked",
    "Collect every red brick in the game on one save slot.",
    points=10,
    id=148784,
    badge="167319",
    trigger=
        save_protection() &&
        prev(redbrick_count()) < 16 &&
        measured(redbrick_count() == 16) 
)
// ====================MINIGAMES=======================

function location_id() => byte(0x154B28)
location_docks = 0x0
// $151E70: [32bit] Cannon Mini Game Pointer
//          ==OFFSETS==
//          0x564=[8bit] Number of Barrels Hit

function minigame_pointer() => tbyte(0x151e70)
cannonballs = 0x564
achievement(
    "Bom Voyage!",
    "Win some studs by hitting 10 barrels with the Docks cannon!",
    points=5,
    id=148785,
    badge="167317",
    trigger=
        location_id() == location_docks &&
        minigame_pointer() == prev(minigame_pointer()) &&  
        byte(minigame_pointer() + cannonballs) > prev(byte(minigame_pointer() + cannonballs)) &&
        byte(minigame_pointer() + cannonballs) == 10
)
// ====================PURCHASES=========================
function coinframe_pause() => unless(once(save_addr() != prev(save_addr())))
function coinframe_reset() => (never(repeated(12, once(save_addr() != prev(save_addr())) && 0==0 )))

// $16f89c: [32bit] Stud Amount ( mult. * 10)
function studs() => dword(0x16F89C)
achievement(
    "Savin' Up",
    "Collect at least 500,000 studs on one save slot.",
    points=5,
    id=148786,
    badge="167320",
    trigger=
        coinframe_pause() &&
        prev(studs()) != 0 &&
        prev(studs()) < 50000 &&
        studs() >= 50000 && (always_false() || coinframe_reset())        
)
achievement(
    "Rackin It' In",
    "Collect at least 1,000,000 studs on one save slot.",
    points=5,
    id=148787,
    badge="167322",
    trigger=
        coinframe_pause() &&
        prev(studs()) != 0 &&
        prev(studs()) < 100000 &&
        studs() >= 100000 && (always_false() || coinframe_reset())
)
// ********CHARACTERS - 124 TOTAL (-2 for Custom Characters)********
// $15577A: [NBit] Character Locked/Purchased Flags
//          First BIt=Locked But Known, Second Bit=Purchased
//          bit0&1=Jack Sparrow
//          bit2&3=Jack Sparrow (Alternate)
//          bit4&5=Jack Sparrow (Pelegostos)
//          bit6&7=Jack Sparrow (Dutchman)
// $15577B: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Jack Sparrow (Crew)
//          bit2&3=Jack Sparrow (Judge)
//          bit4&5=Will Turner
//          bit6&7=Will Turner (Pirate)
// $15577C: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Will Turner (Buccaneer)
//          bit2&3=Will Turner (Dutchman)
//          bit4&5=Will Turner (Young)
//          bit6&7=Elizabeth Swann
// $15577D: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Elizabeth Swann (Petticoat)
//          bit2&3=Elizabeth Swann (Redcoat)
//          bit4&5=Elizabeth Swann (Wedding)
//          bit6&7=Elizabeth Swann (Stowaway)
// $15577E: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Elizabeth Swann (Singapore)
//          bit2&3=Elizabeth Swann (Robes)
//          bit4&5=Elizabeth Swann (Pirate)
//          bit6&7=Elizabeth Swann (Young)
// $15577F: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Hector Barbossa
//          bit2&3=Hector Barbossa (Privateer)
//          bit4&5=Davy Jones
//          bit6&7=Davy Jones (Human)
// $155780: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Blackbeard
//          bit2&3=Angelica (Disguise)
//          bit4&5=Angelica
//          bit6&7=James Norrington
// $155781: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=James Norrington (Pirate)
//          bit2&3=James Norrington (Admiral)
//          bit4&5=Sao Feng
//          bit6&7=Philip Swift
// $155782: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Coach Driver
//          bit2&3=Joshamee Gibbs
//          bit4&5=Marty
//          bit6&7=Pintel
// $155783: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Pintel (Dress)
//          bit2&3=Ragetti
//          bit4&5=Ragetti (Dress)
//          bit6&7=Ragetti (Eyepatch)
// $155784: [NBit] Character Locked/Purchased Flags
//          First BIt=Locked But Known, Second Bit=Purchased
//          bit0&1=Tia Dalma
//          bit2&3=Tia Dalma (Singapore)
//          bit4&5=Cotton
//          bit6&7=Boostrap Bill Turner
// $155785: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Weatherby Swann
//          bit2&3=Weatherby Swann (Captive)
//          bit4&5=Lord Cutler Beckett
//          bit6&7=Mercer
// $155786: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Mr. Brown
//          bit2&3=The Spaniard
//          bit4&5=Groves
//          bit6&7=Lt. Gillette
// $155787: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Murtogg
//          bit2&3=Murtogg (E_I_T_C)
//          bit4&5=Murtogg (Pirate)
//          bit6&7=Mullroy
// $155788: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Mullroy (E_I_T_C)
//          bit2&3=Mullroy (Pirate)
//          bit4&5=Anamaria
//          bit6&7=Scarlett
// $155789: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Giselle
//          bit2&3=Lian
//          bit4&5=Park
//          bit6&7=Steng
// $15578A: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Tai Huang
//          bit2&3=Mistress Ching
//          bit4&5=Ammand
//          bit6&7=Chevalle
// $15578B: [NBit] Character Locked/Purchased Flags
//          First BIt=Locked But Known, Second Bit=Purchased
//          bit0&1=Jocard
//          bit2&3=Sumbhajee Angria
//          bit4&5=Eduardo Villanueva
//          bit6&7=Maccus
// $15578C: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Hadras
//          bit2&3=Clanker
//          bit4&5=Koleniko
//          bit6&7=Wheelback
// $15578D: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&!=Morey
//          bit2&3=Piper
//          bit4&5=Penrod
//          bit6&7=Ratlin
// $15578E: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Quittance
//          bit2&3=Palifico
//          bit4&5=Old Haddy
//          bit6&7=Oglivey
// $15578F: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Manray
//          bit2&3=Angler
//          bit4&5=Broondjongen
//          bit6&7=Crash
// $155790: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Finnegan
//          bit2&3=Greenbeard
//          bit4&5=Jelly
//          bit6&7=Jimmy Legs
// $155791: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Bo' sun
//          bit2&3=Grapple
//          bit4&5=Koehler
//          bit6&7=Jacoby
// $155792: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Clubba
//          bit2&3=Monk
//          bit4&5=Mallot
//          bit6&7=Twigg
// $155793: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Scratch
//          bit2&3=Quartermaster
//          bit4&5=Scrum
//          bit6&7=Gunner
// $155794: [NBit] Character Locked/Purchased Flags
//          First BIt=Locked But Known, Second Bit=Purchased
//          bit0&1=Salaman
//          bit2&3=Ezekiel
//          bit4&5=Garheng
//          bit6&7=Derrick
// $155795: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Cabin Boy
//          bit2&3=Cook
//          bit4&5=King George II
//          bit6&7=Navy Soldier
// $155796: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Navy Captain
//          bit2&3=E.I.T.C. Soldier
//          bit4&5=E.I.T.C. Captain
//          bit6&7=Tortuga Pistoleer
// $155797: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Tortuga Musketeer
//          bit2&3=Hungry Cannibal
//          bit4&5=Angry Cannibal
//          bit6&7=Executioner
// $155798: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Palace Guard
//          bit2&3=Palace Guard Captain
//          bit4&5=Spanish Soldier
//          bit6&7=Spanish Captain
slot_count = 30
function countchars(startaddress, count){
    trigger = 0
    for i in range(startaddress, startaddress + count, 1){
        for j in [1, 3, 5, 7]{
            trigger = trigger + bit(j, i)
        }
    }
    return trigger
}
function deltacountchars(startaddress, count){
    trigger = 0
    for i in range(startaddress, startaddress + count, 1){
        for j in [1, 3, 5, 7]{
            trigger = trigger + prev(bit(j, i))
        }
    }
    return trigger
}
achievement(
    "50% Figured Out",
    "Purchase and unlock at least half the characters in the game on one save slot.",
    points=10,
    id=148788,
    badge="167323",
    trigger= save_protection() &&
    deltacountchars(0x15577A, slot_count) < 62 &&
    measured(countchars(0x15577A, slot_count) == 62)        
)
achievement(
    "Character Mania",
    "Purchase and unlock all the characters in the game on one save slot.",
    points=10,
    id=148789,
    badge="167324",
    trigger= save_protection() &&
    deltacountchars(0x15577A, slot_count) < 124 &&
    measured(countchars(0x15577A, slot_count) == 124)        
)
// $155771: [NBit] Hint BitFlags (1-8)
// $155772: [NBit] Hint Flags (9-14)
function hintsum() =>
    bitcount(0x155771) +
    bit0(0x155772) +
    bit1(0x155772) +
    bit2(0x155772) +
    bit3(0x155772) +
    bit4(0x155772) +
    bit5(0x155772)
achievement(
    "What're You Hinting At?",
    "Purchase all hints on one save file.",
    points=2,
    id=148790,
    badge="167325",
    trigger= 
        save_protection() &&
        prev(hintsum()) < 14 &&
        hintsum() == 14
)
// $1557DB: [NBit] Extras Purchased from Tavern Flags
//          Bit0=Banana Sword
//          Bi1=Big Head
//          Bit2=6x Stud Multiplier
//          Bit3=Monkey Jump
//          Bit4=Stud Magnet
//          Bit5=4x Stud Multiplier
//          Bit6=2x Stud Multiplier
//          Bit7=Deep Sea Diver
// $1557DC: [NBit] Extras Purchased from Tavern Flags
//          Bit0=Regenerate Hearts
//          Bit1=Ghosty Pirate
//          Bit2=Fast Build
//          Bit3=Master Duellist
//          Bit4=8x Stud Multiplier
//          Bit5=One Shot
//          Bit6=Invincibility
//          Bit7=10x Stud Multiplier
achievement(
    "Extra! Extra!",
    "Purchase all extras from the Tavern on one save slot.",
    points=10,
    id=148791,
    badge="167326",
    trigger=
        save_protection() &&
        prev(bitcount(0x1557DB) + bitcount(0x1557DC)) < 16 &&
        measured(bitcount(0x1557DB) + bitcount(0x1557DC) == 16)
)
// $15577A: [NBit] Character Locked/Purchased Flags
//          First BIt=Locked But Known, Second Bit=Purchased
//          bit0&1=Jack Sparrow
//          bit2&3=Jack Sparrow (Alternate)
//          bit4&5=Jack Sparrow (Pelegostos)
//          bit6&7=Jack Sparrow (Dutchman)
// $15577B: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Jack Sparrow (Crew)
//          bit2&3=Jack Sparrow (Judge)
function sparrowpurchases() =>
    bit1(0x15577A) +
    bit3(0x15577A) +
    bit5(0x15577A) +
    bit7(0x15577A) +
    bit1(0x15577B) +
    bit3(0x15577B)
achievement(
    "Grab Some More Rum!",
    "Purchase and unlock all of Jack Sparrow's forms.",
    points=10,
    id=148792,
    badge="167327",
    trigger=
        save_protection() &&
        prev(sparrowpurchases()) < 6 &&
        sparrowpurchases() == 6       
)
// $15577F: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Hector Barbossa
//          bit2&3=Hector Barbossa (Privateer)
//          bit4&5=Davy Jones
//          bit6&7=Davy Jones (Human)
achievement(
    "Captain Barbossa",
    "Purchase all of Hector Barbossa's forms from the Tavern.",
    points=5,
    id=148793,
    badge="167328",
    trigger=
        save_protection() &&
        prev(bit1(0x15577F) + bit3(0x15577F)) < 2 &&
        bit1(0x15577F) + bit3(0x15577F) == 2
)
// $15577F: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
achievement(
    "Out of the Locker!",
    "Purchase all of Davy Jone's forms from the Tavern.",
    points=5,
    id=148794,
    badge="167329",
    trigger=
        save_protection() &&
        prev(bit5(0x15577F) + bit7(0x15577F)) < 2 &&
        bit5(0x15577F) + bit7(0x15577F) == 2
)
// $155780: [NBit] Character Locked/Purchased Flags
//          First Bit=Locked But Known, Second Bit=Purchased
//          bit0&1=Blackbeard
achievement(
    "Evil Captain",
    "Purchase Blackbeard from the Tavern.",
    points=5,
    id=148795,
    badge="167330",
    trigger=
        save_protection() &&
        bit1(0x155780) > prev(bit1(0x155780))
)
//===============Rich Presence===============
// $154B28: [8bit] Level ID
locations = {
    0x0:"Docks",
    0x1:"Port Royal",
    0x5:"Tortuga",
    0x7:"Battle At Sea",
    0x9:"Isla de Muerta",
    0xb:"Isla de Pelegostos",
    0xe:"Davy Jones' Key",
    0x10:"Isla Cruces",
    0x13:"The Kraken",
    0x14:"Singapore",
    0x16:"Escape the Dutchman",
    0x17:"Shipwreck Cove",
    0x18:"The Maelstrom",
    0x1b:"London",
    0x1d:"Queen Anne's Revenge",
    0x1f:"White Cap Bay",
    0x21:"The Fountain of Youth"
}

// LEGO Indiana Jones: The Original Adventures
// #ID = 15352
// RA Checksum: 92a1598c9230a67b7294bcbd5c1e3ad7
//REGULAR HELPER FUNCTIONS
//Sums 4 odd bits of input address.
function oddbit_sum(addr) =>
    bit1(addr) +
    bit3(addr) +
    bit5(addr) +
    bit7(addr)
// $135424: [8bit] Screen ID
//          0x0=Title Screen
//          0x1=Title Screen w/Demo
//          0x2=Load Game
//          0x3=Confirm Load?
//          0x4=Game Slot x Used
//          0x6=Options
//          0x7=Language
function screen_ID() => byte(0x135424)
function save_protection() =>  prev(screen_ID()) != 0x3
// $13C208: Level ID
//          0x01=The Lost Temple
//          0x02=Gunfight at the Raven
//          0x03=Cairo Street Fight
//          0x04=The Well of Souls
//          0x05=Rescue the Ark - Act 01
//          0x06=The Opening of the Ark
//          0x07=Shanghai Showdown - Act 01
//          0x08=Rapids - Act 01
//          0x09=Pankot Palace
//          0x0a=Temple of Doom
//          0x0b=Escape the Mineshaft - Act 01
//          0x0c=Battle on the Bridge
//          0x0d=Retrieving the Cross - Act 01
//          0x0e=The Tomb of Sir Richard - Act 01
//          0x0f=Rescue Professor Jones - Act 01
//          0x10=The Zeppelin - Act 01
//          0x11=Canyon of the Crescent Moon - Act 01
//          0x12=Temple of the Grail
//          0x13=Rescue the Ark - Act 02
//          0x14=Shanghai Showdown - Act 02
//          0x15=Rapids - Act 02
//          0x16=Escape the Mineshaft - Act 02
//          0x17=Retrieving the Cross - Act 02
//          0x18=The Tomb of Sir Richard - Act 02
//          0x19=Rescue Professor Jones - Act 02
//          0x1a=The Zeppelin - Act 02
//          0x1b=The Zeppelin - Act 03
//          0x1c=Canyon of the Crescent Moon - Act 02
//          0x1d=Whip Drag
//          0x1e=Lego Logo 1
//          0x1f=Lego Logo 2
//          0x20=Lego Logo 3
//          0x21=Lego Logo 4
//          0x22=Lego Logo 5
//          0x23=Lego Logo 6
//          0x24=Lego Logo 7
//          0x25=Lego Logo 8
//          0x26=Lego Logo 9
//          0x27=Lego Logo 10
//          0x28=Lego Logo 11
//          0x29=Lego Logo 12
//          0x2a=Pankot Banquet - Beetle Platter
//          0x2b=Pankot Banquet - Eyeball Soup
//          0x2c=Pankot Banquet - Chilled Monke Brains
//          0x30=Raven Stud Shove
//          0x31=Customisation
// $13C4CC: Cheats
//          Bit3=All Characters
//          Bit4=All Levels
//          Bit5=All Extras
//          Bit6=All Minikits
//          Bit7=Loadsamoney
// $13C4CD: Cheats
//          Bit0=Skip Activation
//          Bit1=Character 'Santa Claus' unlocked in shop
// $15BB54: [32bit] Studs *.10
// $15BD34: [8bit] Music Volume
// $15BD35: [8bit] Sound Volume
// $15BD3C: [8bit] Language
//          0x01=English
//          0x02=French
//          0x03=Italian
//          0x04=German
//          0x05=Spanish
//          0x06=Danish
//=====PROGRESSION=====
function progression(story, freeplay) =>
    save_protection() &&
    story == 1 &&
    freeplay > prev(freeplay)


//==RAIDERS OF LOST ARK==:
// $15EE46: [NBit] Level Flags
//          Bit0=Raiders of the Lost Ark - The Lost Temple Story Available
//          Bit1=Raiders of the Lost Ark - The Lost Temple Free Play Available (Gold Brick 1
achievement(
    "Temple of Lost Adventures",
    "Clear the story mode of The Lost Temple in Raiders of the Lost Ark",
    id=153330,
    badge="173241",
    points=5,
    trigger=
        progression(bit0(0x15EE46), bit1(0x15EE46))
)        
// $15EE48: [NBit] Level Flags
//          Bit1=Raiders of the Lost Ark - Gunfight at The Raven Story Available
//          Bit2=Raiders of the Lost Ark - Gunfight at The Raven Free Play Available (Gold Brick 1)
achievement(
    "Guns and Ravens",
    "Clear the story mode of Gunfight at The Raven in Raiders of the Lost Ark.",
    id=153331,
    badge="173243",
    points=5,
    trigger=
        progression(bit1(0x15EE48), bit2(0x15EE48))
)
// $15EE4A: [NBit] Level Flags
//          Bit2=Raiders of the Lost Ark - Cairo Street Fight Story Available
//          Bit3=Raiders of the Lost Ark - Cairo Street Fight Free Play Available (Gold Brick 1)
achievement(
    "Fighting in Cairo",
    "Clear the story mode of Cairo Street Fight in Raiders of the Lost Ark.",
    id=153332,
    badge="173244",
    points=5,
    trigger=
        progression(bit2(0x15EE4A), bit3(0x15EE4A))
)
// $15EE4C: [NBit] Level Flags
//          Bit3=Raiders of the Lost Ark - The Well of Souls Story Available
//          Bit4=Raiders of the Lost Ark - The Well of Souls Free Play Available (Gold Brick 1)
achievement(
    "Oh Well...Rip Souls.",
    "Clear the story mode of The Well of Souls in Raiders of the Lost Ark.",
    id=153333,
    badge="173246",
    points=5,
    trigger=
        progression(bit3(0x15EE4C), bit4(0x15EE4C))
)
// $15EE4E: [NBit] Level Flags
//          Bit4=Raiders of the Lost Ark - Rescue the Ark Story Available
//          Bit5=Raiders of the Lost Ark - Rescue the Ark Free Play Available (Gold Brick 1)
achievement(
    "Rescuing an Ark!",
    "Clear the story mode of Rescue the Ark in Raiders of the Lost Ark.",
    id=153334,
    badge="173248",
    points=5,
        trigger=
            progression(bit4(0x15EE4E), bit5(0x15EE4E))
)
// $15EE50: [NBit] Level Flags
//          Bit5=Raiders of the Lost Ark - The Opening of the Ark Story Available
//          Bit6=Raiders of the Lost Ark - The Opening of the Ark Free Play Available (Gold Brick 1)
achievement(
    "Opening an Ark!",
    "Clear the story mode of The Opening of the Ark in Raiders of the Lost Ark.",
    id=153335,
    badge="173249",
    points=10,
    trigger=
        progression(bit5(0x15EE50), bit6(0x15EE50))
)
//==TEMPLE OF DOOM==:
// $15EE52: [NBit] Level Flags
//          Bit6=The Temple of Doom - Shanghai Showdown Story Available
//          Bit7=The Temple of Doom - Shanghai Showdown Free Play Available (Gold Brick 1)
achievement(
    "Showdown of Shanghai!",
    "Clear the story mode of Shanghai Showdown in The Temple of Doom.",
    id=153336,
    badge="173250",
    points=5,
    trigger=
        progression(bit6(0x15EE52), bit7(0x15EE52))
)
// $15EE54: [NBit] Level Flags
//          Bit7=The Temple of Doom - Rapids Story Available
// $15EE55: [NBit] Level Flags
//          Bit0=The Temple of Doom - Rapids Free Play Available (Gold Brick 1)
achievement(
    "Rapidly Progressing...",
    "Clear the story mode of Rapids in The Temple of Doom",
    id=153337,
    badge="173251",
    points=5,
    trigger=
        progression(bit7(0x15EE54), bit0(0x15EE55))
)
// $15EE57: [NBit] Level Flags
//          Bit0=The Temple of Doom - Pankot Palace Story Available
//          Bit1=The Temple of Doom - Pankot Palace Free Play Available (Gold Brick 1)
achievement(
    "The Palace",
    "Clear the story mode of Pankot Palace in The Temple of Doom",
    id=153338,
    badge="173252",
    points=5,
    trigger=
        progression(bit0(0x15EE57), bit1(0x15EE57))
)
// $15EE59: [NBit] Level Flags
//          Bit1=The Temple of Doom - Temple of Doom Story Available
//          Bit2=The Temple of Doom - Temple of Doom Free Play Available (Gold Brick 1)
achievement(
    "Temple of DOOM",
    "Clear the story mode of The Temple of Doom in.... The Temple of Doom.",
    id=153339,
    badge="173253",
    points=5,
    trigger=
        progression(bit1(0x15EE59), bit2(0x15EE59))
)
// $15EE5B: [NBit] Level Flags
//          Bit2=The Temple of Doom - Escape the Mineshaft Story Available
//          Bit3=The Temple of Doom - Escape the Mineshaft Free Play Available (Gold Brick 1)
achievement(
    "Escaping the Mineshaft",
    "Clear the story mode of Escaping the Mineshaft in The Temple of Doom.",
    id=153340,
    badge="173254",
    points=5,
    trigger=
        progression(bit2(0x15EE5B), bit3(0x15EE5B))
)
// $15EE5D: [NBit] Level Flags
//          Bit3=The Temple of Doom - Battle on the Bridge Story Available
//          Bit4=The Temple of Doom - Battle on the Bridge Free Play Available (Gold Brick 1)
achievement(
    "Bridge Battles",
    "Clear the story mode of Battle on the Bridge in The Temple of Doom.",
    id=153341,
    badge="173255",
    points=10,
    trigger=
        progression(bit3(0x15EE5D), bit4(0x15EE5D))
)
//==THE LAST CRUSADE==
// $15EE5F: [NBit] Level Flags
//          Bit4=The Last Crusade - Retrieving the Cross Story Available
//          Bit5=The Last Crusade - Retrieving the Cross Free Play Available (Gold Brick 1)
achievement(
    "Getting a Cross",
    "Clear the story mode of Retrieving the Cross in The Last Crusade.",
    id=153342,
    badge="173256",
    points=5,
    trigger=
        progression(bit4(0x15EE5F), bit5(0x15EE5F))
)
// $15EE61: [NBit] Level Flags
//          Bit5=The Last Crusade - The Tomb of Sir Richard Story Available
//          Bit6=The Last Crusade - The Tomb of Sir Richard Free Play Available (Gold Brick 1)
achievement(
    "Richard's Tomb",
    "Clear the story mode of The Tomb of Sir Richard in The Last Crusade.",
    id=153343,
    badge="173257",
    points=5,
    trigger=
        progression(bit5(0x15EE61), bit6(0x15EE61))
)
// $15EE63: [NBit] Level Flags
//          Bit6=The Last Crusade - Rescue Professor Jones Story Available
//          Bit7=The Last Crusade - Rescue Professor Jones Free Play Available (Gold Brick 1)
achievement(
    "Professor Jones is Saved!",
    "Clear the story mode of Rescue Professor Jones in The Last Crusade.",
    id=153344,
    badge="173258",
    points=5,
    trigger=
        progression(bit6(0x15EE63), bit7(0x15EE63))
)
// $15EE65: [NBit] Level Flags
//          Bit7=The Last Crusade - The Zeppelin Story Available
// $15EE66: [NBit] Level Flags
//          Bit0=The Last Crusade - The Zeppelin Free Play Available (Gold Brick 1)
achievement(
    "Led Zeppelin?",
    "Clear the story mode of The Zeppelin in The Last Crusade.",
    id=153345,
    badge="173259",
    points=5,
    trigger=
        progression(bit7(0x15EE65), bit0(0x15EE66))
)
// $15EE68: [NBit] Level Flags
//          Bit0=The Last Crusade - Canyon of the Crescent Moon Story Available
//          Bit1=The Last Crusade - Canyon of the Crescent Moon Free Play Available (Gold Brick 1)
achievement(
    "Moony Canyon",
    "Clear the story mode of Canyon of the Crescent Moon in The Last Crusade.",
    id=153346,
    badge="173260",
    points=10,
    trigger=
        progression(bit0(0x15EE68), bit1(0x15EE68))
)
// $15EE6A: [NBit] Level Flags
//          Bit1=The Last Crusade - Temple of the Grail Story Available
//          Bit2=The Last Crusade - Temple of the Grail Free Play Available (Gold Brick 1)
achievement(
    "The Holy Grail",
    "Clear the story mode of Temple of the Grail in The Last Crusade.",
    id=153347,
    badge="173261",
    points=25,
    trigger=
        progression(bit1(0x15EE6A), bit2(0x15EE6A))
)
//=====COLLECTIBLES/TRUE STATUSES======
// $15EE46: [NBit] Level Flags
//          Bit3=Raiders of the Lost Ark - The Lost Temple True Adventurer - Story (Gold Brick 3)
//          Bit4=Raiders of the Lost Ark - The Lost Temple True Adventurer - Free Play (Gold Brick 4)
// $15EE48: [NBit] Level Flags
//          Bit4=Raiders of the Lost Ark - Gunfight at The Raven True Adventurer Story (Gold Brick 3)
//          Bit5=Raiders of the Lost Ark - Gunfight at The Raven True Adventurer Free Play (Gold Brick 4)
// $15EE4A: [NBit] Level Flags
//          Bit5=Raiders of the Lost Ark - Cairo Street Fight True Adventurer Story (Gold Brick 3)
//          Bit6=Raiders of the Lost Ark - Cairo Street Fight True Adventurer Free Play (Gold Brick 4)
// $15EE4C: [NBit] Level Flags
//          Bit6=Raiders of the Lost Ark - The Well of Souls True Adventurer Story  (Gold Brick 3)
//          Bit7=Raiders of the Lost Ark - The Well of Souls True Advenurer Free Play (Gold Brick 4)
// $15EE4E: [NBit] Level Flags
//          Bit7=Raiders of the Lost Ark - Rescue the Ark True Adventurer Story (Gold Brick 3)
// $15EE4F: [NBit] Level Flags
//          Bit0=Raiders of the Lost Ark - Rescue the Ark True Adventurer Free Play (Gold Brick 4)
// $15EE51: [NBit] Level Flags
//          Bit0=Raiders of the Lost Ark - The Opening of the Ark True Adventurer Story (Gold Brick 3)
//          Bit1=Raiders of the Lost Ark - The Opening of the Ark True Adventurer Free Play (Gold Brick 4)
function lostark_adventurer() =>
    bit3(0x15EE46) +
    bit4(0x15EE46) +
    bit4(0x15EE48) +
    bit5(0x15EE48) +
    bit5(0x15EE4A) +
    bit6(0x15EE4A) +
    bit6(0x15EE4C) +
    bit7(0x15EE4C) +
    bit7(0x15EE4E) +
    bit0(0x15EE4F) +
    bit0(0x15EE51) +
    bit1(0x15EE51)
achievement(
    "The Lost Adventurer",
    "Obtain True Adventurer twelve times in Raiders of the Lost Ark.",    
    id=153348,
    badge="173262",
    points=5,
    trigger=
        save_protection() &&
        prev(lostark_adventurer()) < 12 &&
        measured(lostark_adventurer() == 12)
)
// $15EE53: [NBit] Level Flags
//          Bit1=The Temple of Doom - Shanghai Showdown True Adventurer Story (Gold Brick 3)
//          Bit2=The Temple of Doom - Shanghai Showdown True Adventurer Free Play (Gold Brick 4)
// $15EE55: [NBit] Level Flags
//          Bit2=The Temple of Doom - Rapids True Adventurer Story (Gold Brick 3)
//          Bit3=The Temple of Doom - Rapids True Adventurer Free Play (Gold Brick 4)
// $15EE57: [NBit] Level Flags
//          Bit3=The Temple of Doom - Pankot Palace True Adventurer Story (Gold Brick 3)
//          Bit4=The Temple of Doom - Pankot Palace True Adventurer Free Play (Gold Brick 4)
// $15EE59: [NBit] Level Flags
//          Bit4=The Temple of Doom - Temple of Doom True Adventurer Story (Gold Brick 3)
//          Bit5=The Temple of Doom - Temple of Doom True Adventurer Free Play (Gold Brick 4)
// $15EE5B: [NBit] Level Flags
//          Bit5=The Temple of Doom - Escape the Mineshaft True Adventurer Story (Gold Brick 3)
//          Bit6=The Temple of Doom - Escape the Mineshaft True Adventurer Free Play (Gold Brick 4)
// $15EE5D: [NBit] Level Flags
//          Bit6=The Temple of Doom - Battle on the Bridge True Adventurer Story (Gold Brick 3)
//          Bit7=The Temple of Doom - Battle on the Bridge True Adventurer Free Play (Gold Brick 4)
function doom_adventurer() =>
    bit1(0x15EE53) +
    bit2(0x15EE53) +
    bit2(0x15EE55) +
    bit3(0x15EE55) +
    bit3(0x15EE57) +
    bit4(0x15EE57) +
    bit4(0x15EE59) +
    bit5(0x15EE59) +
    bit5(0x15EE5B) +
    bit6(0x15EE5B) +
    bit6(0x15EE5D) +
    bit7(0x15EE5D)
achievement(
    "Doomed to Adventure",
    "Obtain True Adventurer twelve times in The Temple of Doom.",
    id=153349,
    badge="173263",
    points=5,
    trigger=
        save_protection() &&
        prev(doom_adventurer()) < 12 &&
        measured(doom_adventurer() == 12)
)
// $15EE5F: [NBit] Level Flags
//          Bit7=The Last Crusade - Retrieving the Cross True Adventurer Story (Gold Brick 3)
// $15EE60: [NBit] Level Flags
//          Bit0=The Last Crusade - Retrieving the Cross True Adventurer Free Play (Gold Brick 4)
// $15EE62: [NBit] Level Flags
//          Bit0=The Last Crusade - The Tomb of Sir Richard True Adventurer Story (Gold Brick 3)
//          Bit1=The Last Crusade - The Tomb of Sir Richard True Adventurer Free Play (Gold Brick 4)
// $15EE64: [NBit] Level Flags
//          Bit1=The Last Crusade - Rescue Professor Jones True Adventurer Story (Gold Brick 3)
//          Bit2=The Last Crusade - Rescue Professor Jones True Adventurer Free Play (Gold Brick 4)
// $15EE66: [NBit] Level Flags
//          Bit2=The Last Crusade - The Zeppelin True Adventurer Story (Gold Brick 3)
//          Bit3=The Last Crusade - The Zeppelin True Adventurer Free Play (Gold Brick 4)
// $15EE68: [NBit] Level Flags
//          Bit3=The Last Crusade - Canyon of the Crescent Moon True Adventurer Story (Gold Brick 3)
//          Bit4=The Last Crusade - Canyon of the Crescent Moon True Adventurer Free Play (Gold Brick 4)
// $15EE6A: [NBit] Level Flags
//          Bit4=The Last Crusade - Temple of the Grail True Adventurer Story (Gold Brick 3)
//          Bit5=The Last Crusade - Temple of the Grail True Adventurer Free Play (Gold Brick 4)    
function lastcrusade_adventurer() =>
    bit7(0x15EE5F) +
    bit0(0x15EE60) +
    bit0(0x15EE62) +
    bit1(0x15EE62) +
    bit1(0x15EE64) +
    bit2(0x15EE64) +
    bit2(0x15EE66) +
    bit3(0x15EE66) +
    bit3(0x15EE68) +
    bit4(0x15EE68) +
    bit4(0x15EE6A) +
    bit5(0x15EE6A)
achievement(
    "Crusading Adventurer",
    "Obtain True Adventurer twelve times in The Last Crusade",
    id=153350,
    badge="173264",
    points=5,
    trigger=
        save_protection() &&
        prev(lastcrusade_adventurer()) < 12 &&
        measured(lastcrusade_adventurer() == 12)
)    
// $15EE46: [NBit] Level Flags
//          Bit7=Raiders of the Lost Ark - The Lost Temple Idol 1
// $15EE47: [NBit] Level Flags
//          Raiders of the Lost Ark - The Lost Temple Idol 2-9
// $15EE48: [NBit] Level Flags
//          Bit0=Raiders of the Lost Ark - The Lost Temple Idol 10 (Gold Brick 5)
// $15EE49: [NBit] Level Flags
//          Raiders of the Lost Ark - Gunfight at The Raven Idol 1-8
// $15EE4A: [NBit] Level Flags
//          Bit0-1=Raiders of the Lost Ark - Gunfight at The Raven Idol 9-10
// $15EE4B: [NBit] Level Flags
//          Bit1-7=Raiders of the Lost Ark - Cairo Street Fight Idol 1-7
// $15EE4C: [NBit] Level Flags
//          Bit0=Raiders of the Lost Ark - Cairo Street Fight Idol 8
//          Bit1=Raiders of the Lost Ark - Cairo Street Fight Idol 9
//          Bit2=Raiders of the Lost Ark - Cairo Street Fight Idol 10
// $15EE4D: [NBit] Level Flags
//          Bit2-7=Raiders of the Lost Ark - The Well of Souls Idol 1-6
// $15EE4E: [NBit] Level Flags
//          Bit0-3=Raiders of the Lost Ark - The Well of Souls Idol 7-10
// $15EE4F: [NBit] Level Flags
//          Bit3-7=Raiders of the Lost Ark - Rescue the Ark Idol 1-5
// $15EE50: [NBit] Level Flags
//          Bit0-4=Raiders of the Lost Ark - Rescue the Ark Idol 6-10
// $15EE51: [NBit] Level Flags
//          Bit4-7=Raiders of the Lost Ark - The Opening of the Ark Idol 1-4
// $15EE52: [NBit] Level Flags
//          Bit0-5=Raiders of the Lost Ark - The Opening of the Ark Idol 5-10
function lostark_idols() =>
    bit7(0x15EE46) +
    bitcount(0x15EE47) +
    bit0(0x15EE48) +
    bitcount(0x15EE49) +
    bit0(0x15EE4A) +
    bit1(0x15EE4A) +
    bit1(0x15EE4B) +
    bit2(0x15EE4B) +
    bit3(0x15EE4B) +
    bit4(0x15EE4B) +
    bit5(0x15EE4B) +
    bit6(0x15EE4B) +
    bit7(0x15EE4B) +
    bit0(0x15EE4C) +
    bit1(0x15EE4C) +
    bit2(0x15EE4C) +
    bit2(0x15EE4D) +
    bit3(0x15EE4D) +
    bit4(0x15EE4D) +
    bit5(0x15EE4D) +
    bit6(0x15EE4D) +
    bit7(0x15EE4D) +
    bit0(0x15EE4E) +
    bit1(0x15EE4E) +
    bit2(0x15EE4E) +
    bit3(0x15EE4E) +
    bit3(0x15EE4F) +
    bit4(0x15EE4F) +
    bit5(0x15EE4F) +
    bit6(0x15EE4F) +
    bit7(0x15EE4F) +
    bit0(0x15EE50) +
    bit1(0x15EE50) +
    bit2(0x15EE50) +
    bit3(0x15EE50) +
    bit4(0x15EE50) +
    bit4(0x15EE51) +
    bit5(0x15EE51) +
    bit6(0x15EE51) +
    bit7(0x15EE51) +
    bit0(0x15EE52) +
    bit1(0x15EE52) +
    bit2(0x15EE52) +
    bit3(0x15EE52) +
    bit4(0x15EE52) +
    bit5(0x15EE52)
achievement(
    "Idols of the Lost Ark",
    "Collect all 60 idols in Raiders of the Lost Ark.",
    id=153351,
    badge="173265",
    points=10,
    trigger=
        save_protection() &&
        prev(lostark_idols()) < 60 &&
        measured(lostark_idols() == 60)
)
// $15EE53: [NBit] Level Flags
//          Bit5-7=The Temple of Doom - Shanghai Showdown Idol 1-3
// $15EE54: [NBit] Level Flags
//          Bit0-6=The Temple of Doom - Shanghai Showdown Idol 4-10
// $15EE55: [NBit] Level Flag
//          Bit6-7=The Temple of Doom - Rapids Idol 1-2
// $15EE56: [NBit] Level Flags
//          Bit0-7=The Temple of Doom - Rapids Idol 3-10
// $15EE57: [NBit] Level Flags
//          Bit7=The Temple of Doom - Pankot Palace Idol 1
// $15EE58: [NBit] Level Flags
//          Bit0-7=The Temple of Doom - Pankot Palace Idol 2-9
// $15EE59: [NBit] Level Flags
//          Bit0=The Temple of Doom - Pankot Palace Idol 10
// $15EE5A: [NBit] Level Flags
//          Bit0-7=The Temple of Doom - Temple of Doom Idol 1-8
// $15EE5B: [NBit] Level Flags
//          Bit0-1=The Temple of Doom - Temple of Doom Idol 9-10
// $15EE5C: [NBit] Level Flags
//          Bit1-7=The Temple of Doom - Escape the Mineshaft Idol 1-7
// $15EE5D: [NBit] Level Flags
//          Bit0-2=The Temple of Doom - Escape the Mineshaft Idol 8-10
// $15EE5E: [NBit] Level Flags
//          Bit2-7=The Temple of Doom - Battle on the Bridge Idol 1-6
// $15EE5F: [NBit] Level Flags
//          Bit0-3=The Temple of Doom - Battle on the Bridge Idol 7-10
function doom_idols() =>
    bit5(0x15EE53) +
    bit6(0x15EE53) +
    bit7(0x15EE53) +
    bit0(0x15EE54) +
    bit1(0x15EE54) +
    bit2(0x15EE54) +
    bit3(0x15EE54) +
    bit4(0x15EE54) +
    bit5(0x15EE54) +
    bit6(0x15EE54) +    
    bit6(0x15EE55) +
    bit7(0x15EE55) +
    bitcount(0x15EE56) +    
    bit7(0x15EE57) +
    bitcount(0x15EE58) +
    bit0(0x15EE59) +    
    bitcount(0x15EE5A) +
    bit0(0x15EE5B) +
    bit1(0x15EE5B) +    
    bit1(0x15EE5C) +
    bit2(0x15EE5C) +
    bit3(0x15EE5C) +
    bit4(0x15EE5C) +
    bit5(0x15EE5C) +
    bit6(0x15EE5C) +
    bit7(0x15EE5C) +
    bit0(0x15EE5D) +
    bit1(0x15EE5D) +
    bit2(0x15EE5D) +    
    bit2(0x15EE5E) +
    bit3(0x15EE5E) +
    bit4(0x15EE5E) +
    bit5(0x15EE5E) +
    bit6(0x15EE5E) +
    bit7(0x15EE5E) +
    bit0(0x15EE5F) +
    bit1(0x15EE5F) +
    bit2(0x15EE5F) +
    bit3(0x15EE5F) 
achievement(
    "Doomed to Collect!",
    "Collect all 60 idols in The Temple of Doom.",
    id=153352,
    badge="173266",
    points=10,
    trigger=
        save_protection() &&
        prev(doom_idols()) < 60 &&
        measured(doom_idols() == 60)
        
)
// $15EE60: [NBit] Level Flags
//          Bit3-7=The Last Crusade - Retrieving the Cross Idol 1-5
// $15EE61: [NBit] Level Flags
//          Bit0-4=The Last Crusade - Retrieving the Cross Idol 6-10
// $15EE62: [NBit] Level Flags
//          Bit4-7=The Last Crusade - The Tomb of Sir Richard Idol 1-4
// $15EE63: [NBit] Level Flags
//          Bit0-5=The Last Crusade - The Tomb of Sir Richard Idol 5-10
// $15EE64: [NBit] Level Flags
//          Bit5-7=The Last Crusade - Rescue Professor Jones Idol 1-3
// $15EE65: [NBit] Level Flags
//          Bit0-6=The Last Crusade - Rescue Professor Jones Idol 4-10
// $15EE66: [NBit] Level Flags
//          Bit6-7=The Last Crusade - The Zeppelin Idol 1-2
// $15EE67: [NBit] Level Flags
//          Bit0-7=The Last Crusade - The Zeppelin Idol 3-10
// $15EE68: [NBit] Level Flags
//          Bit7=The Last Crusade - Canyon of the Crescent Moon Idol 1
// $15EE69: [NBit] Level Flags
//          Bit0-7=The Last Crusade - Canyon of the Crescent Moon Idol 2-9
// $15EE6A: [NBit] Level Flags
//          Bit0=The Last Crusade - Canyon of the Crescent Moon Idol 10
// $15EE6B: [NBit] Level Flags
//          Bit0-7=The Last Crusade - Temple of the Grail Idol 1-8
// $15EE6C: [NBit] Level Flags
//          Bit0-1=The Last Crusade - Temple of the Grail Idol 9-10
function lastcrusade_idols() =>
    bit3(0x15EE60) +
    bit4(0x15EE60) +
    bit5(0x15EE60) +
    bit6(0x15EE60) +
    bit7(0x15EE60) +
    bit0(0x15EE61) +
    bit1(0x15EE61) +
    bit2(0x15EE61) +
    bit3(0x15EE61) +
    bit4(0x15EE61) +    
    bit4(0x15EE62) +
    bit5(0x15EE62) +
    bit6(0x15EE62) +
    bit7(0x15EE62) +
    bit0(0x15EE63) +
    bit1(0x15EE63) +
    bit2(0x15EE63) +
    bit3(0x15EE63) +
    bit4(0x15EE63) +
    bit5(0x15EE63) +    
    bit5(0x15EE64) +
    bit6(0x15EE64) +
    bit7(0x15EE64) +
    bit0(0x15EE65) +
    bit1(0x15EE65) +
    bit2(0x15EE65) +
    bit3(0x15EE65) +
    bit4(0x15EE65) +
    bit5(0x15EE65) +
    bit6(0x15EE65) +    
    bit6(0x15EE66) +
    bit7(0x15EE66) +
    bitcount(0x15EE67) +    
    bit7(0x15EE68) +
    bitcount(0x15EE69) +
    bit0(0x15EE6A) +    
    bitcount(0x15EE6B) +
    bit0(0x15EE6C) +
    bit1(0x15EE6C) 
achievement(
    "Last Crusade for Idols!",
    "Collect all 60 idols in The Last Crusade",
    id=153353,
    badge="173267",
    points=10,
    trigger=
        save_protection() &&
        prev(lastcrusade_idols()) < 60 &&
        measured(lastcrusade_idols() == 60)
)    
// $15EE20: [NBit] Minigame Bitflags
//          Bit0-7=LEGO Logo 1-8
// $15EE21: [NBit] Minigame Flags - Gives Gold Bricks.
//          Bit0=LEGO Logo 9
//          Bit1=LEGO Logo 10
//          Bit2=LEGO Logo 11
//          Bit3=LEGO Logo 12
//          Bit4=LEGO Logo Survival
//          Bit5=Whip Drag
//          Bit6=Whip Drag Survival
//          Bit7=Chilled Monkey Brains
// $15EE22: [NBit] Minigame Flags - Gives Gold Bricks.
//          Bit0=Beetle Platter
function minigame_sum() =>
    bitcount(0x15EE20) +
    bitcount(0x15EE21) +
    bit0(0x15EE22)
achievement(
    "Minigame Master",
    "Collect all gold bricks from the mini-games.",
    id=153354,
    badge="173268",
    points=10,
    trigger=
        save_protection() &&
        prev(minigame_sum()) < 17 &&
        measured(minigame_sum() == 17)        
)
// $15EE46: [NBit] Level Flags
//          Bit5=Raiders of the Lost Ark - The Lost Temple True Red Brick Collected
// $15EE48: [NBit] Level Flags
//          Bit6=Raiders of the Lost Ark - Gunfight at The Raven Red Brick Collected
// $15EE4A: [NBit] Level Flags
//          Bit7=Raiders of the Lost Ark - Cairo Street Fight Red Brick Collected
// $15EE4D: [NBit] Level Flags
//          Bit0=Raiders of the Lost Ark - The Well of Souls Red Brick Collected
// $15EE4F: [NBit] Level Flags
//          Bit1=Raiders of the Lost Ark - Rescue the Ark Red Brick Collected
// $15EE51: [NBit] Level Flags
//          Bit2=Raiders of the Lost Ark - The Opening of the Ark Red Brick Collected
// $15EE53: [NBit] Level Flags
//          Bit3=The Temple of Doom - Shanghai Showdown Red Brick Collected
// $15EE55: [NBit] Level Flags
//          Bit4=The Temple of Doom - Rapids Red Brick Collected
// $15EE57: [NBit] Level Flags
//          Bit5=The Temple of Doom - Pankot Palace Red Brick Collected
// $15EE59: [NBit] Level Flags
//          Bit6=The Temple of Doom - Temple of Doom Red Brick Collected
// $15EE5B: [NBit] Level Flags
//          Bit7=The Temple of Doom - Escape the Mineshaft Red Brick Collected
// $15EE5E: [NBit] Level Flags
//          Bit0=The Temple of Doom - Battle on the Bridge Red Brick Collected
// $15EE60: [NBit] Level Flags
//          Bit1=The Last Crusade - Retrieving the Cross Red Brick Collected
// $15EE62: [NBit] Level Flags
//          Bit2=The Last Crusade - The Tomb of Sir Richard Red Brick Collected
// $15EE64: [NBit] Level Flags
//          Bit3=The Last Crusade - Rescue Professor Jones Red Brick Collected
// $15EE66: [NBit] Level Flags
//          Bit4=The Last Crusade - The Zeppelin Red Brick Collected
// $15EE68: [NBit] Level Flags
//          Bit5=The Last Crusade - Canyon of the Crescent Moon Red Brick Collected
// $15EE6A: [NBit] Level Flags
//          Bit6=The Last Crusade - Temple of the Grail Red Brick Collected
function redbrick_collects() =>
    bit5(0x15EE46) +
    bit6(0x15EE48) +
    bit7(0x15EE4A) +
    bit0(0x15EE4D) +
    bit1(0x15EE4F) +
    bit2(0x15EE51) +
    bit3(0x15EE53) +
    bit4(0x15EE55) +
    bit5(0x15EE57) +
    bit6(0x15EE59) +
    bit7(0x15EE5B) +
    bit0(0x15EE5E) +
    bit1(0x15EE60) +
    bit2(0x15EE62) +
    bit3(0x15EE64) +
    bit4(0x15EE66) +
    bit5(0x15EE68) +
    bit6(0x15EE6A)
achievement(
    "Bricked on Collecting",
    "Collect all 18 red brick on one save profile.",
    id=153355,
    badge="173269",
    points=5,
    trigger=
        save_protection() &&
        prev(redbrick_collects()) < 18 &&
        measured(redbrick_collects() == 18)
)
//=====PURCHASES======
// $15EE26: [NBit] Hint Bitflags 1-8
// $15EE27: [NBit] Hint Bitflags 9-16
// $15EE28: [NBit] Hint Bitflags 17-24
// $15EE29: [NBit] Hint Bitflags 25-32
// $15EE2A: [NBit] Hint Bitflags 33-39
//          Bit7=Not Used
function hint_sum() =>
    bitcount(0x15EE26) +
    bitcount(0x15EE27) +
    bitcount(0x15EE28) +
    bitcount(0x15EE29) +
    bit0(0x15EE2A) +
    bit1(0x15EE2A) +
    bit2(0x15EE2A) +
    bit3(0x15EE2A) +
    bit4(0x15EE2A) +
    bit5(0x15EE2A) +
    bit6(0x15EE2A)    
achievement(
    "Hints for Adventures!",
    "Purchase all hints on one save file.",
    id=153356,
    badge="173270",
    points=5,
    trigger=
        save_protection() &&
        prev(hint_sum()) < 39 &&
        measured(hint_sum() == 39)        
)
// $15EE46: [NBit] Level Flags
//          Bit6=Red Power Brick 1 Scholar Access Panel Purchased
// $15EE48: [NBit] Level Flags
//          Bit7=Red Power Brick 2 Raven Stud Shove Purchased
// $15EE4B: [NBit] Level Flags
//          Bit0=Red Power Brick 3 Military Access Panel Purchased
// $15EE4D: [NBit] Level Flags
//          Bit1=Red Power Brick 4 One Shot Purchased
// $15EE4F: [NBit] Level Flags
//          Bit2=Red Power Brick 5 Whip Drag Survival Purchased
// $15EE51: [NBit] Level Flags
//          Bit3=Red Power Brick 6 Fast Build
// $15EE53: [NBit] Level Flags
//          Bit4=Red Power Brick 7 Whip Drag Purchased
// $15EE55: [NBit] Level Flag
//          Bit5=Red Power Brick 8 Score x2
// $15EE57: [NBit] Level Flags
//          Bit6=Red Power Brick 9 Chilled Monkey Brains
// $15EE59: [NBit] Level Flags
//          Bit7=Red Power Brick 10 Thuggee Access Panel
// $15EE5C: [NBit] Level Flags
//          Bit0=Red Power Brick 11 Beetle Platter
// $15EE5E: [NBit] Level Flags
//          Bit1=Red Power Brick 12 Regenerate Hearts
// $15EE60: [NBit] Level Flags
//          Bit2=Red Power Brick 13 Score x4
// $15EE62: [NBit] Level Flags
//          Bit3=Red Power Brick 14 BOTCS Access Panel
// $15EE64: [NBit] Level Flags
//          Bit4=Red Power Brick 15 Score x6
// $15EE66: [NBit] Level Flags
//          Bit5=Red Power Brick 16 LEGO Logo Survival
// $15EE68: [NBit] Level Flags
//          Bit6=Red Power Brick 17 Score x10
// $15EE6A: [NBit] Level Flags
//          Bit7=Red Power Brick 18 Invincibility
function redbrick_purchases() =>
    bit6(0x15EE46) +
    bit7(0x15EE48) +
    bit0(0x15EE4B) +
    bit1(0x15EE4D) +
    bit2(0x15EE4F) +
    bit3(0x15EE51) +
    bit4(0x15EE53) +
    bit5(0x15EE55) +
    bit6(0x15EE57) +
    bit7(0x15EE59) +
    bit0(0x15EE5C) +
    bit1(0x15EE5E) +
    bit2(0x15EE60) +
    bit3(0x15EE62) +
    bit4(0x15EE64) +
    bit5(0x15EE66) +
    bit6(0x15EE68) +
    bit7(0x15EE6A)
achievement(
    "Bricked on Purchasing",
    "Buy all red brick extras from the shop on one profile.",
    id=153357,
    badge="173271",
    points=5,
    trigger=
        save_protection() &&
        prev(redbrick_purchases()) < 18 &&
        measured(redbrick_purchases() == 18)
)
//46 CHARACTERS TO PURCHASE TOTAL
// $15EE32: [NBit] Character Flags
//          Bit0&1=Barranca
//          Bit2&3=Dr. Belloq (Jungle)
//          Bit4&5=Hovitos Tribesman (Blowpipe)
//          Bit6&7=Hovitos Tribesman (Spear)
// $15EE33: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Jock
//          Bit6&7=Sherpa Goon
// $15EE34: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit4&5=Cairo Goon
//          Bit6&7=Cairo Swordsman
// $15EE35: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Monkey Man
//          Bit2&3=Sallah (Suit)
// $15EE36: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Marion (Evening Dress)
//          Bit2&3=Egyptian Mummy
// $15EE37: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Enemy Bazooka Soldier (Desert)
//          Bit2&3=Enemy (Boxer)
//          Bit4&5=Enemy Officer (Desert)
// $15EE38: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit2&3=Dr. Belloq (Suit)
//          Bit4&5=Colonel Dietrich
//          Bit6&7=Major Toht
// $15EE39: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Captain Katanga
//          Bit6&7=Shanghai Hoodlum
// $15EE3A: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Wu Han
//          Bit2&3=Lao Che
//          Bit4&5=Kao Kan
//          Bit6&7=Chen
// $15EE3B: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit4&5=Punjabi Village Elder
// $15EE3C: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit2&3=Chattar Lal
//          Bit4&5=Maharajah
//          Bit6&7=British Officer (Redcoat)
// $15EE3D: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit4&5=Willie Scott (Sari)
//          Bit6&7=Chattar Lal (Thuggee)
// $15EE3E: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Maharajah (Thuggee)
//          Bit6&7=Thuggee Slave Driver
// $15EE3F: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit4&5=Mola Ram
// $15EE40: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit2&3=Fedora
//          Bit4&5=Grave Robber 1
//          Bit6&7=Grave Robber 2
// $15EE41: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit4&5=Knight of the Cruciform Sword (Venice)
//          Bit6&7=Walter Donovan (Tuxedo)
// $15EE42: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit4&5=Enemy Bazooka Soldier
// $15EE43: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit6&7=Colonel Vogel
// $15EE44: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit4&5=Walter Donovan (Ancient)
//          Bit6&7=Grail Knight
// $15EE45: [NBit] Character Flags - Unlocked/Purchased Respectively
//          Bit0&1=Strong Man
//          Bit2&3=Clown
//          Bit4&5=Castle Knight
//          Bit6&7=Santa Claus
function character_sum()=>
    oddbit_sum(0x15EE32) +
    bit1(0x15EE33) +
    bit7(0x15EE33) +
    bit5(0x15EE34) +
    bit7(0x15EE34) +
    bit1(0x15EE35) +
    bit3(0x15EE35) +
    bit1(0x15EE36) +
    bit3(0x15EE36) +
    bit1(0x15EE37) +
    bit3(0x15EE37) +
    bit5(0x15EE37) +
    bit3(0x15EE38) +
    bit5(0x15EE38) +
    bit7(0x15EE38) +
    bit1(0x15EE39) +
    bit7(0x15EE39) +
    oddbit_sum(0x15EE3A) +
    bit5(0x15EE3B) +
    bit3(0x15EE3C) +
    bit5(0x15EE3C) +
    bit7(0x15EE3C) +
    bit5(0x15EE3D) +
    bit7(0x15EE3D) +
    bit1(0x15EE3E) +
    bit7(0x15EE3E) +
    bit5(0x15EE3F) +
    bit3(0x15EE40) +
    bit5(0x15EE40) +
    bit7(0x15EE40) +
    bit5(0x15EE41) +
    bit7(0x15EE41) +
    bit5(0x15EE42) +
    bit7(0x15EE43) +
    bit5(0x15EE44) +
    bit7(0x15EE44) +
    oddbit_sum(0x15EE45)
achievement(
    "Halfway Characteristic",
    "Buy at least half of the characters from the shop on one save profile.",
    id=153358,
    badge="173272",
    points=10,
    trigger=
        save_protection() &&
        prev(character_sum()) < 23 &&
        measured(character_sum() == 23)
)
achievement(
    "Full Blown Character",
    "Purchase all characters from the shop on one save profile.",
    id=153359,
    badge="173273",
    points=25,
    trigger=
        save_protection() &&
        prev(character_sum()) < 46 &&
        measured(character_sum() == 46)
)

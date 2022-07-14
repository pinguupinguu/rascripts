// LEGO Indiana Jones
// #ID = 3993
// $B2FA50: [32bit] Level Segment Number
// $B2FA54: [32bit] Level ID
//          0x01=The Lost Temple
//          0x02=Into the Mountains
//          0x03=City of Danger
//          0x04=Well of Souls
//          0x05=Pursuing the Ark
//          0x06=Opening the Ark
//          0x08=Shanghai Showdown
//          0x09=Pankot Secrets
//          0x0a=The Temple of Kali
//          0x0b=Free the Slaves
//          0x0c=Escape the Mines
//          0x0d=Battle on the Bridge
//          0x0f=The Hunt for Sir Richard
//          0x10=Castle Rescue
//          0x11=Motorcycle Escape
//          0x12=Trouble in the Sky
//          0x13=Desert Ambush
//          0x14=Temple of the Grail
//          0x16=Young Indy
//          0x17=Ancient City
//          0x18=Warehouse
// $B2FA58: [32bit] In Game State
//          0xff (-1) = no
function game_state() => dword(0xb2fa58) 
out_of_level = 0xffffffff
// $B42048: [32bit] Active Save Slot
// $B44D6C: [32bit] Stud Count in Extra Levels
function progression(save_protection, level_accessor) =>
    save_protection &&    
    level_accessor > prev(level_accessor)
// $BC5386: [8bit] Level Flag - Radiers of the Lost Ark - The Lost Temple Story Available
//          00=No
//          01=Yes
// $BC5387: [8bit] Level Flag - Radiers of the Lost Ark - The Lost Temple Free Play Available
//          00=No
//          01=Yes
function templelost_load() => prev(byte(0xbc5387)) == 1
achievement(
    "Where Are We Goin' Indy?",
    "Clear the story mode of The Lost Temple in Raiders of the Lost Ark",
    points=5,
    trigger=
        progression(prev(game_state()) != 0xffffffff, byte(0xbc5387))
)
// $BC5396: [8bit] Level Flag - Radiers of the Lost Ark - Into the Mountains Story Available
//          00=No
//          01=Yes
// $BC5397: [8bit] Level Flag - Radiers of the Lost Ark - Into the Mountains Free Play Available
//          00=No
//          01=Yes
achievement(
    "Where There's Snow, There's Trouble!",
    "Clear the story mode of Into the Mountains in Raiders of the Lost Ark",
    points=5,
    trigger=
        progression(prev(byte(0xbc5396)) == 1, byte(0xbc5397))
)
// $BC53A6: [8bit] Level Flag - Radiers of the Lost Ark - City of Danger Story Available
//          00=No
//          01=Yes
// $BC53A7: [8bit] Level Flag - Radiers of the Lost Ark - City of Danger Free Play Available
//          00=No
//          01=Yes
achievement(
    "Another Dangerous Adventure",
    "Clear the story mode of City of Danger in Raiders of the Lost Ark",
    points=5,
    trigger=
        progression(prev(byte(0xbc53a6)) == 1, byte(0xbc53a7))
)
// $BC53B6: [8bit] Level Flag - Radiers of the Lost Ark - The Well of Souls Story Available
//          00=No
//          01=Yes
// $BC53B7: [8bit] Level Flag - Radiers of the Lost Ark - The Well of Souls Free Play Available
//          00=No
//          01=Yes
achievement(
    "A Soulful Tale",
    "Clear the story mode of The Well of Souls in Raiders of the Lost Ark",
    points=5,
    trigger=
        progression(prev(byte(0xbc53b6)) == 1, byte(0xbc53b7))
)
// $BC53C6: [8bit] Level Flag - Radiers of the Lost Ark - Pursuing the Ark Story Available
//          00=No
//          01=Yes
// $BC53C7: [8bit] Level Flag - Radiers of the Lost Ark - Pursuing the Ark Free Play Available
//          00=No
//          01=Yes
achievement(
    "After the Golden Ark!",
    "Clear the story mode of Pursuing the Ark in Raiders of the Lost Ark",
    points=5,
    trigger=
        progression(prev(byte(0xbc53c6)) == 1, byte(0xbc53c7))
)
// $BC53D6: [8bit] Level Flag - Radiers of the Lost Ark - Opening the Ark Story Available
//          00=No
//          01=Yes
// $BC53D7: [8bit] Level Flag - Radiers of the Lost Ark - Opening the Ark Free Play Available
//          00=No
//          01=Yes
achievement(
    "The Truth of the Ark!",
    "Clear the story mode of Opening the Ark in Raiders of the Lost Ark",
    points=10,
    trigger=
        progression(prev(byte(0xbc53d6)) == 1, byte(0xbc53d7))
)
// $BC53F6: [8bit] Level Flag - Temple of Doom - Shanghai Showdown Story Available
//          00=No
//          01=Yes
// $BC53F7: [8bit] Level Flag - Temple of Doom - Shanghai Showdown Free Play Available
//          00=No
//          01=Yes
achievement(
    "Showdown in Shanghai",
    "Clear the story mode of Shanghai Showdown in Temple of Doom",
    points=5,
    trigger=
        progression(prev(byte(0xbc53f6)) == 1, byte(0xbc53f7))
)
// $BC5406: [8bit] Level Flag - Temple of Doom - Pankot Secrets Story Available
//          00=No
//          01=Yes
// $BC5407: [8bit] Level Flag - Temple of Doom - Pankot Secrets Free Play Available
//          00=No
//          01=Yes
achievement(
    "So Many Secrets, So Little Time",
    "Clear the story mode of Pankot Secrets in Temple of Doom",
    points=5,
    trigger=
        progression(prev(byte(0xbc5406)) == 1, byte(0xbc5407))
)
// $BC5416: [8bit] Level Flag - Temple of Doom - The Temple of Kali Story Available
//          00=No
//          01=Yes
// $BC5417: [8bit] Level Flag - Temple of Doom - The Temple of Kali Free Play Available
//          00=No
//          01=Yes
achievement(
    "Finally Not a Doomed Temple!",
    "Clear the story mode of The Temple of Kali in Temple of Doom",
    points=5,
    trigger=
        progression(prev(byte(0xbc5416)) == 1, byte(0xbc5417))
)
// $BC5426: [8bit] Level Flag - Temple of Doom - Free the Slaves Story Available
//          00=No
//          01=Yes
// $BC5427: [8bit] Level Flag - Temple of Doom - Free the Slaves Free Play Available
//          00=No
//          01=Yes
achievement(
    "Saving More People",
    "Clear the story mode of Free the Slaves in Temple of Doom",
    points=5,
    trigger=
        progression(prev(byte(0xbc5426)) ==1, byte(0xbc5427))
)
// $BC5436: [8bit] Level Flag - Temple of Doom - Escape the Mines Story Available
//          00=No
//          01=Yes
// $BC5437: [8bit] Level Flag - Temple of Doom - Escape the Mines Free Play Available
//          00=No
//          01=Yes
achievement(
    "Blast Away!",
    "Clear the story mode of Escape the Mines in Temple of Doom",
    points=5,
    trigger=
        progression(prev(byte(0xbc5436)) == 1, byte(0xbc5437))
    
)
// $BC5446: [8bit] Level Flag - Temple of Doom - Battle on the Bridge Story Available
//          00=No
//          01=Yes
// $BC5447: [8bit] Level Flag - Temple of Doom - Battle on the Bridge Free Play Available
//          00=No
//          01=Yes
achievement(
    "A Bridge Battle",
    "Clear the story mode of Battle on the Bridge in Temple of Doom",
    points=10,
    trigger=
        progression(prev(byte(0xbc5446)) == 1, byte(0xbc5447))
)

// $BC5466: [8bit] Level Flag - The Last Crusade - The Hunt for Sir Richard Story Available
//          00=No
//          01=Yes
// $BC5467: [8bit] Level Flag - The Last Crusade - The Hunt for Sir Richard Free Play Available
//          00=No
//          01=Yes
achievement(
    "Finding a Dude",
    "Clear the story mode of The Hunt for Sir Richard in The Last Crusade",
    points=5,
    trigger=
        progression(prev(byte(0xbc5466)) ==1, byte(0xbc5467))
)
// $BC5476: [8bit] Level Flag - The Last Crusade - Castle Rescue Story Available
//          00=No
//          01=Yes
// $BC5477: [8bit] Level Flag - The Last Crusade - Castle Rescue Free Play Available
//          00=No
//          01=Yes
achievement(
    "A Castle Mission",
    "Clear the story mode of Castle Rescue in The Last Crusade",
    points=5,
    trigger=
        progression(prev(byte(0xbc5476)) == 1, byte(0xbc5477))
)
// $BC5486: [8bit] Level Flag - The Last Crusade - Motorcycle Escape Story Available
//          00=No
//          01=Yes
// $BC5487: [8bit] Level Flag - The Last Crusade - Motorcycle Escape Free Play Available
//          00=No
//          01=Yes
achievement(
    "Wild Ride",
    "Clear the story mode of Motorcycle Escape in The Last Crusade",
    points=5,
    trigger=
        progression(prev(byte(0xbc5486)) ==1, byte(0xbc5487))
)
// $BC5496: [8bit] Level Flag - The Last Crusade - Trouble in the Sky Story Available
//          00=No
//          01=Yes
// $BC5497: [8bit] Level Flag - The Last Crusade - Trouble in the Sky Free Play Available
//          00=No
//          01=Yes
achievement(
    "No Trails in the Sky Here!",
    "Clear the story mode of Trouble in the Sky in The Last Crusade",
    points=5,
    trigger=
        progression(prev(byte(0xbc5496)) ==1, byte(0xbc5497))
)
// $BC54A6: [8bit] Level Flag - The Last Crusade - Desert Ambush Story Available
//          00=No
//          01=Yes
// $BC54A7: [8bit] Level Flag - The Last Crusade - Desert Ambush Free Play Available
//          00=No
//          01=Yes
achievement(
    "An Unlikely Ambush",
    "Clear the story mode of Desert Ambush in The Last Crusade",
    points=5,
    trigger=
        progression(prev(byte(0xbc54a6))==1, byte(0xbc54a7))
)
// $BC54B6: [8bit] Level Flag - The Last Crusade - Temple of the Grail Story Available
//          00=No
//          01=Yes
// $BC54B7: [8bit] Level Flag - The Last Crusade - Temple of the Grail Free Play Available
//          00=No
//          01=Yes
achievement(
    "Find the Holy Grail!",
    "Clear the story mode of Temple of the Grail in The Last Crusade",
    points=10,
    trigger=
        progression(prev(byte(0xbc54b6)) ==1, byte(0xbc54b7))
)
// $BC54D6: [8bit] Level Flag - Young Indy - Story Available
// $BC54D7: [8bit] Level Flag - Young Indy - Free Play Available
achievement(
    "Flashbacks to Childhood",
    "Clear the story mode of the extra mission Young Indy",
    points=10,
    trigger=
        progression(prev(byte(0xbc54d6)) ==1, byte(0xbc54d7))
)
// $BC54E6: [8bt] Level Flags - Ancient City Open
//          00=No
//          01=Yes
// $BC54E7: [8bt] Level Flags - Ancient City - Has Best Time Stored
//          00=No
//          01=Yes
// $BC54F0: [32bit] Ancient City Best Time Record - Floating Point
achievement(
    "An Ancient Tale",
    "Clear the extra level Ancient City and set a new time record!",
    points=10,
    trigger=
        templelost_load() &&
        dword(0xbc54f0) != prev(dword(0xbc54f0))
)
// $BC54F6: [8bt] Level Flags - Warehouse Open
//          00=No
//          01=Yes
// $BC54F7: [8bt] Level Flags - Warehouse - Has Best Time Stored
//          00=No
//          01=Yes
// $BC5500: [32bit] Warehouse Best Time Record - Floating Point
achievement(
    "Storage House",
    "Clear the extra level Warehouse and set a new time record!",
    points=5,
    trigger=
        templelost_load() &&
        dword(0xbc5500) != prev(dword(0xbc5500))
)
//COLLECTION - AREA 1
//================================================================================================
// $BC5389: [8bit] Level Flag - Radiers of the Lost Ark - The Lost Temple - Artifact Count
achievement(
    "Lost Temple Idols",
    "Find all 10 artifact pieces in The Lost Temple",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5389)) < 10 &&
        measured(byte(0xbc5389) == 10)
)
// $BC5399: [8bit] Level Flag - Radiers of the Lost Ark - Into the Mountains Artifact Count
achievement(
    "Mountain Idols",
    "Find all 10 artifact pieces in Into the Mountains",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5399)) < 10 &&
        measured(byte(0xbc5399) == 10)
)
// $BC53A9: [8bit] Level Flag - Radiers of the Lost Ark - City of Danger Artifact Count
achievement(
    "City of Danger Idols",
    "Find all 10 artifact pieces in City of Danger",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc53a9)) < 10 &&
        measured(byte(0xbc53a9) == 10)
)
// $BC53B9: [8bit] Level Flag - Radiers of the Lost Ark - The Well of Souls Artifact Count
achievement(
    "Well of Souls Idols",
    "Find all 10 artifact pieces in The Well of Souls",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc53b9)) < 10 &&
        measured(byte(0xbc53b9) == 10)
)
// $BC53C9: [8bit] Level Flag - Radiers of the Lost Ark - Pursuing the Ark Artifact Count
achievement(
    "Pursuing the Ark Idols",
    "Find all 10 artifact pieces in Pursuing the Ark",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc53c9)) < 10 &&
        measured(byte(0xbc53c9) == 10)     
)
// $BC53D9: [8bit] Level Flag - Radiers of the Lost Ark - Opening the Ark Artifact Count
achievement(
    "Opening the Ark Idols",
    "Find all 10 artifact pieces in Opening the Ark",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc53d9)) < 10 &&
        measured(byte(0xbc53d9) == 10)
)
//================================================================================================
// $BC5385: [8bit] Level Flag - Radiers of the Lost Ark - The Lost Temple True Adventurer
//          00=No
//          01=Yes
// $BC5395: [8bit] Level Flag - Radiers of the Lost Ark - Into the Mountains True Adventurer
//          00=No
//          01=Yes
// $BC53A5: [8bit] Level Flag - Radiers of the Lost Ark - City of Danger True Adventurer
//          00=No
//          01=Yes
// $BC53B5: [8bit] Level Flag - Radiers of the Lost Ark - The Well of Souls True Adventurer
//          00=No
//          01=Yes
// $BC53C5: [8bit] Level Flag - Radiers of the Lost Ark - Pursuing the Ark True Adventurer
//          00=No
//          01=Yes
// $BC53D5: [8bit] Level Flag - Radiers of the Lost Ark - Opening the Ark True Adventurer
//          00=No
//          01=Yes
function rola_ta_sum() =>
    byte(0xbc5385) +
    byte(0xbc5395) +
    byte(0xbc53a5) +
    byte(0xbc53b5) +
    byte(0xbc53c5) +
    byte(0xbc53d5)
achievement(
    "Raiding the Lost Ark for Studs!",
    "Obtain True Adventurer all six times in Raiders of the Lost Ark",
    points=5,
    trigger=
        templelost_load() &&
        prev(rola_ta_sum()) == 5 &&
        measured(rola_ta_sum() == 6)
)
//================================================================================================
// $BC538B: [8bit] Level Flag - Radiers of the Lost Ark - The Lost Temple - Red Parcel Collected
//          00=No
//          01=Yes
// $BC539B: [8bit] Level Flag - Radiers of the Lost Ark - Into the Mountains - Red Parcel Collected
//          00=No
//          01=Yes
// $BC53AB: [8bit] Level Flag - Radiers of the Lost Ark - City of Danger - Red Parcel Collected
//          00=No
//          01=Yes
// $BC53BB: [8bit] Level Flag - Radiers of the Lost Ark - The Well of Souls - Red Parcel Collected
//          00=No
//          01=Yes
// $BC53CB: [8bit] Level Flag - Radiers of the Lost Ark - Pursuing the Ark - Red Parcel Collected
//          00=No
//          01=Yes
// $BC53DB: [8bit] Level Flag - Radiers of the Lost Ark - Opening the Ark - Red Parcel Collected
//          00=No
//          01=Yes
function rola_parcel_sum() =>
    byte(0xbc538b) +
    byte(0xbc539b) +
    byte(0xbc53ab) +
    byte(0xbc53bb) +
    byte(0xbc53cb) +
    byte(0xbc53db)
achievement(
    "Raiding Mail Delivery!",
    "Collect all six red parcels in Raiders of the Lost Ark",
    points=5,
    trigger=
        templelost_load() &&
        prev(rola_parcel_sum()) == 5 &&
        measured(rola_parcel_sum() == 6)
)
//================================================================================================
//COLLECTION - AREA 2
// $BC53F9: [8bit] Level Flag - Temple of Doom - Shanghai Showdown Artifact Count
achievement(
    "Shanghai Showdown Idols",
    "Collect all 10 artiface pieces in Shanghai Showdown",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc53f9)) < 10 &&
        measured(byte(0xbc53f9) == 10)
)
// $BC5409: [8bit] Level Flag - Temple of Doom - Pankot Secrets Artifact Count
achievement(
    "Pankot Secrets Idols",
    "Collect all 10 artifact pieces in Pankot Secrets",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5409)) < 10 &&
        measured(byte(0xbc5409) == 10)
)
// $BC5419: [8bit] Level Flag - Temple of Doom - The Temple of Kali Artifact Count
achievement(
    "Temple of Kali Idols",
    "Collect all 10 artifact pieces in The Temple of Kali",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5419)) < 10 &&
        measured(byte(0xbc5419) == 10)
)
// $BC5429: [8bit] Level Flag - Temple of Doom - Free the Slaves Artifact Count
achievement(
    "Free Idols",
    "Collect all 10 artifact pieces in Free the Slaves",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5429)) < 10 &&
        measured(byte(0xbc5429) == 10)
)
// $BC5439: [8bit] Level Flag - Temple of Doom - Escape the Mines Artifact Count
achievement(
    "Escape the Mines Idols",
    "Collect all 10 artifact pieces in Temple of Doom",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5439)) < 10 &&
        measured(byte(0xbc5439) == 10)
)
// $BC5449: [8bit] Level Flag - Temple of Doom - Battle on the Bridge Artifact Count
achievement(
    "Battle on the Bridge Idols",
    "Collect all 10 artifact pieces in Battle on the Bridge",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5449)) < 10 &&
        measured(byte(0xbc5449) == 10)
)
// $BC53F5: [8bit] Level Flag - Temple of Doom - Shanghai Showdown True Adventurer
//          00=No
//          01=Yes
// $BC5405: [8bit] Level Flag - Temple of Doom - Pankot Secrets True Adventurer
//          00=No
//          01=Yes
// $BC5415: [8bit] Level Flag - Temple of Doom - The Temple of Kali True Adventurer
//          00=No
//          01=Yes
// $BC5425: [8bit] Level Flag - Temple of Doom - Free the Slaves True Adventurer
//          00=No
//          01=Yes
// $BC5435: [8bit] Level Flag - Temple of Doom - Escape the Mines True Adventurer
//          00=No
//          01=Yes
// $BC5445: [8bit] Level Flag - Temple of Doom - Battle on the Bridge True Adventurer
//          00=No
//          01=Yes
function tod_ta_sum() =>
    byte(0xbc53f5) +
    byte(0xbc5405) +
    byte(0xbc5415) +
    byte(0xbc5425) +
    byte(0xbc5435) +
    byte(0xbc5445)
achievement(
    "Doomed for Studs!",
    "Obtain True Adventurer all six times in Temple of Doom",
    points=5,
    trigger=
        templelost_load() &&
        prev(tod_ta_sum()) == 5 &&
        measured(tod_ta_sum() == 6)
)
// $BC53FB: [8bit] Level Flag - Temple of Doom - Shanghai Showdown Red Parcel Collected
//          00=No
//          01=Yes
// $BC540B: [8bit] Level Flag - Temple of Doom - Pankot Secrets Red Parcel Collected
//          00=No
//          01=Yes
// $BC541B: [8bit] Level Flag - Temple of Doom - The Temple of Kali Red Parcel Collected
//          00=No
//          01=Yes
// $BC542B: [8bit] Level Flag - Temple of Doom - Free the Slaves Red Parcel Collected
//          00=No
//          01=Yes
// $BC543B: [8bit] Level Flag - Temple of Doom - Escape the Mines Red Parcel Collected
//          00=No
//          01=Yes
// $BC544B: [8bit] Level Flag - Temple of Doom - Battle on the Bridge Red Parcel Collected
//          00=No
//          01=Yes
function tod_parcel_sum() =>
    byte(0xbc53fb) +
    byte(0xbc540b) +
    byte(0xbc541b) +
    byte(0xbc542b) +
    byte(0xbc543b) +
    byte(0xbc544b)
achievement(
    "Doomed Mail Delivery",
    "Collect all six red parcels in The Temple of Doom",
    points=5,
    trigger=
        templelost_load() &&
        prev(tod_parcel_sum()) == 5 &&
        measured(tod_parcel_sum() == 6)
)
//================================================================================================
//COLLECTION - AREA 3
// $BC5469: [8bit] Level Flag - The Last Crusade - The Hunt for Sir Richard Artifact Count
achievement(
    "Hunting Down Idols",
    "Collect all 10 artifact pieces in The Hunt for Sir Richard",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5469)) < 10 &&
        measured(byte(0xbc5469) == 10)
)
// $BC5479: [8bit] Level Flag - The Last Crusade - Castle Rescue Artifact Count
achievement(
    "Castle Rescue Idols",
    "Collect all 10 artifact pieces in Castle Rescue",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5479)) < 10 &&
        measured(byte(0xbc5479) == 10)
)
// $BC5489: [8bit] Level Flag - The Last Crusade - Motorcycle Escape Artifact Count
achievement(
    "Motorcycle Escape Idols",
    "Collect all 10 artifact pieces in Motorcycle Escape",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5489)) < 10 &&
        measured(byte(0xbc5489) == 10)
)
// $BC5499: [8bit] Level Flag - The Last Crusade - Trouble in the Sky Artifact Count
achievement(
    "Trouble in the Sky Idols",
    "Collect all 10 artifact pieces in Trouble in the Sky",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5499)) < 10 &&
        measured(byte(0xbc5499) == 10)
)
// $BC54A9: [8bit] Level Flag - The Last Crusade - Desert Ambush Artifact Count
achievement(
    "Desert Ambush Idols",
    "Collect all 10 artifact pieces in Desert Ambush",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc54a9)) < 10 &&
        measured(byte(0xbc54a9) == 10)
)
// $BC54B9: [8bit] Level Flag - The Last Crusade - Temple of the Grail Artifact Count
achievement(
    "Temple of the Grail Idols",
    "Collect all 10 artifact pieces in Temple of the Grail",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc54b9)) < 10 &&
        measured(byte(0xbc54b9) == 10)
)
// $BC5465: [8bit] Level Flag - The Last Crusade - The Hunt for Sir Richard True Adventurer
//          00=No
//          01=Yes
// $BC5475: [8bit] Level Flag - The Last Crusade - Castle Rescue True Adventurer
//          00=No
//          01=Yes
// $BC5485: [8bit] Level Flag - The Last Crusade - Motorcycle Escape True Adventurer
//          00=No
//          01=Yes
// $BC5495: [8bit] Level Flag - The Last Crusade - Trouble in the Sky True Adventurer
//          00=No
//          01=Yes
// $BC54A5: [8bit] Level Flag - The Last Crusade - Desert Ambush True Adventurer
//          00=No
//          01=Yes
// $BC54B5: [8bit] Level Flag - The Last Crusade - Temple of the Grail True Adventurer
//          00=No
//          01=Yes
function tlc_ta_sum() =>
    byte(0xbc5465) +
    byte(0xbc5475) +
    byte(0xbc5485) +
    byte(0xbc5495) +
    byte(0xbc54a5) +
    byte(0xbc54b5)
achievement(
    "Crusading for Studs!",
    "Obtain True Adventurer all six times in The Last Crusade",
    points=5,
    trigger=
        templelost_load() &&
        prev(tlc_ta_sum()) == 5 &&
        measured(tlc_ta_sum() == 6)
)
// $BC546B: [8bit] Level Flag - The Last Crusade - The Hunt for Sir Richard Red Parcel Collected
//          00=No
//          01=Yes
// $BC547B: [8bit] Level Flag - The Last Crusade - Castle Rescue Red Parcel Collected
//          00=No
//          01=Yes
// $BC548B: [8bit] Level Flag - The Last Crusade - Motorcycle Escape Red Parcel Collected
//          00=No
//          01=Yes
// $BC549B: [8bit] Level Flag - The Last Crusade - Trouble in the Sky Red Parcel Collected
//          00=No
//          01=Yes
// $BC54AB: [8bit] Level Flag - The Last Crusade - Desert Ambush Red Parcel Collected
//          00=No
//          01=Yes
// $BC54BB: [8bit] Level Flag - The Last Crusade - Temple of the Grail Red Parcel Collected
//          00=No
//          01=Yes
function tlc_parcel_sum() =>
    byte(0xbc546b) +
    byte(0xbc547b) +
    byte(0xbc548b) +
    byte(0xbc549b) +
    byte(0xbc54ab) +
    byte(0xbc54bb)
achievement(
    "Crusading Mail Delivery",
    "Collect all six red parcels in The Last Crusade",
    points=5,
    trigger=
        templelost_load() &&
        prev(tlc_parcel_sum()) == 5 &&
        measured(tlc_parcel_sum() == 6)
)
//================================================================================================
//CHARACTERS:
// $BC5848: [NBIt] Character Purchased Flags
//          Bit0=Hovitos Tribesman
//          Bit1=Barranca
//          Bit2=Belloq (Jungle)
//          Bit3=Jungle Guide
//          Bit4=Major Toht
//          Bit5=Colonel Dietrich
//          Bit6=Enemy Guard (Mountains)
//          Bit7=Bazooka Trooper (Raiders)
// $BC5849: [NBit] Character Purchased Flags
//          Bit0=Sherpa Brawler
//          Bit1=Sherpa Gunner
//          Bit2=Masked Bandit
//          Bit3=Bandit Swordsman
//          Bit4=Enemy Soldier (Desert)
//          Bit5=Enemy Officer
//          Bit6=Monkey Man
//          Bit7=Indiana Jones (Desert Disguise)
// $BC584A: [NBit] Character Purchased Flags
//          Bit0=Belloq
//          Bit1=Enemy Officer (Desert)
//          Bit2=Bandit
//          Bit3=Enemy Boxer
//          Bit4=Captain Katanga
//          Bit5=First Mate
//          Bit6=Belloq (Robes)
//          Bit7=Enemy Guard
// $BC584B: [NBit] Character Purchased Flags
//          Bit0=Kao Kan
//          Bit1=Wu Han
//          Bit2=Lao Che
//          Bit3=Chen
//          Bit4=Dancing Girl
//          Bit5=Maharajah
//          Bit6=Pankot Assassin
//          Bi7=Pankot Guard
// $BC584C: [NBit] Character Purchased Flags
//          Bit0=Village Elder
//          Bit1=Village Dignitary
//          Bit2=Willie (Dinner Suit)
//          Bit3=Willie (Pajamas)
//          Bit4=Chatter Lal
//          Bit5=Chatter Lal (Thuggee)
//          Bit6=Thuggee Acolyte
//          Bit7=Thuggee
// $BC584D: [NBit] Character Purchased Flags
//          Bit0=Slave Child
//          Bit1=Thuggee Slave Driver
//          Bit2=Mola Ram
//          Bit3=British Officer
//          Bit4=British Soldier
//          Bit5=British Commander
//          Bit6=Kazim
//          Bit7=Enemy Butler
// $BC584E: [NBit] Character Purchased Flags
//          Bit0=Enemy Radio Operator
//          Bit1=Bazooka Trooper (Crusade)
//          Bit2=Indiana Jones (Officer)
//          Bit3=Elsa (Officer)
//          Bit4=Colonel Vogel
//          Bit5=Enemy Pilot
//          Bit6=Kazim (Desert)
//          Bit7=Elsa (Desert)
// $BC584F: [NBit] Character Purchased Flags
//          Bit0=Donovan
//          Bit1=Grail Knight
//          Bit2=Fedora
//          Bit3=Han Solo
function character_sum() =>
    bitcount(0xbc5848) +
    bitcount(0xbc5849) +
    bitcount(0xbc584a) +
    bitcount(0xbc584b) +
    bitcount(0xbc584c) +
    bitcount(0xbc584d) +
    bitcount(0xbc584e) +
    bit0(0xbc584f) +
    bit1(0xbc584f) +
    bit2(0xbc584f) +
    bit3(0xbc584f)
// $BC5387: [8bit] Level Flag - Radiers of the Lost Ark - The Lost Temple Free Play Available
//          00=No
//          01=Yes
function templelost_load() => prev(byte(0xbc5387)) == 1
achievement(
    "Big Bad Purchases",
    "Purchase every available character from the shop",
    points=10,
    trigger=
        templelost_load() &&
        prev(character_sum()) == 59 &&
        measured(character_sum() == 60)
)
// $BC586C: [NBit] Red Parcels Bought Flags
//          Bit1=Secret Characters
//          Bit2=Fertilizer
//          Bit3=Disguises
//          Bit4=Silhouettes
//          Bi5=Beep Beep
//          Bit6=Ice Rink
//          Bit7=Fast Fix
// $BC586D: [NBit] Red Parcels Bought Flags
//          Bit0=Super Slap
//          Bit1=Treasure x2
//          Bit2=Fast Dig
//          Bit3=Fast Build
//          Bit4=Artifact Detector
//          Bit5=Treasure x4
//          Bit6=Poo Treasure
//          Bit7=Super Scream
// $BC586E: [NBit] Red Parcels Bought Flags
//          Bit0=Character Treasure
//          Bit1=Treasure x6
//          Bit2=Regenerate Hearts
//          Bit3=Parcel Detector
//          Bit4=Disarm Enemies
//          Bit5=Treasure x8
//          Bit6=Treasure Magnet
//          Bit7=Treasure x10
// $BC586F: [NBit] Red Parcels Bought Flags
//          Bit0=Invincibility
function parcel_sum() =>
    bitcount(0xbc586c) +
    bitcount(0xbc586d) +
    bitcount(0xbc586e) +
    bit0(0xbc586f)
achievement(
    "Extreme Mailman",
    "Purchase all Red Parcel extras from the shop",
    points=5,
    trigger=
        templelost_load() &&
        prev(parcel_sum()) == 24 &&
        measured(parcel_sum() == 25)
)

// $BC5AC4: [NBit] Hidden Star Wars Characters Found Flags
//          Bit0=C3PO
//          Bit1=Luke Skywalker
//          Bit2=Chewbaca
//          Bit3=R2D2
//          Bit4=Princess Leia
achievement(
    "A Hidden Yellow Robot",
    "Find a special gold robot not from Indiana Jones!",
    points=5,
    trigger=
        templelost_load() &&
         bit0(0xbc5ac4)  > prev(bit0(0xbc5ac4))
)
achievement(
    "A Frozen Jedi",
    "Find a special Jedi hidden in some ice!",
    points=5,
    trigger=
        templelost_load() &&
        bit1(0xbc5ac4) > prev(bit1(0xbc5ac4))
)
achievement(
    "A Furry Friend",
    "Find Chewbacca!",
    points=5,
    trigger=
        templelost_load() &&
        bit2(0xbc5ac4) > prev(bit2(0xbc5ac4))
)
achievement(
    "Mechanically Friendly",
    "Find R2D2",
    points=5,
    trigger=
        templelost_load() &&
        bit3(0xbc5ac4) > prev(bit3(0xbc5ac4))
)
achievement(
    "Our Princess is Here!",
    "Find a hidden princess to rescue!",
    points=5,
    trigger=
        templelost_load() &&
        bit4(0xbc5ac4) > prev(bit4(0xbc5ac4))
)
// $BC5AC6: [8bit] Han Solo Purchasable
//          00=No
//          01=Yes
achievement(
    "The Final Jedi",
    "Purchase Han Solo from the shop",
    points=5,
    trigger=
        templelost_load() &&
        prev(byte(0xbc5ac6)) == 1 &&
         bit3(0xbc584f) > prev(bit3(0xbc584f))
)

// $BC5880: [32bit] Lifetime Studs
// $BC596C: [8bit] Character Flag - Indiana Jones
//          Bit0=Unlocked In Free Play
// $BC596D: [8bit] Character Flag - Han Solo
//          Bit0=Unlocked In Free Play
// $BC596E: [8bit] Character Flag - Enemy Soldier (Desert)
//          Bit0=Unlocked In Free Play
// $BC596F: [8bit] Character Flag - Marion
//          Bit0=Unlocked In Free Play
// $BC5970: [8bit] Character Flag - Willie
//          Bit0=Unlocked In Free Play
// $BC5971: [8bit] Character Flag - Elsa (Desert)
//          Bit0=Unlocked In Free Play
// $BC5972: [8bit] Character Flag - British Soldier
//          Bit0=Unlocked In Free Play
// $BC5973: [8bit] Character Flag - Donovan
//          Bit0=Unlocked In Free Play
// $BC5974: [8bit] Character Flag - Thuggee
//          Bit0=Unlocked In Free Play
// $BC5975: [8bit] Character Flag - Belloq (Jungle)
//          Bit0=Unlocked In Free Play
// $BC5976: [8bit] Character Flag - Short Round
//          Bit0=Unlocked In Free Play
// $BC5977: [8bit] Character Flag - Kazim
//          Bit0=Unlocked In Free Play
// $BC5979: [8bit] Character Flag - Lao Che
//          Bit0=Unlocked In Free Play
// $BC597B: [8bit] Character Flag - Masked Bandit
//          Bit0=Unlocked In Free Play
// $BC597C: [8bit] Character Flag - Bandit Swordsman
//          Bit0=Unlocked In Free Play
// $BC597D: [8bit] Character Flag - Monkey Man
//          Bit0=Unlocked In Free Play
// $BC597E: [8bit] Character Flag - Bandit
//          Bit0=Unlocked In Free Play
// $BC5985: [8bit] Character Flag - British Officer
//          Bit0=Unlocked In Free Play
// $BC5986: [8bit] Character Flag - British Commander
//          Bit0=Unlocked In Free Play
// $BC5987: [8bit] Character Flag - Captain Katanga
//          Bit0=Unlocked In Free Play
// $BC5989: [8bit] Character Flag - Dancing Girl
//          Bit0=Unlocked In Free Play
// $BC598E: [8bit] Character Flag - Chatter Lal
//          Bit0=Unlocked In Free Play
// $BC598F: [8bit] Character Flag - Chatter Lal (Thuggee)
//          Bit0=Unlocked In Free Play
// $BC5990: [8bit] Character Flag - Elsa
//          Bit0=Unlocked In Free Play
// $BC5991: [8bit] Character Flag - Elsa (Officer)
//          Bit0=Unlocked In Free Play
// $BC5992: [8bit] Character Flag - Colonel Vogel
//          Bit0=Unlocked In Free Play
// $BC5994: [8bit] Character Flag - Enemy Radio Operator
//          Bit0=Unlocked In Free Play
// $BC5995: [8bit] Character Flag - Bazooka Trooper (Crusade)
//          Bit0=Unlocked In Free Play
// $BC5996: [8bit] Character Flag - Bazooka Trooper (Raiders)
//          Bit0=Unlocked In Free Play
// $BC5998: [8bit] Character Flag - Enemy Pilot
//          Bit0=Unlocked In Free Play
// $BC5999: [8bit] Character Flag - Enemy Guard
//          Bit0=Unlocked In Free Play
// $BC599C: [8bit] Character Flag - Enemy Guard (Mountains)
//          Bit0=Unlocked In Free Play
// $BC599D: [8bit] Character Flag - Enemy Officer
//          Bit0=Unlocked In Free Play
// $BC599F: [8bit] Character Flag - Enemy Officer (Desert)
//          Bit0=Unlocked In Free Play
// $BC59A1: [8bit] Character Flag - First Mate
//          Bit0=Unlocked In Free Play
// $BC59A2: [8bit] Character Flag - Barranca
//          Bit0=Unlocked In Free Play
// $BC59A3: [8bit] Character Flag - Brody
//          Bit0=Unlocked In Free Play
// $BC59A5: [8bit] Character Flag - Belloq
//          Bit0=Unlocked In Free Play
// $BC59A6: [8bit] Character Flag - Belloq (Robes)
//          Bit0=Unlocked In Free Play
// $BC59A7: [8bit] Character Flag - Enemy Boxer
//          Bit0=Unlocked In Free Play
// $BC59A8: [8bit] Character Flag - Enemy Butler
//          Bit0=Unlocked In Free Play
// $BC59A9: [8bit] Character Flag - Colonel Dietrich
//          Bit0=Unlocked In Free Play
// $BC59AA: [8bit] Character Flag - Boy Scout
//          Bit0=Unlocked In Free Play
// $BC59AB: [8bit] Character Flag - Jock
//          Bit0=Unlocked In Free Play
// $BC59B0: [8bit] Character Flag - Grail Knight
//          Bit0=Unlocked In Free Play
// $BC59B4: [8bit] Character Flag - Hovitos Tribesman
//          Bit0=Unlocked In Free Play
// $BC59B8: [8bit] Character Flag - Indiana Jones (Desert Disguise)
//          Bit0=Unlocked In Free Play
// $BC59B9: [8bit] Character Flag - Indiana Jones (Desert)
//          Bit0=Unlocked In Free Play
// $BC59BA: [8bit] Character Flag - Fedora
//          Bit0=Unlocked In Free Play
// $BC59BB: [8bit] Character Flag - Indiana Jones (Dinner Suit)
//          Bit0=Unlocked In Free Play
// $BC59BC: [8bit] Character Flag - Indiana Jones (Army Disguise)
//          Bit0=Unlocked In Free Play
// $BC59BD: [8bit] Character Flag - Indiana Jones (Professor)
//          Bit0=Unlocked In Free Play
// $BC59BE: [8bit] Character Flag - Indiana Jones (Kali)
//          Bit0=Unlocked In Free Play
// $BC59BF: [8bit] Character Flag - Indiana Jones (Officer)
//          Bit0=Unlocked In Free Play
// $BC59C0: [8bit] Character Flag - Jungle Guide
//          Bit0=Unlocked In Free Play
// $BC59C1: [8bit] Character Flag - Young Indy
//          Bit0=Unlocked In Free Play
// $BC59C5: [8bit] Character Flag - Kazim (Desert)
//          Bit0=Unlocked In Free Play
// $BC59C8: [8bit] Character Flag - Satipo
//          Bit0=Unlocked In Free Play
// $BC59CC: [8bit] Character Flag - Sherpa Brawler
//          Bit0=Unlocked In Free Play
// $BC59CD: [8bit] Character Flag - Sherpa Gunner
//          Bit0=Unlocked In Free Play
// $BC59D2: [8bit] Character Flag - Sallah (Desert)
//          Bit0=Unlocked In Free Play
// $BC59D3: [8bit] Character Flag - Sallah (Fez)
//          Bit0=Unlocked In Free Play
// $BC59D9: [8bit] Character Flag - Maharajah
//          Bit0=Unlocked In Free Play
// $BC59DB: [8bit] Character Flag - Maria (Night Gown)
//          Bit0=Unlocked In Free Play
// $BC59DC: [8bit] Character Flag - Marion (Cairo)
//          Bit0=Unlocked In Free Play
// $BC59DD: [8bit] Character Flag - Marion (Evening Dress)
//          Bit0=Unlocked In Free Play
// $BC59E1: [8bit] Character Flag - Willie (Dinner Suit)
//          Bit0=Unlocked In Free Play
// $BC59E2: [8bit] Character Flag - Willie (Pajamas)
//          Bit0=Unlocked In Free Play
// $BC59E3: [8bit] Character Flag - Willie (Ceremony)
//          Bit0=Unlocked In Free Play
// $BC59E4: [8bit] Character Flag - Willie (Evening Dress)
//          Bit0=Unlocked In Free Play
// $BC59E5: [8bit] Character Flag - Major Toht
//          Bit0=Unlocked In Free Play
// $BC59E7: [8bit] Character Flag - Mola Ram
//          Bit0=Unlocked In Free Play
// $BC59E8: [8bit] Character Flag - Kao Kan
//          Bit0=Unlocked In Free Play
// $BC59F2: [8bit] Character Flag - Wu Han
//          Bit0=Unlocked In Free Play
// $BC59F3: [8bit] Character Flag - Chen
//          Bit0=Unlocked In Free Play
// $BC59F5: [8bit] Character Flag - Village Elder
//          Bit0=Unlocked In Free Play
// $BC59F9: [8bit] Character Flag - Village Dignitary
//          Bit0=Unlocked In Free Play
// $BC59FA: [8bit] Character Flag - Henry Jones
//          Bit0=Unlocked In Free Play
// $BC59FC: [8bit] Character Flag - Slave Child
//          Bit0=Unlocked In Free Play
// $BC59FD: [8bit] Character Flag - Pankot Assassin
//          Bit0=Unlocked In Free Play
// $BC59FE: [8bit] Character Flag - Pankot Guard
//          Bit0=Unlocked In Free Play
// $BC59FF: [8bit] Character Flag - Thuggee Acolyte
//          Bit0=Unlocked In Free Play
// $BC5A01: [8bit] Character Flag - Thuggee Slave Driver
//          Bit0=Unlocked In Free Play
// $BC5A47: [8bit] Character Flag - Stranger 1
//          Bit0=Unlocked In Free Play
// $BC5A48: [8bit] Character Flag - Stranger 2
//          Bit0=Unlocked In Free Play
// $BC5F18: [32bit] Studs (In Level)
// $DB3C4C: [8bit] Player 1 - Character ID
// $DB3C63: [8bit] Player 1 - Hearts
// $DB521C: [8bit] Player 2 - Character ID
// $DB5233: [8bit] Player 2 - Hearts
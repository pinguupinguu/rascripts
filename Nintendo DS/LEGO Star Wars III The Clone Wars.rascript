// LEGO Star Wars III: The Clone Wars
// #ID = 15355

// $16D948: [8bit] Level ID?
// $16EC84: [32bit] Studs - Graphics
// $16ECEC: [8bit] Minikits - Level 1




// $17107D: [NBit] Level Flags
//          Bit0=Ambush Story Available (Default)
function load_protection() => prev(bit0(0x17107d)) == 1 //Prevent flags from flipping on load. This one is the first active flag for the level.
// $1703BC: Ingame Cheats activated [4 Bytes]
//          --- Bit3 | All Characters unlocked
//          --- Bit4 | All Levels unlocked
//          --- Bit5 | All Extras unlocked
//          --- Bit6 | All Minikits unlocked
// $1703BD: --- Bit7 | Cash1 Cheat activated (effect unknown)
// $1703BE: --- Bit0 | Cash2 Cheat activated (effect unknown)
function debug_inactive() => all_of(range(0x1703bc, 0x1703be), b => byte(b) == 0)
function profile_protection() => dword(0x16568c) == prev(dword(0x16568c))
extras_blacklist = [
    bit1(0x18bd68), //Infinite Missiles
    bit5(0x18bd68), //One Shot
    bit0(0x18bd69), //Regenerate Hearts
    bit3(0x18bd69) //Invincibility    
]
function cheat_blocks() => all_of(extras_blacklist, b => unless(once(b == 1)))
function utility_protections() => debug_inactive() && profile_protection() && load_protection() && cheat_blocks() //Reference for all achievements for proper protections.
function raw_utility_protections() => debug_inactive() && profile_protection() && load_protection()
function progression(target) => utility_protections() && target > prev(target)
// $17107D: [NBit] Level Flags
//          Bit0=Ambush Story Available (Default)
//          Bit1=Ambush Free Play Available
achievement(
    "Surprise Attack",
    "Complete Ambush on story mode",
    points=5,
    trigger=
        progression(bit1(0x17107d))
)
//          Bit5=Destroy Malevolence Story Available
//          Bit6=Destroy Malevolence Free Play Available
achievement(
    "Taking Care of Business",
    "Complete Destroy Malevolence on story mode",
    points=5,
    trigger=
        progression(bit6(0x17107d))
    
)
// $17107E: [NBit] Level Flags
//          Bit2=Rookies Available
//          Bit3=Rookies Free Play Available
achievement(
    "Beginner's Times",
    "Complete Rookies on story mode",
    points=5,
    trigger=
        progression(bit3(0x17107e))
)
//          Bit7=Duel of the Droids Available
// $17107F: [NBit] Level Flags
//          Bit0=Duel of the Droids Free Play
achievement(
    "Droid Arena",
    "Complete Duel of the Droids on story mode",
    points=5,
    trigger=
        progression(bit0(0x17107f))
)
//          Bit4=Lair of Grievous
//          Bit5=Lair of Grievous Free Play
achievement(
    "A Dark Lair",
    "Complete Lair of Grievous on story mode",
    points=5,
    trigger=
        progression(bit5(0x17107f))
)
// $171080: [NBit] Level Flags
//          Bit1=Gungan General
//          Bit2=Gungan General Free Play (FP)
achievement(
    "Prison Rescue",
    "Complete Gungan General on story mode",
    points=5,
    trigger=
        progression(bit2(0x171080))
)
//          Bit6=Jedi Crash
//          Bit7=Jedi Crash FP
achievement(
    "Change of Plans",
    "Complete Jedi Crash on story mode",
    points=5,
    trigger=
        progression(bit7(0x171080))
)
// $171081: [NBit] Level Flags
//          Bit3=Hidden Enemy
//          Bit4=Hidden Enemy FP
achievement(
    "Finding a Traitor",
    "Complete Hidden Enemy on story mode",
    points=5,
    trigger=
        progression(bit4(0x171081))
)
// $171082: [NBit] Level Flags
//          Bit0=Blue Shadow Virus
//          Bit1=Blue Shadow Virus FP
achievement(
    "A Viral Disaster",
    "Complete Blue Shadow Virus on story mode",
    points=5,
    trigger=
        progression(bit1(0x171082))
)
//          Bit5=Storm Over Ryloth
//          Bit6=Storm Over Ryloth FP
achievement(
    "Impending Weather",
    "Complete Storm Over Ryloth on story mode",
    points=10,
    trigger=
        progression(bit6(0x171082))
)
// $171083: [NBit] Level Flags
//          Bit2=Liberty on Ryloth
//          Bit3=Liberty on Ryloth FP
achievement(
    "Freedom At Last",
    "Complete Liberty on Ryloth on story mode",
    points=10,
    trigger=
        progression(bit3(0x171083))
)
//          Bit7=Weapons Factory
// $171084: [NBit] Level Flags
//          Bit0=Weapons Factory FP
achievement(
    "Enemy Sabotage",
    "Complete Weapons Factory on story mode",
    points=10,
    trigger=
        progression(bit0(0x171084))
)
//          Bit4=Legacy of Terror
//          Bit5=Legacy of Terror FP
achievement(
    "An Undead Victory",
    "Complete Legacy of Terror on story mode",
    points=25,
    trigger=
        progression(bit5(0x171084))
)
// $171086: [17 bytes] Minikit Flags Array
//          Stored in Level Order:
//          Ambush 1-10
//          Destroy Malevolence 1-10
//          Rookies 1-10
//          Duel of the Droids 1-10
//          Lair of Grievous 1-10
//          Gungan General 1-10
//          Jedi Crash 1-10
//          Hidden Enemy 1-10
//          Blue Shadow Virus 1-10
//          Storm Over Ryloth 1-10
//          Liberty on Ryloth 1-10
//          Weapons Factory 1-10
//          Legacy of Terror 1-10
//          All 8 bits used except on address 0x171096 where the table ends - only Bit0&Bit1 utilized.
level_order = {
    0:"Ambush",
    1:"Destroy Malevolence",
    2:"Rookies",
    3:"Duel of the Droids",
    4:"Lair of Grievous",
    5:"Gungan General",
    6:"Jedi Crash",
    7:"Hidden Enemy",
    8:"Blue Shadow Virus",
    9:"Storm Over Ryloth",
    10:"Liberty on Ryloth",
    11:"Weapons Factory",
    12:"Legacy of Terror"
}
minikits = [
    bit0(0x171086),
    bit1(0x171086),
    bit2(0x171086),
    bit3(0x171086),
    bit4(0x171086),
    bit5(0x171086),
    bit6(0x171086),
    bit7(0x171086),
    bit0(0x171087),
    bit1(0x171087),
    bit2(0x171087),
    bit3(0x171087),
    bit4(0x171087),
    bit5(0x171087),
    bit6(0x171087),
    bit7(0x171087),
    bit0(0x171088),
    bit1(0x171088),
    bit2(0x171088),
    bit3(0x171088),
    bit4(0x171088),
    bit5(0x171088),
    bit6(0x171088),
    bit7(0x171088),
    bit0(0x171089),
    bit1(0x171089),
    bit2(0x171089),
    bit3(0x171089),
    bit4(0x171089),
    bit5(0x171089),
    bit6(0x171089),
    bit7(0x171089),
    bit0(0x17108A),
    bit1(0x17108A),
    bit2(0x17108A),
    bit3(0x17108A),
    bit4(0x17108A),
    bit5(0x17108A),
    bit6(0x17108A),
    bit7(0x17108A),
    bit0(0x17108B),
    bit1(0x17108B),
    bit2(0x17108B),
    bit3(0x17108B),
    bit4(0x17108B),
    bit5(0x17108B),
    bit6(0x17108B),
    bit7(0x17108B),
    bit0(0x17108C),
    bit1(0x17108C),
    bit2(0x17108C),
    bit3(0x17108C),
    bit4(0x17108C),
    bit5(0x17108C),
    bit6(0x17108C),
    bit7(0x17108C),
    bit0(0x17108D),
    bit1(0x17108D),
    bit2(0x17108D),
    bit3(0x17108D),
    bit4(0x17108D),
    bit5(0x17108D),
    bit6(0x17108D),
    bit7(0x17108D),
    bit0(0x17108E),
    bit1(0x17108E),
    bit2(0x17108E),
    bit3(0x17108E),
    bit4(0x17108E),
    bit5(0x17108E),
    bit6(0x17108E),
    bit7(0x17108E),
    bit0(0x17108F),
    bit1(0x17108F),
    bit2(0x17108F),
    bit3(0x17108F),
    bit4(0x17108F),
    bit5(0x17108F),
    bit6(0x17108F),
    bit7(0x17108F),
    bit0(0x171090),
    bit1(0x171090),
    bit2(0x171090),
    bit3(0x171090),
    bit4(0x171090),
    bit5(0x171090),
    bit6(0x171090),
    bit7(0x171090),
    bit0(0x171091),
    bit1(0x171091),
    bit2(0x171091),
    bit3(0x171091),
    bit4(0x171091),
    bit5(0x171091),
    bit6(0x171091),
    bit7(0x171091),
    bit0(0x171092),
    bit1(0x171092),
    bit2(0x171092),
    bit3(0x171092),
    bit4(0x171092),
    bit5(0x171092),
    bit6(0x171092),
    bit7(0x171092),
    bit0(0x171093),
    bit1(0x171093),
    bit2(0x171093),
    bit3(0x171093),
    bit4(0x171093),
    bit5(0x171093),
    bit6(0x171093),
    bit7(0x171093),
    bit0(0x171094),
    bit1(0x171094),
    bit2(0x171094),
    bit3(0x171094),
    bit4(0x171094),
    bit5(0x171094),
    bit6(0x171094),
    bit7(0x171094),
    bit0(0x171095),
    bit1(0x171095),
    bit2(0x171095),
    bit3(0x171095),
    bit4(0x171095),
    bit5(0x171095),
    bit6(0x171095),
    bit7(0x171095),
    bit0(0x171096),
    bit1(0x171096)
]
for i in range(0, 12){
    my_array = 0
    //Remap inputs of array from bigger one
    for j in range(i * 10, i * 10 + 9){
        my_array = my_array + minikits[j]
    }
    achievement(
        level_order[i] + " Collector",
        "Collect all 10 minikits in " + level_order[i],
        points=10,
        trigger=
            utility_protections() &&
            prev(my_array) == 9 &&
            measured(my_array == 10)
    )
}
// $1710A4: [NBit] Red Brick Flags
//          Bit0=Unlock Minigames
//          Bit1=Infinite Missiles
//          Bit2=Score x2
//          Bit3=Funny Jump
//          Bit4=Auto Pickup
//          Bit5=One Shot
//          Bit6=Score x4
//          Bit7=Fast Build
// $1710A5: [NBit] Red Brick Flags
//          Bit0=Regenerate Hearts
//          Bit1=Score x6
//          Bit2=Score x10
//          Bit3=Invincibility
//          Bit4=Score x8
function red_brick_flags() => 
    bitcount(0x1710A4) + 
    bit0(0x1710A5) +
    bit1(0x1710A5) +
    bit2(0x1710A5) +
    bit3(0x1710A5) + 
    bit4(0x1710A5)
achievement(
    "Extra Bricked",
    "Collect all 13 red bricks across the levels",
    points=10,
    trigger=
        raw_utility_protections() &&
        prev(red_brick_flags()) == 12 &&
        measured(red_brick_flags() == 13)
)
true_jedi_flags = [
    bit3(0x17107D),
    bit4(0x17107D),
    bit0(0x17107E),
    bit1(0x17107E),
    bit5(0x17107E),
    bit6(0x17107E),
    bit2(0x17107F),
    bit3(0x17107F),
    bit7(0x17107F),
    bit0(0x171080),
    bit4(0x171080),
    bit5(0x171080),
    bit1(0x171081),
    bit2(0x171081),
    bit6(0x171081),
    bit7(0x171081),
    bit3(0x171082),
    bit4(0x171082),
    bit0(0x171083),
    bit1(0x171083),
    bit5(0x171083),
    bit6(0x171083),
    bit2(0x171084),
    bit3(0x171084),
    bit7(0x171084),
    bit0(0x171085)
]

name_idx = 0
start_id = 344394
for i in range(0, 25, 2){
    achievement(
       level_order[name_idx] + ": Jedi Status",
       "Obtain True Jedi in both Story and Free Play on " + level_order[name_idx],
       points=5,
       id =start_id,
       trigger=
           utility_protections() &&
           prev(true_jedi_flags[i] + true_jedi_flags[i + 1]) == 1 &&
           measured(true_jedi_flags[i] + true_jedi_flags[i + 1] == 2) &&
           byte(0) == 1
    )
    name_idx = name_idx + 1   
    start_id = start_id + 1
}

function collectibles(target, sum) =>
    prev(target) == sum - 1 &&
    measured(target == sum) &&
    raw_utility_protections()

// $1710A6: [NBit] Red Brick Flags - Bought
//          Bit0=Unlock Minigames
//          Bit1=Infinite Missiles
//          Bit2=Score x2
//          Bit3=Funny Jump
//          Bit4=Auto Pickup
//          Bit5=One Shot
//          Bit6=Score x4
//          Bit7=Fast Build
// $1710A7: [NBit] Red Brick Flags - Bought
//          Bit0=Regenerate Hearts
//          Bit1=Score x6
//          Bit2=Score x10
//          Bit3=Invincibility
//          Bit4=Score x8
function red_brick_flags_bought() => 
    bitcount(0x1710A6) + 
    bit0(0x1710A7) +
    bit1(0x1710A7) +
    bit2(0x1710A7) +
    bit3(0x1710A7) + 
    bit4(0x1710A7)
achievement(
    "Extra! Extra! Get Ya Red Bricks Here!",
    "Buy all Red Brick extras from the shop",
    points=5,
    trigger=
        collectibles(red_brick_flags_bought(), 13)
)
// $17105D: [3 bytes] Hint Bitflag Array
//          Stored in order, Each bitflag represents a hint unlocked. Total: 23
function hints_bought() =>
    bitcount(0x17105d) +
    bitcount(0x17105e) +
    bit0(0x17105f) +
    bit1(0x17105f) +
    bit2(0x17105f) +
    bit3(0x17105f) +
    bit4(0x17105f) +
    bit5(0x17105f) +
    bit6(0x17105f) 
achievement(
    "Tips for the Force",
    "Buy all hints from the shop",
    points=5,
    trigger=
        collectibles(hints_bought(), 23)
)
function characters_bought() =>
// $171060: [NBit] Character Flags
//          Bit4=Chancellor Palpatine
//          Bit5=Chancellor Palpatine Bought
bit5(0x171060) +
//          Bit6=Hondo Ohnaka
//          Bit7=Hondo Ohnaka Bought
bit7(0x171060) +
// $171061: [NBit] Character Flags
//          Bit2=Battle Droid
//          Bit3=Battle Droid Bought
bit3(0x171061) +
//          Bit6=Senate Commando
//          Bit7=Senate Commando Bought
bit7(0x171061) +
// $171062: [NBit] Character Flags
//          Bit0=Asajj Ventress
//          Bit1=Asajj Ventress Bought
bit1(0x171062) +
//          Bit2=Mace Windu
//          Bit3=Mace Windu Bought
bit3(0x171062) +
//          Bit6=Commander Cody
//          Bit7=Commander Cody Bought
bit7(0x171062) +
// $171063: [Nbit] Character Flags
//          Bit2=Nute Gunray
//          Bit3=Nute Gunray Bought
bit3(0x171063) +
//          Bit4=Ahsoka
//          Bit5=Ahsoka Bought
bit5(0x171063) +
//          Bit6=Super Battle Droid
//          Bit7=Super Battle Droid Bought
bit7(0x171063) +
// $171064: [NBit] Character Flags
//          Bit0=Senate Commando Capt.
//          Bit1=Senate Commando Capt. Bought
bit1(0x171064) +
//          Bit2=Captain Rex
//          Bit3=Captain Rex Bought
bit3(0x171064) +
//          Bit4=General Grievous
//          Bit5=General Grievous Bought
bit5(0x171064) +
//          Bit6=Jango Fett
//          Bit7=Jango Fett Bought
bit7(0x171064) +
// $171065: [NBit] Character Flags
//          Bit0=Senate Guard
//          Bit1=Senate Gaurd Bought
bit1(0x171065) +
//          Bit2=Poggle The Lesser
//          Bit3=Poggle The Lesser Bought
bit3(0x171065) +
//          
//          Bit6=Barriss Offee
//          Bit7=Barriss Offee Bought
bit7(0x171065) +
// $171066: [NBit] Character Flags
//          Bit0=Turko Falso
//          Bit1=Turk Falso Bought
bit1(0x171066) +
//          Bit2=Yoda
//          Bit3=Yoda Bought
bit3(0x171066) +
//          Bit4=Padme
//          Bit5=Padme Bought
bit5(0x171066) +
//          Bit6=Cato Parasitti
//          Bit7=Cato Parasitti Bought
bit7(0x171066) +
// $171067: [NBit] Character Flags
//          Bit0=Cham Syndulla
//          Bit1=Cham Syndulla Bought
bit1(0x171067) +
//          Bit2=Chi Cho
//          Bit3=Chi Cho Bought
bit3(0x171067) +
//          Bit4=Faro Argyus
//          Bit5=Faro Argyus Bought
bit5(0x171067) +
// $171068: [NBit] Character Flags
//          Bit0=Galactic Marine
//          Bit1=Galactic Marine Bought
bit1(0x171068) +
//          Bit2=Bossk
//          Bit3=Bossk Bought
bit3(0x171068) +
//          Bit4=Mar Tuuk
//          Bit5=Mar Tuuk Bought
bit5(0x171068) +
//          Bit6=Numa
//          Bit7=Numa Bought
bit7(0x171068) +
// $171069: [NBit] Character Flags
//          Bit0=Chewbacca
//          Bit1=Chewbacca Bought
bit1(0x171069) +
//          Bit2=Aayla Secura
//          Bit3=Aayla Secura Bought
bit3(0x171069) +
//          Bit6=Riyo Chuchi
//          Bit7=Riyo Chuchi Bought
bit7(0x171069) +
// $17106A: [NBit] Character Flags
//          Bit0=Wullf Yularen
//          Bit1=Wullf Yularen Bought
bit1(0x17106a) +
//          Bit2=MagnaGuard
//          Bit3=MagnaGuard Bought
bit3(0x17106a) +
// $17106B: [NBit] Character Flags
//          Bit0=Onaconda Farr
//          Bit1=Onaconda Farr Bought
bit1(0x17106b) +
//          Bit2=IG-86
//          Bit3=IG-86 Bought
bit3(0x17106b) +
// $17106C: [NBit] Character Flags
//          Bit4=Kit Fisto
//          Bit5=Kit Fisto Bought
bit5(0x17106c) +
// $17106D: [NBit] Character Flags
//          Bit0=R2-D2
//          Bit1=R2-D2 Bought
bit1(0x17106d) +
//          Bit2=TX-20
//          Bit3=TX-20 Bought
bit3(0x17106d) +
//          Bit4=Lok Durd
//          Bit5=Lok Durd Bought
bit5(0x17106d) +
//          Bit6=Dr Nuvo Vindi
//          Bit7=Dr Nuvo Vindi Bought
bit7(0x17106d) +
// $17106E: [NBit] Character Flags
//          Bit0=Wag Too
//          Bit1=Wag Too Bought
bit1(0x17106e) +
//          Bit2=Bolla Ropal
//          Bit3=Bolla Ropal Bought
bit3(0x17106e) +
//          Bit4=Anakin (Snow)
//          Bit5=Anakin (Snow) Bought
bit5(0x17106e) +
//          Bit6=Thi-Sen
//          Bit7=Thi-Sen Bought
bit7(0x17106e) +
// $17106F: [NBit] Character Flags
//          Bit0=Peppi Blow
//          Bit1=Peppi Blow Bought
bit1(0x17106f) +
//          Bit4=Gregar Typho
//          Bit5=Gregar Typho Bought
bit5(0x17106f) +
//          Bit6=Shahan Alama
//          Bit7=Shahan Alama Bought
bit7(0x17106f) +
// $171070: [NBit] Character Flags
//          Bit0=Jar Jar (Bombad)
//          Bit1=Jar Jar (Bombad) Bought
bit1(0x171070) +
//          
//          Bit4=Stealth Trooper
//          Bit5=Stealth Trooper Bought
bit5(0x171070) +
// $171071: [NBit] Character Flags
//          Bit0=Weequay Pirate
//          Bit1=Weequay Pirate Bought
bit1(0x171071) +
//          Bit2=Senator Organa
//          Bit3=Senator Organa Bought
bit3(0x171071) +
// $171072: [NBit] Character Flags
//          Bit0=Clone Trooper Boil (No Helmet)
//          Bit1=Clone Trooper Boil (No Helmet) Bought
bit1(0x171072) +
//          
//          Bit4=Clone Trooper Waxer (No Helmet)
//          Bit5=Clone Trooper Waxer (No Helmet) Bought
bit5(0x171072) +
// $171073: [NBit] Character Flags
//          Bit2=Wat Tambor
//          Bit3=Wat Tambor Bought
bit3(0x171073) +
//          Bit4=Cad Bane
//          Bit5=Cad Bane Bought
bit5(0x171073) +
//          Bit6=Aurra Sing
//          Bit7=Aurra Sing Bought
bit7(0x171073) +
// $171074: [NBit] Character Flags
//          Bit0=Obi-Wan (Snow)
//          Bit1=Obi-Wan (Snow) Bought
bit1(0x171074) +
//          Bit2=Plo Koon
//          Bit3=Plo Koon Bought
bit3(0x171074) +
// $171075: [NBit]
//          Bit0=Robonino
//          Bit1=Robonino Bought
bit1(0x171075) +
//          
//          Bit4=Senator Philo
//          Bit5=Senator Philo Bought
bit5(0x171075) +
//          Bit6=Kashyyyk Clone Trooper
//          Bit7=Kashyyyk Clone Trooper Bought
bit7(0x171075) +
// $171076: [NBit] Character Flags
//          Bit0=Darth Maul
//          Bit1=Darth Maul Bought
bit1(0x171076) +
//          Bit2=Darth Sidious
//          Bit3=Darth Sidious Brought
bit3(0x171076) +
//          Bit4=Darth Vader
//          Bit5=Darth Vader Bought
bit5(0x171076) +
//          Bit6=Ewok
//          Bit7=Ewok Bought
bit7(0x171076) +
// $171077: [NBit] Character Flags
//          Bit0=Gha Nachkt
//          Bit1=Gha Nachkt Bought
bit1(0x171077) +
//          Bit2=Han Solo
//          Bit3=Han Solo Bought
bit3(0x171077) +
//          Bit4=Jawa
//          Bit5=Jawa Bought
bit5(0x171077) +
//          Bit6=Ki-Adi-Mundi
//          Bit7=Ki-Adi-Mundi Bought
bit7(0x171077) +
// $171078: [NBit] Character Flags
//          Bit2=Lando Calrissian
//          Bit3=Lando Calrissian Bought
bit3(0x171078) +
//          Bit4=Princess Leia (Slave)
//          Bit5=Princess Leia (Slave) Bought
bit5(0x171078) +
//          Bit6=Luke Skywalker
//          Bit7=Luke Skywalker Bought
bit7(0x171078) +
// $171079: [NBit] Character Flags
//          Bit0=Old Ben Kenobi
//          Bit1=Old Ben Kenobi Bought
bit1(0x171079) +
//          Bit2=Stormtrooper
//          Bit3=Stormtrooper Bought
bit3(0x171079) +
//          Bit4=Tusken Raider
//          Bit5=Tusken Raider Bought
bit5(0x171079) +
//          Bit6=TIE Fighter Pilot
//          Bit7=TIE Fighter Pilot Bought
bit7(0x171079) +
// $17107A: [NBit] Character Flags
//          Bit0=Clone Trooper Jetpack
//          Bit1=Clone Trooper Jetpack Bought
bit1(0x17107a)
achievement(
    "Character Collection Halfway!",
    "Buy half of the characters from the shop!",
    points=10,
    trigger=
        collectibles(characters_bought(), 76/2)
)
achievement(
    "A Jedi Collector",
    "Buy all of the characters from the shop!",
    points=25,
    trigger=
        collectibles(characters_bought(), 76)
)
volleyball_id = 0x41737472
snowball_id = 0x536e6f77
saberball_id = 0x53616265
shootout_id = 0x56756c74
function minigame_id_pointer() => dword_be(tbyte(0x16edcc) + 0)
//Minigame pointer: 0x16da98
function minigame_target() => dword(tbyte(0x16da98) + 0x250) //Volleyball Wins
function in_minigame() => dword(0x16da98) != 0
function volley_r2d2_score() => byte(tbyte(0x16dac8) + 0x38c)
function volley_enemy_score() => byte(tbyte(0x16dac8) + 0x38d)
achievement(
    "Volleyball Beginner",
    "Win your first game of Astromech Volleyball!",
    points=5,
    id=344643,
    trigger=
        minigame_id_pointer() == volleyball_id &&
        in_minigame() &&
        prev(minigame_target()) == 0 &&
        minigame_target() == 1 &&
        cheat_blocks() &&
        debug_inactive()
)
achievement(
    "Astromech Volleyball Pro",
    "Win a game without letting your opponent score against you!",
    points=10,
    id=344644,
    trigger=
        minigame_id_pointer() == volleyball_id &&
        in_minigame() &&
        volley_enemy_score() == 0 &&
        trigger_when(prev(volley_r2d2_score()) == 4 && volley_r2d2_score() == 5) &&
        cheat_blocks() &&
        debug_inactive()
)
achievement(
    "Technological Ball Expertise",
    "Win five consecutive games of Astromech Volleyball",
    points=10,
    id=344645,
    trigger=
        minigame_id_pointer() == volleyball_id &&
        in_minigame() &&
        prev(minigame_target()) == 4 &&
        measured(minigame_target() == 5) &&
        cheat_blocks() &&
        debug_inactive()
)
function snowball_kos() => byte(tbyte(0x1704a8) +0x58)
achievement(
    "Frozen Balls",
    "Get 10 K.O.s in a game of Snowball Fight!",
    points=3,
    trigger=
        minigame_id_pointer() == snowball_id &&
        in_minigame() &&
        prev(snowball_kos()) == 9 &&
        measured(snowball_kos() == 10) &&
        cheat_blocks() &&
        debug_inactive()
)
achievement(
    "Shoving Snow Balls on Snowmen",
    "Get 20 K.O.s in a game of Snowball Fight!",
    points=3,
    trigger=
        minigame_id_pointer() == snowball_id &&
        in_minigame() &&
        prev(snowball_kos()) == 19 &&
        measured(snowball_kos() == 20) &&
        cheat_blocks() &&
        debug_inactive()
)
achievement(
    "Frozen Solid",
    "Get 30 K.O.s in a game of Snowball Fight!",
    points=3,
    trigger=
        minigame_id_pointer() == snowball_id &&
        in_minigame() &&
        prev(snowball_kos()) == 29 &&
        measured(snowball_kos() == 30) &&
        cheat_blocks() &&
        debug_inactive()
)
function saberball_distance() => dword(tbyte(0x16da98) +0x1a8)
limit_reqs = [2, 4, 8, 10]
achievement(
    "Scoring Above Expectations",
    "Hit a ball in every single score ring in one game of Saberball!",
    points=10,
    trigger=
        unless(minigame_id_pointer() != saberball_id) &&
        never(!in_minigame()) &&
        trigger_when(tally_of(limit_reqs, 4, b => once(saberball_distance() != prev(saberball_distance()) && saberball_distance() == b)))  &&
        never(saberball_distance() == 0 ) 
)
achievement(
    "Droid Exploder",
    "Explode 20 droids in one game of Saberball!",
    points=5,
    trigger=
        minigame_id_pointer() == saberball_id &&
        in_minigame() &&
        prev(minigame_target()) < 20 &&
        measured(minigame_target() >= 20)    
)
function vultures_shot() => dword(0x2b30f4)
achievement(
    "Vulture Apprentice",
    "Shoot 10 vultures in a game of Vulture Shooter!",
    points=5,
    trigger=
        minigame_id_pointer() == shootout_id &&
        in_minigame() &&
        prev(vultures_shot()) == 9 &&
        measured(vultures_shot() == 20) &&
        utility_protections()
)
achievement(
    "Vulture Hunter",
    "Shoot 20 vultures in a game of Vulture Shooter!",
    points=5,
    trigger=
        minigame_id_pointer() == shootout_id &&
        in_minigame() &&
        prev(vultures_shot()) == 19 &&
        measured(vultures_shot() == 20) &&
        utility_protections()
)




// $18BDB0: [32bit] Studs. Val * 10 = Actual
// $218424: [8bit] Volleyball - R2D2 Score
// $218425: [8bit] Volleyball - Enemy Score
// $219230: [32bit] Number of Wins - Volleyball
// $21F632: [32bit] Current Level
// $21F6E9: [8bit] Level ID

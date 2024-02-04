// Charlie and the Chocolate Factory
// #ID = 21859

// $452700: debug, 1 = on
function debug_off() => dword(0x452700) == 0
// $4E4C80: [Pointer] Level
//          +0x8f3=ASCII Level ID 1
//          +0x8f7=ASCII Level ID 2
//          
//          Factory1 0x4c4f5554 0x53442e4a
//          Factory2 0x4c4f5554 0x5344322e
//          Chocolate1 0x4c43484f 0x434c2e4a
//          JellyBean 0x4c4a454c 0x4c592e4a
//          WrigleSweet 0x4c575249 0x474c452e
//          Chocolate2 0x4c43484f 0x43322e4a
//          StoreRoom 0x4c535645 0x4e542e4a
//          Inventing 0x4c494e56 0x4e542e4a
//          Juicing 0x4c44454a 0x43452e4a
//          Nut 0x4c4e5554 0x524f4d2e
//          Garbage 0x4c474152 0x4241472e
//          FizzyLift 0x4c46495a 0x5a592e4a
//          ExplodingCandy 0x4c455850 0x4c4f2e4a
//          TVRoom 0x4c545652 0x4f4d2e4a
function ascii_one() => dword_be(dword(0x4e4c80) +0x8f3)
function ascii_two() => dword_be(dword(0x4e4c80) +0x8f7)
// $4EAADC: [32bit] Input Allowed
//          0x00=No
//          0x01=Yes
// $4EB828: state
// $93C410: Good region?
// $93C41C: [32bit] Level State
//          0x00=In Menu
//          0x01=Loading
//          0x02=In Level
//          0x03=End of Level
//          2>3=End
function level_clear() => prev(dword(0x93c41c)) == 2 && dword(0x93c41c) == 3
// $93CD68: [Pointer]
//          +0x224c=[32bit] Collectible Slot 1
//          +0x2258=[32bit] Chocolate
// $B6F973: ASCII Level ID (Needs pointer :X)
// $B6F977: 0x53442e4a
// $15274D0: [32bit] Level ID?

levels = {
    0:{"NAME":"Factory Outside", "IDONE":0x4c4f5554, "IDTWO":0x53442e4a}, //Factory Outside
    1:{"NAME":"Factory Outside 2", "IDONE":0x4c4f5554, "IDTWO":0x5344322e}, //Factory Outside 2
    2:{"NAME":"Chocolate Room 1", "IDONE":0x4c43484f, "IDTWO":0x434c2e4a}, //Chocolate Room 1
    3:{"NAME":"Jelly Beanstalk Room", "IDONE":0x4c4a454c, "IDTWO":0x4c592e4a}, //Jelly Beanstalk Room
    4:{"NAME":"Wriggle Sweets Room", "IDONE":0x4c575249, "IDTWO":0x474c452e}, //Wriggle Sweets Room
    5:{"NAME":"Chocolate Room 2", "IDONE":0x4c43484f, "IDTWO":0x43322e4a}, //Chocolate Room 2
    6:{"NAME":"Storeroom 59", "IDONE":0x4c535645, "IDTWO":0x4e542e4a}, //Storeroom 59
    7:{"NAME":"Inventing Room", "IDONE":0x4c494e56, "IDTWO":0x4e542e4a}, //Inventing Room
    8:{"NAME":"Juicing Room", "IDONE":0x4c44454a, "IDTWO":0x43452e4a}, //Juicing Room
    9:{"NAME":"Nut Room", "IDONE":0x4c4e5554, "IDTWO":0x524f4d2e}, //Nut Room
    10:{"NAME":"Garbage Chute", "IDONE":0x4c474152, "IDTWO":0x4241472e}, //Garbage Chute
    11:{"NAME":"Fizzy Lifting Drinks", "IDONE":0x4c46495a, "IDTWO":0x5a592e4a}, //Fizzy Lifting Drinks
    12:{"NAME":"Exploding Candy Room", "IDONE":0x4c455850, "IDTWO":0x4c4f2e4a}, //Exploding Candy Room
    13:{"NAME":"Television Room", "IDONE":0x4c545652, "IDTWO":0x4f4d2e4a}, //Television Room
}
for i in range(0, 13){
    achievement(
        levels[i]["NAME"],
        "Clear " + levels[i]["NAME"],
        points=5,
        trigger=
            debug_off() && //Comment out for testing
            ascii_one() == levels[i]["IDONE"] &&
            ascii_two() == levels[i]["IDTWO"] &&
            level_clear()
    )
}
// Ceiling Zero
// #ID = 25365

function level() => byte(0x00005a)
function clear_lvl(a, b) => prev(level()) == a && level() == b
level_names = {
    0:"Shooting Novice",
    1:"Enemy Destroyer",
    2:"Shortening Situation",
    3:"Tighter Spaces, More Fun Places",
    4:"Laser Initiate",
    5:"Enemies Can.. Bounce?",
    6:"Laser Adept",
    7:"Savin' Bases",
    8:"Area Decreasing... Shoot Faster!",
    9:"Laser Pro",
    10:"Tight Spaces Triumph",
    11:"Enemy Sharpshooter",
    12:"Claustrophobia",
    13:"Laser Expertise",
    14:"A Narrow Victory"
}
level_ids = [
    0x15,
    0x14,
    0x13,
    0x12,
    0x11,
    0x10,
    0x9,
    0x8,
    0x7,
    0x6,
    0x5,
    0x4,
    0x3,
    0x2,
    0x1,
    0x0
]
for i in range(0, 14){
my_points = 5
if(i > 12) my_points = 10
    achievement(
        level_names[i],
        "Clear Ceiling Level " + 15 - i,
        points=my_points,
        trigger=
            clear_lvl(level_ids[i], level_ids[i + 1])        
    )
}
achievement(
    "Ceiling Zero Hero",
    "Clear Ceiling Level 0",
    points=25,
    trigger=
        clear_lvl(0x0, 0x15)
)
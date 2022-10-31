// Guitar Hero [Subset - Expert Full Combos]
// #ID = 21462

// $4A03E4: [32bit] Pointer
//          +0xb58=Notes Passed
//          Default=0xffffffff
// $B95EF4: [32bit] Pointer
//          --+ 0
//          ----++0x20 = [32bit] Current Song Score
//          ----++0x24 = [32bit] Current Combo
//          ----++0x28 = [32bit] Current Combo Multiplier
// $B96018: [32bit] Game State
//          0x00=In Menu
//          0x01=In Game
//          0x02=Restart Hit
// $B960F8: [32bit] Difficulty
//          0x00=Easy
//          0x01=Medium
//          0x02=Hard
//          0x03=Expert
// $B96100: [32bit] Song ID
//          Main Songs:
//          0x0044c301=I Love Rock & Roll
//          0x0044c3db=I Wanna Be Sedated
//          0x0044c7d4=Thunder Kiss 65
//          0x0044c593=Smoke On The Water
//          0x0044c366=Infected
//          0x0044c3a3=Iron Man
//          0x0044c487=More Than A Feeling
//          0x0044c85d=You Got Another Thing Comin'
//          0x0044c74b=Take Me Out
//          0x0044c533=Sharp Dressed Man
//          0x0044c43b=Killer Queen
//          0x0044c27d=Hey You
//          0x0044c662=Stellar
//          0x0044c218=Heart Full of Black
//          0x0044c69a=Symphony of Destruction
//          0x0044c8e5=Ziggy Stardust
//          0x0044c157=Fat Lip
//          0x0044c06e=Cochise
//          0x0044c709=Take It Off
//          0x0044c82a=Unsung
//          0x0044c5f3=Spanish Castle Magic
//          0x0044c2b0=Higher Ground
//          0x0044c4ec=No One Knows
//          0x0044bf61=Ace of Spades
//          0x0044c110=Crossroads
//          0x0044c1db=Godzilla
//          0x0044c78d=Texas Flood
//          0x0044c18a=Frankenstein
//          0x0044c0b0=Cowboys From Hell
//          0x0044c009=Bark At The Moon
//          
//          Bonus Songs:
//          0x0044cc24=Fire It Up
//          0x0044cabc=Cheat On The Church
//          0x0044ca61=Caveman Rejoice
//          0x0044cb63=Eureka, I've Found Love
//          0x0044c93b=All Of This
//          0x0044c97d=Behind The Mask
//          0x0044c9d3=The Breaking Wheel
//          0x0044ca29=Callout
//          0x0044cb21=Decontrol
//          0x0044cb96=Even Rats
//          0x0044cbd3=Farewell Myth
//          0x0044cc82=Fly On The Wall
//          0x0044ccd3=Get Ready 2 Rock
//          0x0044cd29=Guitar Hero
//          0x0044cd70=Hey
//          0x0044cd94=Sail Your Ship By
//          0x0044cdef=Story of My Love
song_database = {
    0x0044c301:{"Name": "I Love Rock & Roll", "MaxNotes": 308, "Points": 0},
0x0044c3db:{"Name": "I Wanna Be Sedated", "MaxNotes": 725, "Points": 0},
0x0044c7d4:{"Name": "Thunder Kiss 65", "MaxNotes": 695, "Points": 0},
0x0044c593:{"Name": "Smoke On The Water", "MaxNotes": 898, "Points": 0},
0x0044c366:{"Name": "Infected", "MaxNotes": 689, "Points": 0},
0x0044c3a3:{"Name": "Iron Man", "MaxNotes": 573, "Points": 0},
0x0044c487:{"Name": "More Than A Feeling", "MaxNotes": 726, "Points": 0},
0x0044c85d:{"Name": "You Got Another Thing Comin'", "MaxNotes": 850, "Points": 0},
0x0044c74b:{"Name": "Take Me Out", "MaxNotes": 882, "Points": 0},
0x0044c533:{"Name": "Sharp Dressed Man", "MaxNotes": 759, "Points": 0},
0x0044c43b:{"Name": "Killer Queen", "MaxNotes": 403, "Points": 0},
0x0044c27d:{"Name": "Hey You", "MaxNotes": 632, "Points": 0},
0x0044c662:{"Name": "Stellar", "MaxNotes": 513, "Points": 0},
0x0044c218:{"Name": "Heart Full of Black", "MaxNotes": 614, "Points": 0},
0x0044c69a:{"Name": "Symphony of Destruction", "MaxNotes": 681, "Points": 0},
0x0044c8e5:{"Name": "Ziggy Stardust", "MaxNotes": 648, "Points": 0},
0x0044c157:{"Name": "Fat Lip", "MaxNotes": 638, "Points": 0},
0x0044c06e:{"Name": "Cochise", "MaxNotes": 724, "Points": 0},
0x0044c709:{"Name": "Take It Off", "MaxNotes": 460, "Points": 0},
0x0044c82a:{"Name": "Unsung", "MaxNotes": 968, "Points": 0},
0x0044c5f3:{"Name": "Spanish Castle Magic", "MaxNotes": 604, "Points": 0},
0x0044c2b0:{"Name": "Higher Ground", "MaxNotes": 902, "Points": 0},
0x0044c4ec:{"Name": "No One Knows", "MaxNotes": 972, "Points": 0},
0x0044bf61:{"Name": "Ace of Spades", "MaxNotes": 595, "Points": 0},
0x0044c110:{"Name": "Crossroads", "MaxNotes": 1038, "Points": 0},
0x0044c1db:{"Name": "Godzilla", "MaxNotes": 588, "Points": 0},
0x0044c78d:{"Name": "Texas Flood", "MaxNotes": 870, "Points": 0},
0x0044c18a:{"Name": "Frankenstein", "MaxNotes": 933, "Points": 0},
0x0044c0b0:{"Name": "Cowboys From Hell", "MaxNotes": 1401, "Points": 0},
0x0044c009:{"Name": "Annikie's Favorite Song! - Bark At The Moon", "MaxNotes": 1189, "Points": 0},
0x0044cc24:{"Name": "Fire It Up", "MaxNotes": 582, "Points": 0},
0x0044cabc:{"Name": "Cheat On The Church", "MaxNotes": 862, "Points": 0},
0x0044ca61:{"Name": "Caveman Rejoice", "MaxNotes": 607, "Points": 0},
0x0044cb63:{"Name": "Eureka, I've Found Love", "MaxNotes": 421, "Points": 0},
0x0044c93b:{"Name": "All Of This", "MaxNotes": 499, "Points": 0},
0x0044c97d:{"Name": "Behind The Mask", "MaxNotes": 516, "Points": 0},
0x0044c9d3:{"Name": "The Breaking Wheel", "MaxNotes": 1291, "Points": 0},
0x0044ca29:{"Name": "Callout", "MaxNotes": 589, "Points": 0},
0x0044cb21:{"Name": "Decontrol", "MaxNotes": 646, "Points": 0},
0x0044cb96:{"Name": "Even Rats", "MaxNotes": 996, "Points": 0},
0x0044cbd3:{"Name": "Farewell Myth", "MaxNotes": 658, "Points": 0},
0x0044cc82:{"Name": "Fly On The Wall", "MaxNotes": 496, "Points": 0},
0x0044ccd3:{"Name": "Get Ready 2 Rokk", "MaxNotes": 716, "Points": 0},
0x0044cd29:{"Name": "Guitar Hero", "MaxNotes": 758, "Points": 0},
0x0044cd70:{"Name": "Hey", "MaxNotes": 481, "Points": 0},
0x0044cd94:{"Name": "Sail Your Ship By", "MaxNotes": 599, "Points": 0},
0x0044cdef:{"Name": "Story of My Love", "MaxNotes": 740, "Points": 0}
}
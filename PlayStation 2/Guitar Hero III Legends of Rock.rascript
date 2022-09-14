// Guitar Hero III: Legends of Rock
// #ID = 5579

// $000000: SnowPin sucks
// $000001: No, Pinguu does.
// $000002: This game sucks
// $11EC84: [32bit] Track Speed
// $2616DC: [32bit BE] Debug Mode Active
//          0x24020000=Active
// $36DD74: [32-bit] Difficulty - Career
// $371EF0: [32bit] Game State
//          0x00=No
//          0x01=In Game
// $373128: [32-bit] Notes Passed in Current Song
// $373168: [32-bit] Current Score
// $373180: [32-bit] Current Combo
// $373188: [32-bit] Current Multiplier
// $3741A0: [ASCII] Displayed Money
// $39A2D0: [32bit] Cash
// $3BEF48: [Float] Track Time?
//          Slow Ride Track End = 0x437a4c88
// $43C8E0: [32bit] Possibly Cash Pointer
//          
//          +0x04
//          ++0x0c (9 times offset 0x0c)
//          ++++++++++0x08 = Cash [32bit]
//          
//          Usage:
//          I:0xX43c8e0_I:0xX000004_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_I:0xX00000c_0xX000000=0
// $4B9CC0: [32bit] Practice Part Selected
//          0x00=Guitar
//          0x01=Bass
// $4BAE30: [32-bit] Main Menu - Option Selected (Dynamic)
// $542214: [24-bit] Precision Mode Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $5424F8: [32-Bit] Pointer +0xc for Current Character
// $544C60: [24-bit] Hyperspeed Cheat Pointer
//          +0x0c
//          0x00 - Off
//          0x01 - Hyperspeed 1
//          0x02 - Hyperspeed 2
//          0x03 - Hyperspeed 3
//          0x04 - Hyperspeed 4
//          0x05 - Hyperspeed 5
// $5451A8: [32-Bit] Pointer +0xc for Total Guitars Unlocked when picking one
// $547960: [24-bit] Easy Expert Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $548628: [24-bit] Pointer
//          +0x20 - Quick Play Difficulty
// $54D208: [32-Bit] Pointer +0x20 for Total Unlocked Characters when picking one
// $54E290: [24-bit] Performance Mode Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $553EE8: [24-bit] Large Gems Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $5555D4: [24-bit] No Fail Cheat Pointer
//          +0x0c
//          0x01 = On
//          0x02 = Off
// $55E8F0: [32bit] Pointer
//          +0x0c - Air Guitar Cheat
//          0x01=On
//          0x02=Off
// $55EA80: [32bit] Pointer - Venue
//          +0xc = Selected Venue in Career Menu
// $5969E0: [32bit] Table Start - Hyperspeed Option?
// $5AA17C: [32bit] Potential Cash Pointer
//          +0x8 = Balance?
// $5D4DC8: [32-bit] [Career] [Easy] Slow Ride Hi-Score
// $5D4DE8: [32-bit] [Career] [Easy] Slow Ride Star Rating
// $5EC748: [32-bit] [Career] [Easy] Rock and Roll All Nite Hi-Score
// $5EC768: [32-bit] [Career] [Easy] Rock and Roll All Nite Star Rating?
// $617828: Slow Ride 2
// $62EA78: [32bit] Cash (Dynamic 2)
// $630D28: [32bit] Cash (Dynamic 1)
// $6404D4: Disintegrator - With Radar!
//          
//          0x005a60b0=Not Purchased
//          0x005a60a0=Purchased
// $640AE4: Girl Friday - Lady Shapes
//          0x005da700=Not Purchased
//          0x005da6e0=Purchased
// $640C4C: Focus - Fatboy
//          
//          0x005d2460=Not Purchased
//          0x005d2440=Purchased
// $642950: [32bit] SLOW RIDE QUICKPLAY - Somehow is only consistent thing for offset between two addresses
// $67E384: [32-bit] Difficulty - Quick Play
// $67E6CC: [32bit] Selected Venue
// $67E7A8: [32bit] Hyperspeed setting
// $67EB68: Song Time?
// $67F9DC: [32-Bit] Selected Guitar Slot (dynamic)
// $67FB80: [16-Bit] ID of Guitar/Finishes highlighted in the shop (dynamic)
// $67FC34: [32-Bit] Selected Outfit Slot (dynamic)
// $67FC5C: [32-Bit] Selected Outfit Style Slot (dynamic)
// $688B98: [32-bit] Song Time (Dynamic save 1)
// $68A088: [Float] - Song Ends at 0.0
// $68A1FC: +0x174
// $7C9E40: [32bit] Potential Rock Meter Region Pointer
// $A6B1D4: [32bit] Player 1 Rock Meter - bd6d0a7a = death
// $A6B1F4: [32bit] Character ID
// $A6B224: [32bit] Equipped Guitar ID
// $A6B834: [Float] Player 2 Bar
//          Default Value is 1.0
// $127FD40: [ASCII 64 bytes] Current Guitar Model File Path
// $127FD52: [ASCII * bytes] Current Guitar Model
// $1B3F32B: [32-bit BE] [ASCII] Song Title Letters 1-4 of loaded song
//           Slow Ride - 0x736c6f77
//           Talk Dirty To me - 0x74616c6b
//           Hit Me With Your Best Shot - 0x6869746d
//           Story Of My Life - 0x73746f72
//           Rock and Roll All Nite - 0x726f636b
//           Sabotage - 0x7361626f
//           Mississippi Queen - 0x6d697373
//           School's Out - 0x7363686f
//           Sunshine of Your Love - 0x73756e73
//           Barracuda - 0x62617272
//           Bulls on Parade - 0x62756c6c
//           Reptilia - 0x72657074
//           When You Were Young - 0x7768656e
//           Miss Murder - 0x6d697373
//           The Seeker - 0x74686573
//           Lay Down - 0x6c617964
//           Paint It Black - 0x7061696e
//           Suck My Kiss - 0x7375636b
//           Paranoid - 0x70617261
//           Anarchy in the U.K. - 0x616e6172
//           Kool Thing - 0x6b6f6f6c
//           My Name Is Jonas - 0x6d796e61
//           Even Flow - 0x6576656e
//           Cities On Flame with Rock & Roll - 0x63697469
//           Holiday In Cambodia - 0x686f6c69
//           Rock You Like a Hurricane - 0x726f636b
//           Same Old Song and Dance - 0x73616d65
//           La Grange - 0x6c616772
//           Welcome To The Jungle - 0x77656c63
//           Helicopter - 0x68656c69
//           Black Magic Woman - 0x626c6163
//           Cherub Rock - 0x63686572
//           Black Sunshine - 0x626c6163
//           The Metal - 0x7468656d
//           Pride and Joy - 0x70726964
//           Monsters - 0x6d6f6e73
//           Before I Forget - 0x6265666f
//           Stricken - 0x73747269
//           3's & 7's - 0x74687265
//           Knights of Cydonia - 0x6b6e6967
//           Cult of Personality - 0x63756c74
//           Raining Blood - 0x7261696e
//           Cliffs of Dover - 0x636c6966
//           The Number of the Beast - 0x6e756d62
//           One - 0x6f6e652e
//           =========================
//           GUITAR BATTLES
//           Tom Morello - 0x626f7373
//           Slash - 0x626f7373
//           Lou - 0x626f7373
//           =========================
//           BONUS SONGS
//           Avalancha - 0x6176616c
//           In The Belly Of A Shark - 0x62656c6c
//           Can't Be Saved - 0x63616e74
//           Closer - 0x636c6f73
//           Don't Hold Back - 0x646f6e74
//           Down 'N Dirty - 0x646f776e
//           F.C.P.R.E.M.I.X. - 0x66637072
//           Generation Rock - 0x67656e65
//           Go That Far - 0x676f7468
//           Hier Kommt Alex - 0x68696572
//           I'm In The Band - 0x696d696e
//           Impulse - 0x696d7075
//           In Love - 0x696e6c6f
//           Mauvais Garcon - 0x6d617576
//           Metal Heavy Lady - 0x6d657461
//           Minus Celsius - 0x6d696e75
//           My Curse - 0x6d796375
//           Nothing For Me Here - 0x6e6f7468
//           Prayer Of The Refugee - 0x70726179
//           Radio Song - 0x72616469
//           Ruby - 0x72756279
//           She Bangs The Drums - 0x73686562
//           Take This Life - 0x74616b65
//           The Way It Ends - 0x74686577
//           Through The Fire and Flames - 0x74687275
// $1B3F32F: [32-bit BE] [ASCII] Song Title Letters 5-8 of loaded song
//           Slow Ride -  0x72696465
//           Talk Dirty To Me - 0x64697274
//           Hit Me With Your Best Shot - 0x65776974
//           Story Of My Life - 0x796f666d
//           Rock and Roll All Nite - 0x6e726f6c
//           Sabotage - 0x74616765
//           Mississippi Queen - 0x69737369
//           School's Out - 0x6f6c736f
//           Sunshine of Your Love - 0x68696e65
//           Barracuda - 0x61637564
//           Bulls on Parade - 0x736f6e70
//           Reptilia - 0x696c6961
//           When You Were Young - 0x796f7577
//           Miss Murder - 0x6d757264
//           The Seeker - 0x65656b65
//           Lay Down - 0x6f776e2e
//           Paint It Black - 0x74697462
//           Suck My Kiss - 0x6d796b69
//           Paranoid - 0x6e6f6964
//           Anarchy in the U.K. - 0x63687969
//           Kool Thing - 0x7468696e
//           My Name Is Jonas - 0x6d656973
//           Even Flow - 0x666c6f77
//           Cities On Flame with Rock & Roll - 0x65736f6e
//           Holiday In Cambodia - 0x64617969
//           Rock You Like a Hurricane - 0x756c696b
//           Same Old Song and Dance - 0x6f6c6473
//           La Grange - 0x616e6765
//           Welcome To The Jungle - 0x6f6d6574
//           Helicopter - 0x636f7074
//           Black Magic Woman - 0x6b6d6167
//           Cherub Rock - 0x7562726f
//           Black Sunshine - 0x6b73756e
//           The Metal - 0x6574616c
//           Pride and Joy - 0x656e6a6f
//           Monsters - 0x74657273
//           Before I Forget - 0x72656966
//           Stricken - 0x636b656e
//           3's & 7's - 0x6573616e
//           Knights of Cydonia - 0x6874736f
//           Cult of Personality - 0x6f667065
//           Raining Blood - 0x696e6762
//           Cliffs of Dover - 0x66736f66
//           The Number of the Beast - 0x65726f66
//           One - 0x6d69642e
//           =========================
//           GUITAR BATTLES
//           Tom Morello - 0x746f6d2e
//           Slash - 0x736c6173
//           Lou - 0x64657669
//           =========================
//           BONUS SONGS
//           Avalancha - 0x616e6368
//           In The Belly Of A Shark - 0x796f6661
//           Can't Be Saved - 0x62657361
//           Closer - 0x65722e6d
//           Don't Hold Back - 0x686f6c64
//           Down 'N Dirty - 0x6e646972
//           F.C.P.R.E.M.I.X. - 0x656d6978
//           Generation Rock - 0x72617469
//           Go That Far - 0x61746661
//           Hier Kommt Alex - 0x6b6f6d6d
//           I'm In The Band - 0x74686562
//           Impulse - 0x6c73652e
//           In Love - 0x76652e6d
//           Mauvais Garcon - 0x61697367
//           Metal Heavy Lady - 0x6c686561
//           Minus Celsius - 0x7363656c
//           My Curse - 0x7273652e
//           Nothing For Me Here - 0x696e6766
//           Prayer Of The Refugee - 0x65726f66
//           Radio Song - 0x6f736f6e
//           Ruby - 0x2e6d6964
//           She Bangs The Drums - 0x616e6773
//           Take This Life - 0x74686973
//           The Way It Ends - 0x61796974
//           Through The Fire and Flames - 0x66697265
// $1DE4134: [32bit] Pointer - My Curse
//           +0x7418 = Timer?

// Scribblenauts
// #ID = 6616
// $1683CA: [8bit] Profile Sum Spot 1
function spot_one() => byte(0x1683ca)
// $1683CB: [8bit] Profile Sum Spot 2
function spot_two() => byte(0x1683cb)
function save_protection() => unless(once(spot_one() != prev(spot_one()) || spot_two() != prev(spot_two()))) &&               
                (always_false() || (never(tally(2,(spot_one() != prev(spot_one()) || once(spot_two() != prev(spot_two()))) &&
                 always_true()))))                 
// $16CA40: [8bit] Level Flag - University 0-1
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA42: [8bit] Level Flag - University 0-2
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA44: [8bit] Level Flag - University 0-3
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA46: [8bit] Level Flag - University 0-4
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA48: [8bit] Level Flag - University 0-5
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA4A: [8bit] Level Flag - University 0-6
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA4C: [8bit] Level Flag - University 0-7
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA4E: [8bit] Level Flag - University 0-8
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA50: [8bit] Level Flag - University 0-9
//          0x00=Available
//          Bit1=Silver Star
//          Bit4=Gold Star
// $16CA52: [8bit] Level Flag - University 0-10
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
// $16CA54: [8bit] Level Flag - University 0-11
//          0x00=Available
//          0x01=Silver Star
//          0x04=Gold Star (Advanced Clear?)
function uni_check() => byte(0x16CA54)                 
achievement(
    "Blaze Needs to Go to School",
    "Finish the University Tutorial",
    points=2,
    trigger=
        prev(uni_check()) == 0 &&
        uni_check() == 4 &&
        save_protection()
)                 
// $16CA60: [8bit] Level Flag - The Gardens 1-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA61: [8bit] Level Flag - The Gardens ACTION 1-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA62: [8bit] Level Flag - The Gardens 1-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA63: [8bit] Level Flag - The Gardens ACTION 1-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA64: [8bit] Level Flag - The Gardens 1-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA65: [8bit] Level Flag - The Gardens ACTION 1-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA66: [8bit] Level Flag - The Gardens 1-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA67: [8bit] Level Flag - The Gardens ACTION 1-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA68: [8bit] Level Flag - The Gardens 1-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA69: [8bit] Level Flag - The Gardens ACTION 1-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA6A: [8bit] Level Flag - The Gardens 1-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA6B: [8bit] Level Flag - The Gardens ACTION 1-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA6C: [8bit] Level Flag - The Gardens 1-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA6D: [8bit] Level Flag - The Gardens ACTION 1-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA6E: [8bit] Level Flag - The Gardens 1-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA6F: [8bit] Level Flag - The Gardens ACTION 1-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA70: [8bit] Level Flag - The Gardens 1-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA71: [8bit] Level Flag - The Gardens ACTION 1-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA72: [8bit] Level Flag - The Gardens 1-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA73: [8bit] Level Flag - The Gardens ACTION 1-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA74: [8bit] Level Flag - The Gardens 1-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA75: [8bit] Level Flag - The Gardens ACTION 1-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA80: [8bit] Level Flag - Metro 2-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA81: [8bit] Level Flag - Metro ACTION 2-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA82: [8bit] Level Flag - Metro 2-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA83: [8bit] Level Flag - Metro ACTION 2-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA84: [8bit] Level Flag - Metro 2-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA85: [8bit] Level Flag - Metro ACTION 2-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA86: [8bit] Level Flag - Metro 2-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA87: [8bit] Level Flag - Metro ACTION 2-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA88: [8bit] Level Flag - Metro 2-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA89: [8bit] Level Flag - Metro ACTION 2-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA8A: [8bit] Level Flag - Metro 2-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA8B: [8bit] Level Flag - Metro ACTION 2-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA8C: [8bit] Level Flag - Metro 2-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA8D: [8bit] Level Flag - Metro ACTION 2-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA8E: [8bit] Level Flag - Metro 2-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA8F: [8bit] Level Flag - Metro ACTION 2-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA90: [8bit] Level Flag - Metro 2-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA91: [8bit] Level Flag - Metro ACTION 2-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA92: [8bit] Level Flag - Metro 2-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA93: [8bit] Level Flag - Metro ACTION 2-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA94: [8bit] Level Flag - Metro 2-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CA95: [8bit] Level Flag - Metro ACTION 2-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA0: [8bit] Level Flag - The Peaks 3-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA1: [8bit] Level Flag - The Peaks ACTION 3-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA2: [8bit] Level Flag - The Peaks 3-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA3: [8bit] Level Flag - The Peaks ACTION 3-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA4: [8bit] Level Flag - The Peaks 3-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA5: [8bit] Level Flag - The Peaks ACTION 3-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA6: [8bit] Level Flag - The Peaks 3-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA7: [8bit] Level Flag - The Peaks ACTION 3-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA8: [8bit] Level Flag - The Peaks 3-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAA9: [8bit] Level Flag - The Peaks ACTION 3-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAAA: [8bit] Level Flag - The Peaks 3-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAAB: [8bit] Level Flag - The Peaks ACTION 3-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAAC: [8bit] Level Flag - The Peaks 3-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAAD: [8bit] Level Flag - The Peaks ACTION 3-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAAE: [8bit] Level Flag - The Peaks 3-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAAF: [8bit] Level Flag - The Peaks ACTION 3-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAB0: [8bit] Level Flag - The Peaks 3-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAB1: [8bit] Level Flag - The Peaks ACTION 3-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAB2: [8bit] Level Flag - The Peaks 3-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAB3: [8bit] Level Flag - The Peaks ACTION 3-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAB4: [8bit] Level Flag - The Peaks 3-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAB5: [8bit] Level Flag - The Peaks ACTION 3-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC0: [8bit] Level Flag - Ancient 4-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC1: [8bit] Level Flag - Ancient ACTION 4-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC2: [8bit] Level Flag - Ancient 4-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC3: [8bit] Level Flag - Ancient ACTION 4-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC4: [8bit] Level Flag - Ancient 4-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC5: [8bit] Level Flag - Ancient ACTION 4-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC6: [8bit] Level Flag - Ancient 4-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC7: [8bit] Level Flag - Ancient ACTION 4-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC8: [8bit] Level Flag - Ancient 4-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAC9: [8bit] Level Flag - Ancient ACTION 4-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CACA: [8bit] Level Flag - Ancient 4-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CACB: [8bit] Level Flag - Ancient ACTION 4-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CACC: [8bit] Level Flag - Ancient 4-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CACD: [8bit] Level Flag - Ancient ACTION 4-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CACE: [8bit] Level Flag - Ancient 4-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CACF: [8bit] Level Flag - Ancient ACTION 4-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAD0: [8bit] Level Flag - Ancient 4-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAD1: [8bit] Level Flag - Ancient ACTION 4-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAD2: [8bit] Level Flag - Ancient 4-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAD3: [8bit] Level Flag - Ancient ACTION 4-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAD4: [8bit] Level Flag - Ancient 4-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAD5: [8bit] Level Flag - Ancient ACTION 4-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE0: [8bit] Level Flag - Shoreline 5-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE1: [8bit] Level Flag - Shoreline ACTION 5-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE2: [8bit] Level Flag - Shoreline 5-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE3: [8bit] Level Flag - Shoreline ACTION 5-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE4: [8bit] Level Flag - Shoreline 5-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE5: [8bit] Level Flag - Shoreline ACTION 5-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE6: [8bit] Level Flag - Shoreline 5-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE7: [8bit] Level Flag - Shoreline ACTION 5-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE8: [8bit] Level Flag - Shoreline 5-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAE9: [8bit] Level Flag - Shoreline ACTION 5-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAEA: [8bit] Level Flag - Shoreline 5-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAEB: [8bit] Level Flag - Shoreline ACTION 5-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAEC: [8bit] Level Flag - Shoreline 5-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAED: [8bit] Level Flag - Shoreline ACTION 5-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAEE: [8bit] Level Flag - Shoreline 5-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAEF: [8bit] Level Flag - Shoreline ACTION 5-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAF0: [8bit] Level Flag - Shoreline 5-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAF1: [8bit] Level Flag - Shoreline ACTION 5-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAF2: [8bit] Level Flag - Shoreline 5-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAF3: [8bit] Level Flag - Shoreline ACTION 5-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAF4: [8bit] Level Flag - Shoreline 5-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CAF5: [8bit] Level Flag - Shoreline ACTION 5-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB00: [8bit] Level Flag - Outer Wild 6-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB01: [8bit] Level Flag - Outer Wild ACTION 6-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB02: [8bit] Level Flag - Outer Wild 6-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB03: [8bit] Level Flag - Outer Wild ACTION 6-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB04: [8bit] Level Flag - Outer Wild 6-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB05: [8bit] Level Flag - Outer Wild ACTION 6-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB06: [8bit] Level Flag - Outer Wild 6-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB07: [8bit] Level Flag - Outer Wild ACTION 6-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB08: [8bit] Level Flag - Outer Wild 6-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB09: [8bit] Level Flag - Outer Wild ACTION 6-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB0A: [8bit] Level Flag - Outer Wild 6-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB0B: [8bit] Level Flag - Outer Wild ACTION 6-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB0C: [8bit] Level Flag - Outer Wild 6-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB0D: [8bit] Level Flag - Outer Wild ACTION 6-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB0E: [8bit] Level Flag - Outer Wild 6-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB0F: [8bit] Level Flag - Outer Wild ACTION 6-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB10: [8bit] Level Flag - Outer Wild 6-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB11: [8bit] Level Flag - Outer Wild ACTION 6-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB12: [8bit] Level Flag - Outer Wild 6-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB13: [8bit] Level Flag - Outer Wild ACTION 6-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB14: [8bit] Level Flag - Outer Wild 6-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB15: [8bit] Level Flag - Outer Wild ACTION 6-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB20: [8bit] Level Flag - Stunt Park 7-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB21: [8bit] Level Flag - Stunt Park ACTION 7-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB22: [8bit] Level Flag - Stunt Park 7-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB23: [8bit] Level Flag - Stunt Park ACTION 7-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB24: [8bit] Level Flag - Stunt Park 7-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB25: [8bit] Level Flag - Stunt Park ACTION 7-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB26: [8bit] Level Flag - Stunt Park 7-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB27: [8bit] Level Flag - Stunt Park ACTION 7-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB28: [8bit] Level Flag - Stunt Park 7-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB29: [8bit] Level Flag - Stunt Park ACTION 7-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB2A: [8bit] Level Flag - Stunt Park 7-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB2B: [8bit] Level Flag - Stunt Park ACTION 7-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB2C: [8bit] Level Flag - Stunt Park 7-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB2D: [8bit] Level Flag - Stunt Park ACTION 7-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB2E: [8bit] Level Flag - Stunt Park 7-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB2F: [8bit] Level Flag - Stunt Park ACTION 7-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB30: [8bit] Level Flag - Stunt Park 7-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB31: [8bit] Level Flag - Stunt Park ACTION 7-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB32: [8bit] Level Flag - Stunt Park 7-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB33: [8bit] Level Flag - Stunt Park ACTION 7-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB34: [8bit] Level Flag - Stunt Park 7-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB35: [8bit] Level Flag - Stunt Park ACTION 7-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB40: [8bit] Level Flag - Frontier 8-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB41: [8bit] Level Flag - Frontier ACTION 8-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB42: [8bit] Level Flag - Frontier 8-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB43: [8bit] Level Flag - Frontier ACTION 8-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB44: [8bit] Level Flag - Frontier 8-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB45: [8bit] Level Flag - Frontier ACTION 8-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB46: [8bit] Level Flag - Frontier 8-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB47: [8bit] Level Flag - Frontier ACTION 8-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB48: [8bit] Level Flag - Frontier 8-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB49: [8bit] Level Flag - Frontier ACTION 8-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB4A: [8bit] Level Flag - Frontier 8-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB4B: [8bit] Level Flag - Frontier ACTION 8-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB4C: [8bit] Level Flag - Frontier 8-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB4D: [8bit] Level Flag - Frontier ACTION 8-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB4E: [8bit] Level Flag - Frontier 8-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB4F: [8bit] Level Flag - Frontier ACTION 8-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB50: [8bit] Level Flag - Frontier 8-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB51: [8bit] Level Flag - Frontier ACTION 8-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB52: [8bit] Level Flag - Frontier 8-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB53: [8bit] Level Flag - Frontier ACTION 8-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB54: [8bit] Level Flag - Frontier 8-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB55: [8bit] Level Flag - Frontier ACTION 8-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB60: [8bit] Level Flag - Dark Hollow 9-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB61: [8bit] Level Flag - Dark Hollow ACTION 9-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB62: [8bit] Level Flag - Dark Hollow 9-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB63: [8bit] Level Flag - Dark Hollow ACTION 9-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB64: [8bit] Level Flag - Dark Hollow 9-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB65: [8bit] Level Flag - Dark Hollow ACTION 9-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB66: [8bit] Level Flag - Dark Hollow 9-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB67: [8bit] Level Flag - Dark Hollow ACTION 9-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB68: [8bit] Level Flag - Dark Hollow 9-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB69: [8bit] Level Flag - Dark Hollow ACTION 9-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB6A: [8bit] Level Flag - Dark Hollow 9-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB6B: [8bit] Level Flag - Dark Hollow ACTION 9-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB6C: [8bit] Level Flag - Dark Hollow 9-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB6D: [8bit] Level Flag - Dark Hollow ACTION 9-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB6E: [8bit] Level Flag - Dark Hollow 9-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB6F: [8bit] Level Flag - Dark Hollow ACTION 9-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB70: [8bit] Level Flag - Dark Hollow 9-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB71: [8bit] Level Flag - Dark Hollow ACTION 9-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB72: [8bit] Level Flag - Dark Hollow 9-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB73: [8bit] Level Flag - Dark Hollow ACTION 9-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB74: [8bit] Level Flag - Dark Hollow 9-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB75: [8bit] Level Flag - Dark Hollow ACTION 9-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB80: [8bit] Level Flag - Mish Mash 10-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB81: [8bit] Level Flag - Mish Mash ACTION 10-1
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB82: [8bit] Level Flag - Mish Mash 10-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB83: [8bit] Level Flag - Mish Mash ACTION 10-2
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB84: [8bit] Level Flag - Mish Mash 10-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB85: [8bit] Level Flag - Mish Mash ACTION 10-3
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB86: [8bit] Level Flag - Mish Mash 10-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB87: [8bit] Level Flag - Mish Mash ACTION 10-4
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB88: [8bit] Level Flag - Mish Mash 10-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB89: [8bit] Level Flag - Mish Mash ACTION 10-5
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB8A: [8bit] Level Flag - Mish Mash 10-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB8B: [8bit] Level Flag - Mish Mash ACTION 10-6
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB8C: [8bit] Level Flag - Mish Mash 10-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB8D: [8bit] Level Flag - Mish Mash ACTION 10-7
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB8E: [8bit] Level Flag - Mish Mash 10-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB8F: [8bit] Level Flag - Mish Mash ACTION 10-8
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB90: [8bit] Level Flag - Mish Mash 10-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB91: [8bit] Level Flag - Mish Mash ACTION 10-9
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB92: [8bit] Level Flag - Mish Mash 10-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB93: [8bit] Level Flag - Mish Mash ACTION 10-10
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB94: [8bit] Level Flag - Mish Mash 10-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
// $16CB95: [8bit] Level Flag - Mish Mash ACTION 10-11
//          0x00=Locked
//          0x01=Silver Star
//          0x02=Advanced Mode - Solution 1
//          0x03=Advanced Mode - Solution 2
//          0x04=Advanced Mode - Solution 3/Give Gold Star
//POPULATE NORMAL AND ACTION ARRAYS:
//Flags for each world are stored in an array, and in a bigger table with padding in between each array:
// [8bit] Level1-1. [8bit] Level 1-1 ACTION, [8bit] Level 1-2, etc....
// Using a loop for 10 worlds which the game has, and % 2 for each flag, we can separate the normal flags from the action flags:
puzzle_array = []
action_array = []
table_pos = 0x16ca60
world_names = {
    0:"The Gardens",
    1:"Metro",
    2:"The Peaks",
    3:"Ancient",
    4:"Shoreline",
    5:"Outer Wild",
    6:"Stunt Park",
    7:"Frontier",
    8:"Dark Hollow",
    9:"Mish Mash"
}
for i in range(0, 9){    
   for j in range(0, 21){
       if(j % 2 == 0) array_push(puzzle_array, byte(table_pos + j))
       else array_push(action_array, byte(table_pos + j))                         
   }     
  table_pos = table_pos + 0x20 //SumOf: 0x16 bbytes => flags, 0x10 bytes > padding    
}
//PUZZLE MODE
for i in range(0, 9){
    for j in range(0, 10){
        flag = puzzle_array[i * 11 + j]
        achievement(
            world_names[i] + " Puzzle " + j + 1,
            "Clear Level " + i + 1 + "-" + j + 1 + " for a silver medal!",
            points=1,
            trigger=
              prev(flag) == 0 &&
              flag == 1 &&
              save_protection()
        )                
    }
}
//ACTION MODE
for i in range(0, 9){
    for j in range(0, 10){
        flag = action_array[i * 11 + j]
        achievement(
            world_names[i] + " Action " + j + 1,
            "Clear Action Level " + i + 1 + "-" + j + 1 + " for a silver medal!",
            points=2,
            trigger=
              prev(flag) == 0 &&
              flag == 1 &&
              save_protection()
        )                
    }
}
// ALL GOLD STARS PER WORLD  
for i in range(0, 9){
    world_array = []
    for j in range(0, 10){
        array_push(world_array, puzzle_array[i * 11 + j])
        array_push(world_array, action_array[i * 11 + j])        
    }
    achievement(
        "World of Gold: " + world_names[i],
        "Earn Gold Stars on all Puzzle and Action levels in World " + i + 1 + ": " + world_names[i],
        points=10,
        trigger=
            tally_of(world_array, 21, b => once(prev(b)>=4)) &&
            measured(tally_of(world_array, 22, b => once(b>=4))) &&
            never(tally_of(world_array, 22, b => once(prev(b)>=4))) &&
            save_protection()
    )        
}
// $16CC50: [NBit] Available Location Flags
//          Bit0=University
//          Bit1=The Gardens
//          Bit2=Metro
//          Bit3=The Peaks
//          Bit4=Ancient
//          Bit5=Shoreline
//          Bit6=Outer Wild
//          Bit7=Stunt Park
// $16CC51: [NBit] Available Location Flags
//          Bit0=Frontier
//          Bit1=Dark Hollow
//          Bit2=Mish Mash
function location_sum() =>
    
    bitcount(0x16cc50) -
    bit0(0x16cc50) +
    bit0(0x16cc51) +
    bit1(0x16cc51) +
    bit2(0x16cc51)
achievement(
    "Seeing the World",
    "Purchase all Available Locations",
    points=5,
    trigger=
        prev(location_sum()) == 9 &&
        measured(location_sum() == 10)
)
// $1683E0: [NBit] Unlocked Playgrounds 1-8
// $1683E1: [NBit] Unlocked Playgrounds 9-15
//          Bit7=Unused
function playground_sum() => sum_of(range(0x1683e0, 0x1683e1), b => bitcount(b)) - bit7(0x1683e1)
achievement(
    "Sandbox Adventurer",
    "Unlock all Playground backgrounds!",
    points=5,
    trigger=
        prev(playground_sum()) == 14 &&
        measured(playground_sum() == 15) &&
        save_protection()
)
// $16CC4C: [NBit] Character Purchased Flags
//          Bit0=Alien
//          Bit1=Witch
//          Bit2=Zombie
//          Bit3=DJ
//          Bit4=Pirate
//          Bit5=Bride
//          Bit6=Ninja
//          Bit7=Robot
// $16CC4D: [NBit] Character Purchased Flags
//          Bit0=Shaman
function character_sum() =>
    bitcount(0x16cc4c) + 
    bit0(0x16cc4d)
achievement(
    "Decisive Character Collector",
    "Purchase all of the characters",
    points=5,
    trigger=
        prev(character_sum()) == 8 &&
        measured(character_sum() == 9)       
)
// $16CC44: [NBit] Song Unlock Bitflags
//          Tracks 1-8
// $16CC45: [NBit] Song Unlock Bitflags
//          Tracks 9-16
// $16CC46: [NBit] Song Unlock Bitflags
//          Tracks 17-24
// $16CC47: [NBit] Song Unlock Bitflags
//          Tracks 25-32
// $16CC48: [NBit] Song Unlock Bitflags
//          Bit0-5= Tracks 33-38
//          Bit6&7= UNUSED
function song_sum() =>
        sum_of(range(0x16cc44, 0x16cc48), b => bitcount(b)) -
        bit6(0x16cc48) - 
        bit7(0x16cc48)
achievement(
    "Peace of Mind",
    "Buy half of the available songs in the game!",
    points=2,
    trigger=
        prev(song_sum()) == 18 &&
        measured(song_sum() == 19) &&
        save_protection()
)        
achievement(
    "Rock N Roll All Dictionaries!",
    "Buy all of the available songs in the game!",
    points=5,
    trigger=
        prev(song_sum()) == 37 &&
        measured(song_sum() == 38) &&
        save_protection()
)            
// $16C936: [8bit] Merit - 5th Cell Earned Count
// $16C938: [8bit] Merit - All New Earned Count
// $16C93A: [8bit] Merit - Architect Earned Count
// $16C93C: [8bit] Merit - Arrrrrrr Earned Count
// $16C93E: [8bit] Merit - Audiophile Earned Count
// $16C940: [8bit] Merit - Whisperer Earned Count
// $16C942: [8bit] Merit - Bioterrorist Earned Count
// $16C946: [8bit] Merit - Botanist Earned Count
// $16C948: [8bit] Merit - Chauffeur Earned Count
// $16C94A: [8bit] Merit - Chef Earned Count
// $16C94C: [8bit] Merit - Closet Earned Count
// $16C94E: [8bit] Merit - Combo Earned Count
// $16C950: [8bit] Merit - Cupid Earned Count
// $16C952: [8bit] Merit - Shoveler Earned Count
// $16C954: [8bit] Merit - Sea Two Earned Count
// $16C956: [8bit] Merit - Knight School Earned Count
// $16C958: [8bit] Merit - Electrolysis Earned Count
// $16C95A: [8bit] Merit - Elemental Earned Count
// $16C95C: [8bit] Merit - Entertainer Earned Count
// $16C95E: [8bit] Merit - Entomologist Earned Count
// $16C960: [8bit] Merit - Environmentalist Earned Count
// $16C962: [8bit] Merit - Explosive Earned Count
// $16C964: [8bit] Merit - Exterminator Earned Count
// $16C966: [8bit] Merit - FantasyNovel Earned Count
// $16C968: [8bit] Merit - Fashion Designer Earned Count
// $16C96A: [8bit] Merit - Firefighter Earned Count
// $16C96C: [8bit] Merit - Genius Earned Count
// $16C96E: [8bit] Merit - Glutton Earned Count
// $16C970: [8bit] Merit - Gold Digger Earned Count
// $16C972: [8bit] Merit - Grab and Go Earned Count
// $16C974: [8bit] Merit - Haxxor Earned Count
// $16C976: [8bit] Merit - Healer Earned Count
// $16C978: [8bit] Merit - Herpetologist Earned Count
// $16C97A: [8bit] Merit - Infected Earned Count
// $16C97C: [8bit] Merit - Decorator Earned Count
// $16C97E: [8bit] Merit - Janitor Earned Count
// $16C980: [8bit] Merit - Jockey Earned Count
// $16C984: [8bit] Merit - Joust Earned Count
// $16C988: [8bit] Merit - Luddite Earned Count
// $16C98A: [8bit] Merit - Lumberjack Earned Count
// $16C98C: [8bit] Merit - Madhatter Earned Count
// $16C98E: [8bit] Merit - Magician Earned Count
// $16C990: [8bit] Merit - Marine Biologist Earned Count
// $16C992: [8bit] Merit - Mechanic Earned Count
// $16C994: [8bit] Merit - Messiah Earned Count
// $16C996: [8bit] Merit - Militant Earned Count
// $16C998: [8bit] Merit - Miner 49er Earned Count
// $16C99A: [8bit] Merit - Miser Earned Count
// $16C99C: [8bit] Merit - New Object Earned Count
// $16C9A0: [8bit] Merit - Novice Angler Earned Count
// $16C9A2: [8bit] Merit - No Weapons Earned Count
// $16C9A4: [8bit] Merit - Old School Earned Count
// $16C9A6: [8bit] Merit - Organ Donor Earned Count
// $16C9A8: [8bit] Merit - Ornithologist Earned Count
// $16C9AA: [8bit] Merit - Paleontologist Earned Count
// $16C9AC: [8bit] Merit - Pariah Earned Count
// $16C9AE: [8bit] Merit - Pi Earned Count
// $16C9B0: [8bit] Merit - Picasso Earned Count
// $16C9B2: [8bit] Merit - Pilot Earned Count
// $16C9B4: [8bit] Merit - Prodigy Earned Count
// $16C9B6: [8bit] Merit - Pyromaniac Earned Count
// $16C9B8: [8bit] Merit - Reanimator Earned Count
// $16C9BC: [8bit] Merit - Roped In Earned Count
// $16C9BE: [8bit] Merit - Russian Doll Earned Count
// $16C9C0: [8bit] Merit - Savior Earned Count
// $16C9C2: [8bit] Merit - Series of Tubes Earned Count
// $16C9C4: [8bit] Merit - Smasher Earned Count
// $16C9C6: [8bit] Merit - Smuggler Earned Count
// $16C9C8: [8bit] Merit - Split Personality Earned Count
// $16C9CA: [8bit] Merit - Stealth Earned Count
// $16C9CC: [8bit] Merit - Sweet Tooth Earned Count
// $16C9CE: [8bit] Merit - Tooling Around Earned Count
// $16C9D0: [8bit] Merit - Washington Earned Count
// $16C9D2: [8bit] Merit - Water Jockey Earned Count
// $16C9D4: [8bit] Merit - Humanitarian Earned Count
// $16C9DC: [8bit] Merit - Zookeeper Earned Count
merits = {
    "5th Cell":{"Address": byte(0x16C936),"Description": "Spawn a 5th Cell Developer."},
    "All New":{"Address": byte(0x16C938),"Description": "Complete a level with objects you've never used before."},
    "Architect":{"Address": byte(0x16C93A),"Description": "Write 2 buildings."},
    "Arrrrrrr":{"Address": byte(0x16C93C),"Description": "Attach the Jolly Roger to a flagpole."},
    "Audiophile":{"Address": byte(0x16C93E),"Description": "Write 2 or more instruments or audio objects."},
    "Whisperer":{"Address": byte(0x16C940),"Description": "Ride a hostile animal."},
    "Bioterrorist":{"Address": byte(0x16C942),"Description": "Introduce the plague and infect 2 or more people."},
    "Botanist":{"Address": byte(0x16C946),"Description": "Write 2 or more plants."},
    "Chauffeur":{"Address": byte(0x16C948),"Description": "Drive a vehicle with more then one passenger."},
    "Chef":{"Address": byte(0x16C94A),"Description": "Write 2 or more foods."},
    "Closet":{"Address": byte(0x16C94C),"Description": "Write 2 or more clothes."},
    "Combo":{"Address": byte(0x16C94E),"Description": "Combine any two objects together."},
    "Cupid":{"Address": byte(0x16C950),"Description": "Shoot a humanoid with Cupid's arrow."},
    "Shoveler":{"Address": byte(0x16C952),"Description": "Write 2 or more digging tool objects."},
    "Sea Two":{"Address": byte(0x16C954),"Description": "Write 2 or more sea vehicles. (boat, destroyer)"},
    "Knight School":{"Address": byte(0x16C956),"Description": "Slay a dragon with a melee weapon."},
    "Electrolysis":{"Address": byte(0x16C958),"Description": "Shock someone with electricity."},
    "Elemental":{"Address": byte(0x16C95A),"Description": "Write more than 1 element."},
    "Entertainer":{"Address": byte(0x16C95C),"Description": "Write 2 or more entertainment objects."},
    "Entomologist":{"Address": byte(0x16C95E),"Description": "Write 2 or more insects.(bug, bee, insect)"},
    "Environmentalist":{"Address": byte(0x16C960),"Description": "Write 2 or more environmental objects."},
    "Explosive":{"Address": byte(0x16C962),"Description": "Write 2 or more explosive devices.(bomb, tnt)"},
    "Exterminator":{"Address": byte(0x16C964),"Description": "Two or more humanoids or animals start a level, and are destroyed."},
    "FantasyNovel":{"Address": byte(0x16C966),"Description": "Write 2 fantasy objects."},
    "Fashion Designer":{"Address": byte(0x16C968),"Description": "Cloth Maxwell's head, body, legs, feet and give him an accessory."},
    "Firefighter":{"Address": byte(0x16C96A),"Description": "Put out at least 2 fires.(use water on them)"},
    "Genius":{"Address": byte(0x16C96C),"Description": "Complete a level twice in a row."},
    "Glutton":{"Address": byte(0x16C96E),"Description": "Feed someone or something 3 times in a row."},
    "Gold Digger":{"Address": byte(0x16C970),"Description": "Write 3 or more precious stones."},
    "Grab and Go":{"Address": byte(0x16C972),"Description": "Write 2 or more grabbing tool objects. (Tongs + Tweezers)"},
    "Haxxor":{"Address": byte(0x16C974),"Description": "Write 5 or more developers."},
    "Healer":{"Address": byte(0x16C976),"Description": "Write 2 or more medical objects."},
    "Herpetologist":{"Address": byte(0x16C978),"Description": "Write 2 or more Reptiles."},
    "Infected":{"Address": byte(0x16C97A),"Description": "Write a Zombie, and have it infect 2 humanoids."},
    "Decorator":{"Address": byte(0x16C97C),"Description": "Write 2 furniture objects."},
    "Janitor":{"Address": byte(0x16C97E),"Description": "Write 2 or more cleaning tool objects."},
    "Jockey":{"Address": byte(0x16C980),"Description": "Use an animal as a vehicle."},
    "Joust":{"Address": byte(0x16C984),"Description": "Defeat a Knight while Maxwell is mounted."},
    "Luddite":{"Address": byte(0x16C988),"Description": "Short out 3 or more objects."},
    "Lumberjack":{"Address": byte(0x16C98A),"Description": "Cut down 3 or more trees in a level."},
    "Madhatter":{"Address": byte(0x16C98C),"Description": "Place a hat on four or more humanoids or animals"},
    "Magician":{"Address": byte(0x16C98E),"Description": "Use the magic wand to turn something into a toad."},
    "Marine Biologist":{"Address": byte(0x16C990),"Description": "Write 2 or more fish."},
    "Mechanic":{"Address": byte(0x16C992),"Description": "Jump start a vehicle."},
    "Messiah":{"Address": byte(0x16C994),"Description": "Turn a humanoid into a deity."},
    "Militant":{"Address": byte(0x16C996),"Description": "Use 2 weapons and 1 weaponized vehicle."},
    "Miner 49er":{"Address": byte(0x16C998),"Description": "Digging a massive hole."},
    "Miser":{"Address": byte(0x16C99A),"Description": "Reach 300,000 Ollars total."},
    "New Object":{"Address": byte(0x16C99C),"Description": "Write a completely new item!"},
    "Novice Angler":{"Address": byte(0x16C9A0),"Description": "Catch a fish with a fishing pole"},
    "No Weapons":{"Address": byte(0x16C9A2),"Description": "Don't write a weapon to complete the level."},
    "Old School":{"Address": byte(0x16C9A4),"Description": "Write 2 or more classic videogame objects."},
    "Organ Donor":{"Address": byte(0x16C9A6),"Description": "Write 2 or more organs."},
    "Ornithologist":{"Address": byte(0x16C9A8),"Description": "Write 2 or more birds."},
    "Paleontologist":{"Address": byte(0x16C9AA),"Description": "Write 2 or more dinosaurs."},
    "Pariah":{"Address": byte(0x16C9AC),"Description": "Make 3 humanoids or animals flee."},
//    Demoted Unofficial 4/22/2022: Impossible to unlock in game.
//    "Pi":{"Address": byte(0x16C9AE),"Description": "Earn 314 Ollars in a single level."},
    "Picasso":{"Address": byte(0x16C9B0),"Description": "Write 2 or more drawing tool objects."},
    "Pilot":{"Address": byte(0x16C9B2),"Description": "Write 2 or more air vehicles."},
    "Prodigy":{"Address": byte(0x16C9B4),"Description": "Complete a level 3 times in a row."},
    "Pyromaniac":{"Address": byte(0x16C9B6),"Description": "Set at least 4 objects on fire in a level."},
    "Reanimator":{"Address": byte(0x16C9B8),"Description": "Bring a corpse back to life."},
    "Roped In":{"Address": byte(0x16C9BC),"Description": "Write 2 or more rope objects."},
    "Russian Doll":{"Address": byte(0x16C9BE),"Description": "Place an object, inside an object, then inside an object."},
    "Savior":{"Address": byte(0x16C9C0),"Description": "Two or more humanoids or animals start and finish a level alive."},
    "Series of Tubes":{"Address": byte(0x16C9C2),"Description": "Go here: scribblenauts.com/nauts"},
    "Smasher":{"Address": byte(0x16C9C4),"Description": "Write 2 or more melee weapons."},
    "Smuggler":{"Address": byte(0x16C9C6),"Description": "Hide a weapon in a container."},
    "Split Personality":{"Address": byte(0x16C9C8),"Description": "Write 2 or more cutting or splitting tool objects."},
    "Stealth":{"Address": byte(0x16C9CA),"Description": "Destroy a security camera."},
    "Sweet Tooth":{"Address": byte(0x16C9CC),"Description": "Write 2 or more junk foods."},
    "Tooling Around":{"Address": byte(0x16C9CE),"Description": "Write 2 or more tool objects."},
    "Washington":{"Address": byte(0x16C9D0),"Description": "Chop down a cherry tree."},
    "Water Jockey":{"Address": byte(0x16C9D2),"Description": "Use a sea animal as a vehicle."},
    "Humanitarian":{"Address": byte(0x16C9D4),"Description": "Write 2 or more humans."},
    "Zookeeper":{"Address": byte(0x16C9DC),"Description": "Write 2 or more animals."}
}
for title in merits{
    achievement(
        title,
        merits[title]["Description"],
        1,
        trigger=
            prev(merits[title]["Address"]) == 0 &&
            merits[title]["Address"] == 1 &&
            save_protection()
    )
}
//=========RICH PRESENCE==========
rich_presence_display("Scribblin' around...")         
//==========UNUSED NOTES==========
// $133EF4: [32bit] Displayed Sublevel Number
// $133F08: [32bit] Active Stage Number
// $1682C8: [32bit] Potential Pointer
// $1682E6: [8bit] Consistent State?
// $1682E8: [8bit] State?
// $16C644: [32bit] Balance - Ollars
// $16CA00: [NBit] Level Unlock Flags - University
//          0x00=Locked, 0x01=Available
//          Bit0=University 0-1
//          Bit1=University 0-2
//          Bit2=University 0-3
//          Bit3=University 0-4
//          Bit4=University 0-5
//          Bit5=University 0-6
//          Bit6=University 0-7
//          Bit7=University 0-8
// $16CA01: [NBit] Level Unlock - University
//          0x00=Locked, 0x01=Available
//          Bit0=University 0-9
//          Bit1=University 0-10
//          Bit2=University 0-11
// $16CA04: [NBit] Level Unlock Flags - The Gardens
//          Bit0=1-1 Puzzle
//          Bit1=1-2 Puzzle
//          Bit2=1-3 Puzzle
//          Bit3=1-4 Puzzle
//          Bit4=1-5 Puzzle
//          Bit5=1-6 Puzzle
//          Bit6=1-7 Puzzle
//          Bit7=1-8 Puzzle
// $16CA05: [NBit] Level Unlock Flags - The Gardens
//          Bit0=1-9 Puzzle
//          Bit1=1-10 Puzzle
//          Bit2=1-11 Puzzle
// $16CA06: [NBit] Level Unlock Flags - The Gardens
//          Bit0=1-1 Action Puzzle
//          Bit1=1-2 Action Puzzle
//          Bit2=1-3 Action Puzzle
//          Bit3=1-4 Action Puzzle
//          Bit4=1-5 Action Puzzle
//          Bit5=1-6 Action Puzzle
//          Bit6=1-7 Action Puzzle
//          Bit7=1-8 Action Puzzle
// $16CA07: [NBit] Level Unlock Flags - The Gardens
//          Bit0=1-9 Action Puzzle
//          Bit1=1-10 Action Puzzle
//          Bit2=1-11 Action Puzzle
// $16CA08: [NBit] Level Unlock Flags - Metro
//          Bit0=2-1 Puzzle
//          Bit1=2-2 Puzzle
//          Bit==2-3 Puzzle
//          Bit3=2-4 Puzzle
//          Bit4=2-5 Puzzle
//          Bit5=2-6 Puzzle
//          Bit6=2-7 Puzzle
//          Bit7=2-8 Puzzle
// $16CA09: [NBit] Level Unlock Flags - Metro
//          Bit0=2-9 Puzzle
//          Bit1=2-10 Puzzle
//          Bit2=2-11 Puzzle
// $16CA0A: [NBit] Level Unlock Flags - Metro
//          Bit0=2-1 Action Puzzle
//          Bit1=2-2 Action Puzzle
//          Bit2=2-3 Action Puzzle
//          Bit3=2-4 Action Puzzle
//          Bit4=2-5 Action Puzzle
//          Bit5=2-6 Action Puzzle
//          Bit6=2-7 Action Puzzle
//          Bit7=2-8 Action Puzzle
// $16CA0B: [NBit] Level Unlock Flags - Metro
//          Bit0=2-9 Action Puzzle
//          Bit1=2-10 Action Puzzle
//          Bit2=2-11 Action Puzzle
// $16CA0C: [NBit] Level Unlock Flags - The Peaks
//          Bit0=3-1 Puzzle
//          Bit1=3-2 Puzzle
//          Bit2=3-3 Puzzle
//          Bit3=3-4 Puzzle
//          Bit4=3-5 Puzzle
//          Bit5=3-6 Puzzle
//          Bit6=3-7 Puzzle
//          Bit7=3-8 Puzzle
// $16CA0D: [NBit] Level Unlock Flags - The Peaks
//          Bit0=3-9 Puzzle
//          Bit1=3-10 Puzzle
//          Bit2=3-11 Puzzle
// $16CA0E: [NBit] Level Unlock Flags - The Peaks
//          Bit0=3-1 Action Puzzle
//          Bit1=3-2 Action Puzzle
//          Bit2=3-3 Action Puzzle
//          Bit3=3-4 Action Puzzle
//          Bit4=3-5 Action Puzzle
//          Bit5=3-6 Action Puzzle
//          Bit6=3-7 Action Puzzle
//          Bit7=3-8 Action Puzzle
// $16CA0F: [NBit] Level Unlock Flags - The Peaks
//          Bit0=3-9 Action Puzzle
//          Bit1=3-10 Action Puzzle
//          Bit2=3-11 Action Puzzle
// $16CA10: [NBit] Level Unlock Flags - Ancient
//          Bit0=4-1 Puzzle
//          Bit1=4-2 Puzzle
//          Bit2=4-3 Puzzle
//          Bit3=4-4 Puzzle
//          Bit4=4-5 Puzzle
//          Bit5=4-6 Puzzle
//          Bit6=4-7 Puzzle
//          Bit7=4-8 Puzzle
// $16CA11: [NBit] Level Unlock Flags - Ancient
//          Bit0=4-9 Puzzle
//          Bit1=4-10 Puzzle
//          Bit2=4-11 Puzzle
// $16CA12: [NBit] Level Unlock Flags - Ancient
//          Bit0=4-1 Action Puzzle
//          Bit1=4-2 Action Puzzle
//          Bit2=4-3 Action Puzzle
//          Bit3=4-4 Action Puzzle
//          Bit4=4-5 Action Puzzle
//          Bit5=4-6 Action Puzzle
//          Bit6=4-7 Action Puzzle
//          Bit7=4-8 Action Puzzle
// $16CA13: [NBit] Level Unlock Flags - Ancient
//          Bit0=4-9 Action Puzzle
//          Bit1=4-10 Action Puzzle
//          Bit2=4-11 Action Puzzle
// $16CA14: [NBit] Level Unlock Flags - Shoreline
//          Bit0=5-1 Puzzle
//          Bit1=5-2 Puzzle
//          Bit2=5-3 Puzzle
//          Bit3=5-4 Puzzle
//          Bit4=5-5 Puzzle
//          Bit5=5-6 Puzzle
//          Bit6=5-7 Puzzle
//          Bit7=5-8 Puzzle
// $16CA15: [NBit] Level Unlock Flags - Shoreline
//          Bit0=5-9 Puzzle
//          Bit1=5-10 Puzzle
//          Bit2=5-11 Puzzle
// $16CA16: [NBit] Level Unlock Flags - Shoreline
//          Bit0=5-1 Action Puzzle
//          Bit1=5-2 Action Puzzle
//          Bit2=5-3 Action Puzzle
//          Bit3=5-4 Action Puzzle
//          Bit4=5-5 Action Puzzle
//          Bit5=5-6 Action Puzzle
//          Bit6=5-7 Action Puzzle
//          Bit7=5-8 Action Puzzle
// $16CA17: [NBit] Level Unlock Flags - Shoreline
//          Bit0=5-9 Action Puzzle
//          Bit1=5-10 Action Puzzle
//          Bit2=5-11 Action Puzzle
// $16CA18: [NBit] Level Unlock Flags - Outer Wild
//          Bit0=6-1 Puzzle
//          Bit1=6-2 Puzzle
//          Bit2=6-3 Puzzle
//          Bit3=6-4 Puzzle
//          Bit4=6-5 Puzzle
//          Bit5=6-6 Puzzle
//          Bit6=6-7 Puzzle
//          Bit7=6-8 Puzzle
// $16CA19: [NBit] Level Unlock Flags - Outer Wild
//          Bit0=6-9 Puzzle
//          Bit1=6-10 Puzzle
//          Bit2=6-11 Puzzle
// $16CA1A: [NBit] Level Unlock Flags - Outer Wild
//          Bit0=6-1 Action Puzzle
//          Bit1=6-2 Action Puzzle
//          Bit2=6-3 Action Puzzle
//          Bit3=6-4 Action Puzzle
//          Bit4=6-5 Action Puzzle
//          Bit5=6-6 Action Puzzle
//          Bit6=6-7 Action Puzzle
//          Bit7=6-8 Action Puzzle
// $16CA1B: [NBit] Level Unlock Flags - Outer Wild
//          Bit0=6-9 Action Puzzle
//          Bit1=6-10 Action Puzzle
//          Bit2=6-11 Action Puzzle
// $16CA1C: [NBit] Level Unlock Flags - Stunt Park
//          Bit0=7-1 Puzzle
//          Bit1=7-2 Puzzle
//          Bit2=7-3 Puzzle
//          Bit3=7-4 Puzzle
//          Bit4=7-5 Puzzle
//          Bit5=7-6 Puzzle
//          Bit6=7-7 Puzzle
//          Bit7=7-8 Puzzle
// $16CA1D: [NBit] Level Unlock Flags - Stunt Park
//          Bit0=7-9 Puzzle
//          Bit1=7-10 Puzzle
//          Bit2=7-11 Puzzle
// $16CA1E: [NBit] Level Unlock Flags - Stunt Park
//          Bit0=7-1 Action Puzzle
//          Bit1=7-2 Action Puzzle
//          Bit2=7-3 Action Puzzle
//          Bit3=7-4 Action Puzzle
//          Bit4=7-5 Action Puzzle
//          Bit5=7-6 Action Puzzle
//          Bit6=7-7 Action Puzzle
//          Bit7=7-8 Action Puzzle
// $16CA1F: [NBit] Level Unlock Flags - Outer Wild
//          Bit0=7-9 Action Puzzle
//          Bit1=7-10 Action Puzzle
//          Bit2=7-11 Action Puzzle
// $16CA20: [NBit] Level Unlock Flags - Frontier
//          Bit0=8-1 Puzzle
//          Bit1=8-2 Puzzle
//          Bit2=8-3 Puzzle
//          Bit3=8-4 Puzzle
//          Bit4=8-5 Puzzle
//          Bit5=8-6 Puzzle
//          Bit6=8-7 Puzzle
//          Bit7=8-8 Puzzle
// $16CA21: [NBit] Level Unlock Flags - Outer Wild
//          Bit0=8-9 Puzzle
//          Bit1=8-10 Puzzle
//          Bit2=8-11 Puzzle
// $16CA22: [NBit] Level Unlock Flags - Frontier
//          Bit0=8-1 Action Puzzle
//          Bit1=8-2 Action Puzzle
//          Bit2=8-3 Action Puzzle
//          Bit3=8-4 Action Puzzle
//          Bit4=8-5 Action Puzzle
//          Bit5=8-6 Action Puzzle
//          Bit6=8-7 Action Puzzle
//          Bit7=8-8 Action Puzzle
// $16CA23: [NBit] Level Unlock Flags - Frontier
//          Bit0=8-9 Action Puzzle
//          Bit1=8-10 Action Puzzle
//          Bit2=8-11 Action Puzzle
// $16CA24: [NBit] Level Unlock Flags - Dark Hollow
//          Bit0=9-1 Puzzle
//          Bit1=9-2 Puzzle
//          Bit2=9-3 Puzzle
//          Bit3=9-4 Puzzle
//          Bit4=9-5 Puzzle
//          Bit5=9-6 Puzzle
//          Bit6=9-7 Puzzle
//          Bit7=9-8 Puzzle
// $16CA25: [NBit] Level Unlock Flags - Dark Hollow
//          Bit0=9-9 Puzzle
//          Bit1=9-10 Puzzle
//          Bit2=9-11 Puzzle
// $16CA26: [NBit] Level Unlock Flags - Dark Hollow
//          Bit0=9-1 Action Puzzle
//          Bit1=9-2 Action Puzzle
//          Bit2=9-3 Action Puzzle
//          Bit3=9-4 Action Puzzle
//          Bit4=9-5 Action Puzzle
//          Bit5=9-6 Action Puzzle
//          Bit6=9-7 Action Puzzle
//          Bit7=9-8 Action Puzzle
// $16CA27: [NBit] Level Unlock Flags - Dark Hollow
//          Bit0=9-9 Action Puzzle
//          Bit1=9-10 Action Puzzle
//          Bit2=9-11 Action Puzzle
// $16CA28: [NBit] Level Unlock Flags - Mish Mash
//          Bit0=10-1 Puzzle
//          Bit1=10-2 Puzzle
//          Bit2=10-3 Puzzle
//          Bit3=10-4 Puzzle
//          Bit4=10-5 Puzzle
//          Bit5=10-6 Puzzle
//          Bit6=10-7 Puzzle
//          Bit7=10-8 Puzzle
// $16CA29: [NBit] Level Unlock Flags - Mish Mash
//          Bit0=10-9 Puzzle
//          Bit1=10-10 Puzzle
//          Bit2=10-11 Puzzle
// $16CA2A: [NBit] Level Unlock Flags - Mish Mash
//          Bit0=10-1 Action Puzzle
//          Bit1=10-2 Action Puzzle
//          Bit2=10-3 Action Puzzle
//          Bit3=10-4 Action Puzzle
//          Bit4=10-5 Action Puzzle
//          Bit5=10-6 Action Puzzle
//          Bit6=10-7 Action Puzzle
//          Bit7=10-8 Action Puzzle
// $16CA2B: [NBit] Level Unlock Flags - Mish Mash
//          Bit0=10-9 Action Puzzle
//          Bit1=10-10 Action Puzzle
//          Bit2=10-11 Action Puzzle
// $2AB2CC: [32bit] Potential Pointer For Dictionary - + 0x698
// $2AB2D4: [32bit] In Level Dictionary Pointer
//          +0x5d8=First ASCII Character
// Halloween Racer
// #ID = 6276

// $C4F0: [8bit] Game Mode
//        0x00=Championship
//        0x01=Practice
// $C4F6: [8bit] Championship Difficulty
//        0x00=Rookie
//        0x01=Advanced
//        0x02=Expert
// $C800: [8bit] Score (Ones)
// $C801: [8bit] Score (Tens)
// $C802: [8bit] Score (Hundreds)
// $C803: [8bit] Score (Thousands)
// $C804: [8bit] Score (Ten Thousands)
// $C808: [8bit] High Score (Ones)
// $C809: [8bit] High Score (Tens)
// $C80A: [8bit] High Score (Hundreds)
// $C80B: [8bit] High Score (Thousands)
// $C80C: [8bit] High Score (Ten Thousands)
// $DFF6: [8bit] Screen ID (Buggy, Not In Use for Achievements)
//        0x00=Mode Selection
//        0x11=Options
//        0x14=Race Preview
//        0x18=Title Screen
//        0x28=Race Preview
//        0x32=Main Menu
//        0x40=Language
//        0x62=Enter Name
//        0x68=Course Selection
//        0x7a=Hall of Fame
//        0x89=Credits
// $DFFE: [8bit] Game State
//        0x29=Loading
//        0x2c=Microids Splash Screen
//        0x32=Selecting Language
//        0x42=Main Menu
//        0xc3=In Game
// $FFA0: [8bit] Course ID
//        0x00=Vulcan
//        0x01=Egypt
//        0x02=Red Moon
//        0x03=Mine
//        0x04=Jungle
//        0x05=Icefield
//        0x06=The Garden
// $FFA1: [8bit] Floor ID
// $FFA6: [8bit] Speed
//        0x00=None
//        0x28=Max
// $FFB2: [NBit] Bonus Course Available Flag
//        Bit6=The Garden (Secret)
//        
//        For Unlock: Check $ffe3 = 0x13
// $FFB7: [8bit] Character ID
// $FFC0: [NBit] Game Function Flags
//        Bit=Timer Pause
//        Bit7=End Race and Flip to Results Screen (Determined by other variables)
// $FFC2: [8bit] Position
// $FFC3: [8bit] Timer Seconds
// $FFC4: [8bit] Timer Minutes
// $FFC5: [8bit] Lap Num
// $FFC6: [8bit] Max Laps
// $FFC8: [NBit] Game Function Boolean
//        Bit2=Character Controlled (On while In Level)
//        Bit3=Paused
//        Bit6=Power Up - Timer (+40 seconds)
//        Bit7=Flashing Timer
// $FFE0: [NBit] Course Displayed Flags - Written From Different Address
//        Bit6=The Garden (Secret) (Written based on Bit6 Flag at $ffb2
// $FFE3: [8bit] Race Number
//        End of Championship:
//        Delta Race > Mem Race + 1
// $FFE5: [8bit] Championship Difficulty Level Unlocked
//        0x01=Rookie
//        0x02=Advanced
//        0x03=Expert
// $FFEA: [8bit] Language
//        0=English
//        1=French
//        2=Dutch
//        3=Italian
//        4=Spanish
//        5=Portuguese

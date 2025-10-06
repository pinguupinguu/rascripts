// Halloween Racer
// #ID = 6276

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
// $FFB2: [NBit] Bonus Course Available Flag
//        Bit6=The Garden (Secret)
// $FFC2: [8bit] Position
// $FFC5: [8bit] Lap Num
// $FFC6: [8bit] Max Laps
// $FFE0: [NBit] Course Displayed Flags - Written From Different Address
//        Bit6=The Garden (Secret) (Written based on Bit6 Flag at $ffb2
// $FFE5: [8bit] Championship Difficulty Level Unlocked
//        0x01=Rookie
//        0x02=Advanced
//        0x03=Expert

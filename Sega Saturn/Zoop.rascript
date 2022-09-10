// Zoop
// #ID = 17157

// $1D905E: [16bit] Number of Bonus Springs
// $1D9240: [16bit] Current Combo
// $1DC226: [8bit] Game B Level Start
//          0x00=Level 1
// $1DC227: [8bit] Active Game
//          0x00=Game A
//          0x01=Game B
// $1DC228: [8bit] Game B Difficulty (Determines Number of Starting Shapes)
// $1DC229: [8bit] Game A Level Start
//          0x00=Level 1
// $1DC22B: [8bit] Game A Difficulty (Determines Number of Starting Shapes)
// $1DD3C9: [8bit] Demo Text Displayed
//          0x00=No
//          0x01=Yes
// $1E1C5A: [16bit] Current Color
//          0x00=Blue
//          0x01=Green
//          0x02=Purple
//          0x03=Red
//          0x04=Proximity Bomb
//          0x05=Line Bomb
//          0x06=Color Bomb
// $1E1C6A: [8bit] Orientation
//          0x01=Right
//          0x02=Down
//          0x03=Left
//          0x04=Up
// $1E1C6C: [16bit] Score Amt * 65536
//          When Other Score Address rolls over 0xffff, address is incremented by 1.
// $1E1C6E: [16bit] Score
// $1E3E4E: [16bit] Stage
// $1E3E5E: [16bit] Shapes Left
// $1E3E6E: [16bit] Pieces Frozen
//          0x00=No
//          0x01=Yes
//          
//          Death Occurs When Address = 1 while Shapes != 0

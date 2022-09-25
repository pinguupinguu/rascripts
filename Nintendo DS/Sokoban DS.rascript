// Sokoban DS
// #ID = 20100

// $000000: fuck off
// $0000A0: Notes format for Record Moves:
//          [32bit] NameOfCourse - <Max number of moves allowed for five stars)
// $0C3C34: [24bit] Pointer
//          +0x874=Boxes on Targets Count
// $0D9604: [32bit] Number of Steps (Current Level)
// $0DCDEE: [20 bytes] Training Puzzle Flags
//          
//          T01 Moves Record - 17
// $0DCDF2: [32bit] T02 Moves Record - 8
// $0DCDF6: [32bit] T03 Moves Record - 26
// $0DCDFA: [32bit] T04 Moves Record - 21
// $0DCDFE: [32bit] T05 Moves Record - 30
// $0DCE02: [80 bytes] Green Puzzle Flags
//          
//          Green-001 Moves Record - 28
// $0DCE06: [32bit] Green-002 Moves Record - 57
// $0DCE0A: [32bit] Green-003 Moves Record - 56
// $0DCE0E: [32bit] Green-004 Moves Record - 38
// $0DCE12: [32bit] Green-005 Moves Record - 230
// $0DCE16: [32bit] Green-006 Moves Record - 82
// $0DCE1A: [32bit] Green-007 Moves Record - 202
// $0DCE1E: [32bit] Green-008 Moves Record - 262
// $0DCE22: [32bit] Green-009 Moves Record - 216
// $0DCE26: [32bit] Green-010 Moves Record - 102
// $0DCE2A: [32bit] Green-011 Moves Record - 112
// $0DCE2E: [32bit] Green-012 Moves Record - 121
// $0DCE32: [32bit] Green-013 Moves Record - 103
// $0DCE36: [32bit] Green-014 Moves Record - 126
// $0DCE3A: [32bit] Green-015 Moves Record - 148
// $0DCE3E: [32bit] Green-016 Moves Record - 122
// $0DCE42: [32bit] Green-017 Moves Record - 268
// $0DCE46: [32bit] Green-018 Moves Record - 91
// $0DCE4A: [32bit] Green-019 Moves Record - 77
// $0DCE4E: [32bit] Green-020 Moves Record - 72
// $0DCE52: [80 bytes] Egypt Puzzle Flags
//          
//          Egypt-021 Moves Record - 115
// $0DCE56: [32bit] Egypt-022 Moves Record - 51
// $0DCE5A: [32bit] Egypt-023 Moves Record - 38
// $0DCE5E: [32bit] Egypt-024 Moves Record - 285
// $0DCE62: [32bit] Egypt-025 Moves Record - 98
// $0DCE66: [32bit] Egypt-026 Moves Record - 67
// $0DCE6A: [32bit] Egypt-027 Moves Record - 60
// $0DCE6E: [32bit] Egypt-028 Moves Record - 217
// $0DCE72: [32bit] Egypt-029 Moves Record - 270
// $0DCE76: [32bit] Egypt-030 Moves Record - 185
// $0DCE7A: [32bit] Egypt-031 Moves Record - 362
// $0DCE7E: [32bit] Egypt-032 Moves Record - 225
// $0DCE82: [32bit] Egypt-033 Moves Record - 235
// $0DCE86: [32bit] Egypt-034 Moves Record - 130
// $0DCE8A: [32bit] Egypt-035 Moves Record - 426
// $0DCE8E: [32bit] Egypt-036 Moves Record - 78
// $0DCE92: [32bit] Egypt-037 Moves Record - 356
// $0DCE96: [32bit] Egypt-038 Moves Record - 155
// $0DCE9A: [32bit] Egypt-039 Moves Record - 326
// $0DCE9E: [32bit] Egypt-040 Moves Record - 266
// $0DCEA2: [80 bytes] Kitchen Puzzle Flags
//          
//          Kitchen-041 Moves Record - 128
// $0DCEA6: [32bit] Kitchen-042 Moves Record - 95
// $0DCEAA: [32bit] Kitchen-043 Moves Record - 121
// $0DCEAE: [32bit] Kitchen-044 Moves Record - 62
// $0DCEB2: [32bit] Kitchen-045 Moves Record - 120
// $0DCEB6: [32bit] Kitchen-046 Moves Record - 47
// $0DCEBA: [32bit] Kitchen-047 Moves Record - 348
// $0DCEBE: [32bit] Kitchen-048 Moves Record - 61
// $0DCEC2: [32bit] Kitchen-049 Moves Record - 53
// $0DCEC6: [32bit] Kitchen-050 Moves Record - 110
// $0DCECA: [32bit] Kitchen-051 Moves Record - 70
// $0DCECE: [32bit] Kitchen-052 Moves Record - 65
// $0DCED2: [32bit] Kitchen-053 Moves Record - 96
// $0DCED6: [32bit] Kitchen-054 Moves Record - 163
// $0DCEDA: [32bit] Kitchen-055 Moves Record - 111
// $0DCEDE: [32bit] Kitchen-056 Moves Record - 156
// $0DCEE2: [32bit] Kitchen-057 Moves Record - 120
// $0DCEE6: [32bit] Kitchen-058 Moves Record - 172
// $0DCEEA: [32bit] Kitchen-059 Moves Record - 332
// $0DCEEE: [32bit] Kitchen-060 Moves Record - 352
// $0DCEF2: [80 bytes] Maya Puzzle Flags
//          
//          Maya-061 Moves Record - 96
// $0DCEF6: [32bit] Maya-062 Moves Record - 88
// $0DCEFA: [32bit] Maya-063 Moves Record - 455
// $0DCEFE: [32bit] Maya-064 Moves Record - 66
// $0DCF02: [32bit] Maya-065 Moves Record - 116
// $0DCF06: [32bit] Maya-066 Moves Record - 142
// $0DCF0A: [32bit] Maya-067 Moves Record - 435
// $0DCF0E: [32bit] Maya-068 Moves Record - 571
// $0DCF12: [32bit] Maya-069 Moves Record - 108
// $0DCF16: [32bit] Maya-070 Moves Record - 126
// $0DCF1A: [32bit] Maya-071 Moves Record - 227
// $0DCF1E: [32bit] Maya-072 Moves Record - 387
// $0DCF22: [32bit] Maya-073 Moves Record - 263
// $0DCF26: [32bit] Maya-074 Moves Record - 178
// $0DCF2A: [32bit] Maya-075 Moves Record - 173
// $0DCF2E: [32bit] Maya-076 Moves Record - 228
// $0DCF32: [32bit] Maya-077 Moves Record - 840
// $0DCF36: [32bit] Maya-078 Moves Record - 97
// $0DCF3A: [32bit] Maya-079 Moves Record - 400
// $0DCF3E: [32bit] Maya-080 Moves Record - 415
// $0DCF42: [80 bytes] Brick Puzzle Flags
// $0DCF92: [100 bytes] Beach Puzzle Flags
// $0DCFF6: [100 bytes] Field Puzzle Flags
// $0DD05A: [100 bytes] Wood Puzzle Flags
// $0DD0BE: [100 bytes] Snow Puzzle Flags
// $0DD122: [100 bytes] Metal Puzzle Flags
// $0DD186: [100 bytes] Laval Puzzle Flags

// SuperLite 1500 Series: Nankuro
// #ID = 14582

// $0074BC: [32bit] Game Is Loaded
//          0x00=False
//          0x01=True
function save_protection() => prev(dword(0x74bc)) != 0
// $0756C4: [4 bytes] Puzzle 1 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0756C8: [4 bytes] Puzzle 2 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0756CC: [4 bytes] Puzzle 3 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0756D0: [4 bytes] Puzzle 4 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0756E4: [4 bytes] Puzzle 5 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0756E8: [4 bytes] Puzzle 6 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0756EC: [4 bytes] Puzzle 7 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0756F0: [4 bytes] Puzzle 8 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075704: [4 bytes] Puzzle 13 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075708: [4 bytes] Puzzle 14 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07570C: [4 bytes] Puzzle 15 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075710: [4 bytes] Puzzle 16 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075724: [4 bytes] Puzzle 9 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075728: [4 bytes] Puzzle 10 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07572C: [4 bytes] Puzzle 11 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075730: [4 bytes] Puzzle 12 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075744: [4 bytes] Puzzle 17 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075748: [4 bytes] Puzzle 18 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07574C: [4 bytes] Puzzle 19 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075750: [4 bytes] Puzzle 20 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075764: [4 bytes] Puzzle 21 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075768: [4 bytes] Puzzle 22 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07576C: [4 bytes] Puzzle 23 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075770: [4 bytes] Puzzle 24 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075784: [4 bytes] Puzzle 25 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075788: [4 bytes] Puzzle 26 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07578C: [4 bytes] Puzzle 27 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075790: [4 bytes] Puzzle 28 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757A4: [4 bytes] Puzzle 61 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757A8: [4 bytes] Puzzle 62 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757AC: [4 bytes] Puzzle 63 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757B0: [4 bytes] Puzzle 64 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757C4: [4 bytes] Puzzle 29 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757C8: [4 bytes] Puzzle 30 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757CC: [4 bytes] Puzzle 31 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757D0: [4 bytes] Puzzle 32 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757E4: [4 bytes] Puzzle 45 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757E8: [4 bytes] Puzzle 46 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757EC: [4 bytes] Puzzle 47 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0757F0: [4 bytes] Puzzle 48 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075804: [4 bytes] Puzzle 33 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075808: [4 bytes] Puzzle 34 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07580C: [4 bytes] Puzzle 35 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075810: [4 bytes] Puzzle 36 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075824: [4 bytes] Puzzle 37 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075828: [4 bytes] Puzzle 38 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07582C: [4 bytes] Puzzle 39 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075830: [4 bytes] Puzzle 40 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075844: [4 bytes] Puzzle 41 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075848: [4 bytes] Puzzle 42 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07584C: [4 bytes] Puzzle 43 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075850: [4 bytes] Puzzle 44 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075864: [4 bytes] Puzzle 49 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075868: [4 bytes] Puzzle 50 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07586C: [4 bytes] Puzzle 51 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075870: [4 bytes] Puzzle 52 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075884: [4 bytes] Puzzle 57 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075888: [4 bytes] Puzzle 58 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07588C: [4 bytes] Puzzle 59 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075890: [4 bytes] Puzzle 60 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758A4: [4 bytes] Puzzle 77 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758A8: [4 bytes] Puzzle 78 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758AC: [4 bytes] Puzzle 79 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758B0: [4 bytes] Puzzle 80 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758C4: [4 bytes] Puzzle 89 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758C8: [4 bytes] Puzzle 90 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758CC: [4 bytes] Puzzle 91 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758D0: [4 bytes] Puzzle 92 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758E4: [4 bytes] Puzzle 81 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758E8: [4 bytes] Puzzle 82 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758EC: [4 bytes] Puzzle 83 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0758F0: [4 bytes] Puzzle 84 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075904: [4 bytes] Puzzle 93 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075908: [4 bytes] Puzzle 94 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07590C: [4 bytes] Puzzle 95 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075910: [4 bytes] Puzzle 96 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075924: [4 bytes] Puzzle 65 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075928: [4 bytes] Puzzle 66 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07592C: [4 bytes] Puzzle 67 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075930: [4 bytes] Puzzle 68 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075944: [4 bytes] Puzzle 69 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075948: [4 bytes] Puzzle 70 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07594C: [4 bytes] Puzzle 71 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075950: [4 bytes] Puzzle 72 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075964: [4 bytes] Puzzle 85 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075968: [4 bytes] Puzzle 86 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07596C: [4 bytes] Puzzle 87 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075970: [4 bytes] Puzzle 88 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075984: [4 bytes] Puzzle 73 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075988: [4 bytes] Puzzle 74 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $07598C: [4 bytes] Puzzle 75 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075990: [4 bytes] Puzzle 76 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759A4: [4 bytes] Puzzle 101 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759A8: [4 bytes] Puzzle 102 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759AC: [4 bytes] Puzzle 103 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759B0: [4 bytes] Puzzle 104 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759C4: [4 bytes] Puzzle 121 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759C8: [4 bytes] Puzzle 122 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759CC: [4 bytes] Puzzle 123 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759D0: [4 bytes] Puzzle 124 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759E4: [4 bytes] Puzzle 97 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759E8: [4 bytes] Puzzle 98 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759EC: [4 bytes] Puzzle 99 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $0759F0: [4 bytes] Puzzle 100 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A04: [4 bytes] Puzzle 105 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A08: [4 bytes] Puzzle 106 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A0C: [4 bytes] Puzzle 107 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A10: [4 bytes] Puzzle 108 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A24: [4 bytes] Puzzle 109 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A28: [4 bytes] Puzzle 110 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A2C: [4 bytes] Puzzle 111 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A30: [4 bytes] Puzzle 112 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A44: [4 bytes] Puzzle 125 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A48: [4 bytes] Puzzle 126 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A4C: [4 bytes] Puzzle 127 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A50: [4 bytes] Puzzle 128 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A64: [4 bytes] Puzzle 113 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A68: [4 bytes] Puzzle 114 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A6C: [4 bytes] Puzzle 115 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A70: [4 bytes] Puzzle 116 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A84: [4 bytes] Puzzle 129 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A88: [4 bytes] Puzzle 130 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A8C: [4 bytes] Puzzle 131 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075A90: [4 bytes] Puzzle 132 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AA4: [4 bytes] Puzzle 137 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AA8: [4 bytes] Puzzle 138 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AAC: [4 bytes] Puzzle 139 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AB0: [4 bytes] Puzzle 140 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AC4: [4 bytes] Puzzle 133 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AC8: [4 bytes] Puzzle 134 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075ACC: [4 bytes] Puzzle 135 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AD0: [4 bytes] Puzzle 136 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AE4: [4 bytes] Puzzle 141 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AE8: [4 bytes] Puzzle 142 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AEC: [4 bytes] Puzzle 143 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075AF0: [4 bytes] Puzzle 144 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B04: [4 bytes] Puzzle 145 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B08: [4 bytes] Puzzle 146 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B0C: [4 bytes] Puzzle 147 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B10: [4 bytes] Puzzle 148 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B24: [4 bytes] Puzzle 153 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B28: [4 bytes] Puzzle 154 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B2C: [4 bytes] Puzzle 155 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B30: [4 bytes] Puzzle 156 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B44: [4 bytes] Puzzle 149 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B48: [4 bytes] Puzzle 150 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B4C: [4 bytes] Puzzle 151 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B50: [4 bytes] Puzzle 152 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B64: [4 bytes] Puzzle 161 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B68: [4 bytes] Puzzle 162 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B6C: [4 bytes] Puzzle 163 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B70: [4 bytes] Puzzle 164 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B84: [4 bytes] Puzzle 165 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B88: [4 bytes] Puzzle 166 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B8C: [4 bytes] Puzzle 167 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075B90: [4 bytes] Puzzle 168 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BA4: [4 bytes] Puzzle 185 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BA8: [4 bytes] Puzzle 186 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BAC: [4 bytes] Puzzle 187 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BB0: [4 bytes] Puzzle 188 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BC4: [4 bytes] Puzzle 189 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BC8: [4 bytes] Puzzle 190 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BCC: [4 bytes] Puzzle 191 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BD0: [4 bytes] Puzzle 192 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BE4: [4 bytes] Puzzle 169 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BE8: [4 bytes] Puzzle 170 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BEC: [4 bytes] Puzzle 171 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075BF0: [4 bytes] Puzzle 172 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C04: [4 bytes] Puzzle 181 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C08: [4 bytes] Puzzle 182 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C0C: [4 bytes] Puzzle 183 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C10: [4 bytes] Puzzle 184 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C24: [4 bytes] Puzzle 173 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C28: [4 bytes] Puzzle 174 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C2C: [4 bytes] Puzzle 175 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C30: [4 bytes] Puzzle 176 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C44: [4 bytes] Puzzle 177 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C48: [4 bytes] Puzzle 178 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C4C: [4 bytes] Puzzle 179 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C50: [4 bytes] Puzzle 180 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C64: [4 bytes] Puzzle 193 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C68: [4 bytes] Puzzle 194 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C6C: [4 bytes] Puzzle 195 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C70: [4 bytes] Puzzle 196 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C84: [4 bytes] Puzzle 197 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C88: [4 bytes] Puzzle 198 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C8C: [4 bytes] Puzzle 199 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075C90: [4 bytes] Puzzle 200 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CA4: [4 bytes] Puzzle 157 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CA8: [4 bytes] Puzzle 158 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CAC: [4 bytes] Puzzle 159 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CB0: [4 bytes] Puzzle 160 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CC4: [4 bytes] Puzzle 53 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CC8: [4 bytes] Puzzle 54 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CCC: [4 bytes] Puzzle 55 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CD0: [4 bytes] Puzzle 56 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CE4: [4 bytes] Puzzle 117 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CE8: [4 bytes] Puzzle 118 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CEC: [4 bytes] Puzzle 119 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
// $075CF0: [4 bytes] Puzzle 120 Entry:
//          [8bit] Puzzle Number
//          [8bit] Puzzle isClear 0x00=False 0x01= True
//          [16bit] Time (Seconds)
function puzzle_tally() {
    puzzle_array = 0
    puzzle_table = 0x0756C4
    for i in range(1, 50){
        puzzle_array = puzzle_array + byte(puzzle_table + 1)
        puzzle_array = puzzle_array + byte(puzzle_table + 4 + 1)
        puzzle_array = puzzle_array + byte(puzzle_table + 8 + 1)
        puzzle_array = puzzle_array + byte(puzzle_table + 12 + 1)
        puzzle_table = puzzle_table + 32
    }    
return puzzle_array
}
function puzzle_cheev(title, my_id, count, my_points){
    achievement(
        title,
        "Solve " + count + " puzzles",
        points= my_points,
        id=my_id,
        trigger=
            save_protection() &&
            prev(puzzle_tally()) == count - 1 &&
            measured(puzzle_tally() == count)
    )
}
puzzle_cheev("Japan Conqueror 1", 197328, 10, 10)
puzzle_cheev("Japan Conqueror 2", 197329, 20, 10)
puzzle_cheev("Japan Conqueror 3", 197330, 30, 10)
puzzle_cheev("Japan Conqueror 4", 197331, 40, 10)
puzzle_cheev("Japan Conqueror 5", 197332, 50, 10)
puzzle_cheev("Japan Conqueror 6", 197333, 60, 10)
puzzle_cheev("Japan Conqueror 7", 197334, 70, 10)
puzzle_cheev("Japan Conqueror 8", 197335, 80, 10)
puzzle_cheev("Japan Conqueror 9", 197336, 90, 10)
puzzle_cheev("Japan Conqueror 10", 197337, 100, 10)
puzzle_cheev("Japan Conqueror 11", 197338, 110, 10)
puzzle_cheev("Japan Conqueror 12", 197339, 120, 10)
puzzle_cheev("Japan Conqueror 13", 197340, 130, 10)
puzzle_cheev("Japan Conqueror 14", 197341, 140, 10)
puzzle_cheev("Japan Conqueror 15", 197342, 150, 10)
puzzle_cheev("Japan Conqueror 16", 197343, 160, 25)
puzzle_cheev("Japan Conqueror 17", 197344, 170, 25)
puzzle_cheev("Japan Conqueror 18", 197345, 180, 25)
puzzle_cheev("Japan Conqueror 19", 197346, 190, 25)
puzzle_cheev("Japan Conqueror 20", 197347, 200, 25)
// $095B4E: [8bit] Active Difficulty
//          0x00=Easy
//          0x01=Medium
//          0x02=Hard
// $095B50: [8bit] Active Puzzle Number
// $0BDF44: [8bit] Puzzle Solved (Easy)
//          0x00=No
//          0x01=Yes
// $0BDF48: [8bit] Puzzle Timer Active (Easy)
//          0x00=No
//          0x01=Yes
// $0BDF4A: [16bit] Puzzle Timer - Minutes (Easy)
// $0BDF4C: [8bit] Puzzle Timer - Seconds (Easy)
// $0BE744: [8bit] Puzzle Solved (Other Difficulties)
//          0x00=No
//          0x01=Yes
// $0BE748: [8bit] Puzzle Timer Active (Other Difficulties)
//          0x00=No
//          0x01=Yes
// $0BE74A: [16bit] Puzzle Timer - Minutes (Other Difficulties)
// $0BE74C: [8bit] Timer - Seconds (Other Difficulties)
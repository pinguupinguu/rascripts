// Cooking Mama 2: Dinner with Friends
// #ID = 16716




// $17B10D: [4 bytes] Recipe Entry - Baguette
//          -[8bit] - ID = 0x1b
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)t
// $17B111: [4 bytes] Recipe Entry - Chinese Steamed Bun
//          -[8bit] - ID = 0x47
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B115: [4 bytes] Recipe Entry - Pizza (Default)
//          -[8bit] - ID = 0x1
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
function save_protection() => prev(byte(0x17B115)) != 1
// $17B119: [4 bytes] Recipe Entry - Strawberry Jam
//          -[8bit] - ID = 0x21
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B11D: [4 bytes] Recipe Entry - Peanut Butter (Default)
//          -[8bit] - ID = 0x2
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B121: [4 bytes] Recipe Entry - Fresh Spring Roll
//          -[8bit] - ID = 0x28
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B125: [4 bytes] Recipe Entry - Seafood Salad
//          -[8bit] - ID = 0x36
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B129: [4 bytes] Recipe Entry - Tokoroten
//          -[8bit] - ID = 0x17
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B12D: [4 bytes] Recipe Entry - Sea Bream Carpaccio (Default)
//          -[8bit] - ID = 0x3
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B131: [4 bytes] Recipe Entry - Namerou
//          -[8bit] - ID = 0x3f
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B135: [4 bytes] Recipe Entry - Corn Soup (Default)
//          -[8bit] - ID = 0x4
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B139: [4 bytes] Recipe Entry - Simmered Flounder
//          -[8bit] - ID = 0x33
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B13D: [4 bytes] Recipe Entry - Goya Stir Fry
//          -[8bit] - ID = 0x1e
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B141: [4 bytes] Recipe Entry - Sliced Burdock Root
//          -[8bit] - ID = 0x10
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B145: [4 bytes] Recipe Entry - Gyro
//          -[8bit] - ID = 0x32
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B149: [4 bytes] Recipe Entry - Shark Fin Soup
//          -[8bit] - ID = 0x48
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B14D: [4 bytes] Recipe Entry - Chinese Fried Pork
//          -[8bit] - ID = 0x4a
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B151: [4 bytes] Recipe Entry - Tempura
//          -[8bit] - ID = 0x11
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B155: [4 bytes] Recipe Entry - Tandoori Chicken
//          -[8bit] - ID = 0x4f
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B159: [4 bytes] Recipe Entry - T-Bone Steak (Default)
//          -[8bit] - ID = 0x5
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B15D: [4 bytes] Recipe Entry - Meatloaf
//          -[8bit] - ID = 0xd
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B161: [4 bytes] Recipe Entry - Mayonnaise Shrimp
//          -[8bit] - ID = 0x39
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B165: [4 bytes] Recipe Entry - Sauteed Liver & Chives
//          -[8bit] - ID = 0x4b
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B169: [4 bytes] Recipe Entry - Lotus Root with Mustard
//          -[8bit] - ID = 0x23
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B16D: [4 bytes] Recipe Entry - Sesame Dumplings
//          -[8bit] - ID = 0x45
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B171: [4 bytes] Recipe Entry - Almond Jelly
//          -[8bit] - ID = 0x30
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B175: [4 bytes] Recipe Entry - Apple Pie (Default)
//          -[8bit] - ID = 0x6
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B179: [4 bytes] Recipe Entry - Mango Pudding
//          -[8bit] - ID = 0x20
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B17D: [4 bytes] Recipe Entry - Crepe
//          -[8bit] - ID = 0x1c
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B181: [4 bytes] Recipe Entry - Doughnut
//          -[8bit] - ID = 0x3a
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B185: [4 bytes] Recipe Entry - Macaroon
//          - [8bit] - ID = 0x18
//          - [8bit] - ?
//          - [8bit] - Medal Percentage Score (Cook with Mama)
//          - [8bit] - Medal Percentage Score (Let's Cook!)
// $17B189: [4 bytes] Recipe Entry - Sweet Dumplings
//          -[8bit] - ID = 0x16
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B18D: [4 bytes] Recipe Entry - Sweet Potato
//          -[8bit] - ID = 0xe
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B191: [4 bytes] Recipe Entry - Strawberry Roll Cake
//          -[8bit] - ID = 0x2a
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B195: [4 bytes] Recipe Entry - Cinderella
//          -[8bit] - ID = 0x4d
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B199: [4 bytes] Recipe Entry - Pork Dumpling
//          -[8bit] - ID = 0x3c
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B19D: [4 bytes] Recipe Entry - Korean Pancake
//          -[8bit] - ID = 0x3e
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1A1: [4 bytes] Recipe Entry - Oden
//          -[8bit] - ID = 0x26
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1A5: [4 bytes] Recipe Entry - Kama Meshi
//          -[8bit] - ID = 0x46
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1A9: [4 bytes] Recipe Entry - Eel Rice Bowl (Default)
//          -[8bit] - ID = 0x7
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1AD: [4 bytes] Recipe Entry - Seafood Rice Bowl
//          -[8bit] - ID = 0x13
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1B1: [4 bytes] Recipe Entry - Chinese Porridge
//          -[8bit] - ID = 0x31
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1B5: [4 bytes] Recipe Entry - Loco Moco
//          -[8bit] - ID = 0x2c
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1B9: [4 bytes] Recipe Entry - Squid Fried Rice (Default)
//          -[8bit] - ID = 0x8
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1BD: [4 bytes] Recipe Entry - Keema Curry & Chapati
//          -[8bit] - ID = 0x49
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1C1: [4 bytes] Recipe Entry - California Roll
//          -[8bit] - ID = 0x37
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1C5: [4 bytes] Recipe Entry - Mama Yaki
//          -[8bit] - ID = 0x2d
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1C9: [4 bytes] Recipe Entry - Mama Rice Cracker
//          -[8bit] - ID = 0x14
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1CD: [4 bytes] Recipe Entry - Mama Cookie (Default)
//          -[8bit] - ID = 0x9
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1D1: [4 bytes] Recipe Entry - Ice Cream
//          -[8bit] - ID = 0x29
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1D5: [4 bytes] Recipe Entry - Hotcake
//          -[8bit] - ID = 0x4e
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1D9: [4 bytes] Recipe Entry - Panna Cotta (Default)
//          -[8bit] - ID = 0xa
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1DD: [4 bytes] Recipe Entry - Rice Croquette
//          -[8bit] - ID = 0x4c
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1E1: [4 bytes] Recipe Entry - Paprika Marinade
//          -[8bit] - ID = 0x1f
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1E5: [4 bytes] Recipe Entry - Ravioli
//          -[8bit] - ID = 0x22
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1E9: [4 bytes] Recipe Entry - Quiche
//          -[8bit] - ID = 0x3b
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1ED: [4 bytes] Recipe Entry - Lamb Steak
//          -[8bit] - ID = 0x44
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1F1: [4 bytes] Recipe Entry - Clam Chowder
//          -[8bit] - ID = 0x2b
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1F5: [4 bytes] Recipe Entry - Waffle (Default)
//          -[8bit] - ID = 0xb
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1F9: [4 bytes] Recipe Entry - Churros
//          -[8bit] - ID = 0x15
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B1FD: [4 bytes] Recipe Entry - Cream Puff
//          -[8bit] - ID = 0x27
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B201: [4 bytes] Recipe Entry - Pop Corn
//          -[8bit] - ID = 0x25
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B205: [4 bytes] Recipe Entry - Bananas Foster
//          -[8bit] - ID = 0x1b
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B209: [4 bytes] Recipe Entry - Jambalaya
//          -[8bit] - ID = 0x43
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B20D: [4 bytes] Recipe Entry - Scone
//          -[8bit] - ID = 0x41
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B211: [4 bytes] Recipe Entry - Bagel
//          -[8bit] - ID = 0x12
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B215: [4 bytes] Recipe Entry - Kimchi
//          -[8bit] - ID = 0x19
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B219: [4 bytes] Recipe Entry - Cream of Mushroom Pasta
//          -[8bit] - ID = 0x40
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B21D: [4 bytes] Recipe Entry - Cake
//          -[8bit] - ID = 0x24
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B221: [4 bytes] Recipe Entry - Chocolate
//          -[8bit] - ID = 0x3d
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B225: [4 bytes] Recipe Entry - Lobster
//          -[8bit] - ID = 0xf
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B229: [4 bytes] Recipe Entry - Chili Dog (Default)
//          -[8bit] - ID = 0xc
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)t
// $17B22D: [4 bytes] Recipe Entry - Grilled Meat
//          -[8bit] - ID = 0x1a
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B231: [4 bytes] Recipe Entry - Escargot
//          -[8bit] - ID = 0x2e
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B235: [4 bytes] Recipe Entry - Cotoletta
//          -[8bit] - ID = 0x34
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B239: [4 bytes] Recipe Entry - Bamboo Steamed Rice
//          -[8bit] - ID = 0x35
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B23D: [4 bytes] Recipe Entry - Fruit Juice
//          -[8bit] - ID = 0x38
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B241: [4 bytes] Recipe Entry - Hand Sushi Roll
//          -[8bit] - ID = 0x1d
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B245: [4 bytes] Recipe Entry - Squid Fried Soba
//          -[8bit] - ID = 0x2f
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
// $17B249: [4 bytes] Recipe Entry - Mama Lunch Box
//          -[8bit] - ID = 0x50
//          -[8bit] - ?
//          -[8bit] - Medal Percentage Score (Cook with Mama)
//          -[8bit] - Medal Percentage Score (Let's Cook!)
recipe_list = {
    "Baguette":{"ID":0x1b, "id_off":byte(0x17B10D), "unk_off":byte(0x17B10E), "mama_score":byte(0x17B10F), "lets_cook":byte(0x17B110)},
    "Chinese Steamed Bun":{"ID":0x47, "id_off":byte(0x17B111), "unk_off":byte(0x17B112), "mama_score":byte(0x17B113), "lets_cook":byte(0x17B114)},
    "Pizza":{"ID":0x1, "id_off":byte(0x17B115), "unk_off":byte(0x17B116), "mama_score":byte(0x17B117), "lets_cook":byte(0x17B118)},
    "Strawberry Jam":{"ID":0x21, "id_off":byte(0x17B119), "unk_off":byte(0x17B11A), "mama_score":byte(0x17B11B), "lets_cook":byte(0x17B11C)},
    "Peanut Butter":{"ID":0x2, "id_off":byte(0x17B11D), "unk_off":byte(0x17B11E), "mama_score":byte(0x17B11F), "lets_cook":byte(0x17B120)},
    "Fresh Spring Roll":{"ID":0x28, "id_off":byte(0x17B121), "unk_off":byte(0x17B122), "mama_score":byte(0x17B123), "lets_cook":byte(0x17B124)},
    "Seafood Salad":{"ID":0x36, "id_off":byte(0x17B125), "unk_off":byte(0x17B126), "mama_score":byte(0x17B127), "lets_cook":byte(0x17B128)},
    "Tokoroten":{"ID":0x17, "id_off":byte(0x17B129), "unk_off":byte(0x17B12A), "mama_score":byte(0x17B12B), "lets_cook":byte(0x17B12C)},
    "Sea Bream Carpaccio":{"ID":0x3, "id_off":byte(0x17B12D), "unk_off":byte(0x17B12E), "mama_score":byte(0x17B12F), "lets_cook":byte(0x17B130)},
    "Namerou":{"ID":0x3f, "id_off":byte(0x17B131), "unk_off":byte(0x17B132), "mama_score":byte(0x17B133), "lets_cook":byte(0x17B134)},
    "Corn Soup":{"ID":0x4, "id_off":byte(0x17B135), "unk_off":byte(0x17B136), "mama_score":byte(0x17B137), "lets_cook":byte(0x17B138)},
    "Simmered Flounder":{"ID":0x33, "id_off":byte(0x17B139), "unk_off":byte(0x17B13A), "mama_score":byte(0x17B13B), "lets_cook":byte(0x17B13C)},
    "Goya Stir Fry":{"ID":0x1e, "id_off":byte(0x17B13D), "unk_off":byte(0x17B13E), "mama_score":byte(0x17B13F), "lets_cook":byte(0x17B140)},
    "Sliced Burdock Root":{"ID":0x10, "id_off":byte(0x17B141), "unk_off":byte(0x17B142), "mama_score":byte(0x17B143), "lets_cook":byte(0x17B144)},
    "Gyro":{"ID":0x32, "id_off":byte(0x17B145), "unk_off":byte(0x17B146), "mama_score":byte(0x17B147), "lets_cook":byte(0x17B148)},
    "Shark Fin Soup":{"ID":0x48, "id_off":byte(0x17B149), "unk_off":byte(0x17B14A), "mama_score":byte(0x17B14B), "lets_cook":byte(0x17B14C)},
    "Chinese Fried Pork":{"ID":0x4a, "id_off":byte(0x17B14D), "unk_off":byte(0x17B14E), "mama_score":byte(0x17B14F), "lets_cook":byte(0x17B150)},
    "Tempura":{"ID":0x11, "id_off":byte(0x17B151), "unk_off":byte(0x17B152), "mama_score":byte(0x17B153), "lets_cook":byte(0x17B154)},
    "Tandoori Chicken":{"ID":0x4f, "id_off":byte(0x17B155), "unk_off":byte(0x17B156), "mama_score":byte(0x17B157), "lets_cook":byte(0x17B158)},
    "T-Bone Steak":{"ID":0x5, "id_off":byte(0x17B159), "unk_off":byte(0x17B15A), "mama_score":byte(0x17B15B), "lets_cook":byte(0x17B15C)},
    "Meatloaf":{"ID":0xd, "id_off":byte(0x17B15D), "unk_off":byte(0x17B15E), "mama_score":byte(0x17B15F), "lets_cook":byte(0x17B160)},
    "Mayonnaise Shrimp":{"ID":0x39, "id_off":byte(0x17B161), "unk_off":byte(0x17B162), "mama_score":byte(0x17B163), "lets_cook":byte(0x17B164)},
    "Sauteed Liver and Chives":{"ID":0x4b, "id_off":byte(0x17B165), "unk_off":byte(0x17B166), "mama_score":byte(0x17B167), "lets_cook":byte(0x17B168)},
    "Lotus Root with Mustard":{"ID":0x23, "id_off":byte(0x17B169), "unk_off":byte(0x17B16A), "mama_score":byte(0x17B16B), "lets_cook":byte(0x17B16C)},
    "Sesame Dumplings":{"ID":0x45, "id_off":byte(0x17B16D), "unk_off":byte(0x17B16E), "mama_score":byte(0x17B16F), "lets_cook":byte(0x17B170)},
    "Almond Jelly":{"ID":0x30, "id_off":byte(0x17B171), "unk_off":byte(0x17B172), "mama_score":byte(0x17B173), "lets_cook":byte(0x17B174)},
    "Apple Pie":{"ID":0x6, "id_off":byte(0x17B175), "unk_off":byte(0x17B176), "mama_score":byte(0x17B177), "lets_cook":byte(0x17B178)},
    "Mango Pudding":{"ID":0x20, "id_off":byte(0x17B179), "unk_off":byte(0x17B17A), "mama_score":byte(0x17B17B), "lets_cook":byte(0x17B17C)},
    "Crepe":{"ID":0x1c, "id_off":byte(0x17B17D), "unk_off":byte(0x17B17E), "mama_score":byte(0x17B17F), "lets_cook":byte(0x17B180)},
    "Doughnut":{"ID":0x3a, "id_off":byte(0x17B181), "unk_off":byte(0x17B182), "mama_score":byte(0x17B183), "lets_cook":byte(0x17B184)},
    "Macaroon":{"ID":0x18, "id_off":byte(0x17B185), "unk_off":byte(0x17B186), "mama_score":byte(0x17B187), "lets_cook":byte(0x17B188)},
    "Sweet Dumpling":{"ID":0x16, "id_off":byte(0x17B189), "unk_off":byte(0x17B18A), "mama_score":byte(0x17B18B), "lets_cook":byte(0x17B18C)},
    "Sweet Potato":{"ID":0xe, "id_off":byte(0x17B18D), "unk_off":byte(0x17B18E), "mama_score":byte(0x17B18F), "lets_cook":byte(0x17B190)},
    "Strawberry Roll Cake":{"ID":0x2a, "id_off":byte(0x17B191), "unk_off":byte(0x17B192), "mama_score":byte(0x17B193), "lets_cook":byte(0x17B194)},
    "Cinderella":{"ID":0x4d, "id_off":byte(0x17B195), "unk_off":byte(0x17B196), "mama_score":byte(0x17B197), "lets_cook":byte(0x17B198)},
    "Pork Dumpling":{"ID":0x3c, "id_off":byte(0x17B199), "unk_off":byte(0x17B19A), "mama_score":byte(0x17B19B), "lets_cook":byte(0x17B19C)},
    "Korean Pancake":{"ID":0x3e, "id_off":byte(0x17B19D), "unk_off":byte(0x17B19E), "mama_score":byte(0x17B19F), "lets_cook":byte(0x17B1A0)},
    "Oden":{"ID":0x26, "id_off":byte(0x17B1A1), "unk_off":byte(0x17B1A2), "mama_score":byte(0x17B1A3), "lets_cook":byte(0x17B1A4)},
    "Kama Meshi":{"ID":0x46, "id_off":byte(0x17B1A5), "unk_off":byte(0x17B1A6), "mama_score":byte(0x17B1A7), "lets_cook":byte(0x17B1A8)},
    "Eel Rice Bowl":{"ID":0x7, "id_off":byte(0x17B1A9), "unk_off":byte(0x17B1AA), "mama_score":byte(0x17B1AB), "lets_cook":byte(0x17B1AC)},
    "Seafood Rice Bowl":{"ID":0x13, "id_off":byte(0x17B1AD), "unk_off":byte(0x17B1AE), "mama_score":byte(0x17B1AF), "lets_cook":byte(0x17B1B0)},
    "Chinese Porridge":{"ID":0x31, "id_off":byte(0x17B1B1), "unk_off":byte(0x17B1B2), "mama_score":byte(0x17B1B3), "lets_cook":byte(0x17B1B4)},
    "Loco Moco":{"ID":0x2c, "id_off":byte(0x17B1B5), "unk_off":byte(0x17B1B6), "mama_score":byte(0x17B1B7), "lets_cook":byte(0x17B1B8)},
    "Squid Fried Rice":{"ID":0x8, "id_off":byte(0x17B1B9), "unk_off":byte(0x17B1BA), "mama_score":byte(0x17B1BB), "lets_cook":byte(0x17B1BC)},
    "Keema Curry and Chapati":{"ID":0x49, "id_off":byte(0x17B1BD), "unk_off":byte(0x17B1BE), "mama_score":byte(0x17B1BF), "lets_cook":byte(0x17B1C0)},
    "California Roll":{"ID":0x37, "id_off":byte(0x17B1C1), "unk_off":byte(0x17B1C2), "mama_score":byte(0x17B1C3), "lets_cook":byte(0x17B1C4)},
    "Mama Yaki":{"ID":0x2d, "id_off":byte(0x17B1C5), "unk_off":byte(0x17B1C6), "mama_score":byte(0x17B1C7), "lets_cook":byte(0x17B1C8)},
    "Mama Rice Cracker":{"ID":0x14, "id_off":byte(0x17B1C9), "unk_off":byte(0x17B1CA), "mama_score":byte(0x17B1CB), "lets_cook":byte(0x17B1CC)},
    "Mama Cookie":{"ID":0x9, "id_off":byte(0x17B1CD), "unk_off":byte(0x17B1CE), "mama_score":byte(0x17B1CF), "lets_cook":byte(0x17B1D0)},
    "Ice Cream":{"ID":0x29, "id_off":byte(0x17B1D1), "unk_off":byte(0x17B1D2), "mama_score":byte(0x17B1D3), "lets_cook":byte(0x17B1D4)},
    "Hotcake":{"ID":0x4e, "id_off":byte(0x17B1D5), "unk_off":byte(0x17B1D6), "mama_score":byte(0x17B1D7), "lets_cook":byte(0x17B1D8)},
    "Panna Cotta":{"ID":0xa, "id_off":byte(0x17B1D9), "unk_off":byte(0x17B1DA), "mama_score":byte(0x17B1DB), "lets_cook":byte(0x17B1DC)},
    "Rice Croquette":{"ID":0x4c, "id_off":byte(0x17B1DD), "unk_off":byte(0x17B1DE), "mama_score":byte(0x17B1DF), "lets_cook":byte(0x17B1E0)},
    "Paprika Marinade":{"ID":0x1f, "id_off":byte(0x17B1E1), "unk_off":byte(0x17B1E2), "mama_score":byte(0x17B1E3), "lets_cook":byte(0x17B1E4)},
    "Ravioli":{"ID":0x22, "id_off":byte(0x17B1E5), "unk_off":byte(0x17B1E6), "mama_score":byte(0x17B1E7), "lets_cook":byte(0x17B1E8)},
    "Quiche":{"ID":0x3b, "id_off":byte(0x17B1E9), "unk_off":byte(0x17B1EA), "mama_score":byte(0x17B1EB), "lets_cook":byte(0x17B1EC)},
    "Lamb Steak":{"ID":0x44, "id_off":byte(0x17B1ED), "unk_off":byte(0x17B1EE), "mama_score":byte(0x17B1EF), "lets_cook":byte(0x17B1F0)},
    "Clam Chowder":{"ID":0x2b, "id_off":byte(0x17B1F1), "unk_off":byte(0x17B1F2), "mama_score":byte(0x17B1F3), "lets_cook":byte(0x17B1F4)},
    "Waffle":{"ID":0xb, "id_off":byte(0x17B1F5), "unk_off":byte(0x17B1F6), "mama_score":byte(0x17B1F7), "lets_cook":byte(0x17B1F8)},
    "Churros":{"ID":0x15, "id_off":byte(0x17B1F9), "unk_off":byte(0x17B1FA), "mama_score":byte(0x17B1FB), "lets_cook":byte(0x17B1FC)},
    "Cream Puff":{"ID":0x27, "id_off":byte(0x17B1FD), "unk_off":byte(0x17B1FE), "mama_score":byte(0x17B1FF), "lets_cook":byte(0x17B200)},
    "Pop Corn":{"ID":0x25, "id_off":byte(0x17B201), "unk_off":byte(0x17B202), "mama_score":byte(0x17B203), "lets_cook":byte(0x17B204)},
    "Bananas Foster":{"ID":0x1b, "id_off":byte(0x17B205), "unk_off":byte(0x17B206), "mama_score":byte(0x17B207), "lets_cook":byte(0x17B208)},
    "Jambalaya":{"ID":0x43, "id_off":byte(0x17B209), "unk_off":byte(0x17B20A), "mama_score":byte(0x17B20B), "lets_cook":byte(0x17B20C)},
    "Scone":{"ID":0x41, "id_off":byte(0x17B20D), "unk_off":byte(0x17B20E), "mama_score":byte(0x17B20F), "lets_cook":byte(0x17B210)},
    "Bagel":{"ID":0x12, "id_off":byte(0x17B211), "unk_off":byte(0x17B212), "mama_score":byte(0x17B213), "lets_cook":byte(0x17B214)},
    "Kimchi":{"ID":0x19, "id_off":byte(0x17B215), "unk_off":byte(0x17B216), "mama_score":byte(0x17B217), "lets_cook":byte(0x17B218)},
    "Cream of Mushroom Pasta":{"ID":0x40, "id_off":byte(0x17B219), "unk_off":byte(0x17B21A), "mama_score":byte(0x17B21B), "lets_cook":byte(0x17B21C)},
    "Cake":{"ID":0x24, "id_off":byte(0x17B21D), "unk_off":byte(0x17B21E), "mama_score":byte(0x17B21F), "lets_cook":byte(0x17B220)},
    "Chocolate":{"ID":0x3d, "id_off":byte(0x17B221), "unk_off":byte(0x17B222), "mama_score":byte(0x17B223), "lets_cook":byte(0x17B224)},
    "Lobster":{"ID":0xf, "id_off":byte(0x17B225), "unk_off":byte(0x17B226), "mama_score":byte(0x17B227), "lets_cook":byte(0x17B228)},
    "Chili Dog":{"ID":0xc, "id_off":byte(0x17B229), "unk_off":byte(0x17B22A), "mama_score":byte(0x17B22B), "lets_cook":byte(0x17B22C)},
    "Grilled Meat":{"ID":0x1a, "id_off":byte(0x17B22D), "unk_off":byte(0x17B22E), "mama_score":byte(0x17B22F), "lets_cook":byte(0x17B230)},
    "Escargot":{"ID":0x2e, "id_off":byte(0x17B231), "unk_off":byte(0x17B232), "mama_score":byte(0x17B233), "lets_cook":byte(0x17B234)},
    "Cotoletta":{"ID":0x34, "id_off":byte(0x17B235), "unk_off":byte(0x17B236), "mama_score":byte(0x17B237), "lets_cook":byte(0x17B238)},
    "Bamboo Steamed Rice":{"ID":0x35, "id_off":byte(0x17B239), "unk_off":byte(0x17B23A), "mama_score":byte(0x17B23B), "lets_cook":byte(0x17B23C)},
    "Fruit Juice":{"ID":0x38, "id_off":byte(0x17B23D), "unk_off":byte(0x17B23E), "mama_score":byte(0x17B23F), "lets_cook":byte(0x17B240)},
    "Hand Sushi Roll":{"ID":0x1d, "id_off":byte(0x17B241), "unk_off":byte(0x17B242), "mama_score":byte(0x17B243), "lets_cook":byte(0x17B244)},
    "Squid Fried Soba":{"ID":0x2f, "id_off":byte(0x17B245), "unk_off":byte(0x17B246), "mama_score":byte(0x17B247), "lets_cook":byte(0x17B248)},
    "Mama Lunch Box":{"ID":0x50, "id_off":byte(0x17B249), "unk_off":byte(0x17B24A), "mama_score":byte(0x17B24B), "lets_cook":byte(0x17B24C)},
}
function recipe_order(score_request, mode, sign, num){
    trigger = []    
        for recipe in recipe_list{
            if(sign == "nonequiv"){
                if(mode == "delta") array_push(trigger, once(prev(recipe_list[recipe][score_request]) != num))
                else array_push(trigger, once(recipe_list[recipe][score_request] != num))
            }
            else{
                if(mode == "delta") array_push(trigger, once(prev(recipe_list[recipe][score_request]) == num))
                else array_push(trigger, once(recipe_list[recipe][score_request] == num)) 
            }            
        }        
   return trigger 
}
function recipe_tally(delta, mem, request, score) =>    
    tally(delta, recipe_order("mama_score", "delta", request, score)) &&
    measured(tally(mem, recipe_order("mama_score", "mem", request, score))) &&
    never(tally(mem, recipe_order("mama_score", "delta", request, score)))
achievement(
    "10 Recipes",
    "Cook 10 recipes in Cooking with Mama!",
    points=5,
    trigger=        
        recipe_tally(9, 10, "nonequiv", 0xff)        
)
achievement(
    "20 Recipes",
    "Cook 20 recipes in Cooking with Mama!",
    points=5,
    trigger=        
        recipe_tally(19, 20, "nonequiv", 0xff)        
)
achievement(
    "30 Recipes",
    "Cook 30 recipes in Cooking with Mama!",
    points=5,
    trigger=        
        recipe_tally(29, 30, "nonequiv", 0xff)        
)
achievement(
    "40 Recipes",
    "Cook 40 recipes in Cooking with Mama!",
    points=5,
    trigger=        
        recipe_tally(39, 40, "nonequiv", 0xff)        
)
achievement(
    "50 Recipes",
    "Cook 50 recipes in Cooking with Mama!",
    points=5,
    trigger=
        recipe_tally(49, 50, "nonequiv", 0xff)
)
achievement(
    "60 Recipes",
    "Cook 60 recipes in Cooking with Mama!",
    points=10,
    trigger=
        recipe_tally(59, 60, "nonequiv", 0xff)    
)
achievement(
    "70 Recipes",
    "Cook 70 recipes in Cooking with Mama!",
    points=10,
    trigger=
        recipe_tally(69, 70, "nonequiv", 0xff)
)
achievement(
    "80 Recipes",
    "Cook all 80 recipes in Cooking with Mama!",
    points=25,
    trigger=
        recipe_tally(79, 80, "nonequiv", 0xff)
)
achievement(
    "The Search for a Perfect Mama",
    "Get Gold Medals on 50% of the recipes in Cooking with Mama!",
    points=25,
    trigger=
        recipe_tally(39, 40, "equiv", 0x64)
)
achievement(
    "Golden Age of Cooking",
    "Get Gold Medals on all recipes in Cooking with Mama!",
    points=100,
    trigger=
        recipe_tally(79, 80, "equiv", 0x64)
)
// $17B0FF: [8bit] Let's Cook - Character Slot 1
//          != 0 > Available
// $17B100: [8bit] Let's Cook - Character Slot 2
//          != 0 > Available
// $17B101: [8bit] Let's Cook - Character Slot 3
//          != 0 > Available
// $17B102: [8bit] Let's Cook - Character Slot 4
//          != 0 > Available
// $17B103: [8bit] Let's Cook - Character Slot 5
//          != 0 > Available
// $17B104: [8bit] Let's Cook - Character Slot 6
//          != 0 > Available
// $17B105: [8bit] Let's Cook - Character Slot 7
//          != 0 > Available
// $17B106: [8bit] Let's Cook - Character Slot 8
//          != 0 > Available
// $17B107: [8bit] Let's Cook - Character Slot 9
//          != 0 > Available
// $17B108: [8bit] Let's Cook - Character Slot 10
//          != 0 > Available
unlock_table = range(0x17b0ff, 0x17b108)
function people_sum(mode) {    
    trigger = []
    for i in range(0, length(unlock_table) - 1){
        if(mode == "delta") array_push(trigger, once(prev(byte(unlock_table[i])) != 0))
        else array_push(trigger, once(byte(unlock_table[i]) != 0))
    }
    return trigger
}
// Tkt ID 45283:
// I've unlocked all 8 characters but didn't get the achievement. It only shows that I've unlocked 50%
// COMMENTS:
// Values in addresses are not pre-assigned, they're put in the order you unlock them. Rewrote cheevo to detect that there is some 
// character ID there that's not 0 as a tally. Original logic had it where values were pre-assigned to the addresses, preventing a 
// trigger. 
achievement(
    "People's Person",
    "Have all 10 characters available in the Let's Cook mode!",
    points=5,
    trigger=
        tally(9, people_sum("delta")) &&
        measured(tally(10, people_sum("mem"))) &&
        never(tally(10, people_sum("delta")))
)
function chef_sum(input){
    mem_check = []
    delta_check = []
    for recipe in input{
        array_push(delta_check, once(prev(recipe) == 0x64))
        array_push(mem_check, once(recipe == 0x64))
    }
    return 
        tally(7, delta_check) &&
        measured(tally(8, mem_check)) &&
        never(tally(8, delta_check))
}
mama_list = [
    recipe_list["Corn Soup"]["lets_cook"],
    recipe_list["Waffle"]["lets_cook"],
    recipe_list["Meatloaf"]["lets_cook"],
    recipe_list["Paprika Marinade"]["lets_cook"],
    recipe_list["Ravioli"]["lets_cook"],
    recipe_list["Cream Puff"]["lets_cook"],
    recipe_list["Chocolate"]["lets_cook"],
    recipe_list["Mama Lunch Box"]["lets_cook"]
]
achievement(
    "Mama's Perfection",
    "Obtain gold medals on all of Mama's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(mama_list)
)
chika_list = [
    recipe_list["Pizza"]["lets_cook"],
    recipe_list["Chili Dog"]["lets_cook"],
    recipe_list["Crepe"]["lets_cook"],
    recipe_list["Mango Pudding"]["lets_cook"],
    recipe_list["Strawberry Jam"]["lets_cook"],
    recipe_list["Clam Chowder"]["lets_cook"],
    recipe_list["Quiche"]["lets_cook"],
    recipe_list["Korean Pancake"]["lets_cook"]
]
achievement(
    "Chika's Perfection",
    "Obtain gold medals on all of Chika's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(chika_list)
)
ayaka_list = [
    recipe_list["Panna Cotta"]["lets_cook"],
    recipe_list["Lobster"]["lets_cook"],
    recipe_list["Pop Corn"]["lets_cook"],
    recipe_list["Ice Cream"]["lets_cook"],
    recipe_list["Loco Moco"]["lets_cook"],
    recipe_list["Shark Fin Soup"]["lets_cook"],
    recipe_list["Sauteed Liver and Chives"]["lets_cook"],
    recipe_list["Cinderella"]["lets_cook"]
]
achievement(
    "Ayaka's Perfection",
    "Obtain gold medals on all of Ayaka's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(ayaka_list)
)
takuya_list = [
    recipe_list["T-Bone Steak"]["lets_cook"],
    recipe_list["Tempura"]["lets_cook"],
    recipe_list["Grilled Meat"]["lets_cook"],
    recipe_list["Goya Stir Fry"]["lets_cook"],
    recipe_list["Squid Fried Soba"]["lets_cook"],
    recipe_list["Gyro"]["lets_cook"],
    recipe_list["Pork Dumpling"]["lets_cook"],
    recipe_list["Cream of Mushroom Pasta"]["lets_cook"]
]
achievement(
    "Takuya's Perfection",
    "Obtain gold medals on all of Takuya's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(takuya_list)
)
papa_list = [
    recipe_list["Mama Cookie"]["lets_cook"],
    recipe_list["Tokoroten"]["lets_cook"],
    recipe_list["Kimchi"]["lets_cook"],
    recipe_list["Baguette"]["lets_cook"],
    recipe_list["Oden"]["lets_cook"],
    recipe_list["Simmered Flounder"]["lets_cook"],
    recipe_list["Sesame Dumplings"]["lets_cook"],
    recipe_list["Kama Meshi"]["lets_cook"]
]
achievement(
    "Papa's Perfection",
    "Obtain gold medals on all of Papa's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(papa_list)
)
natasha_list = [
    recipe_list["Sea Bream Carpaccio"]["lets_cook"],
    recipe_list["Macaroon"]["lets_cook"],
    recipe_list["Escargot"]["lets_cook"],
    recipe_list["Cotoletta"]["lets_cook"],
    recipe_list["Seafood Salad"]["lets_cook"],
    recipe_list["Fruit Juice"]["lets_cook"],
    recipe_list["Lamb Steak"]["lets_cook"],
    recipe_list["Hotcake"]["lets_cook"]
]
achievement(
    "Natasha's Perfection",
    "Obtain gold medals on all of Natasha's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(natasha_list)
    
)
grandpa_list = [
    recipe_list["Squid Fried Rice"]["lets_cook"],
    recipe_list["Sliced Burdock Root"]["lets_cook"],
    recipe_list["Mama Rice Cracker"]["lets_cook"],
    recipe_list["Hand Sushi Roll"]["lets_cook"],
    recipe_list["Lotus Root with Mustard"]["lets_cook"],
    recipe_list["Bamboo Steamed Rice"]["lets_cook"],
    recipe_list["Namerou"]["lets_cook"],
    recipe_list["Chinese Fried Pork"]["lets_cook"]
]
achievement(
    "Grandpa's Perfection",
    "Obtain gold medals on all of Grandpa's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(grandpa_list)
)
david_list = [
    recipe_list["Apple Pie"]["lets_cook"],
    recipe_list["Sweet Potato"]["lets_cook"],
    recipe_list["Cake"]["lets_cook"],
    recipe_list["California Roll"]["lets_cook"],
    recipe_list["Doughnut"]["lets_cook"],
    recipe_list["Bananas Foster"]["lets_cook"],
    recipe_list["Keema Curry and Chapati"]["lets_cook"],
    recipe_list["Rice Croquette"]["lets_cook"]
]
achievement(
   "David's Perfection",
    "Obtain gold medals on all of David's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(david_list) 
)
grandma_list = [
    recipe_list["Eel Rice Bowl"]["lets_cook"],
    recipe_list["Seafood Rice Bowl"]["lets_cook"],
    recipe_list["Sweet Dumpling"]["lets_cook"],
    recipe_list["Fresh Spring Roll"]["lets_cook"],
    recipe_list["Mama Yaki"]["lets_cook"],
    recipe_list["Almond Jelly"]["lets_cook"],
    recipe_list["Chinese Porridge"]["lets_cook"],
    recipe_list["Chinese Steamed Bun"]["lets_cook"]
]
achievement(
   "Grandma's Perfection",
    "Obtain gold medals on all of Grandma's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(grandma_list)
)
kate_list = [
    recipe_list["Peanut Butter"]["lets_cook"],
    recipe_list["Bagel"]["lets_cook"],
    recipe_list["Churros"]["lets_cook"],
    recipe_list["Strawberry Roll Cake"]["lets_cook"],
    recipe_list["Mayonnaise Shrimp"]["lets_cook"],
    recipe_list["Scone"]["lets_cook"],
    recipe_list["Jambalaya"]["lets_cook"],
    recipe_list["Tandoori Chicken"]["lets_cook"]
]
achievement(
    "Kate's Perfection",
    "Obtain gold medals on all of Kate's recipes in Let's Cook!",
    points=10,
    trigger=
        chef_sum(kate_list)
)
// $17B0D6: [NBit] Sticker Bitflags
//          ===FRAME STICKERS===
//          Bit0=Spiral Note (Default)
//          Bit1=Rainbow (Default)
//          Bit2=Pink with Blue Beads
//          Bit3=Yellow Triangles
//          Bit4=Gold Picture Frame
//          Bit5=Hearts
//          Bit6=Flowers and Vines
//          Bit7=Stage Curtains

// $17B0D7: Bit0=Blue Squares
//          Bit1=Clouds
//          ===SPEECH BUBBLE STICKERS===
//          Bit2=Delicious! (Default)
//          Bit3=Well done Well done (Default)
//          Bit4=Perfect!
//          Bit5=Thank you.
//          Bit6=Bon Appetit!
//          Bit7=Not tasty!
// $17B0D8: Bit0=Love it!
//          Bit1=Happy New Year!
//          Bit2=Merry Christmas!
//          Bit3=Happy Birthday!
//          ===WEATHER EMOTE STICKERS===
//          Bit4=Smiley Sun (Default)
//          Bit5=Gloomy Clouds
//          Bit6=Rainy Umbrella
//          Bit7=Angry Storm
// $17B0D9: Bit0=Snowflake
//          ===EYE STICKERS===
//          Bit1=Wide (Default)
//          Bit2=Angry (Default)
//          Bit3=Sarcastic
//          Bit4=><
//          Bit5=Glare
//          Bit6=Cat Eyes
//          Bit7=Lovey
// $17B0DA: Bit0=Weepy
//          Bit1=Girly
//          Bit2=Dizzy
//          ===MOUTH STICKERS===
//          Bit3=Lips (Default)
//          Bit4=Smile
//          Bit5=Cringe
//          Bit6=Fangs
//          Bit7=Grin
// $17B0DB: Bit0=Puckered Lips + Beauty Mark
//          Bit1=Silly
//          Bit2=Dog
//          Bit3=Pig
//          Bit4=Duck
//          ===FACIAL STICKERS===
//          Bit5=Whiskers
//          Bit6=Santa Beard
//          Bit7=Brown Mustache
// $17B0DC: Bit0=Short Mustache
//          Bit1=White Curly Moustache
//          ===HEAD ACCESSORY STICKERS===
//          Bit2=Kitty Ears
//          Bit3=Bunny Ears
//          Bit4=Demon horns
//          Bit5=Red Bow
//          Bit6=Green Atennae
//          ===FRIEND STICKERS===
//          Bit7=Mama
// $17B0DD: Bit0=Papa
//          Bit1=Grandpa
//          Bit2=Grandma
//          Bit3=Chika
//          Bit4=Ayaka
//          Bit5=Takuya
//          Bit6=David
//          Bit7=Kate
// $17B0DE: Bit0=Natasha
//          ===SWEETS STICKERS===
//          Bit1=Shortcake
//          Bit2=Cheesecake
//          Bit3=Heart Cake
//          Bit4=Chestnut Cake
//          Bit5=Chocolate Cake
//          Bit6=Single Ice Cream Cone
//          Bit7=Double Ice Cream Cone
// $17B0DF: Bit0=Orange Ice Cream Bowl
//          Bit1=Candy
//          Bit2=Lollipop
//          ===DRINKS STICKERS===
//          Bit3=Blue Lemon
//          Bit4=Pink Cherry
//          Bit5=Yellow Orange
//          Bit6=Orange Fancy
//          Bit7=Purple Strawberry
// $17B0E0: ===PRODUCE STICKERS===
//          Bit0=Tomato
//          Bit1=Eggplant
//          Bit2=Pepper
//          Bit3=Potato
//          Bit4=Carrot
//          Bit5=Melon
//          Bit6=Apple
//          Bit7=Orange
// $17B0E1: Bit0=Grape
//          Bit1=Jack o' Lantern
//          ===GLASSES STICKERS===
//          Bit2=Glasses
//          Bit3=Sunglasses
//          Bit4=White Sunglasses
//          Bit5=Green Mask
//          Bit6=Nerdy Glasses
//          ===HATS STICKERS===
//          Bit7=Beret
// $17B0E2: Bit0=Toque
//          Bit1=Top Hat
//          Bit2=Sun Hat
//          Bit3=Pink Wizards Cap
//          ===SPECIAL STICKERS===
//          Bit4=Pink Present
//          Bit5=Blue Present Bag
//          Bit6=Treasure Chest
//          Bit7=Cosmos Bouquet
// $17B0E3: Bit0=Rose Bouquet
//          ===UTENSILS STICKERS===
//          Bit1=Green Knife
//          Bit2=Pink Fork
//          Bit3=Yellow Spoon
//          Bit4=Red Pot
//          Bit5=Red Skillet
//          ===TOYS STICKERS===
//          Bit6=Yellow Rocket
//          Bit7=Blue Airplane
// $17B0E4: Bit0=Green Car
//          Bit1=Red Robot
//          Bit2=Yellow Teddy Bear
//          ===SHINY DECALS STICKERS===
//          Bit3=Heart
//          Bit4=Star
//          Bit5=Crescent Moon
//          Bit6=Blue Diamond
//          Bit7=Purple Crystals
// $17B0E5: ===TOP BANNERS STICKERS===
//          Bit0=Paper Chains
//          Bit1=Flowers
//          Bit2=Red Ribbons
//          Bit3=Roses
//          Bit4=Stars
//          ===HAND SIGNS STICKERS===
//          Bit5=White V-Sign
//          Bit6=Blue Wave
//          Bit7=Yellow Thumbs-Up
// $17B0E6: Bit0=Pink Okay
//          Bit1=Green Point
//          ===FLAGS STICKERS===
//          Bit2=Japan
//          Bit3=U.S.A
//          Bit4=France
//          Bit5=Germany
//          Bit6=Italy
//          Bit7=Spain
// $17B0E7: Bit0=Russia
//          Bit1=China
//          Bit2=U.K.
//          Bit3=India
//          ===FLOWERS STICKERS===
//          Bit4=Rose
//          Bit5=Daisy
//          Bit6=Tulip
//          Bit7=Sunflower
// $17B0E8: Bit0=Cherry Blossoms
//          ===PETS STICKERS===
//          Bit1=Rabbit
//          Bit2=Puppy
//          Bit3=Kitty
//          Bit4=Fish
//          Bit5=Butterfly
//          ===EMOTICONS STICKERS===
//          Bit6=Laughing
//          Bit7=Shock
// $17B0E9: Bit0=Angry
//          Bit1=Crying
//          Bit2=Happy
//          ===EMOTIONS STICKERS===
//          Bit3=Sweat Drop
//          Bit4=Music Note
//          Bit5=Angry Vein
//          Bit6=Shock
//          Bit7=Love
// $17B0EA: ===CHRISTMAS STICKERS===
//          Bit0=Spruce Trees
//          Bit1=Snowy Tree
//          Bit2=Santa
//          Bit3=Stocking
//          Bit4=Christmas Lights
//          Bit5=Star
//          Bit6=Candle
//          Bit7=Santa Hat
// $17B0EB: Bit0=Merry Christmas Sign
//          Bit1=Snowman
//          ===END STICKERS===
function outfit_save_protection() => prev(bit2(0x17B0EB)) == 1 
function sticker_sum() =>
    //FRAMES
    bit2(0x17B0D6) +
    bit3(0x17B0D6) +
    bit4(0x17B0D6) +
    bit5(0x17B0D6) +
    bit6(0x17B0D6) +
    bit7(0x17B0D6) +
    bit0(0x17B0D7) +
    bit1(0x17B0D7) +
    //Speech Bubbles
    bit4(0x17B0D7) +
    bit5(0x17B0D7) +
    bit6(0x17B0D7) +
    bit7(0x17B0D7) +
    bit0(0x17B0D8) +
    bit1(0x17B0D8) +
    bit2(0x17B0D8) +
    bit3(0x17B0D8) +
    //WEATHER EMOTES
    bit5(0x17B0D8) +
    bit6(0x17B0D8) +
    bit7(0x17B0D8) +
    bit0(0x17B0D9) +
    //EYE STICKERS
    bit3(0x17B0D9) +
    bit4(0x17B0D9) +
    bit5(0x17B0D9) +
    bit6(0x17B0D9) +
    bit7(0x17B0D9) +
    bit0(0x17B0DA) +
    bit1(0x17B0DA) +
    bit2(0x17B0DA) +
    //MOUTH STICKERS
    bit4(0x17B0DA) +
    bit5(0x17B0DA) +
    bit6(0x17B0DA) +
    bit7(0x17B0DA) +
    //REST OF TABLE - NO DEFAULTS
    bitcount(0x17B0DB) +
    bitcount(0x17B0DC) +
    bitcount(0x17B0DD) +
    bitcount(0x17B0DE) +
    bitcount(0x17B0DF) +
    bitcount(0x17B0E0) +
    bitcount(0x17B0E1) +
    bitcount(0x17B0E2) +
    bitcount(0x17B0E3) +
    bitcount(0x17B0E4) +
    bitcount(0x17B0E5) +
    bitcount(0x17B0E6) +
    bitcount(0x17B0E7) +
    bitcount(0x17B0E8) +
    bitcount(0x17B0E9) +
    bitcount(0x17B0EA) +
    bit0(0x17B0EB) +
    bit1(0x17B0EB)
      
achievement(
    "Sticker Collector",
    "Unlock 81 stickers in addition to the ones you already own!",
    points=10,
    trigger=
        outfit_save_protection() &&
        prev(sticker_sum()) < 81 &&
        measured(sticker_sum() == 81)
)
achievement(
    "Sticker Star",
    "Unlock all 162 missing stickers to complete your collection!",
    points=25,
    trigger=
        outfit_save_protection() &&
        prev(sticker_sum()) < 162 &&
        measured(sticker_sum() == 162)
)
function outfit_save_protection() => prev(bit2(0x17B0EB)) == 1   
// $17B0EB: [NBit] Collectibles - Outfits
//          Bit2=Brown Apron (Default)
//          Bit3=Pink Apron (Default)
//          Bit4=Blue Apron (Default)
//          Bit5=Green Apron (Default)
//          Bit6=Yellow Apron (Default)
//          ===NEXT OUTFIT===
//          Bit7=Green Kimono
// $17B0EC: Bit0=Pink & Magenta Kimono
//          Bit1=Blue & Lilac Kimono
//          Bit2=Orange & Blue Kimono
//          Bit3=Purple Kimono
//          ===NEXT OUTFIT===
//          Bit4=Pink Princess Dress
//          Bit5=Blue Princess Dress
//          Bit6=Yellow Princess Dress
//          Bit7=Green Princess Dress
// $17B0ED: Bit0=Purple Princess Outfit
//          ===NEXT OUTFIT===
//          Bit1=Mama Shirt & Pants - Yellow & Blue Shirt-Pants
//          Bit2=Mama Shirt & Pants - Pink & Light Blue Shirt-Pants
//          Bit3=Mama Shirt & Pants - Blue & Tan Shirt-Pants
//          Bit4=Mama Shirt & Pants - Green & Dark Blue Shirt-Pants
//          Bit5=Mama Shirt & Pants - Orange & White Shirt-Pants
//          ===NEXT OUTFIT===
//          Bi6=Red Qipao & Yellow Shoes
//          Bit7=Yellow Qipao & Blue Shoes
// $17B0EE: Bit0=Blue Qipao & Green Shoes
//          Bit1=Green Qipao & Yellow Shoes
//          Bit2=Pink Qipao & Red Shoes
//          ===NEXT OUTFIT===
//          Bit3=Yellow & Pink Hispanic Dress
//          Bit4=Red & Yellow Hispanic Dress
//          Bit5=Gray & Red Hispanic Dress
//          Bit6=Teal & Blue Hispanic Dress
//          Bit7=Blue & Purple Hispanic Dress
//          ===NEXT OUTFIT===
// $17B0EF: Bit0=Blue & Yellow Cheerleader Outfit
//          Bit1=Yellow & Green Cheerleader Outfit
//          Bit2= Pink & Light Blue Cheerleader Outfit
//          Bit3=Blue & Turquoise Cheerleader Outfit
//          Bit4=Blue & Red Cheerleader Outfit
//          ===NEXT OUTFIT===
//          Bit5=Blue & Pink Cafe Outfit
//          Bit6=Pink & Red Cafe Outfit
//          Bit7=Yellow & Blue Cafe Outfit
// $17B0F0: Bit0=Turquoise & Yellow Cafe Outfit
//          Bit1=White Cafe Outfit
//          ===NEXT OUTFIT====
//          Bit2=Black Tuxedo
//          Bit3=Red Tuxedo
//          Bit4=Brown Tuxedo
//          Bit5=White Tuxedo
//          Bit6=Gold Tuxedo
//          ===NEXT OUTFIT===
//          Bit7=White & Red Chef Outfit
// $17B0F1: Bit0=Orange & Red Chef Outfit
//          Bit1=Pink & Yellow Chef Outfit
//          Bit2=Blue & White Chef Outfit
//          Bit3=Green & Blue Chef Outfit
function outfit_sum() =>
    bit7(0x17B0EB) +
    bitcount(0x17B0EC) +
    bitcount(0x17B0ED) +
    bitcount(0x17B0EE) +
    bitcount(0x17B0EF) +
    bitcount(0x17B0F0) +
    bit0(0x17B0F1) +
    bit1(0x17B0F1) +
    bit2(0x17B0F1) +
    bit3(0x17B0F1)
achievement(
    "Dress for Success",
    "Unlock all additional outfits!",
    points=10,
    trigger=        
        outfit_save_protection() && 
        prev(outfit_sum()) < 45 &&
        measured(outfit_sum() == 45)
)
// $17B0F1: ===ACCESSORIES===
//          Bit4=Glasses (Red Frames)
//          Bit5=Glasses (Blue Half-Frames)
//          Bit6=Glasses (Gold Monocle)
//          Bit7=Glasses (Green Bottom-Frames)
// $17B0F2: Bit0=UNUSED Glasses Slot
//          ===NEXT ACCESSORY===
//          Bit1=Red Strawberry Earrings
//          Bit2=Blue Star Earrings
//          Bit3=Yellow Lemon Earrings
//          Bit4=Green Pepper Earrings
//          Bit5=UNUSED Earrings Slot
//          ===NEXT ACCESSORY===
//          Bit6=Pink Gem-Stud Tiara
//          Bit7=Blue Wave Tiara + Blue Gem
// $17B0F3: Bit0=Gold Tiara + Pink Gem
//          Bit1=Gold Crown + Pink Gem
//          Bit2=UNUSED HEADWEAR SLOT
//          ===NEXT ACCESSORY===
//          Bit3=Double Pink Ribbons
//          Bit4=Single Green Ribbon
//          Bit5=Blue Hibiscus Clip
//          Bit6=Double Sunflowers
//          Bit7=UNUSED HAIR SLOT
//          ===NEXT ACCESSORY===
// $17B0F4: Bit0=Pink Bandana
//          Bit1=Blue Bandana
//          Bit2=Yellow Bandana
//          Bit3=Green Bandana
//          Bit4=Pale Pink Bandana
function accessory_sum() =>
    bit4(0x17B0F1) +
    bit5(0x17B0F1) +
    bit6(0x17B0F1) +
    bit7(0x17B0F1) +
    bit1(0x17B0F2) +
    bit2(0x17B0F2) +
    bit3(0x17B0F2) +
    bit4(0x17B0F2) +
    bit6(0x17B0F2) +
    bit7(0x17B0F2) +
    bit0(0x17B0F3) +
    bit1(0x17B0F3) +
    bit3(0x17B0F3) +
    bit4(0x17B0F3) +
    bit5(0x17B0F3) +
    bit6(0x17B0F3) +
    bit0(0x17B0F4) +
    bit1(0x17B0F4) +
    bit2(0x17B0F4) +
    bit3(0x17B0F4) +
    bit4(0x17B0F4) 
achievement(
    "Fashion Assistant",
    "Unlock all additional accessories!",
    points=10,
    trigger=
        outfit_save_protection() &&
        prev(accessory_sum()) < 21 &&
        measured(accessory_sum() == 21) 
)
// $17CF74: [32bit] Let's Cook Current Page (Indice)
// $17CF8C: [32bit] Let's Cook - Active Person (Indice)
// $17E9B0: [8bit] Menu ID
//          0x00=Main Menu
//          0x01=Cook with Mama
//          0x02=Let's cook!
//          0x03=Cooking Contest
//          0x04=Change Design
//          0x05=Write in Diary
//          0x06=Options
function menu() => dword(0x17E9B0)
cooking_contest = 3
// $17E9F0: [16-bit] Touchscreen ID
//          5b00 = Main Menu
//          4200 = Cook with Mama
//          8b00 = Let's cook!
//          3e00 = Cooking Contest
//          e500 = Change Design
//          c400 = Write in Diary
//          5c80 = Options
//          4e80 = Pizza
//          ca00 = Pizza work
//          be00 = Pizza work
// $17F3E8: [32bit] Selected Recipe - Cooking with Mama
// $1AC250: [32bit] Timer Active
//          0x00=No
//          0x01=Yes
function timer_running() => dword(0x1AC250)
// $1AC254: [16bit] Max Timer Amount
function timer_max() => word(0x1AC254)
// $1AC256: [16bit] Timer Amount (Frames)
function timer_frames() => word(0x1AC256)
//==========LEADERBOARDS==========
// $1AD934: [32bit] Cooking Contest - Selected Page - Solo (Indice)
//          Active Recipe Checks (pageid, indice from 0x1ad94c):
//          0,0=Make a hamburger!
//          0,1=Break an egg!
//          0,2=Peel the skin!
//          0,3=Grill with charcoal!
//          1,0=Peel the boiled egg!
//          1,1=Roll it into a ball!
//          1,2=Season it!
//          1,3=Cut corn from cob!
//          2,0=Squeeze it!
//          2,1=Stuff with rice!
//          2,2=Push the tokoroten!
//          2,3=Pour the liquid!
//          3,0=Slice the pasta!
//          3,1=Grind the meat!
//          3,2=Wrap bamboo rice!
//          3,3=Make a crepe!
function contest_page() => dword(0x1ad934)
// $1AD94C: [32bit] Cooking Contest - Selected Recipe - Solo (Indice)
function contest_indice() => dword(0x1ad94c)
// $17B24D: [8bit] Cooking Contest Score - Make a hamburger!
// $17B24E: [8bit] Cooking Contest Score - Break an egg!
// $17B24F: [8bit] Cooking Contest Score - Peel the skin!
// $17B250: [8bit] Cooking Contest Score - Grill with charcoal!
// $17B251: [8bit] Cooking Contest Score - Peel the boiled egg!
// $17B252: [8bit] Cooking Contest Score - Roll it into a ball!
// $17B253: [8bit] Cooking Contest Score - Season it!
// $17B254: [8bit] Cooking Contest Score - Cut corn from cob!
// $17B255: [8bit] Cooking Contest Score - Squeeze it!
// $17B256: [8bit] Cooking Contest Score - Stuff with rice!
// $17B257: [8bit] Cooking Contest Score - Push the tokoroten!
// $17B258: [8bit] Cooking Contest Score - Pour the liquid!
// $17B259: [8bit] Cooking Contest Score - Slice the pasta!
// $17B25A: [8bit] Cooking Contest Score - Grind the meat!
// $17B25B: [8bit] Cooking Contest Score - Wrap bamboo rice!
// $17B25C: [8bit] Cooking Contest Score - Make a crepe!
contest_tasks = {
    0:{"Name":"Make a hamburger!", "Page":0, "Index":0, "Score":byte(0x17B24D)},
    1:{"Name":"Break an egg!", "Page":0, "Index":1, "Score":byte(0x17B24E)},
    2:{"Name":"Peel the skin!", "Page":0, "Index":2, "Score":byte(0x17B24F)},
    3:{"Name":"Grill with charcoal!", "Page":0, "Index":3, "Score":byte(0x17B250)},
    4:{"Name":"Peel the boiled egg!", "Page":1, "Index":0, "Score":byte(0x17B251)},
    5:{"Name":"Roll it into a ball!", "Page":1, "Index":1, "Score":byte(0x17B252)},
    6:{"Name":"Season it!", "Page":1, "Index":2, "Score":byte(0x17B253)},
    7:{"Name":"Cut corn from cob!", "Page":1, "Index":3, "Score":byte(0x17B254)},
    8:{"Name":"Squeeze it!", "Page":2, "Index":0, "Score":byte(0x17B255)},
    9:{"Name":"Stuff with rice!", "Page":2, "Index":1, "Score":byte(0x17B256)},
    10:{"Name":"Push the tokoroten!", "Page":2, "Index":2, "Score":byte(0x17B257)},
    11:{"Name":"Pour the liquid!", "Page":2, "Index":3, "Score":byte(0x17B258)},
    12:{"Name":"Slice the pasta!", "Page":3, "Index":0, "Score":byte(0x17B259)},
    13:{"Name":"Grind the meat!", "Page":3, "Index":1, "Score":byte(0x17B25A)},
    14:{"Name":"Wrap bamboo rice!", "Page":3, "Index":2, "Score":byte(0x17B25B)},
    15:{"Name":"Make a crepe!", "Page":3, "Index":3, "Score":byte(0x17B25C)},
}
function start_task(page, index) =>    
    timer_running() > prev(timer_running()) &&
    menu() == cooking_contest &&
    contest_page() == page &&
    contest_indice() == index
count = 0
for contest in contest_tasks{
    count = count + 1
    leaderboard(
        "Cooking Contest Challenge " + count + " High Score",
        "Highest Score in " + contest_tasks[contest]["Name"],
        start_task(contest_tasks[contest]["Page"], contest_tasks[contest]["Index"]),
        menu() != cooking_contest,
        timer_frames() == timer_max() && prev(timer_running()) == 0,
        contest_tasks[contest]["Score"]                                
    )    
}
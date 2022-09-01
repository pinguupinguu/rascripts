// My Spanish Coach: Level 1 - Learn to Speak Spanish
// #ID = 14963
// $10B578: [8-bit] Screen ID?
// $146DEC: [32-bit] Test Right Answers
function right_answers() => dword(0x146DEC)
// $146DF0: [32-bit] Test Wrong Answers
// $146E38: save mirror?
// $146E50: current loaded lesson mastery values
// $146FC8: [16-bit] Current Lesson AKA literally the only value that matters
function current_lesson() => word(0x146FC8)
// $147080: [8-bit] Difficulty Selected
//          Bit 4 = Medium
//          Bit 5 = Hard
// $147BEC: [32-bit] Sound Options - Music
// $147D78: [32bit] Yo Le Language
//          0x00 = British lmao
//          0x01 = Español
//          0x02 = French
//          0x03 = Other
// $147E10: [32-bit] Selected... gender?
//          0x00 = Man
//          0x01 = Woman
//          0x02 = Boy
//          0x03 = Girl
// $147E38: [32-bit] Current selected save
//          0x00 = Save File 1
//          0x01 = Save File 2
//          0x02 = Save File 3
// $148018: [76-bits] Profile Name ASCII
// $148029: [8-bit] Current Question?
//0x147081 [N-bit] Cheat Flag
//         Bit 0 = 1 if On, 0 if Off
function cheat_off() => bit0(0x147081) == 0
nombres_conquistas = {
    70: "El Viaje Ha Comenzado!",
    90: "Noventa Manzanas",
    110: "Ciento Diez Mesas",
    130: "Ciento Treinta Camisas",
    150: "Ciento Cincuenta Ollas",
    170: "Ciento Setenta Juegos",
    190: "Ciento Noventa Huesos",
    210: "Doscientos Diez Martillos",
    230: "Doscientos Treinta Ruedas",
    250: "Doscientos Cincuenta Llaves",
    270: "Doscientos Setenta Espadas",
    290: "Doscientos Noventa Gatos",
    310: "Trescientos Diez Ladrillos",
    330: "Trescientos Treinta Monos",
    350: "Trescientos Cincuenta Guerras",
    370: "Trescientos Setenta Quesos",
    390: "Trescientas Noventa Canciones",
    410: "Cuatrocientos Diez Globos",
    430: "Cuatrocientos Treinta Instrumentos",
    450: "Cuatrocientos Cincuenta Jugos",
    470: "Cuatrocientos Setenta Tornillos",
    490: "Cuatrocientas Noventa Espadas",
    510: "Quinientos Diez Ladrillos",
    530: "Quinientos Treinta Peces",
    550: "Quinientos Cincuenta Cuadros",
    570: "Quinientos Setenta Marineros",
    590: "Quinientos Noventa Patos",
    610: "Seiscientas Diez Islas",
    630: "Seiscientos Treinta Festivales",
    650: "Seiscientas Cincuenta Piñas",
    670: "Seiscientas Setenta Hamburguesas",
    690: "Seiscientas Noventa Salchichas",
    710: "Setescientos Diez Cerebros",
    730: "Setescientos Treinta Coches",
    750: "Setescientos Cincuenta Perros",
    770: "Setescientas Setenta Noches",
    790: "Setescientas Noventa Mariposas",
    810: "Ochosientos Diez Amores",
    830: "Ochosientos Treinta Almuerzos",
    850: "Ochosientas Cincuenta Computadoras",
    870: "Ochosientas Setenta Universidades",
    890: "Ochosientos Noventa Vaqueros",
    910: "Novecientos Diez Cuchillos",
    930: "Novecientos Treinta Juegos",
    950: "Novecientos Cincuenta Años",
    970: "Novecientos Setenta Saludos"
}
function lesson_cheevo(target) => prev(current_lesson()) == target && current_lesson() == target + 1 && cheat_off()
achievement(//pinguu
    "Spanish Exam Master!",
    "Get a perfect entrance exam score!",
    points=5,
    trigger=
        prev(right_answers()) == 49 && right_answers() == 50 &&
        current_lesson() == 1
)
achievement(//bryan
    "Central America Adventure!",
    "Complete lessons 1-16!",
    points=10,
    id=244238,
    trigger=
        lesson_cheevo(16)
)
achievement(//pingu
    "Upper South America Adventure!",
    "Complete lessons 17-37",
    points=10,
    trigger=
        lesson_cheevo(37)
)
achievement(//bryan
    "Lower South America Adventure!",
    "Complete lessons 38-50!",
    points=10,
    id=244237,
    trigger=
        lesson_cheevo(50)
)
for i in range(70, 970, 20){    
    achievement(
        "" + nombres_conquistas[i],
        "Complete lessons " + i-19 + "-" + i,
        points=5,
        trigger=
            lesson_cheevo(i)
    )          
}
achievement( //pinguu
    "El Viaje Ha Terminado!",
    "Complete lessons  971-992!",
    points=10,
    trigger=
        lesson_cheevo(992)
)
rich_presence_display("A Spanish Enthusiast is studying Lesson {0}!",    
    rich_presence_macro("Number", current_lesson())
)
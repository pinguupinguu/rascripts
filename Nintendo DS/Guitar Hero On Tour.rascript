// Guitar Hero: On Tour
// #ID = 16242
function progress(data, total) =>
     measured(tally_of(data, total, b => once(byte(byte(0x0F36AC) * 0x84 + b) != 0 ))) &&
     tally_of(data, total - 1, b => once(prev(byte(byte(0x0F36AC) * 0x84 + b)) != 0 )) &&
     never(tally_of(data, total, b => once(prev(byte(byte(0x0F36AC) * 0x84 + b)) != 0 )))
easy_half = range(0x0fb264, 0x0fb29c, 4)
achievement(
    title = "Halfway Toured", points = 3,
    description = "Complete the first three venues  on Easy Difficulty in Career mode. (One-profile)",
    id = 140868, badge = "156999", published = "2/7/2021 9:37:42 PM", modified = "4/23/2024 5:29:33 PM",
    trigger = progress(easy_half, 15)
)
easy_full = range(0x0fb264, 0x0fb2c4, 4)
achievement(
    title = "Your First Tour", points = 5,
    description = "Complete Career mode on Easy Difficulty. (One-profile)",
    id = 140867, badge = "156998", published = "2/7/2021 9:37:39 PM", modified = "4/24/2024 3:02:17 PM",
    trigger = progress(easy_full, 25)
)
med_half = range(0x0fb265, 0x0fb29d, 4)
achievement(
    title = "Ampin' It Up A Notch", points = 5,
    description = "Complete the first three venues  on Medium Difficulty in Career mode. (One-profile)",
    id = 142068, badge = "158484", published = "2/19/2021 4:44:10 AM", modified = "4/24/2024 3:06:15 PM",
    trigger = progress(med_half, 15)
)
med_full = range(0x0FB265, 0x0FB2C5, 4)
achievement(
    title = "Your Second Tour", points = 10,
    description = "Complete Career mode on Medium Difficulty. (One-profile).",
    id = 142069, badge = "158485", published = "2/19/2021 4:44:13 AM", modified = "2/21/2021 6:55:34 AM",
    trigger = progress(med_full, 25)
)
hard_half = range(0x0FB266, 0x0FB29E, 4)

achievement(
    title = "A Devilish Approach", points = 5,
    description = "Complete the first three venues on Hard Difficulty in Career mode. (One-profile)",
    id = 142380, badge = "158942", published = "2/21/2021 6:18:07 AM", modified = "1/28/2022 6:20:48 AM",
    trigger = progress(hard_half, 15)
)
hard_main = range(0x0FB266, 0x0FB2C6, 4)
achievement(
    title = "Shreddin' Flames", points = 10,
    description = "Complete Career mode on Hard Difficulty. (One-profile).",
    id = 142381, badge = "158941", published = "2/21/2021 6:18:10 AM", modified = "1/28/2022 6:20:49 AM",
    trigger = progress(hard_main, 25)
)

expert_half = range(0x0fb267, 0x0fb29f, 4)
achievement(
    title = "Stairway to Heaven", points = 10,
    description = "Complete the first three venues  on Expert Difficulty in Career Mode. (One-profile)",
    id = 142378, badge = "158940", published = "2/21/2021 5:40:15 AM", modified = "2/21/2021 6:55:36 AM",
    trigger = progress(expert_half, 15)
)

expert_main = range(0x0fb267, 0x0fb2c7, 4)
achievement(
    title = "God of All Tours", points = 25,
    description = "Complete Career mode on Expert Difficulty. (One-profile).",
    id = 142379, badge = "158939", published = "2/21/2021 5:40:17 AM", modified = "2/21/2021 6:55:39 AM",
    trigger = progress(expert_main, 25)
)

easy_duels =
 bitcount(0xf36b0) +
 bitcount(0xf36b1) +
 bitcount(0x0f36b2) +
 bit0(0x0f36b3) +
 bit1(0x0f36b3)

function duel(inputs, count) {
    return measured(inputs == count) &&
    prev(inputs) == count - 1
}                
achievement(
    title = "Easy Fighting", points = 5,
    description = "Win all Guitar Duels on Easy Difficulty. ",
    id = 142382, badge = "158943", published = "2/21/2021 7:09:12 AM", modified = "2/21/2021 7:09:12 AM",
    trigger = duel(easy_duels, 26)
)
med_duels = 
    bitcount(0x0f36b4) +
 bitcount(0x0f36b5) +
 bitcount(0x0f36b6) +
 bit0(0x0f36b7) +
 bit1(0x0f36b7)
achievement(
    title = "Medium Dueling", points = 10,
    description = "Win all Guitar Duels on Medium Difficulty. ",
    id = 142383, badge = "158944", published = "2/21/2021 7:09:14 AM", modified = "2/21/2021 7:09:14 AM",
    trigger = duel(med_duels, 26)
)
hard_duels =
bitcount(0x0f36b8) +
 bitcount(0x0f36b9) +
 bitcount(0x0f36ba) +
 bit0(0x0f36bb) +
 bit1(0x0f36bb)
achievement(
    title = "Hard Combat", points = 10,
    description = "Win all Guitar Duels on Hard Difficulty. ",
    id = 142384, badge = "158945", published = "2/21/2021 7:09:17 AM", modified = "2/21/2021 7:09:17 AM",
    trigger = duel(hard_duels, 26)
)
expert_duels =
bitcount(0x0f36bc) +
 bitcount(0x0f36bd) +
 bitcount(0x0f36be) +
 bit0(0x0f36bf) +
 bit1(0x0f36bf)
achievement(
    title = "Expert In The Ring", points = 25,
    description = "Win all Guitar Duels on Expert Difficulty. ",
    id = 142385, badge = "158946", published = "2/21/2021 7:09:19 AM", modified = "2/21/2021 7:09:19 AM",
    trigger = duel(expert_duels, 26)
)
function state() => byte(0x1a6838) == 1
function combo() => dword(tbyte(0x0f0d74) + 0x50)
function combo_check(num) => state() && measured(combo() >= num) && prev(combo()) < num
achievement(
    title = "Basic Combo", points = 2,
    description = "Reach a 100 Note Streak. (Any difficulty)",
    id = 142522, badge = "159091", published = "2/22/2021 4:40:41 AM", modified = "2/22/2021 5:35:30 AM",
    trigger = combo_check(100)
)

achievement(
    title = "Intermediate Combo", points = 5,
    description = "Reach a 200 note streak. (Any difficulty)",
    id = 142523, badge = "159092", published = "2/22/2021 4:40:45 AM", modified = "2/22/2021 5:35:27 AM",
    trigger = combo_check(200)
)

achievement(
    title = "Advanced Combo", points = 10,
    description = "Reach a 300 note streak. (Any difficulty)",
    id = 142524, badge = "159093", published = "2/22/2021 4:40:48 AM", modified = "2/22/2021 5:35:25 AM",
    trigger = combo_check(300)
)

achievement(
    title = "Guitar Collector", points = 10,
    description = "Purchase all available guitars from the Career Shop on one profile.",
    id = 140484, badge = "156563", published = "2/5/2021 6:09:33 AM", modified = "2/21/2021 5:20:18 AM",
    trigger = prev(byte(0x0E8214)) != 0x00 &&
              ((unless(byte(0x0F36AC) != 0x00) && (prev(bit3(0x0FB258)) + prev(bit4(0x0FB258)) + prev(bit4(0x0FB259)) +
                 prev(bit6(0x0FB259)) + prev(bit0(0x0FB25A)) + prev(bit4(0x0FB25A)) + prev(bit1(0x0FB25B))) < 0x07 && 
                measured((bit3(0x0FB258) + bit4(0x0FB258) + bit4(0x0FB259) + bit6(0x0FB259) + bit0(0x0FB25A) +
                 bit4(0x0FB25A) + bit1(0x0FB25B)) == 0x07)) ||
               (unless(byte(0x0F36AC) != 0x01) && (prev(bit3(0x0FB2DC)) + prev(bit4(0x0FB2DC)) + prev(bit4(0x0FB2DD)) +
                 prev(bit6(0x0FB2DD)) + prev(bit0(0x0FB2DE)) + prev(bit4(0x0FB2DE)) + prev(bit1(0x0FB2DF))) < 0x07 && 
                measured((bit3(0x0FB2DC) + bit4(0x0FB2DC) + bit4(0x0FB2DD) + bit6(0x0FB2DD) + bit0(0x0FB2DE) +
                 bit4(0x0FB2DE) + bit1(0x0FB2DF)) == 0x07)) ||
               (unless(byte(0x0F36AC) != 0x02) && (prev(bit3(0x0FB360)) + prev(bit4(0x0FB360)) + prev(bit4(0x0FB361)) +
                 prev(bit6(0x0FB361)) + prev(bit0(0x0FB362)) + prev(bit4(0x0FB362)) + prev(bit1(0x0FB363))) < 0x07 && 
                measured((bit3(0x0FB360) + bit4(0x0FB360) + bit4(0x0FB361) + bit6(0x0FB361) + bit0(0x0FB362) +
                 bit4(0x0FB362) + bit1(0x0FB363)) == 0x07)))
)

achievement(
    title = "Guitar Decorator", points = 10,
    description = "Purchase all finishes from the Career Shop on one profile.",
    id = 140485, badge = "156566", published = "2/5/2021 6:09:37 AM", modified = "2/21/2021 5:20:20 AM",
    trigger = prev(byte(0x0E8214)) != 0x00 &&
              ((unless(byte(0x0F36AC) != 0x00) && (prev(bit0(0x0FB258)) + prev(bit1(0x0FB258)) + prev(bit2(0x0FB258)) +
                 prev(bit6(0x0FB258)) + prev(bit0(0x0FB259)) + prev(bit6(0x0FB25A)) + prev(bit0(0x0FB25B)) +
                 prev(bit2(0x0FB25B)) + prev(bit3(0x0FB25B)) + prev(bit4(0x0FB25B))) < 0x0A && measured((bit0(0x0FB258)
                 + bit1(0x0FB258) + bit2(0x0FB258) + bit6(0x0FB258) + bit0(0x0FB259) + bit6(0x0FB25A) + bit0(0x0FB25B) +
                 bit2(0x0FB25B) + bit3(0x0FB25B) + bit4(0x0FB25B)) == 0x0A)) ||
               (unless(byte(0x0F36AC) != 0x01) && (prev(bit0(0x0FB2DC)) + prev(bit1(0x0FB2DC)) + prev(bit2(0x0FB2DC)) +
                 prev(bit6(0x0FB2DC)) + prev(bit0(0x0FB2DD)) + prev(bit6(0x0FB2DE)) + prev(bit0(0x0FB2DF)) +
                 prev(bit2(0x0FB2DF)) + prev(bit3(0x0FB2DF)) + prev(bit4(0x0FB2DF))) < 0x0A && measured((bit0(0x0FB2DC)
                 + bit1(0x0FB2DC) + bit2(0x0FB2DC) + bit6(0x0FB2DC) + bit0(0x0FB2DD) + bit6(0x0FB2DE) + bit0(0x0FB2DF) +
                 bit2(0x0FB2DF) + bit3(0x0FB2DF) + bit4(0x0FB2DF)) == 0x0A)) ||
               (unless(byte(0x0F36AC) != 0x02) && (prev(bit0(0x0FB360)) + prev(bit1(0x0FB360)) + prev(bit2(0x0FB360)) +
                 prev(bit6(0x0FB360)) + prev(bit0(0x0FB361)) + prev(bit6(0x0FB362)) + prev(bit0(0x0FB363)) +
                 prev(bit2(0x0FB363)) + prev(bit3(0x0FB363)) + prev(bit4(0x0FB363))) < 0x0A && measured((bit0(0x0FB360)
                 + bit1(0x0FB360) + bit2(0x0FB360) + bit6(0x0FB360) + bit0(0x0FB361) + bit6(0x0FB362) + bit0(0x0FB363) +
                 bit2(0x0FB363) + bit3(0x0FB363) + bit4(0x0FB363)) == 0x0A)))
)

achievement(
    title = "Play 'em all", points = 10,
    description = "Purchase all characters from the Career Shop on one profile.",
    id = 140486, badge = "156564", published = "2/5/2021 6:09:40 AM", modified = "2/21/2021 5:20:22 AM",
    trigger = prev(byte(0x0E8214)) != 0x00 &&
              ((unless(byte(0x0F36AC) != 0x00) && (prev(bit5(0x0FB258)) + prev(bit7(0x0FB258)) + prev(bit1(0x0FB259)) +
                 prev(bit2(0x0FB259)) + prev(bit3(0x0FB259)) + prev(bit5(0x0FB259)) + prev(bit7(0x0FB259)) +
                 prev(bit1(0x0FB25A)) + prev(bit2(0x0FB25A)) + prev(bit3(0x0FB25A)) + prev(bit5(0x0FB25A)) +
                 prev(bit7(0x0FB25A))) < 0x0C && measured((bit5(0x0FB258) + bit7(0x0FB258) + bit1(0x0FB259) +
                 bit2(0x0FB259) + bit3(0x0FB259) + bit5(0x0FB259) + bit7(0x0FB259) + bit1(0x0FB25A) + bit2(0x0FB25A) +
                 bit3(0x0FB25A) + bit5(0x0FB25A) + bit7(0x0FB25A)) == 0x0C)) ||
               (unless(byte(0x0F36AC) != 0x01) && (prev(bit5(0x0FB2DC)) + prev(bit7(0x0FB2DC)) + prev(bit1(0x0FB2DD)) +
                 prev(bit2(0x0FB2DD)) + prev(bit3(0x0FB2DD)) + prev(bit5(0x0FB2DD)) + prev(bit7(0x0FB2DD)) +
                 prev(bit1(0x0FB2DE)) + prev(bit2(0x0FB2DE)) + prev(bit3(0x0FB2DE)) + prev(bit5(0x0FB2DE)) +
                 prev(bit7(0x0FB2DE))) < 0x0C && measured((bit5(0x0FB2DC) + bit7(0x0FB2DC) + bit1(0x0FB2DD) +
                 bit2(0x0FB2DD) + bit3(0x0FB2DD) + bit5(0x0FB2DD) + bit7(0x0FB2DD) + bit1(0x0FB2DE) + bit2(0x0FB2DE) +
                 bit3(0x0FB2DE) + bit5(0x0FB2DE) + bit7(0x0FB2DE)) == 0x0C)) ||
               (unless(byte(0x0F36AC) != 0x02) && (prev(bit5(0x0FB360)) + prev(bit7(0x0FB360)) + prev(bit1(0x0FB361)) +
                 prev(bit2(0x0FB361)) + prev(bit3(0x0FB361)) + prev(bit5(0x0FB361)) + prev(bit7(0x0FB361)) +
                 prev(bit1(0x0FB362)) + prev(bit2(0x0FB362)) + prev(bit3(0x0FB362)) + prev(bit5(0x0FB362)) +
                 prev(bit7(0x0FB362))) < 0x0C && measured((bit5(0x0FB360) + bit7(0x0FB360) + bit1(0x0FB361) +
                 bit2(0x0FB361) + bit3(0x0FB361) + bit5(0x0FB361) + bit7(0x0FB361) + bit1(0x0FB362) + bit2(0x0FB362) +
                 bit3(0x0FB362) + bit5(0x0FB362) + bit7(0x0FB362)) == 0x0C)))
)

 expert_songs = 0x0fb267
 expert_entires ={
        0x00:{"NAME":"Do What You Want", "SCORE":10},
        0x01:{"NAME":"All The Small Things", "SCORE":10},
        0x02:{"NAME":"Spiderwebs", "SCORE":10},
        0x03:{"NAME":"Are You Gonna Be My Girl", "SCORE":10},
        0x04:{"NAME":"We're Not Gonna Take It", "SCORE":10},
        0x05:{"NAME":"All Star", "SCORE":10},
        0x06:{"NAME":"Breed", "SCORE":10},
        0x07:{"NAME":"Jessie's Girl", "SCORE":10},
        0x08:{"NAME":"Hit Me With Your Best Shot", "SCORE":10},
        0x09:{"NAME":"This Love", "SCORE":10},
        0x0a:{"NAME":"Heaven", "SCORE":10},
        0x0b:{"NAME":"Helicopter", "SCORE":10},
        0x0c:{"NAME":"China Grove", "SCORE":10},
        0x0d:{"NAME":"Rock And Roll All Nite", "SCORE":10},
        0x0e:{"NAME":"What I Want", "SCORE":10},
        0x0f:{"NAME":"Jet Airliner", "SCORE":10},
        0x10:{"NAME":"Black Magic Woman", "SCORE":10},
        0x11:{"NAME":"Stray Cat Strut", "SCORE":10},
        0x12:{"NAME":"La Grange", "SCORE":10},
        0x13:{"NAME":"Youth Gone Wild", "SCORE":10},
        0x14:{"NAME":"I Don't Wanna Stop", "SCORE":10},
        0x15:{"NAME":"Anna Molly", "SCORE":10},
        0x16:{"NAME":"Knock Me Down", "SCORE":10},
        0x17:{"NAME":"Pride and Joy", "SCORE":10},
        0x18:{"NAME":"I Know A Little", "SCORE":10},    
}
function career_slot() => byte(0x0F36AC) == prev(byte(0x0F36AC))
for i in range(0, 0x18){
    achievement(
        expert_entires[i]["NAME"] + " - Expert Five Stars",
        "Get an Expert five star clear on " + expert_entires[i]["NAME"] + " in Career mode.",
        points=expert_entires[i]["SCORE"],
        trigger=
        state() &&
        career_slot() &&
        prev(byte(byte(0x0F36AC) * 0x84 +    expert_songs)) < 5 &&
        byte(byte(0x0F36AC) * 0x84 + expert_songs) >= 5        
    )
    expert_songs = expert_songs + 4
}


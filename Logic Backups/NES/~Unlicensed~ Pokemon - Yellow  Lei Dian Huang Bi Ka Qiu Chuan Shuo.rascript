// ~Unlicensed~ Pokemon - Yellow | Lei Dian Huang Bi Ka Qiu Chuan Shuo
// #ID = 5777
// BACKED UP FOR FIXING PURPOSES ON 5-23-2022
// $008A: Current Map ID
//        0x00=Title Screen
//        0x01=Pallet Town
//        0x02=Route 1
//        0x03=Viridian City
//        0x04=Viridian City Gym
//        0x05=Route 2
//        0x06=Viridian Forest
//        0x07=Diglett Cave
//        0x08=Pewter City Gym
//        0x09=Pewter City
//        0x0a=Route 3
//        0x0b=Mt. Moon 1F
//        0x0c=Mt. Moon B1F
//        0x0d=Route 4
//        0x0e=Cerulean City
//        0x0f=Cerulean City Gym
//        
//        0x4b=Pallet Town Player's House
//        0x4c=Pallet Town Player's House
//        0x4d=Pallet Town Rival's House
//        0x4e=Pallet Town Lab
//        0x4f=Viridian City House
//        0x50=Viridian City House
//        
//        0x52=Route 3 House
//        0x53=Diglett Cave Entrance
//        0x54=Diglett Cave Entrance
//        0x55=Pewter City Museum
//        0x56=Pewter City Museum Top Floor
//        0x57=Pewter City House
//        
//        0x5a=Cerulean City House
//        
//        0x96=Viridian City Pokemon Center
//        0x96=Viridian City Pokemon Center Top Floor
//        0x98=Pewter City Pokemon Center
//        0x99=Pewter City Pokemon Center Top Floor
//        0x9a=Route 3 Pokemon Center
//        0x9b=Route 3 Pokemon Center Top Floor
//        0xac=Viridian City Poke Mart
//        0xad=Pewter City Poke Mart
// $01FE: [8-bit] Something to do with making input or screen mode?
//        0x3f = chosen new game / load
//        0x75 = idle, waiting for input
//        0x78 = walking
//        0x7d = start menu
//        0x8b = screen transition
//        0x8e = pokemon battle
// $188A: value for elite 4?,
//        83firstroom,84=2ndroom,85=3rdroom,86=4throom,87=5throom
// $1B04: X Coords
// $1B06: Y Coords
// $6000: event code?
//        bbit 2 = receive pikachu
// $6001: bit0=boulder badge,bit1=beat scientist to pick a fossil,bit2=pick up fossil,bit3=firstencounter with team rocket,bit4=majikarp dealer,bit5 defeat misty and receive cascade badge.,bit6=beatgaryonroadtobills.
// $6002: bit0=charmander,bit1=meetbill,bit2=runbillpc,bit3=getdigtm,bit5=beatgaryonssanneship,bit6=meetshipcaptain
// $6004: bit0=end of puzzle for badge 3,bit1=thunderbadge,bit3=findbulbasaur,bit4=defeat zapdosbit5=beatgaryinghosttower,bit6=lemonade,bit7=fly
// $6005: bit0=receiveevee,bit1=rainbowbadge,bit 2 = switch in casino,bit3=defeatteamrocketcasino.,bit4=silphscope, bit5=marowakghost,bit6 7=defeat team rocket in ghost tower
// $6006: bit0=soulbadge,bit1=secret house,bit2=goldenteeth,bit3=givewardenteeth,bit4=give guard lemonade,bit5=defeatgarysaffrontown,bit6=teamrocketsaffron,bit7beatgiovanni/president and master ball
// $6007: bit0=defeat dojo and pick either hitmonchan/lee?,bit2=volcanobadge,bit1=marshbadge,bit3=earthbadge,bit4=jesseandjamesafterearthbadge,bit5=defeatgaryafterbeating elite4,bit6=beatgame,bit7=defeat mewtwo
// $6008: bit7, opened 3 buttons,bit4=defeat jesse and james elite4,bit1=defeat hoho,bit2= defeat lugia
// $6009: bit2=defeat articuno cave
// $600A: bi3=1st fossil brought to life,bit5=keytogym,bit1=defeat Eusine
// $600C: bit4=indigo plato?
// $6024: money value
// $6026: bit 0 = thunder stone near a cave?,bit5= leaf stone found near pewter city
// $6028: bit5=waterstone near laverdon townriver, bit7=rare candy in road to futsia
// $6029: bit0=s.potioninbadge7cave,bit1=samecave/thunderstone,bit5=victoryroadhiddenitem/h.potion
// $602A: bit6=s.heal in ghost tower,bit0=ice heal in saferizone,bit7=s.potion atsilphontower,bit3=firestoneinfirehouse,bit5=hiddeniteminfirehouse/fullheal
// $602B: bit0=antidoteinsyphonbuilding,bit2=thunderstone in thunder factory
// $6030: total pokemon in party
// $6031: pokemon seen?
// $6032: pokemon caught
// $6039: pokemon level. First slot?
// $603B: slot 4
// $603C: slot3
// $603E: pokemon slot 6
// $609F: bit0=bulbasaur
// $60A1: bit2=rattata
// $60A2: bit4=nidoran(f)
// $60AC: bit2=hitmonchan,bit1=hitmonlee
// $60B0: bit7=articuno
// $60B1: bit0=zapdos,bit1=moltres, bit6=mew,bit5=mewtwo,bit7=Raikou
// $60B2: lugia=bit2,bit1=Suicune,bit0=Entei,bit3=ho-oh
// $60B3: bit3=charmander,bit6=squirtle
// $60C7: badge value? bit2= lt.surge?,bit3=rainbowbadge,bit4=soulbadge?,bit6=volcano badge,bit5=psychicbadge,bit7=8thbadge
// $60D0: no of pokeballs
// $60D1: great ball amount
// $60D2: ultra ball
// $60D3: Master ball
// $60D4: no of potions
// $60D5: Super Potion
// $60D6: Hyper Potion
// $60D7: Max Potion
// $60D8: Antidote
// $60D9: Para Heal
// $60DA: Sleep Heal
// $60DB: Ice Heal
// $60DC: Burn Heal
// $60DD: Full Heal
// $60DE: Revive
// $60DF: Ether
// $60E0: Max Ether
// $60E1: Rare Candy
// $60E2: Fire Stone
// $60E3: Water Stone
// $60E4: Thunder Stone
// $60E5: Leaf Stone
// $60E6: moon stones
// $60EA: Helix Fossil
// $60EB: dome fossil
// $60EC: ss ann ticket
// $60EF: pokeflute
// $60F2: cut hm
// $60F5: hm strength
// $60F6: flash HM
// $7D48: Enemy Pokemon HP
// $7D56: xp gain
// $7D7F: Attack AP
// $7DB6: [8-bit] Menu choice
//        0x00 = New Game
//        0x01 = Load

achievement(
    title = "Defeat Brock", description = "Earn the Boulder Badge in Pewter City", points = 5,
    id = 24307, badge = "24850", published = "6/28/2015 4:45:26 AM", modified = "9/24/2019 2:11:01 PM",
    trigger = once(bit0(0x0060C7) == 1)
)

achievement(
    title = "Defeat Misty", description = "Earn the Cascade Badge in Cerulean City", points = 5,
    id = 24308, badge = "24851", published = "6/28/2015 4:45:29 AM", modified = "6/29/2015 3:21:12 AM",
    trigger = once(bit1(0x0060C7) == 1)
)

achievement(
    title = "Defeat Lt. Surge", description = "Earn the Thunder Badge in Vermillion City", points = 5,
    id = 24309, badge = "24852", published = "6/28/2015 4:45:33 AM", modified = "6/29/2015 3:21:15 AM",
    trigger = once(bit2(0x0060C7) == 1)
)

achievement(
    title = "Defeat Erika", description = "Earn the Rainbow Badge in Celadon City", points = 5,
    id = 24310, badge = "24853", published = "6/28/2015 4:45:36 AM", modified = "9/30/2019 2:41:01 PM",
    trigger = once(bit3(0x0060C7) == 1)
)

achievement(
    title = "Defeat Koga ", description = "Earn the Soul Badge in Fuchsia City", points = 10,
    id = 24311, badge = "24854", published = "6/28/2015 4:45:39 AM", modified = "3/19/2021 2:07:31 AM",
    trigger = once(bit4(0x0060C7) == 1)
)

achievement(
    title = "Defeat Sabrina ", description = "Earn the Marsh Badge in Saffron City", points = 10,
    id = 24312, badge = "24855", published = "6/28/2015 4:45:42 AM", modified = "3/19/2021 12:53:11 AM",
    trigger = once(bit5(0x0060C7) == 1)
)

achievement(
    title = "Defeat Blaine ", description = "Earn the Volcano Badge on Cinnabar Island", points = 10,
    id = 24313, badge = "24856", published = "6/28/2015 4:45:46 AM", modified = "3/19/2021 12:53:10 AM",
    trigger = once(bit6(0x0060C7) == 1)
)

achievement(
    title = "Defeat Giovanni", description = "Earn the Earth Badge in Viridian City", points = 10,
    id = 24314, badge = "24857", published = "6/28/2015 4:45:50 AM", modified = "3/19/2021 12:53:09 AM",
    trigger = once(bit7(0x0060C7) == 1)
)

achievement(
    title = "Not What You Expected", description = "Obtain first Pokemon", points = 1,
    id = 24315, badge = "24036", published = "6/28/2015 4:48:05 AM", modified = "3/19/2021 12:53:08 AM",
    trigger = once(bit2(0x006000) == 1)
)

achievement(
    title = "Wow! A Map!", description = "Obtain the Map", points = 1,
    id = 24316, badge = "24037", published = "6/28/2015 4:48:08 AM", modified = "3/19/2021 12:52:57 AM",
    trigger = once(bit6(0x006000) == 1)
)

achievement(
    title = "Gotta Catch 'Em All", description = "Catch first Pokemon", points = 1,
    id = 24317, badge = "24038", published = "6/28/2015 4:48:12 AM", modified = "3/19/2021 12:53:06 AM",
    trigger = once(byte(0x00603A) > 0) && never(byte(0x00603A) == 0)
)

achievement(
    title = "Make a Wise Investment", description = "Talk to the Magikarp Con Man", points = 1,
    id = 24318, badge = "24104", published = "6/28/2015 4:48:20 AM", modified = "3/19/2021 12:53:04 AM",
    trigger = once(bit4(0x006001) == 1)
)

achievement(
    title = "Under the....", description = "Obtain a Moon Stone", points = 1,
    id = 24319, badge = "24105", published = "6/28/2015 4:48:30 AM", modified = "3/19/2021 12:53:03 AM",
    trigger = once(byte(0x0060E6) == 1)
)

achievement(
    title = "Blue Hope", description = "Obtain a Helix Fossil", points = 1,
    id = 24320, badge = "24106", published = "6/28/2015 4:48:33 AM", modified = "3/19/2021 12:53:02 AM",
    trigger = once(byte(0x0060EA) == 1)
)

achievement(
    title = "Red Hope", description = "Obtain a Dome Fossil", points = 1,
    id = 24321, badge = "24107", published = "6/28/2015 4:48:37 AM", modified = "3/19/2021 12:53:00 AM",
    trigger = once(byte(0x0060EB) == 1)
)

achievement(
    title = "Blasting Off Again", description = "Survive your first encounter with Jesse and James", points = 2,
    id = 24322, badge = "24108", published = "6/28/2015 4:48:46 AM", modified = "3/19/2021 12:52:59 AM",
    trigger = once(bit3(0x006001) == 1)
)

achievement(
    title = "Charmander", description = "Find a place for Charmander", points = 5,
    id = 24323, badge = "24372", published = "6/28/2015 4:48:50 AM", modified = "3/19/2021 12:52:59 AM",
    trigger = once(bit0(0x006002) == 1)
)

achievement(
    title = "Ship Pass", description = "Find a ticket for the S.S Ticket", points = 2,
    id = 24324, badge = "24478", published = "6/28/2015 4:48:55 AM", modified = "6/29/2015 3:18:10 AM",
    trigger = once(byte(0x0060EC) == 1)
)

achievement(
    title = "Sick Captain", description = "Find the Cut HM", points = 2,
    id = 24325, badge = "24479", published = "6/28/2015 4:48:59 AM", modified = "9/27/2019 2:10:01 PM",
    trigger = once(byte(0x0060F2) == 1)
)

achievement(
    title = "Squirtle", description = "Keep him out of Mischief", points = 5,
    id = 24327, badge = "24481", published = "6/28/2015 4:49:07 AM", modified = "3/19/2021 12:53:28 AM",
    trigger = once(bit6(0x0060B3) == 1)
)

achievement(
    title = "Assistant Touch", description = "Find the Flash HM", points = 2,
    id = 24328, badge = "24482", published = "6/28/2015 4:49:11 AM", modified = "3/19/2021 12:53:26 AM",
    trigger = once(byte(0x0060F6) == 1)
)

achievement(
    title = "Told You Not To Touch!", description = "Find the hidden switch", points = 2,
    id = 24329, badge = "24483", published = "6/28/2015 4:49:15 AM", modified = "3/19/2021 12:53:25 AM",
    trigger = once(bit2(0x006005) == 1)
)

achievement(
    title = "Careful now", description = "Find three hidden buttons", points = 2,
    id = 24330, badge = "24484", published = "6/28/2015 4:49:19 AM", modified = "6/29/2015 3:18:34 AM",
    trigger = once(bit7(0x006008) == 1)
)

achievement(
    title = "Double Trouble", description = "Stop Team Rocket from taking over the Casino", points = 5,
    id = 24331, badge = "24485", published = "6/28/2015 4:49:22 AM", modified = "3/19/2021 12:53:23 AM",
    trigger = once(bit3(0x006005) == 1)
)

achievement(
    title = "Real Crime", description = "Obtain Silph Scope", points = 2,
    id = 24332, badge = "24486", published = "6/28/2015 4:49:26 AM", modified = "6/29/2015 3:18:41 AM",
    trigger = once(bit4(0x006005) == 1)
)

achievement(
    title = "Identified a Ghost", description = "Find out who the ghost is", points = 5,
    id = 24333, badge = "24489", published = "6/28/2015 4:49:30 AM", modified = "3/19/2021 12:53:15 AM",
    trigger = once(bit5(0x006005) == 1)
)

achievement(
    title = "Identified the Real Culprits ", description = "Jesse and James Murderers?", points = 5,
    id = 24334, badge = "24490", published = "6/28/2015 4:49:35 AM", modified = "3/19/2021 12:53:22 AM",
    trigger = once(bit6(0x006005) == 1)
)

achievement(
    title = "Musician", description = "Find the PokeFlute", points = 2,
    id = 24335, badge = "24491", published = "6/28/2015 4:49:39 AM", modified = "6/29/2015 3:18:53 AM",
    trigger = once(byte(0x0060EF) == 1)
)

achievement(
    title = "Secret House", description = "Find the Surf HM", points = 2,
    id = 24336, badge = "24492", published = "6/28/2015 4:49:43 AM", modified = "6/29/2015 3:20:42 AM",
    trigger = once(bit1(0x006006) == 1)
)

achievement(
    title = "Old Man's Teeth", description = "Find the Gold Teeth", points = 2,
    id = 24337, badge = "24493", published = "6/28/2015 4:49:47 AM", modified = "3/19/2021 12:53:20 AM",
    trigger = once(bit2(0x006006) == 1)
)

achievement(
    title = "He Can Talk!", description = "Find the Strength HM", points = 2,
    id = 24338, badge = "24494", published = "6/28/2015 4:49:55 AM", modified = "3/19/2021 12:53:19 AM",
    trigger = once(byte(0x0060F5) == 1)
)

achievement(
    title = "Annoying Guards...", description = "Find a way past the guards", points = 2,
    id = 24339, badge = "24495", published = "6/28/2015 4:49:59 AM", modified = "3/19/2021 12:53:18 AM",
    trigger = once(bit4(0x006006) == 1)
)

achievement(
    title = "Bulbasaur", description = "Take care of a sick Pokemon", points = 5,
    id = 24340, badge = "24496", published = "6/28/2015 4:50:03 AM", modified = "3/19/2021 12:53:17 AM",
    trigger = once(bit0(0x00609F) == 1)
)

achievement(
    title = "I Choose Boxing", description = "Obtain Hitmonchan from the Dojo in Saffron City", points = 2,
    id = 24341, badge = "24497", published = "6/28/2015 4:50:07 AM", modified = "3/19/2021 12:53:16 AM",
    trigger = once(bit2(0x0060AC) == 1)
)

achievement(
    title = "I Choose Karate", description = "Obtain Hitmonlee from the Dojo in Saffron City", points = 2,
    id = 24342, badge = "24498", published = "6/28/2015 4:50:11 AM", modified = "3/19/2021 12:52:49 AM",
    trigger = once(bit1(0x0060AC) == 1)
)

achievement(
    title = "Cornered", description = "Defeat Jesse and James again... in Saffron City", points = 5,
    id = 24343, badge = "24564", published = "6/28/2015 4:50:14 AM", modified = "3/19/2021 12:52:38 AM",
    trigger = once(bit6(0x006006) == 1)
)

achievement(
    title = "Saving the World One City at a Time", description = "Uncover the plot behind Team Rocket and the President", points = 5,
    id = 24344, badge = "24565", published = "6/28/2015 4:50:19 AM", modified = "3/19/2021 12:52:36 AM",
    trigger = once(bit7(0x006006) == 1)
)

achievement(
    title = "One Ball to Rule Them All", description = "Obtain a Master Ball", points = 2,
    id = 24345, badge = "24566", published = "6/28/2015 4:50:23 AM", modified = "3/19/2021 12:52:35 AM",
    trigger = once(bit7(0x006006) == 1)
)

achievement(
    title = "Legendary Ice", description = "Beat the Ice Cave and defeat a legendary Pokemon", points = 10,
    id = 24346, badge = "24751", published = "6/28/2015 4:50:28 AM", modified = "3/19/2021 12:52:34 AM",
    trigger = once(bit2(0x006009) == 1)
)

achievement(
    title = "I Give You Life", description = "Bring a fossil back from Extinction", points = 5,
    id = 24347, badge = "24752", published = "6/28/2015 4:50:32 AM", modified = "3/19/2021 12:52:33 AM",
    trigger = once(bit3(0x00600A) == 1)
)

achievement(
    title = "Key to Success", description = "Find a key to a gym", points = 5,
    id = 24348, badge = "24753", published = "6/28/2015 4:50:36 AM", modified = "3/19/2021 12:52:31 AM",
    trigger = once(bit5(0x00600A) == 1)
)

achievement(
    title = "Eevee", description = "Receive a gift", points = 5,
    id = 24349, badge = "24840", published = "6/28/2015 4:50:40 AM", modified = "3/19/2021 12:52:31 AM",
    trigger = once(bit0(0x006005) == 1)
)

achievement(
    title = "Learn to Fly", description = "Receive HM 2", points = 2,
    id = 24350, badge = "24841", published = "6/28/2015 4:50:44 AM", modified = "3/19/2021 12:52:29 AM",
    trigger = once(bit7(0x006004) == 1)
)

achievement(
    title = "Good Luck with the Earth Badge!", description = "Defeat Jesse and James after winning Earth Badge", points = 5,
    id = 24351, badge = "24842", published = "6/28/2015 4:50:49 AM", modified = "3/19/2021 12:52:21 AM",
    trigger = once(bit4(0x006007) == 1)
)

achievement(
    title = "Dream Becoming a Reality", description = "Make it to the Indigo Plateau", points = 5,
    id = 24352, badge = "24843", published = "6/28/2015 4:50:53 AM", modified = "3/19/2021 12:52:27 AM",
    trigger = once(bit4(0x00600C) == 1)
)

achievement(
    title = "Legendary Thunder", description = "Beat the Thunder Factory and defeat a legendary Pokemon", points = 10,
    id = 24353, badge = "24844", published = "6/28/2015 4:50:59 AM", modified = "3/19/2021 12:52:25 AM",
    trigger = once(bit4(0x006004) == 1)
)

achievement(
    title = "Preparing to Be the Greatest", description = "Obtain a full team of Pokemon", points = 5,
    id = 24354, badge = "24848", published = "6/28/2015 4:51:11 AM", modified = "3/19/2021 12:52:25 AM",
    trigger = once(byte(0x006030) == 6) && never(byte(0x006030) < 6) && never(byte(0x006030) > 6)
)

achievement(
    title = "Halfway to Pokemon Champion", description = "Obtain a full team of Level 50 Pokemon", points = 25,
    id = 24355, badge = "24849", published = "6/28/2015 4:51:15 AM", modified = "3/19/2021 12:44:57 AM",
    trigger = once(byte(0x006039) >= 50) && never(once(byte(0x006039) < 50)) && once(byte(0x00603A) >= 50) && 
              never(byte(0x00603A) < 50) && once(byte(0x00603B) >= 50) && never(byte(0x00603B) < 50) && 
              once(byte(0x00603C) >= 50) && never(byte(0x00603C) < 50) && once(byte(0x00603D) >= 50) && 
              never(byte(0x00603D) < 50) && once(byte(0x00603E) >= 50) && never(byte(0x00603E) < 50)
)

achievement(
    title = "Catch 'Em All", description = "Catch all 155 Pokemon within the game", points = 100,
    id = 24357, badge = "24858", published = "6/28/2015 4:57:51 AM", modified = "3/19/2021 12:52:22 AM",
    trigger = once(byte(0x006032) == 155) && never(byte(0x006032) < 155) && never(byte(0x006032) > 155)
)

achievement(
    title = "Ice Master", description = "Defeat Lorelei of the Elite Four", points = 10,
    id = 28424, badge = "28891", published = "9/4/2015 12:29:14 PM", modified = "9/4/2015 3:24:15 PM",
    trigger = once(byte(0x00188A) == 132)
)

achievement(
    title = "Rock and Roll", description = "Defeat Bruno of the Elite Four", points = 10,
    id = 28425, badge = "28892", published = "9/4/2015 12:29:17 PM", modified = "9/4/2015 3:24:18 PM",
    trigger = once(byte(0x00188A) == 133)
)

achievement(
    title = "Dream Eater", description = "Defeat Agatha of the Elite Four", points = 10,
    id = 28426, badge = "28893", published = "9/4/2015 12:29:19 PM", modified = "9/4/2015 3:24:20 PM",
    trigger = once(byte(0x00188A) == 134)
)

achievement(
    title = "Dragon Spirit", description = "Defeat Lance of the Elite Four", points = 10,
    id = 28427, badge = "28894", published = "9/4/2015 12:29:22 PM", modified = "9/4/2015 3:24:23 PM",
    trigger = once(byte(0x00188A) == 135)
)

achievement(
    title = "Pokemon Champion", description = "Defeat the real Pokemon Champion", points = 25,
    id = 28428, badge = "28895", published = "9/4/2015 12:29:25 PM", modified = "3/19/2021 12:52:56 AM",
    trigger = once(bit5(0x006007) == 1)
)

achievement(
    title = "Science Experiment", description = "Catch Mewtwo in Cerulean Cave ", points = 10,
    id = 28429, badge = "28896", published = "9/4/2015 12:36:03 PM", modified = "9/4/2015 3:24:29 PM",
    trigger = once(bit5(0x0060B1) == 1)
)

achievement(
    title = "Evil Strikes Twice", description = "Team Rocket strikes again!", points = 5,
    id = 28430, badge = "28897", published = "9/4/2015 12:39:23 PM", modified = "3/19/2021 12:52:55 AM",
    trigger = once(bit0(0x006008) == 1)
)

achievement(
    title = "How Could This Happen?", description = "Defeat the champions Jesse and James", points = 5,
    id = 28431, badge = "28898", published = "9/4/2015 1:44:17 PM", modified = "3/19/2021 12:52:51 AM",
    trigger = once(bit4(0x006008) == 1)
)

achievement(
    title = "Mystery Man", description = "Defeat Eusine", points = 5,
    id = 28432, badge = "28902", published = "9/4/2015 1:53:00 PM", modified = "3/19/2021 12:52:52 AM",
    trigger = once(bit1(0x00600A) == 1)
)

achievement(
    title = "Shiny Birdy", description = "Find and defeat the Legendary Ho-oh", points = 10,
    id = 28433, badge = "28903", published = "9/4/2015 2:44:54 PM", modified = "3/19/2021 12:52:50 AM",
    trigger = once(bit1(0x006008) == 1)
)

achievement(
    title = "Awaken the Bird", description = "Find and defeat the Legendary Lugia", points = 10,
    id = 28434, badge = "28904", published = "9/4/2015 2:44:57 PM", modified = "3/19/2021 12:52:39 AM",
    trigger = once(bit2(0x006008) == 1)
)

achievement(
    title = "Not Just 3 Legendary Birds", description = "Catch the 5 legendary birds", points = 25,
    id = 28435, badge = "28905", published = "9/4/2015 2:45:01 PM", modified = "3/19/2021 12:52:48 AM",
    trigger = once(bit2(0x0060B2) == 1) && once(bit0(0x0060B1) == 1) && once(bit1(0x0060B1) == 1) && once(bit7(0x0060B0)
               == 1) && once(bit3(0x0060B2) == 1)
)

achievement(
    title = "Legendary Dogs", description = "Catch the 3 legendary dog Pokemon", points = 25,
    id = 28436, badge = "28906", published = "9/4/2015 2:45:05 PM", modified = "3/19/2021 12:52:47 AM",
    trigger = once(bit7(0x0060B1) == 1) && once(bit1(0x0060B2) == 1) && once(bit0(0x0060B2) == 1)
)

achievement(
    title = "The Legend of all Yellow Pokemon", description = "Obtain Mew", points = 25,
    id = 28437, badge = "28907", published = "9/4/2015 2:45:07 PM", modified = "3/19/2021 12:52:45 AM",
    trigger = once(bit6(0x0060B1) == 1)
)

achievement(
    title = "Lots of Money", description = "Accumulate a large amount of money", points = 10,
    id = 28438, badge = "28909", published = "9/4/2015 3:01:55 PM", modified = "3/19/2021 12:52:44 AM",
    trigger = once(word(0x006024) >= 390)
)

achievement(
    title = "Hidden Water", description = "Obtain a hidden Water Stone in Lavender Town", points = 2,
    id = 28439, badge = "28910", published = "9/4/2015 3:16:23 PM", modified = "3/19/2021 12:52:43 AM",
    trigger = once(bit5(0x006028) == 1)
)

achievement(
    title = "Hidden Ice", description = "Obtain a hidden Ice Heal in the Safari Zone", points = 2,
    id = 28440, badge = "28911", published = "9/4/2015 3:16:26 PM", modified = "3/19/2021 12:52:42 AM",
    trigger = once(bit0(0x00602A) == 1)
)

achievement(
    title = "Hidden Thunder", description = "Obtain a hidden Thunder Stone in an obvious place", points = 2,
    id = 28441, badge = "28913", published = "9/4/2015 3:16:28 PM", modified = "3/19/2021 12:52:40 AM",
    trigger = once(bit2(0x00602B) == 1)
)

achievement(
    title = "Hidden Leafs", description = "Obtain a hidden Leaf Stone in Pewter City", points = 2,
    id = 28442, badge = "28914", published = "9/4/2015 3:16:45 PM", modified = "3/19/2021 12:52:39 AM",
    trigger = once(bit5(0x006026) == 1)
)

achievement(
    title = "What are you doing in the game?", description = "Obtain Lugia before winning your first badge", points = 10,
    id = 24356, badge = "24103", published = "6/28/2015 4:57:45 AM", modified = "3/13/2016 6:47:21 PM",
    trigger = once(byte(0x006001) == 0) && never(byte(0x006001) > 0) && once(bit2(0x0060B2) == 1)
)

achievement(
    title = "Not that puzzle again...", description = "Beat the puzzle of pipes", points = 2,
    id = 24326, badge = "24480", published = "6/28/2015 4:49:03 AM", modified = "6/29/2015 3:18:19 AM",
    trigger = once(bit0(0x006004) == 1)
)

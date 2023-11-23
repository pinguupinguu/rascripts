// Super Scribblenauts
// #ID = 16383
// RA Checksum: 8f933e7029442b0cf6f8ff291f06a06b
// $1A38BC: [32bit] Game Loaded
//          0x00=No
//          0x01=Yes
function game_loaded() => prev(dword(0x1a38bc)) == 1
// $21ABD0: [8bit] Current Save Slot
// $0217A40: [8bit] Game/Menu State
// $0218ec4: [32bit] Active Profile Objectives
function objectives() => dword(0x218ec4) == prev(dword(0x218ec4))
function save_slot() => byte(0x21abd0) == prev(byte(0x21abd0))
function save_protection() => save_slot() && objectives() && prev(byte(0x217a40)) != 0x9 && unless(once(dword(0x1a38bc) != prev(dword(0x1a38bc)))) && (always_false() 
||  never(repeated(4, once(dword(0x1a38bc) != prev(dword(0x1a38bc))) && always_true())))
// $1A3DAC: [32bit] Constellation ID
//          0xa=S1
//          0xb=S2
// $1A3DB0: [32bit] Current Substage


function single_play(level_addr) =>    
    bit1(level_addr) > prev(bit1(level_addr)) &&
    save_protection() 
function replay(level_addr) =>    
    prev(bit0(level_addr)) +
    prev(bit1(level_addr)) +
    prev(bit2(level_addr)) +
    prev(bit3(level_addr)) == 2 &&
    bit0(level_addr) + 
    bit1(level_addr) + 
    bit2(level_addr) + 
    bit3(level_addr) == 4 &&
    (save_protection())
// $218EF6: [NBit] Constellation Flags - Level 1-1
//          Bit0 = Level 1-1 Available
//          Bit1= Level 1-1 Cleared.
achievement(
    "A Basic Tree",
    "Clear Level 1-1",
    points=1,
    trigger=        
        bit0(0x218ef6) > prev(bit0(0x218ef6)) &&
        bit1(0x218ef6) > prev(bit1(0x218ef6)) &&
        save_protection()
)
// $218EFA: [NBit] Constellation Flags - Level 1-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-2 Cleared
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "A Girafee?",
    "Clear Level 1-2 with a gold crown",
    points=2,
    trigger=
        replay(0x218efa)
)
// $218EFE: [NBit] Constellation Flags - Level 1-3
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-3 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Car Trouble",
    "Clear Level 1-3 with a gold crown",
    points=2,
    trigger=
        replay(0x218efe)
)
// $218F02: [NBit] Constellation Flags - Level 1-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Sports Party",
    "Clear Level 1-4 with a gold crown",
    points=2,
    trigger=
        replay(0x218f02)
)
// $218F06: [NBit] Constellation Flags - Level 1-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Brotherly Issues",
    "Clear Level 1-5 with a gold crown",
    points=2,
    trigger=
        replay(0x218f06)
)
// $218F0A: [NBit] Constellation Flags - Level 1-6
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-6 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Destructive Behavior",
    "Clear Level 1-6 with a gold crown",
    points=2,
    trigger=
        replay(0x218f0a)
)
// $218F0E: [NBit] Constellation Flags - Level 1-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Choices, Choices!",
    "Clear Level 1-7 with a gold crown",
    points=2,
    trigger=
        replay(0x218f0e)
)
// $218F12: [NBit] Constellation Flags - Level 1-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Blazed",
    "Clear Level 1-8 with a gold crown",
    points=2,
    trigger=
        replay(0x218f12)
)
// $218F16: [NBit] Constellation Flags - Level 1-9
//          Bit1=Level 1-9 Cleared
achievement(
    "Machine Creation",
    "Clear Level 1-9",
    points=1,
    trigger=
        single_play(0x218f16)
)
// $218F1A: [NBit] Constellation Flags - Level 1-10
//          Bit1=Level 1-10 Cleared
achievement(
    "Keys to Life",
    "Clear Level 1-10",
    points=1,
    trigger=
        single_play(0x218f1a)
)
// $218F1E: [NBit] Constellation Flags - Level 1-11
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 1-11 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Defend the City",
    "Clear Level 1-11 with a gold crown",
    points=2,
    trigger=
        replay(0x218f1e)
)
// $218F22: [NBit] Constellation Flags - Level 2-1
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-1 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Sluggish Attitude",
    "Clear Level 2-1 with a gold crown",
    points=2,
    trigger=
        replay(0x218f22)
)
// $218F26: [NBit] Constellation Flags - Level 2-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Wee!",
    "Clear Level 2-2 with a gold crown",
    points=2,
    trigger=
        replay(0x218f26)
)
// $218F2A: [NBit] Constellation Flags - Level 2-3
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-3 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Rawrrr",
    "Clear Level 2-3 with a gold crown",
    points=2,
    trigger=
        replay(0x218f2a)
)
// $218F2E: [NBit] Constellation Flags - Level 2-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Fuzzy..",
    "Clear Level 2-4 with a gold crown",
    points=2,
    trigger=
        replay(0x218f2e)
)
// $218F32: [NBit] Constellation Flags - Level 2-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Dancing Lion",
    "Clear Level 2-5 with a gold crown",
    points=2,
    trigger=
        replay(0x218f32)
)
// $218F36: [NBit] Constellation Flags - Level 2-6
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-6 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Food Gatherer",
    "Clear Level 2-6 with a gold crown",
    points=2,
    trigger=
    replay(0x218f36)
)
// $218F3A: [NBit] Constellation Flags - Level 2-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "A Future Job",
    "Clear Level 2-7 with a gold crown",
    points=2,
    trigger=
        replay(0x218f3a)
)
// $218F3E: [NBit] Constellation Flags - Level 2-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 2-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Organized Packer",
    "Clear Level 2-8 with a gold crown",
    points=2,
    trigger=
        replay(0x218f3e)
)
// $218F42: [NBit] Constellation Flags - Level 2-9
//          Bit1=Level 2-9 Cleared
achievement(
    "The Potion Master",
    "Clear Level 2-9",
    points=1,
    trigger=
        single_play(0x218f42)
)
// $218F46: [NBit] Constellation Flags - Level 3-1
//          Bit1=Level 3-1 Cleared
achievement(
    "Potion Maker",
    "Clear Level 3-1",
    points=1,
    trigger=
        single_play(0x218f46)
)
// $218F4A: [NBit] Constellation Flags - Level 3-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 3-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Buggin' Me",
    "Clear Level 3-2 with a gold crown",
    points=2,
    trigger=
        replay(0x218f4a)
)
// $218F4E: [NBit] Constellation Flags - Level 3-3
//          Bit1=Level 3-3 Cleared
achievement(
    "Dwarfinator",
    "Clear Level 3-3",
    points=1,
    trigger=
        single_play(0x218f4e)
)
// $218F52: [NBit] Constellation Flags - Level 3-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 3-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Astronauts and Fires",
    "Clear Level 3-4 with a gold crown",
    points=2,
    trigger=
        replay(0x218f52)
)
// $218F56: [NBit] Constellation Flags - Level 3-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 3-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Math Hurts",
    "Clear Level 3-5 with a gold crown",
    points=2,
    trigger=
        replay(0x218f56)
)
// $218F5A: [NBit] Constellation Flags - Level 3-6
//          Bit1=Level 3-6 Cleared
achievement(
    "Car Designer",
    "Clear Level 3-6",
    points=1,
    trigger=
        single_play(0x218f5a)
)
// $218F5E: [NBit] Constellation Flags - Level 3-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 3-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Waiting Line",
    "Clear Level 3-7 with a gold crown",
    points=2,
    trigger=
        replay(0x218f5e)
    
)
// $218F62: [NBit] Constellation Flags - Level 3-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 3-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Ronnie Needs Help",
    "Clear Level 3-8 with a gold crown",
    points=2,
    trigger=
        replay(0x218f62)
)
// $218F66: [NBit] Constellation Flags - Level 3-9
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 3-9 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Archaeologist Journey",
    "Clear Level 3-9 with a gold crown",
    points=2,
    trigger=
        replay(0x218f66)
)
// $218F6A: [NBit] Constellation Flags - Level 3-10
//          Bit1=Level 3-6 Cleared
achievement(
    "Wee Woo",
    "Clear Level 3-10",
    points=1,
    trigger=
        single_play(0x218f6a)
)
// $218F6E: [NBit] Constellation Flags - Level 4-1
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 4-1 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "It's A Me!",
    "Clear Level 4-1 with a gold crown",
    points=2,
    trigger=
        replay(0x218f6e)   
)
// $218F72: [NBit] Constellation Flags - Level 4-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 4-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "The Planets",
    "Clear Level 4-2 with a gold crown",
    points=2,
    trigger=
        replay(0x218f72)
)
// $218F76: [NBit] Constellation Flags - Level 4-3
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 4-3 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Hydrate or Diedrate",
    "Clear Level 4-3 with a gold crown",
    points=2,
    trigger=
        replay(0x218f76)
)
// $218F7A: [NBit] Constellation Flags - Level 4-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 4-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Shopping Time",
    "Clear Level 4-4 with a gold crown",
    points=2,
    trigger=
        replay(0x218f7a)
)
// $218F7E: [NBit] Constellation Flags - Level 4-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 4-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Food for People",
    "Clear Level 4-5 with a gold crown",
    points=2,
    trigger=
        replay(0x218f7e)
)
// $218F82: [NBit] Constellation Flags - Level 4-6
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 4-6 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Puzzle Solver",
    "Clear Level 4-6 with a gold crown",
    points=2,
    trigger=
        replay(0x218f82)
)
// $218F86: [NBit] Constellation Flags - Level 4-7
//          Bit1=Level 4-7 Cleared
achievement(
    "A Plague",
    "Clear Level 4-7",
    points=1,
    trigger=
        single_play(0x218f86)
)
// $218F8A: [NBit] Constellation Flags - Level 4-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 4-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Maxwell's Got Talent",
    "Clear Level 4-8 with a gold crown",
    points=2,
    trigger=
        replay(0x218f8a)
)
// $218F8E: [NBit] Constellation Flags - Level 4-9
//          Bit1=Level 4-9 Cleared
achievement(
    "Comparing Objects",
    "Clear Level 4-9",
    points=1,
    trigger=
        single_play(0x218f8e)
)
// $218F92: [NBit] Constellation Flags - Level 4-10
//          Bit1=Level 4-10 Cleared
achievement(
    "Fighting a Witch!",
    "Clear Level 4-10",
    points=1,
    trigger=
        single_play(0x218f92)
)
// $218F96: [NBit] Constellation Flags - Level 4-11
//          Bit1=Level 4-11 Cleared
achievement(
    "Strange Evolutions",
    "Clear Level 4-11",
    points=1,
    trigger=
        single_play(0x218f96)
)
// $218F9A: [NBit] Constellation Flags - Level 5-1
//          Bit1=Level 5-1 Cleared
achievement(
    "Sky High Starite",
    "Clear Level 5-1",
    points=1,
    trigger=
        single_play(0x218f9a)
)
// $218F9E: [NBit] Constellation Flags - Level 5-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 5-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "This is Halloween",
    "Clear Level 5-2 with a gold crown",
    points=2,
    trigger=
        replay(0x218f9e)
)
// $218FA2: [NBit] Constellation Flags - Level 5-3
//          Bit1=Level 5-3 Cleared
achievement(
    "Bridge to Doge",
    "Clear Level 5-3",
    points=1,
    trigger=
        single_play(0x218fa2)
)
// $218FA6: [NBit] Constellation Flags - Level 5-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 5-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Hair Stylist",
    "Clear Level 5-4 with a gold crown",
    points=2,
    trigger=
        replay(0x218fa6)
)
// $218FAA: [NBit] Constellation Flags - Level 5-5
//          Bit1=Level 5-5 Cleared
achievement(
    "Prison Break",
    "Clear Level 5-5",
    points=1,
    trigger=
        single_play(0x218faa)
)
// $218FAE: [NBit] Constellation Flags - Level 5-6
//          Bit1=Level 5-6 Cleared
achievement(
    "Yakity Yak",
    "Clear Level 5-6",
    points=1,
    trigger=
        single_play(0x218fae)
)
// $218FB2: [NBit] Constellation Flags - Level 5-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 5-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "The Tooth Fairy",
    "Clear Level 5-7 with a gold crown",
    points=2,
    trigger=
        replay(0x218fb2)
)
// $218FB6: [NBit] Constellation Flags - Level 5-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 5-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "A Spooky Scare",
    "Clear Level 5-8 with a gold crown",
    points=2,
    trigger=
        replay(0x218fb6)
)
// $218FBA: [NBit] Constellation Flags - Level 5-9
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 5-9 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Honorary Knight",
    "Clear Level 5-9 with a gold crown",
    points=2,
    trigger=
        replay(0x218fba)
)
// $218FBE: [NBit] Constellation Flags - Level 5-10
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 5-10 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Another Talent Show!",
    "Clear Level 5-10 with a gold crown",
    points=2,
    trigger=
        replay(0x218fbe)
)
// $218FC2: [NBit] Constellation Flags - Level 5-11
//          Bit1=Level 5-11 Cleared
achievement(
    "Do You Want to Build A Snowman?",
    "Clear Level 5-11",
    points=1,
    trigger=
        single_play(0x218fc2)
)
// $218FC6: [NBit] Constellation Flags - Level 5-12
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 5-12 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Really A Professional",
    "Clear Level 5-12 with a gold crown",
    points=2,
    trigger=
        replay(0x218fc6)
)
// $218FCA: [NBit] Constellation Flags - Level 6-1
//          Bit1=Level 6-1 Cleared
achievement(
    "Unga",
    "Clear Level 6-1",
    points=1,
    trigger=
        single_play(0x218fca)
)
// $218FCE: [NBit] Constellation Flags - Level 6-2
//          Bit1=Level 6-2 Cleared
achievement(
    "Parent's Permission",
    "Clear Level 6-2",
    points=1,
    trigger=
        single_play(0x218fce)
)
// $218FD2: [NBit] Constellation Flags - Level 6-3
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-3 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Botanist",
    "Clear Level 6-3 with a gold crown",
    points=2,
    trigger=
        replay(0x218fd2)
)
// $218FD6: [NBit] Constellation Flags - Level 6-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Under The Ground",
    "Clear Level 6-4 with a gold crown",
    points=2,
    id=173772,
    trigger=
        replay(0x218fd6)
)
// $218FDA: [NBit] Constellation Flags - Level 6-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Character Describe!",
    "Clear Level 6-5 with a gold crown",
    points=2,
    trigger=
        replay(0x218fda)
)
// $218FDE: [NBit] Constellation Flags - Level 6-6
//          Bit1=Level 6-6 Cleared
achievement(
    "Flipping Evil",
    "Clear Level 6-6",
    points=1,
    trigger=
        single_play(0x218fde)
)
// $218FE2: [NBit] Constellation Flags - Level 6-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "A Blank Canvas",
    "Clear Level 6-7 with a gold crown",
    points=2,
    trigger=
        replay(0x218fe2)
)
// $218FE6: [NBit] Constellation Flags - Level 6-8
//          Bit1=Level 6-8 Cleared
achievement(
    "Sporky",
    "Clear Level 6-8",
    points=1,
    trigger=
        single_play(0x218fe6)
)
// $218FEA: [NBit] Constellation Flags - Level 6-9
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-9 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Gold Rush",
    "Clear Level 6-9 with a gold crown",
    points=2,
    trigger=
        replay(0x218fea)
)
// $218FEE: [NBit] Constellation Flags - Level 6-10
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-10 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Four Big Monsters",
    "Clear Level 6-10 with a gold crown",
    points=2,
    trigger=
        replay(0x218fee)
)
// $218FF2: [NBit] Constellation Flags - Level 6-11
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-11 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)vvv
achievement(
    "Wedding Crasher",
    "Clear Level 6-11 with a gold crown",
    points=2,
    trigger=
        replay(0x218ff2)
)
// $218FF6: [NBit] Constellation Flags - Level 6-12
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-12 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Decorating Empty Space",
    "Clear Level 6-12 with a gold crown",
    points=2,
    trigger=
        replay(0x218ff6)
)
// $218FFA: [NBit] Constellation Flags - Level 6-13
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 6-13 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Exhibit Creation",
    "Clear Level 6-13 with a gold crown",
    points=2,
    trigger=
        replay(0x218ffa)
)
// $218FFE: [NBit] Constellation Flags - Level 7-1
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 7-1 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Campfire Song",
    "Clear Level 7-1 with a gold crown",
    points=2,
    trigger=
        replay(0x218ffe)
)
// $219002: [NBit] Constellation Flags - Level 7-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 7-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Robot?",
    "Clear Level 7-2 with a gold crown",
    points=2,
    trigger=
        replay(0x219002)
)
// $219006: [NBit] Constellation Flags - Level 7-3
//          Bit1=Level 7-3 Cleared
achievement(
    "The Yellow Brick Road",
    "Clear Level 7-3",
    points=1,
    trigger=
        single_play(0x219006)
)
// $21900A: [NBit] Constellation Flags - Level 7-4
//          Bit1=Level 7-4 Cleared
achievement(
    "Party Time",
    "Clear Level 7-4",
    points=1,
    trigger=
        single_play(0x21900A)
)
// $21900E: [NBit] Constellation Flags - Level 7-5
//          Bit1=Level 7-5 Cleared
achievement(
    "Earth Stuff",
    "Clear Level 7-5",
    points=1,
    trigger=
        single_play(0x21900e)
)
// $219012: [NBit] Constellation Flags - Level 7-6
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 7-6 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Alien Colonialism",
    "Clear Level 7-6 with a gold crown",
    points=2,
    trigger=
        replay(0x219012)
)
// $219016: [NBit] Constellation Flags - Level 7-7
//          Bit1=Level 7-7 Cleared
achievement(
    "Four Scenes Four Memes",
    "Clear Level 7-7",
    points=1,
    trigger=
        single_play(0x219016)
)
// $21901A: [NBit] Constellation Flags - Level 7-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 7-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Fancy Party",
    "Clear Level 7-8 with a gold crown",
    points=5,
    trigger=
        replay(0x21901a)
)
// $21901E: [NBit] Constellation Flags - Level 8-1
//          Bit1=Level 8-1 Cleared
achievement(
    "Living Creatures",
    "Clear Level 8-1",
    points=1,
    trigger=
        single_play(0x21901e)
)
// $219022: [NBit] Constellation Flags - Level 8-2
//          Bit1=Level 8-2 Cleared
achievement(
    "Weapons of Maxwell",
    "Clear Level 8-2",
    points=1,
    trigger=
        single_play(0x219022)
)
// $219026: [NBit] Constellation Flags - Level 8-3
//          Bit1=Level 8-3 Cleared
achievement(
    "Meow",
    "Clear Level 8-3",
    points=1,
    trigger=
        single_play(0x219026)
)
// $21902A: [NBit] Constellation Flags - Level 8-4
//          Bit1=Level 8-4 Cleared
achievement(
    "Solar System",
    "Clear Level 8-4",
    points=1,
    trigger=
        single_play(0x21902a)
)
// $21902E: [NBit] Constellation Flags - Level 8-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 8-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "I Can Fly",
    "Clear Level 8-5 with a gold crown",
    points=2,
    trigger=
        replay(0x21902e)
)
// $219032: [NBit] Constellation Flags - Level 8-6
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 8-6 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Dress to Impress",
    "Clear Level 8-6 with a gold crown",
    points=2,
    trigger=
        replay(0x219032)
)
// $219036: [NBit] Constellation Flags - Level 8-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 8-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Addressing Issues",
    "Clear Level 8-7 with a gold crown",
    points=2,
    trigger=
        replay(0x219036)
)
// $21903A: [NBit] Constellation Flags - Level 8-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 8-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Atteeeention!",
    "Clear Level 8-8 with a gold crown",
    points=5,
    trigger=
        replay(0x21903a)
)
// $21903E: [NBit] Constellation Flags - Level 9-1
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 9-1 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Instruments and More",
    "Clear Level 9-1 with a gold crown",
    points=2,
    trigger=
        replay(0x21903e)
)
// $219042: [NBit] Constellation Flags - Level 9-2
//          Bit1=Level 9-2 Cleared
achievement(
    "Wahoo Cheerleaders",
    "Clear Level 9-2",
    points=1,
    trigger=
        single_play(0x219042)
)
// $219046: [NBit] Constellation Flags - Level 9-3
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 9-3 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Astrological Constellations!",
    "Clear Level 9-3 with a gold crown",
    points=2,
    trigger=
        replay(0x219046)
)
// $21904A: [NBit] Constellation Flags - Level 9-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 9-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Maxwell the Superhero",
    "Clear Level 9-4 with a gold crown",
    points=5,
    trigger=
        replay(0x21904a)
)
// $21904E: [NBit] Constellation Flags - Level 9-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 9-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Prepping for School",
    "Clear Level 9-5 with a gold crown",
    points=2,
    trigger=
        replay(0x21904e)
)
// $219052: [NBit] Constellation Flags - Level 9-6
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 9-6 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Superhero Creation",
    "Clear Level 9-6 with a gold crown",
    points=2,
    trigger=
        replay(0x219052)
)
// $219056: [NBit] Constellation Flags - Level 9-7
//          Bit1=Level 9-7 Cleared
achievement(
    "Paint with Brushes",
    "Clear Level 9-7",
    points=2,
    trigger=
        single_play(0x219056)
)
// $21905A: [NBit] Constellation Flags - Level 9-8
//          Bit1=Level 9-8 Cleared
achievement(
    "Environmental Success",
    "Clear Level 9-8",
    points=1,
    trigger=
        single_play(0x21905A)
)
// $21905E: [NBit] Constellation Flags - Level 9-9
//          Bit1=Level 9-9 Cleared
achievement(
    "Grid Worthy Trial",
    "Clear Level 9-9",
    points=1,
    trigger=
        single_play(0x21905e)
)
// $219062: [NBit] Constellation Flags - Level 9-10
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 9-10 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Animal Comparisons",
    "Clear Level 9-10 with a gold crown",
    points=2,
    trigger=
        replay(0x219062)
)
// $219066: [NBit] Constellation Flags - Level 10-1
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 10-1 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "The Apocalypse",
    "Clear Level 10-1 with a gold crown",
    points=2,
    trigger=
        replay(0x219066)
)
// $21906A: [NBit] Constellation Flags - Level 10-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 10-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Police Training",
    "Clear Level 10-2 with a gold crown",
    points=2,
    trigger=
        replay(0x21906a)
)
// $21906E: [NBit] Constellation Flags - Level 10-3
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level 10-3 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Schoolhouse Needs",
    "Clear Level 10-3 with a gold crown",
    points=2,
    trigger=
        replay(0x21906e)
)
// $219072: [NBit] Constellation Flags - Level 10-4
//          Bit1=Level 10-4 Cleared
achievement(
    "People Checker",
    "Clear Level 10-4",
    points=1,
    trigger=
        single_play(0x219072)
)
// $219076: [NBit] Constellation Flags - Level 10-5
//          Bit1=Level 10-5 Cleared
achievement(
    "Doppleganger Troubles",
    "Clear Level 10-5",
    points=1,
    trigger=
        single_play(0x219076)
)
// $21907A: [NBit] Special Constellation Flags - Level S1-1
//          Bit1=Level S1-1 Cleared
achievement(
    "Switching Things On",
    "Clear Level S1-1",
    points=3,
    trigger=
        single_play(0x21907A)
)
// $21907E: [NBit] Special Constellation Flags - S1-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S1-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Starite Terror",
    "Clear Level S1-2 with a gold crown",
    points=5,
    trigger=
        replay(0x21907e)
)
// $219082: [NBit] Special Constellation Flags - Level S1-3
//          Bit1=Level S1-3 Cleared
achievement(
    "Damageless Animals",
    "Clear Level S1-3",
    points=3,
    trigger=
        single_play(0x219082)
)
// $219086: [NBit] Special Constellation Flags - S1-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S1-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Sparkling Bright",
    "Clear Level S1-4 with a gold crown",
    points=5,
    trigger=
        replay(0x219086)
)
// $21908A: [NBit] Special Constellation Flags - S1-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S1-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Starite Leverage",
    "Clear Level S1-5 with a gold crown",
    points=5,
    trigger=
        replay(0x21908A)
)
// $21908E: [NBit] Special Constellation Flags - S1-6
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S1-6 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Starites Fly",
    "Clear Level S1-6 with a gold crown",
    points=5,
    trigger=
        replay(0x21908E)
)
// $219092: [NBit] Special Constellation Flags - S1-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S1-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "No Starite Explosion!",
    "Clear Level S1-7 with a gold crown",
    points=5,
    trigger=
        replay(0x219092)
)
// $219096: [NBit] Special Constellation Flags - S1-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S1-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Cut the Rope",
    "Clear Level S1-8 with a gold crown",
    points=5,
    trigger=
        replay(0x219096)
)
// $21909A: [NBit] Special Constellation Flags - S1-9
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S1-9 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Biggest Powder Keg",
    "Clear Level S1-9 with a gold crown",
    points=5,
    trigger=
        replay(0x21909a)
)
// $21909E: [NBit] Special Constellation Flags - S2-1
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-1 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Spiked Ball Mayhem",
    "Clear Level S2-1 with a gold crown",
    points=5,
    trigger=
        replay(0x21909e)
)
// $2190A2: [NBit] Special Constellation Flags - S2-2
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-2 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Stop the Crate!",
    "Clear Level S2-2 with a gold crown",
    points=5,
    trigger=
        replay(0x2190a2)
)
// $2190A6: [NBit] Special Constellation Flags - S2-3
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-3 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Starite by Fire",
    "Clear Level S2-3 with a gold crown",
    points=5,
    trigger=
        replay(0x2190a6)
)
// $2190AA: [NBit] Special Constellation Flags - S2-4
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-4 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Spikey Trouble",
    "Clear Level S2-4 with a gold crown",
    points=5,
    trigger=
        replay(0x2190aa)
)
// $2190AE: [NBit] Special Constellation Flags - S2-5
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-5 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Chompy Starite",
    "Clear Level S2-5 with a gold crown",
    points=5,
    trigger=
        replay(0x2190ae)
)
// $2190B2: [NBit] Special Constellation Flags - Level S2-6
//          Bit1=Level S2-6 Cleared
achievement(
    "So Many Choices!",
    "Clear Level S2-6",
    points=3,
    trigger=
        single_play(0x2190b2)
)
// $2190B6: [NBit] Special Constellation Flags - S2-7
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-7 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Another Puzzle?",
    "Clear Level S2-7 with a gold crown",
    points=5,
    trigger=
        replay(0x2190b6)
)
// $2190BA: [NBit] Special Constellation Flags - S2-8
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-8 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Maxwell is Trapped",
    "Clear Level S2-8 with a gold crown",
    points=5,
    trigger=
        replay(0x2190ba)
)
// $2190BE: [NBit] Special Constellation Flags - S2-9
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-9 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Boom Boom!",
    "Clear Level S2-9 with a gold crown",
    id=178380,
    points=5,
    trigger=
        replay(0x2190be)
)
// $2190C2: [NBit] Special Constellation Flags - S2-10
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-10 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Gates of Stars",
    "Clear Level S2-10 with a gold crown",
    points=5,
    trigger=
        replay(0x2190c2)
)
// $2190C6: [NBit] Special Constellation Flags - S2-11
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-11 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Crushing Vents",
    "Clear Level S2-11 with a gold crown",
    points=5,
    trigger=
        replay(0x2190c6)
)
// $2190CA: [NBit] Special Constellation Flags - S2-12
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-12 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Float Starites Up",
    "Clear Level S2-12 with a gold crown",
    points=5,
    trigger=
        replay(0x2190ca)
)
// $2190CE: [NBit] Special Constellation Flags - S2-13
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-13 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "Barreling for Stars",
    "Clear Level S2-13 with a gold crown",
    points=5,
    trigger=
        replay(0x2190ce)
)
// $2190D2: [NBit] Special Constellation Flags - S2-14
//          Note: If You Quit During Replay, Bit0,2,3 Clear
//          Bit1=Level S2-14 Cleared (Has Silver Crown)
//          Bit2=Replay - First Soluion Used
//          Bit3=Replay - Second Solution Used
//          Bit0=Replay - Third Solution Used (Gold Crown Unlocked)
achievement(
    "No Digging!",
    "Clear Level S2-14 with a gold crown",
    points=5,
    trigger=
        replay(0x2190d2)
)
// $21964c: Merit Unlock Flags (1-8)
//          Bit0 - Starite Apprentice
//          Bit1 - Starite Master
//          Bit2 - Starite King
//          Bit3 - Connect the Dots
//          Bit4 - Replay
//          Bit5 - Full Replay
//          Bit6 - English Eagle
//          Bit7 - Word Lieutenant
achievement(
    "Starite Apprentice",
    "Catch 10 Starites!",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x21964c) > prev(bit0(0x21964c))
)
achievement(
    "Starite Master",
    "Catch 60 Starites",
    points=1,
    trigger=
        save_protection() &&
        bit1(0x21964c) > prev(bit1(0x21964c))    
)
achievement(
    "Starite King",
    "Catch 121 Starites",
    points=5,
    trigger=
        save_protection() &&
        bit2(0x21964c) > prev(bit2(0x21964c))
)
achievement(
    "Connect the Dots",
    "Complete any constellation",
    points=1,
    trigger=
        save_protection() &&
        bit3(0x21964c) > prev(bit3(0x21964c))
)
achievement(
    "Replay",
    "Complete a level in advanced mode",
    points=1,
    trigger=
        save_protection() &&
        bit4(0x21964c) > prev(bit4(0x21964c))
)
achievement(
    "Full Replay",
    "Complete all advanced mode levels",
    points=5,
    trigger=
        save_protection() &&
        bit5(0x21964c) > prev(bit5(0x21964c))
)
achievement(
    "English Eagle",
    "Create 10 unique objects",
    points=1,
    trigger=
        save_protection() &&
        bit6(0x21964c) > prev(bit6(0x21964c))
)
achievement(
    "Word Lietutenant",
    "Create 25 unique objects",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x21964c) > prev(bit7(0x21964c))
)
// $21964d: Merit Unlock Flags (9-16)
//          Bit0 - Syllable Savant
//          Bit1 - Language Lion
//          Bit2 - Grammar General
//          Bit3 - Word Warrior
//          Bit4 - Brand New Pencil
//          Bit5 - Sharpened Pencil
//          Bit6 - Well Used Pencil
//          Bit7 - Worn Down Pencil
achievement(
    "Syllable Savant",
    "Create 50 unique objects",
    points=2,
    trigger=
        save_protection() &&
        bit0(0x21964d) > prev(bit0(0x21964d))
)
achievement(
    "Language Lion",
    "Create 100 unique objects",
    points=3,
    trigger=
        save_protection() &&
        bit1(0x21964d) > prev(bit1(0x21964d))
)
achievement(
    "Grammar General",
    "Create 200 unique objects",
    points=2,
    trigger=
        save_protection() &&
        bit2(0x21964d) > prev(bit2(0x21964d))
)
achievement(    
    "Word Warrior",
    "Create 300 unique objects",
    points=3,
    trigger=
        save_protection() &&
        bit3(0x21964d) > prev(bit3(0x21964d))
)
achievement(
    "Brand New Pencil",
    "Use 10 unique adjectives",
    points=1,
    trigger=
        save_protection() &&
        bit4(0x21964d) > prev(bit4(0x21964d))    
)
achievement(
    "Sharpened Pencil",
    "Use 25 unique adjectives",
    points=2,
    trigger=
        save_protection() &&
        bit5(0x21964d) > prev(bit5(0x21964d))
)
achievement(
    "Well Used Pencil",
    "Use 50 unique adjectives",
    points=3,
    trigger=
        save_protection() &&
        bit6(0x21964d) > prev(bit6(0x21964d))
)
achievement(
    "Worn Down Pencil",
    "Use 100 unique adjectives",
    points=4,
    trigger=
        save_protection() &&
        bit7(0x21964d) > prev(bit7(0x21964d))
)
// $21964e: Merit Unlock Flags (17-24)
//          Bit0 - Cracked Pencil
//          Bit1 - Broken Pencil
//          Bit2 - Rad Recombiner
//          Bit3 - Master Morpher
//          Bit4 - Mega Mutator
//          Bit5 - It's Alive!
//          Bit6 - Piggy Bank
//          Bit7 - Nice Wallet
achievement(
    "Cracked Pencil",
    "Use 200 unique adjectives",
    points=4,
    trigger=
        save_protection() &&
        bit0(0x21964e) > prev(bit0(0x21964e))
)
achievement(
    "Broken Pencil",
    "Use 300 unique adjectives",
    points=5,
    trigger=
        save_protection() &&
        bit1(0x21964e) > prev(bit1(0x21964e))
)
achievement(
    "Rad Recombiner",
    "Apply three adjectives to an object",
    points=1,
    trigger=
        save_protection() &&
        bit2(0x21964e) > prev(bit2(0x21964e))
)
achievement(
    "Master Morpher",
    "Apply five adjectives to an object",
    points=1,
    trigger=
        save_protection() &&
        bit3(0x21964e) > prev(bit3(0x21964e))
)
achievement(
    "Mega Mutator",
    "Apply eight adjectives to an object",
    points=2,
    trigger=
        save_protection() &&
        bit4(0x21964e) > prev(bit4(0x21964e))
)
achievement(
    "It's Alive!",
    "Grant life to an inanimate object",
    points=1,
    trigger=
        save_protection() &&
        bit5(0x21964e) > prev(bit5(0x21964e))
)
achievement(
    "Piggy Bank",
    "Hold 1,000 Ollars in your bank",
    points=1,
    trigger=
        save_protection() &&
        bit6(0x21964e) > prev(bit6(0x21964e))
)
achievement(
    "Nice Wallet",
    "Hold 5,000 Ollars in your bank",
    points=2,
    trigger=
        save_protection() &&
        bit7(0x21964e) > prev(bit7(0x21964e))
)
// $21964f: Merit Unlock Flags (25-32)
//          Bit0 - Money Vault
//          Bit1 - Welcome Mat
//          Bit2 - Home Crown
//          Bit3 - Maxwell In Disguise
//          Bit4 - Window Shopper
//          Bit5 - Dedicated Collector
//          Bit6 - Avatar Maniac
//          Bit7 - Suit Up
achievement(
    "Money Vault",
    "Hold 10,000 Ollars in your bank",
    points=5,
    trigger=
        save_protection() &&
        bit0(0x21964f) > prev(bit0(0x21964f))
)
achievement(
    "Welcome Mat",
    "Change your playground",
    points=0,
    trigger=
        save_protection() &&
        bit1(0x21964f) > prev(bit1(0x21964f))
)
achievement(
    "Home Crown",
    "Complete a custom level",
    points=0,
    trigger=
        save_protection() &&
        bit2(0x21964f) > prev(bit2(0x21964f))
)
achievement(
    "Maxwell In Disguise",
    "Play as a different avatar",
    points=0,
    trigger=
        save_protection() &&
        bit3(0x21964f) > prev(bit3(0x21964f))
)
function shopping() =>
    
    bitcount(0x218e8e) -
    bit0(0x218e8e) +
    bitcount(0x218e8f) +
    bitcount(0x218e90) +
    bitcount(0x218e91) +
    bitcount(0x218e92) +
    bitcount(0x218e93) +
    bitcount(0x218e94)
achievement(
    "Window Shopper",
    "Purchase 10 avatars",
    id=173864,
    points=2,
    trigger=
        save_slot() &&
        prev(shopping()) == 9 &&
        measured(shopping() == 10)
)
achievement(
    "Dedicated Collector",
    "Purchase 25 avatars",
    points=4,
    trigger=
        save_slot() &&
        prev(shopping()) == 24 &&
        measured(shopping() == 25)  
)
achievement(
    "Avatar Maniac",
    "Purchase all avatars",
    points=5,
    trigger=
        save_slot() &&
        prev(shopping()) == 48 &&
        measured(shopping() == 49)
)
achievement(
    "Suit Up",
    "Fully equip Maxwell",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x21964f) > prev(bit7(0x21964f))
)
// $219650: Merit Unlock Flags (33-40)
//          Bit0 - You Can Fly
//          Bit1 - Cthulhu Fhtagn
//          Bit2 - Fatality?
//          Bit3 - Clever Creation
//          Bit4 - Creative Concoction
//          Bit5 - Colossal Contraption
//          Bit6 - Over Budget
//          Bit7 - Skin of Your Teeth
achievement(
    "You Can Fly",
    "Equip any flying gear or mount",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219650) > prev(bit0(0x219650))
)
achievement(
    "Cthulhu Fhtagn",
    "Create a mythos monster",
    points=1,
    trigger=
        save_protection() &&
        bit1(0x219650) > prev(bit1(0x219650))
)
achievement(
    "Fatality?",
    "Destroy the world",
    points=0,
    trigger=
        save_protection() &&
        bit2(0x219650) > prev(bit2(0x219650))
)
achievement(
    "Clever Creation",
    "Attach any three objects together",
    points=1,
    trigger=
        save_protection() &&
        bit3(0x219650) > prev(bit3(0x219650))
)
achievement(
    "Creative Concotion",
    "Attach any six objects together",
    points=2,
    trigger=
        save_protection() &&
        bit4(0x219650) > prev(bit4(0x219650))
)
achievement(
    "Colossal Contraption",
    "Attach any ten objects together",
    points=5,
    trigger=
        save_protection() &&
        bit5(0x219650) > prev(bit5(0x219650))
)
achievement(
    "Over Budget",
    "Completely fill the budget meter",
    points=1,
    trigger=
        save_protection() &&
        bit6(0x219650) > prev(bit6(0x219650))
)
achievement(
    "Skin of Your Teeth",
    "Catch a starite while Maxwell is being defeated",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x219650) > prev(bit7(0x219650))
)
// $219651: Merit Unlock Flags (41-48)
//          Bit0 - Micronized
//          Bit1 - Ginormous
//          Bit2 - Lion Tamer
//          Bit3 - History Lesson
//          Bit4 - Teleported
//          Bit5 - Break Time
//          Bit6 - Behind the Scenes
//          Bit7 - Forbidden Fruit
achievement(
    "Micronized",
    "Create the smallest possible object",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219651) > prev(bit0(0x219651))
)
achievement(
    "Ginormous",
    "Create the largest possible object",
    points=1,
    trigger=
        save_protection() &&
        bit1(0x219651) > prev(bit1(0x219651))
)
achievement(
    "Lion Tamer",
    "Ride a creature that's normally hostile",
    points=1,
    trigger=
        save_protection() &&
        bit2(0x219651) > prev(bit2(0x219651))
)
achievement(
    "History Lesson",
    "Use the time machine",
    points=1,
    trigger=
        save_protection() &&
        bit3(0x219651) > prev(bit3(0x219651))
)
achievement(
    "Teleported",
    "Use the teleporter",
    points=1,
    trigger=
        save_protection() &&
        bit4(0x219651) > prev(bit4(0x219651))
)
achievement(
    "Break Time",
    "Use the arcade machine",
    points=0,
    trigger=
        save_protection() &&
        bit5(0x219651) > prev(bit5(0x219651))
)
achievement(
    "Behind the Scenes",
    "Create three 5th Cell developers",
    points=3,
    trigger=
        save_protection() &&
        bit6(0x219651) > prev(bit6(0x219651))
)
achievement(
    "Forbidden Fruit",
    "Use Mawell's notebook",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x219651) > prev(bit7(0x219651))
)
// $219652: Merit Unlock Flags (49-56)
//          Bit0 - Russian Doll
//          Bit1 - Kiss Me
//          Bit2 - Really Big Lizards
//          Bit3 - Texture Artist
//          Bit4 - Daily Horoscope
//          Bit5 - Astronomer
//          Bit6 - Easter Egg
//          Bit7 - Coloring Book
achievement(
    "Russian Doll",
    "Place an object inside an object inside an object",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219652) > prev(bit0(0x219652))
)
achievement(
    "Kiss Me",
    "Transform a creature into a frog",
    points=1,
    trigger=
        save_protection() &&
        bit1(0x219652) > prev(bit1(0x219652))
)
achievement(
    "Really Big Lizards",
    "Create 5 dinosaurs",
    points=1,
    trigger=
        save_protection() &&
        bit2(0x219652) > prev(bit2(0x219652))
)
achievement(
    "Texture Artists",
    "Create 5 objects made out of altered materials",
    points=1,
    trigger=
        save_protection() &&
        bit3(0x219652) > prev(bit3(0x219652))
)
achievement(
    "Daily Horoscope",
    "Decorate the sky with 12 zodiac symbols",
    points=1,
    trigger=
        save_protection() &&
        bit4(0x219652) > prev(bit4(0x219652))
)
achievement(
    "Astronomer",
    "Decorate the sky with every planet in the solar system",
    points=1,
    trigger=
        save_protection() &&
        bit5(0x219652) > prev(bit5(0x219652))
)
achievement(
    "Easter Egg",
    "Create five hidden historical figures",
    points=1,
    trigger=
        save_protection() &&
        bit6(0x219652) > prev(bit6(0x219652))
)
achievement(
    "Colouring Book",
    "Create 10 objects with altered colours",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x219652) > prev(bit7(0x219652))
)
// $219653: Merit Unlock Flags (57-60)
//          Bit0 - Hypnotized
//          Bit1 - Fantasy Fulfillment
//          Bit2 - Looking Ahead
//          Bit3 - The Fourth Wall
//          Bit4-7: Unused.
achievement(
    "Hypnotised",
    "Hypnotise another character",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219653) > prev(bit0(0x219653))
)
achievement(
    "Fantasy Fulfillment",
    "Create 5 fantasy objects or use 5 fantasy adjectives",
    points=1,
    trigger=
        save_protection() &&
        bit1(0x219653) > prev(bit1(0x219653))
)
achievement(
    "Looking Ahead",
    "Create 5 science fiction objects or use 5 science fiction adjectives",
    points=1,
    trigger=
        save_protection() &&
        bit2(0x219653) > prev(bit2(0x219653))
)
achievement(
    "The Fourth Wall",
    "Apply the secret Super Scribblenauts adjective",
    points=1,
    trigger=
        save_protection() &&
        bit3(0x219653) > prev(bit3(0x219653))
)
// $21971F: [NBit] Word Discovered Bitflag
//          Bit5=All Your Base are Belong to Us
achievement(
    "Hitman Maxwell: You have no chance to survive make your time",
    "Summon CATS, no they don't meow it's a person",
    points=1,
    trigger=
        save_protection() &&
        bit5(0x21971f) > prev(bit5(0x21971f))
)
// $2198DD: [NBit] Words Discovered
//          Bit0=Ceiling Cat
achievement(
    "Hitman Maxwell: Is Watching You",
    "Fall human...Fall!",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x2198dd) > prev(bit0(0x2198dd))
)
// $2199B3: [NBit] Words Discovered
//          Bit2=Crocoduck
achievement(
    "Hitman Maxwell: Kirk Cameron Believes",
    "Down Under Quacker",
    points=1,
    trigger=
        save_protection() &&
        bit2(0x2199b3) > prev(bit2(0x2199b3))
)
// $219A1B: [NBit] Word Discovered Flag
//          Bit7=Do Not Want
achievement(
    "Hitman Maxwell: Such Want, Not Doge",
    "Just go away!",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x219a1b) > prev(bit7(0x219a1b))
    
)
// $219A3A: [NBit] Words Discovered
//          Bit1=Dramatic Chipmunk
achievement(
    "Hitman Maxwell: Dun Dun DUNNNNNNNN",
    "Gasp! The drama!",
    points=1,
    trigger=
        save_protection() &&
        bit1(0x219a3a) > prev(bit1(0x219a3a))
)
// $219B4E: [NBit] Words Discovered
//          Bit6=Giant Enemy Crab
achievement(
    "Hitman Maxwell: $599 US Starites",
    "It's Ridge Racer! Attack the weakpoint for massive damage",
    points=1,
    trigger=
        save_protection() &&
        bit6(0x219b4e) > prev(bit6(0x219b4e))
)
// $219C20: [NBit] Words Discovered Flag
//          Bit0=I See What You Did There
achievement(
    "Hitman Maxwell: Shutup and Take my money!",
    "Not Sure If you'll unlock this one",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219c20) > prev(bit0(0x219c20))
)
// $219C91: [NBit] Words Discovered
//          Bit7=Keyboard Cat
achievement(
    "Hitman Maxwell: Sing us a song you're the piano meow",
    "Son can you play me a memory?",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x219c91) > prev(bit7(0x219c91))
)
// $219CEB: [NBit] Words Discovered
//          Bit2=Leeroy Jenkins
achievement(
    "Hitman Maxwell: All right lets do this",
    "At least I got chicken",
    points=1,
    trigger=
        save_protection() &&
        bit2(0x219ceb) > prev(bit2(0x219ceb))
       
)
// $219D16: [NBit] Word Discovered Flags
//          Bit2=Loituma Girl
//          Bit5=LOL Wut
achievement(
    "Hitman Maxwell: Farfetch'd Girl",
    "Spin Spin Spin",
    points=1,
    trigger=
        save_protection() &&
        bit2(0x219d16) > prev(bit2(0x219d16))
)
achievement(
    "Hitman Maxwell: Confused Pear",
    "Classic Meme Artwork",
    points=1,
    trigger=
        save_protection() &&
        bit5(0x219d16) > prev(bit5(0x219d16))
)
// $219D19: [NBit] Words Discovered
//          Bit6=Longcat
achievement(
    "Hitman Maxwell: Long Is Long",
    "Meme is Meme",
    points=1,
    trigger=
        save_protection() &&
        bit6(0x219d19) > prev(bit6(0x219d19))
)
// $219DBB: [NBit] Words Discovered
//          Bit3=Monorail Cat
achievement(
    "Hitman Maxwell: I give you the Springfield Monorail!",
    "What about us Cat slobs? You'll be given cushy jobs!",
    points=1,
    trigger=
        save_protection() &&
        bit3(0x219dbb) > prev(bit3(0x219dbb))
)
// $219DFF: [NBit] New Word Discovered Flags
//          Bit0=Neogaf
achievement(
    "Hitman Maxwell: Believe",
    "This site used to be cool but these days they are quite the laugh",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219dff) > prev(bit0(0x219dff))
)
// $219E0E: [NBit] Words Discovered
//          Bit1=Ninja Shark
achievement(
    "Hitman Maxwell: Jaws No Jutsu",
    "That's My Ninja Way!",
    points=1,
    trigger=
        save_protection() &&
        bit1(0x219e0e) > prev(bit1(0x219e0e))
)
// $219E36: [NBit] Words Discovered
//          Bit5=Om Nom Nom Nom
achievement(
    "Hitman Maxwell: Cookie Monster War Cry",
    "Oh So Tasty",
    points=1,
    trigger=
        save_protection() &&
        bit5(0x219e36) > prev(bit5(0x219e36))
)
// $219E50: [NBit] Words Discovered
//          Bit0=Over Nine Thousand
achievement(
    "Hitman Maxwell: What Does the Scouter Say?",
    "There is no way that can be right!",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219e50) > prev(bit0(0x219e50))
)
// $219EB3: [NBit] Words Discovered
//          Bit4=Philosoraptor
achievement(
    "Hitman Maxwell: Ship of Theseus",
    "Neither is the true Raptor, Both are the true Raptor",
    points=1,
    trigger=
        save_protection() &&
        bit4(0x219eb3) > prev(bit4(0x219eb3))
)
// $219F9E: [NBit] Words Discovered
//          Bit0=Rickroll
achievement(
    "Hitman Maxwell: Never Gonna Give You Up",
    "Never Gonna Let You Down",
    points=1,
    trigger=
        save_protection() &&
        bit0(0x219f9e) > prev(bit0(0x219f9e))
)
// $219FB5: [NBit] Words Discovered
//          Bit5=ROFLCopter
achievement(
    "Hitman Maxwell: Whirly Blade of Laughter",
    "Rolling on the sky laughing",
    points=1,
    trigger=
        save_protection() &&
        bit5(0x219fb5) > prev(bit5(0x219fb5))
)
// $21A12A: [NBit] Word Discovered Flags
//          Bit7=Tacgnol
achievement(
    "gnoL sI gnoL :llewxaM namtiH",
    "emeM si emeM",
    points=1,
    trigger=
        save_protection() &&
        bit7(0x21a12a) > prev(bit7(0x21a12a))
)
// $21A23E: [NBit] Word Discovered Flags
//          Bit5=Weegee
achievement(
    "Hitman Maxwell: Wins By Doing Absolutely Nothing",
    "Year of the Meme",
    points=1,
    trigger=
        save_protection() &&
        bit5(0x21a23e) > prev(bit5(0x21a23e))
)
// $2CF258: Character Unlock Page Number [8bit]
// $2CF260: Current Character in Unlock Screen ID [8bit]
function world_one() => range(0x218ef6, 0x218ef6 + (10 * 4), 4)
achievement(
    "Silver Crown Scorer: World 1",
    "Obtain all silver crown clears in World 1!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_one(), b => bit1(b))) == 10 &&
        measured(sum_of(world_one(), b => bit1(b)) == 11)
)
function world_two() => range(0x218f22, 0x218f22 + (8 * 4), 4)
achievement(
    "Silver Crown Scorer: World 2",
    "Obtain all silver crown clears in World 2!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_two(), b => bit1(b))) == 8 &&
        measured(sum_of(world_two(), b => bit1(b)) == 9)
)
function world_three() => range(0x218f46, 0x218f46 + (9 * 4), 4)
achievement(
    "Silver Crown Scorer: World 3",
    "Obtain all silver crown clears in World 3!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_three(), b => bit1(b))) == 9 &&
        measured(sum_of(world_three(), b => bit1(b)) == 10)
)
function world_four() => range(0x218f6e, 0x218f6e + (10 * 4), 4)
achievement(
    "Silver Crown Scorer: World 4",
    "Obtain all silver crown clears in World 4!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_four(), b => bit1(b))) == 10 &&
        measured(sum_of(world_four(), b => bit1(b)) == 11)
)
function world_five() => range(0x218f9a, 0x218f9a + (11 * 4), 4)
achievement(
    "Silver Crown Scorer: World 5",
    "Obtain all silver crown clears in World 5!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_five(), b => bit1(b))) == 11 &&
        measured(sum_of(world_five(), b => bit1(b)) == 12)
)
function world_six() => range(0x218fca, 0x218fca + (12 * 4), 4)
achievement(
    "Silver Crown Scorer: World 6",
    "Obtain all silver crown clears in World 6!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_six(), b => bit1(b))) == 12 &&
        measured(sum_of(world_six(), b => bit1(b)) == 13)
)
function world_seven() => range(0x218ffe, 0x218ffe + (7 * 4), 4)
achievement(
    "Silver Crown Scorer: World 7",
    "Obtain all silver crown clears in World 7!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_seven(), b => bit1(b))) == 7 &&
        measured(sum_of(world_seven(), b => bit1(b)) == 8)
)
function world_eight() => range(0x21901e, 0x21901e + (7 * 4), 4)
achievement(
    "Silver Crown Scorer: World 8",
    "Obtain all silver crown clears in World 8!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_eight(), b => bit1(b))) == 7 &&
        measured(sum_of(world_eight(), b => bit1(b)) == 8)
)
function world_nine() => range(0x21903e, 0x21903e + (9 * 4), 4)
achievement(
    "Silver Crown Scorer: World 9",
    "Obtain all silver crown clears in World 9!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_nine(), b => bit1(b))) == 9 &&
        measured(sum_of(world_nine(), b => bit1(b)) == 10)
)
function world_ten() => range(0x219066, 0x219066 + (4 * 4), 4)
achievement(
    "Silver Crown Scorer: World 10",
    "Obtain all silver crown clears in World 10!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(world_ten(), b => bit1(b))) == 4 &&
        measured(sum_of(world_ten(), b => bit1(b)) == 5)
)
function special_one() => range(0x21907a, 0x21907a + (8 * 4), 4)
achievement(
    "Silver Crown Scorer: Special 1",
    "Obtain all silver crown clears in Special 1!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(special_one(), b => bit1(b))) == 8 &&
        measured(sum_of(special_one(), b => bit1(b)) == 9)
)
function special_two() => range(0x21909e, 0x21909e + (13 * 4), 4)
achievement(
    "Silver Crown Scorer: Special 2",
    "Obtain all silver crown clears in Special 2!",
    points=5,
    trigger=
        save_protection() &&
        prev(sum_of(special_two(), b => bit1(b))) == 13 &&
        measured(sum_of(special_two(), b => bit1(b)) == 14)
)
// Halloween Racer
// #ID = 6276

CurrMode = byte(0xc4f0)
Mode_Championship = 0
Mode_Practice = 1
function GetCurrMode(param){
    return CurrMode == param
}
CurrDiff = byte(0xc4f6)
Diff_Rookie = 0
Diff_Advanced = 1
Diff_Expert = 2
function GetCurrDiff(param){
    return CurrDiff == param
}


Score_Ones = byte(0xc800)
Score_Tens = byte(0xc801) * 10
Score_Hundreds = byte(0xc802) * 100
Score_Thousands = byte(0xc803) * 1000
Score_TenThousands = byte(0xc804) * 10000
function GetCurrScore(){
    return sum_of([Score_Ones, Score_Tens, Score_Hundreds, Score_Thousands, Score_TenThousands], b => b)    
}

CurrScreen = byte(0xdff6)
Screen_Mode = 0x0
Screen_Options = 0x11
Screen_Preview = 0x14
Screen_Title = 0x18
Screen_Main = 0x32
Screen_Language = 0x40
Screen_NameEntry = 0x62
Screen_CourseSelect = 0x68
Screen_HallofFame = 0x7a
Screen_Credits = 0x89

CurrGameState = byte(0xdffe)
GameState_Loading = 0x29
GameState_Splash = 0x29
GameState_Language = 0x32
GameState_Menu = 0x42
GameState_InRace = 0xc3
function GetGameState(param){
    return CurrGameState == param
}


CurrCourse = byte(0xffa0)
Course_Vulcan = 1
Course_Egypt = 2
Course_RedMoon = 3
Course_Jungle = 4
Course_Icefield = 5
Course_Garden = 6


class RaceMechs {
    Speed_Zero = 0
    Speed_Max = 0x28
    CurrSpeed = byte(0xffa6)
    
    Lap_Number = byte(0xffc5)
    Lap_Max = byte(0xffc6)
    
    Position = byte(0xffc2)
    
    Race_Number = byte(0xffe3) //Increments to +1 above max to indicate end of championship.
    Flag_GardenUnlock = bit6(0xffb2) // For Unlock: Check $ffe3 = 0x13
    Flag_Paused = bit3(0xffc8)
    Flag_EndRace = bit7(0xffc0)
}
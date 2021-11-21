#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.
SysGet, X, 78 ; Get the Virtual Screen With (Screen1 Width + Screen2 Width...)
Loop {
    ImageSearch, FoundX, FoundY, 0, 0, X, A_ScreenHeight, shiny-to-find.png
    if (ErrorLevel = 0) 
    {
        FileRead, PreviousValue, counter.txt
        if PreviousValue is not number 
        { 
            MsgBox Error, the file doesn't contain any number.
            break
        }
        NewValue = % PreviousValue+1
        FileAppend, +1, +1.txt
        Sleep 2000
        FileDelete, +1.txt
        Sleep 500
        FileDelete, counter.txt
        FileAppend, %NewValue%, counter.txt
        Sleep 4000
    }
    
}

;Full code from DoctorSneepy, but had the idea from a live of Laink (https://www.twitch.tv/wankilstudio) who was hunting Snorunt.
;Feel free to use it, modify and share but give credits (above line).

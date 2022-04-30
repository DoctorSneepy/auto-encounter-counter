; WARNINGS
; By using this script, you ARE RESPONSIBLE of any damages caused to your computers. 
; If the script is wrongly used or on too weak computers it may cause instabilities or just not work.
; To stop the script, you can:
;    - use the macro if not disabled or changed: Shit Echap
;    - right click on AutoHotkey icon's in notification area and left click exit


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode Pixel  ; Interprets the coordinates below as relative to the screen rather than the active window.


; VARIABLES

    ; Screen Dimensions
    SysGet, MinX, 76 ; Getting the Virtual Min Screen With 
    SysGet, MinY, 77 ; Getting the Virtual Min Screen Height
    SysGet, MaxX, 78 ; Getting the Virtual Max Screen With
    SysGet, MaxY, 79 ; Getting the Virtual Max Screen Height


    ; ↓↓↓ EDITABLE VARIABLES HERE ↓↓↓ ;

        ; Timer variables, change timer here if needed, 1000 = 1s, 1 = 1ms        
	        Timer1 = 1000 ; Classic Timer between each check; must be shorter than standing image time
	        Timer2 = 3000 ; Timer used when match occured, usefull to avoid multiple match, must be longer than standing image time
            TimerCheck = false ; don't change, used in the script

        ; Image variable
            Image = image.png ; change image.png by your image, make sure to use the best qualiy image and at least .png format, not .jpg

        ; Counter variables
            CounterFile = counter.txt ; change counter file if needed, must be in same folder of the script or absolute/relative path

    ; ↑↑↑ EDITABLE VARIABLES HERE ↑↑↑ ;

; END OF VARIABLES




; FUNCTIONS

    ; File Check
    FileCheck(fnCounterFile) {
        FileRead, fnFileValue, %fnCounterFile% ; trying to read the file named in the variable fnCounterFile given to the Function and storing value to fnFileValue
        if ErrorLevel = 1 ; if the document is inaccessible
        {
            MsgBox Error: couldn't access to %fnCounterFile% either because:`n1) File does not exist`n2) File is locked or inaccessible`n3) The system lacks sufficient memory to load the file.`n`nScript will stop.`nFix it then restart the script. ; Error message displayed
            ExitApp ; quitting the script
        }
        else if fnFileValue is not number ; if the file value isn't only a number 
        { 
            MsgBox Error: %fnCounterFile% doesn't contain (only) a number.`nScript will stop.`nFix it then restart the script. ; Error message displayed
            ExitApp ; quitting the script
        }
        else return fnFileValue ; returning the value of the document if none error 
    }

    ; Update File
    UpdateFile(fnCounterFile,fnPreviousValue,fnNumber) {
        fnNewValue = % fnPreviousValue+fnNumber ; New Value for counter = the previous value + fnNumber
        FileDelete, %fnCounterFile% ; Emptying Counter file by deleting it
        FileAppend, %fnNewValue%, %fnCounterFile% ; Writing the new counter value in a a new file named as the previous one
    }


    ; +1 Function; used to display +1 on screen for content creator if wanted
    fnPlus1() {
        FileDelete, +1.txt ; delete file to empty it        
        FileAppend, +1, +1.txt ; write +1 in the +1.txt file
        Sleep 2000 ; wait 2s to let OBS display it 
        FileDelete, +1.txt ; delete file to empty it
        FileAppend,, +1.txt ; recreate the file to avoid OBS error: missing file on launch
    }

; END OF FUNCTIONS

; MAIN SCRIPT
    FileCheck(CounterFile) ; check file of counter before processing

    Loop { ; endless loop
        ImageSearch, FoundX, FoundY, MinX, MinY, MaxX, MaxY, %Image% ; Searching for match on the screen from MinX MinY to MaxX MaxY with the image name stored in the variable Image
        if (ErrorLevel = 0) 
        {
            PreviousValue := FileCheck(CounterFile) ; taking value from CounterFile with FileCheck function
            fnPlus1() ; used to display +1 on screen for content creator if wanted, put ; before if you want to disable it even if it has none impact
            UpdateFile(CounterFile,PreviousValue,+1)
            TimerCheck = true ; TimerCheck set to true to avoid double wait for the script
            Sleep %Timer2% ; wait using 2nd timer
        }
        if (%TimerCheck% = false) { ; If the script didn't wait before ...
            Sleep %Timer1% ; then wait
        }
        else 
        { 
            TimerCheck = false ; else don't wait and reset the check variable
        }
    }
; END OF MAIN SCRIPT



    ; MACROS see here for more details: https://www.autohotkey.com/docs/Tutorial.htm
    ; 
    ; main hotkeys:
    ;   Windows = #
    ;   alt = !
    ;   altgr = <^>!
    ;   ctrl = ^ 
    ;   shift = +
    ;   
    ; exemple: ctrl shift s = ^+s
    ;
    ; declaring macro: 
    ;   ^+s::
    ;   do what you want...
    ;   return; 
    ; More details: Hotkeys: https://www.autohotkey.com/docs/Hotkeys.htm
    
    ; Simply delete/comment those lines below if you don't want macros to be enabled

    ;Macro to quit the script
        +Esc::
            ExitApp ; quitting the script
        return  ; This line serves to finish the hotkey.
        
    ;Macro to manually add +1
        +NumpadAdd::
            PreviousValue := FileCheck(CounterFile)
            UpdateFile(CounterFile,PreviousValue, +1)
        return  ; This line serves to finish the hotkey.

    ;Macro to manually add -1
        +NumpadSub::
            PreviousValue := FileCheck(CounterFile)
            UpdateFile(CounterFile,PreviousValue, -1)
        return  ; This line serves to finish the hotkey.



; CREDITS
; Full code from DoctorSneepy, but had the idea from a Laink LiveStream (https://www.twitch.tv/laink) who was hunting Snorunt.
; Feel free to use it, modify and share but give credits (above line).
; If you have any questions or suggestions contact me at : contact@doctorsneepy.fr / Twitter: @DoctorSneepy
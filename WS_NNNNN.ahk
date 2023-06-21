#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;F12 get color !
F12:: 
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position (%MouseX% , %MouseY%) is %color%.
return

F11:: 
x = 718
y = 1620


MouseGetPos, MouseX, MouseY
PixelGetColor, color, x, y

clipboard := color
MsgBox The color at the current cursor position (%x% , %y%) is %color%.

return


F10::
PixelSearch, Px, Py, 908, 0, 1070, 116, 0x130f65, 0, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox, A color within 0 shades of variation was found at X%Px% Y%Py%.






return



F8:: 
Reload 
return



~RButton & WheelDown::

Send {6}
Send {7}
Send {8}
Send {9}
Send {0}

return

~RButton & WheelUp::

Send {6}
Send {7}
Send {8}
Send {9}
Send {-}
Send {=}

return
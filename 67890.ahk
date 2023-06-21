#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.





~RButton & WheelDown::
~RButton & WheelUp::
Send {6}
Send {7}
Send {8}
Send {9}
Send {0}

Sleep, 700

return



F12:: 
Reload 
return
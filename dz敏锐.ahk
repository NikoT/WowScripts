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
x = 2138
y = 1136


MouseGetPos, MouseX, MouseY
PixelGetColor, color, x, y
MsgBox The color at the current cursor position (%x% , %y%) is %color%.
clipboard := color

return


F10::
PixelSearch, Px, Py, 908, 0, 1070, 116, 0x130f65, 0, Fast
if ErrorLevel
    MsgBox, That color was not found in the specified region.
else
    MsgBox, A color within 0 shades of variation was found at X%Px% Y%Py%.





F8::

Reload 

return


F5::

StartTime := A_TickCount
Loop{
	send {3}
	ElapsedTime := A_TickCount - StartTime
	if (ElapsedTime > 10*1000) {
		break
	}
	Sleep, 10
}

return


~RButton & WheelDown::
~RButton & WheelUp::

x = 2138
y = 1136

skillColor1 = 0xd2c5c4 ; anyingdaji
skillColor2 = 0xe8ecf0 ; beici
skillColor3 = 0x5D2910 ; xiujianfengbao
skillColor4 = 0xec3f93 ;  heihuoyao
skillColor5 = 0x182c42 ; tigu
skillColor6 = 0x9a989a ; gelie
skillColor7 = 0x703e6a ; siwangfuji
skillColor8 = 0x02a8e3 ; qiege
skillColor9 = 0x101821 ; siwangbiaoji
skillColor10 = 0xadeaa3 ; anyingzhiwu 
skillColor11 = 0xC8A655 ; mengyu 
skillColor12 = 0xffffff ;  


PixelGetColor, color, x, y

if (color = skillColor1){
	send {=}
}else if (color = skillColor2){
	send {-}
}else if (color = skillColor3){
	send {0}
}else if (color = skillColor4){
	send {9}
}else if (color = skillColor5){
	send {8}
}else if (color = skillColor6){
	send {7}
}else if (color = skillColor7){
	send {6}
}else if (color = skillColor8){
	send {\}
}else if (color = skillColor9){
	send {]}
}else if (color = skillColor10){
	send {[}
}else if (color = skillColor11){
	send {p}
}else if (color = skillColor12){
	send {o}
}else{
	
}



return
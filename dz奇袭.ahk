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


~RButton & WheelDown::
~RButton & WheelUp::

x = 2138
y = 1136

skillColor1 = 0x000000 ; suohou
skillColor2 = 0x538264 ; duren
skillColor3 = 0xafabac ; fuji
skillColor4 = 0x772b19 ; huishang 
skillColor5 = 0x97b4c9 ; daoshan
skillColor6 = 0x9a989a ; gelie

skillColor7 = 0xafb8b9 ; dushang
skillColor8 = 0x02a8e3 ; qiege
skillColor9 = 0x101821 ; siwangbiaoji
skillColor10 = 0x8a613d ; mengyu 

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
}else{
	
}



return
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




~RButton & WheelDown::
~RButton & WheelUp::

x = 2138
y = 1136

skillColor1 = 0x181808 ; huanmieti
skillColor2 = 0x1d1b57 ; jiutong
skillColor3 = 0x00084a ; huoyan
skillColor4 = 0x002418 ; shenhe
skillColor5 = 0x949e82 ; menghu
skillColor6 = 0x97b91e ; mengyue
skillColor7 = 0x71b40d ; biyu
skillColor8 = 0x52c5de ; jinchuangyao

;skillColor9 = 0x232928
;skillColor10 = 0x232928

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